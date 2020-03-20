use strict;
use warnings;

use RT::Test tests => undef;
use Test::Deep;

my $default_linked_queue_portlets = RT->Config->Get( 'LinkedQueuePortlets' );
cmp_deeply( $default_linked_queue_portlets, {}, 'LinkedQueuePortlets config setting is empty by default' );

# create ticket in general queue
# this ticket will display the portlet for the other queue, with the other ticket in it
my $ticket_one = RT::Ticket->new( RT->SystemUser );
my ( $ticket_one_id ) = $ticket_one->Create(
    Subject => 'test ticket in General queue',
    Queue   => 'General',
);
ok( $ticket_one_id, 'created ticket in "General" queue' );

# create test queue and test ticket in it
my $queue_name = 'test queue';
my $queue      = RT::Queue->new( RT->SystemUser );
my $queue_id   = $queue->Create(
    Name        => $queue_name,
    Description => $queue_name,
);
ok( $queue_id, 'created "test queue" queue' );

my $ticket_two = RT::Ticket->new( RT->SystemUser );
my ( $ticket_two_id ) = $ticket_two->Create(
    Subject => 'test ticket in "' . $queue_name . '" queue',
    Queue   => $queue_name,
);
ok( $ticket_two_id, 'created ticket in "' . $queue_name . '" queue' );

# change config to load new queue portlet in general 
# this isn't exercising limiting to a specific link relationship set such as 'HasMember', 'MemberOf', or 'RefersTo'; just 'All'
my $expected_linked_queue_portlets = {
    General => [
        { $queue_name => [ 'All' ] },
    ],
};
RT->Config->Set(
    LinkedQueuePortlets => %{$expected_linked_queue_portlets},
);

my $updated_linked_queue_portlets = {
    RT->Config->Get( 'LinkedQueuePortlets' )
};
cmp_deeply( $updated_linked_queue_portlets, $expected_linked_queue_portlets, 'LinkedQueuePortlets config setting updated to display "' . $queue_name . '" in "General" queue' );

# verify new queue portlet is present in ticket in general
my ( $baseurl, $m ) = RT::Test->started_ok;
ok( $m->login(), 'logged in' );

my $linked_queue_class = 'linked-queue';

$m->get_ok( "/Ticket/Display.html?id=$ticket_one_id" );
$m->content_contains( $linked_queue_class, 'ticket in "General" queue contains linked queue portlet for "' . $queue_name . '" queue' );

# link tickets so the ticket shows up in the linked queue portlet
my $link = RT::Link->new( RT->SystemUser );
my ( $link_id, $msg ) = $link->Create( Base => $ticket_one->URI, Target => $ticket_two->URI, Type => 'RefersTo' );
ok( $link_id, 'created "RefersTo" link between tickets' );

# verify ticket in new queue is present in the linked queue portlet
$m->get_ok( "/Ticket/Display.html?id=$ticket_one_id" );
like(
    $m->dom->at( 'div.ticket-info-links.' . $linked_queue_class )->content,
    qr/Ticket\/Display\.html\?id=$ticket_two_id/,
    'linked queue portlet contains link to ticket in "' . $queue_name . '" queue'
);

# TODO:
# limit the linked queue configuration to only specific link relationships to ensure only those tickets show up in the portlet

done_testing();
