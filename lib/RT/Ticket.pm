

# $Header$

# Autogenerated by DBIx::SearchBuilder factory (by <jesse@bestpractical.com>)
# WARNING: THIS FILE IS AUTOGENERATED. ALL CHANGES TO THIS FILE WILL BE LOST.  
# 
# !! DO NOT EDIT THIS FILE !!
#


=head1 NAME

RT::Ticket


=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 METHODS

=cut

package RT::Ticket;
use RT::Record; 
use RT::Queue;


use vars qw( @ISA );
@ISA= qw( RT::Record );

sub _Init {
  my $self = shift; 

  $self->Table('Tickets');
  $self->SUPER::_Init(@_);
}





=item Create PARAMHASH

Create takes a hash of values and creates a row in the database:

  int(11) 'EffectiveId'.
  int(11) 'Queue'.
  varchar(16) 'Type'.
  int(11) 'IssueStatement'.
  int(11) 'Resolution'.
  int(11) 'Owner'.
  varchar(200) 'Subject' defaults to '[no subject]'.
  int(11) 'InitialPriority'.
  int(11) 'FinalPriority'.
  int(11) 'Priority'.
  int(11) 'TimeEstimated'.
  int(11) 'TimeWorked'.
  varchar(10) 'Status'.
  int(11) 'TimeLeft'.
  datetime 'Told'.
  datetime 'Starts'.
  datetime 'Started'.
  datetime 'Due'.
  datetime 'Resolved'.
  smallint(6) 'Disabled'.

=cut




sub Create {
    my $self = shift;
    my %args = ( 
                EffectiveId => '',
                Queue => '',
                Type => '',
                IssueStatement => '',
                Resolution => '',
                Owner => '',
                Subject => '[no subject]',
                InitialPriority => '',
                FinalPriority => '',
                Priority => '',
                TimeEstimated => '',
                TimeWorked => '',
                Status => '',
                TimeLeft => '',
                Told => '',
                Starts => '',
                Started => '',
                Due => '',
                Resolved => '',
                Disabled => '0',

		  @_);
    $self->SUPER::Create(
                         EffectiveId => $args{'EffectiveId'},
                         Queue => $args{'Queue'},
                         Type => $args{'Type'},
                         IssueStatement => $args{'IssueStatement'},
                         Resolution => $args{'Resolution'},
                         Owner => $args{'Owner'},
                         Subject => $args{'Subject'},
                         InitialPriority => $args{'InitialPriority'},
                         FinalPriority => $args{'FinalPriority'},
                         Priority => $args{'Priority'},
                         TimeEstimated => $args{'TimeEstimated'},
                         TimeWorked => $args{'TimeWorked'},
                         Status => $args{'Status'},
                         TimeLeft => $args{'TimeLeft'},
                         Told => $args{'Told'},
                         Starts => $args{'Starts'},
                         Started => $args{'Started'},
                         Due => $args{'Due'},
                         Resolved => $args{'Resolved'},
                         Disabled => $args{'Disabled'},
);

}



=item id

Returns the current value of id. 
(In the database, id is stored as int(11).)


=cut


=item EffectiveId

Returns the current value of EffectiveId. 
(In the database, EffectiveId is stored as int(11).)



=item SetEffectiveId VALUE


Set EffectiveId to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, EffectiveId will be stored as a int(11).)


=cut


=item Queue

Returns the current value of Queue. 
(In the database, Queue is stored as int(11).)



=item SetQueue VALUE


Set Queue to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Queue will be stored as a int(11).)


=cut


=item QueueObj

Returns the Queue Object which has the id returned by Queue


=cut

sub QueueObj {
	my $self = shift;
	my $Queue =  RT::Queue->new($self->CurrentUser);
	$Queue->Load($self->Queue());
	return($Queue);
}

=item Type

Returns the current value of Type. 
(In the database, Type is stored as varchar(16).)



=item SetType VALUE


Set Type to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Type will be stored as a varchar(16).)


=cut


=item IssueStatement

Returns the current value of IssueStatement. 
(In the database, IssueStatement is stored as int(11).)



=item SetIssueStatement VALUE


Set IssueStatement to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, IssueStatement will be stored as a int(11).)


=cut


=item Resolution

Returns the current value of Resolution. 
(In the database, Resolution is stored as int(11).)



=item SetResolution VALUE


Set Resolution to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Resolution will be stored as a int(11).)


=cut


=item Owner

Returns the current value of Owner. 
(In the database, Owner is stored as int(11).)



=item SetOwner VALUE


Set Owner to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Owner will be stored as a int(11).)


=cut


=item Subject

Returns the current value of Subject. 
(In the database, Subject is stored as varchar(200).)



=item SetSubject VALUE


Set Subject to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Subject will be stored as a varchar(200).)


=cut


=item InitialPriority

Returns the current value of InitialPriority. 
(In the database, InitialPriority is stored as int(11).)



=item SetInitialPriority VALUE


Set InitialPriority to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, InitialPriority will be stored as a int(11).)


=cut


=item FinalPriority

Returns the current value of FinalPriority. 
(In the database, FinalPriority is stored as int(11).)



=item SetFinalPriority VALUE


Set FinalPriority to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, FinalPriority will be stored as a int(11).)


=cut


=item Priority

Returns the current value of Priority. 
(In the database, Priority is stored as int(11).)



=item SetPriority VALUE


Set Priority to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Priority will be stored as a int(11).)


=cut


=item TimeEstimated

Returns the current value of TimeEstimated. 
(In the database, TimeEstimated is stored as int(11).)



=item SetTimeEstimated VALUE


Set TimeEstimated to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, TimeEstimated will be stored as a int(11).)


=cut


=item TimeWorked

Returns the current value of TimeWorked. 
(In the database, TimeWorked is stored as int(11).)



=item SetTimeWorked VALUE


Set TimeWorked to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, TimeWorked will be stored as a int(11).)


=cut


=item Status

Returns the current value of Status. 
(In the database, Status is stored as varchar(10).)



=item SetStatus VALUE


Set Status to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Status will be stored as a varchar(10).)


=cut


=item TimeLeft

Returns the current value of TimeLeft. 
(In the database, TimeLeft is stored as int(11).)



=item SetTimeLeft VALUE


Set TimeLeft to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, TimeLeft will be stored as a int(11).)


=cut


=item Told

Returns the current value of Told. 
(In the database, Told is stored as datetime.)



=item SetTold VALUE


Set Told to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Told will be stored as a datetime.)


=cut


=item Starts

Returns the current value of Starts. 
(In the database, Starts is stored as datetime.)



=item SetStarts VALUE


Set Starts to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Starts will be stored as a datetime.)


=cut


=item Started

Returns the current value of Started. 
(In the database, Started is stored as datetime.)



=item SetStarted VALUE


Set Started to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Started will be stored as a datetime.)


=cut


=item Due

Returns the current value of Due. 
(In the database, Due is stored as datetime.)



=item SetDue VALUE


Set Due to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Due will be stored as a datetime.)


=cut


=item Resolved

Returns the current value of Resolved. 
(In the database, Resolved is stored as datetime.)



=item SetResolved VALUE


Set Resolved to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Resolved will be stored as a datetime.)


=cut


=item LastUpdatedBy

Returns the current value of LastUpdatedBy. 
(In the database, LastUpdatedBy is stored as int(11).)


=cut


=item LastUpdated

Returns the current value of LastUpdated. 
(In the database, LastUpdated is stored as datetime.)


=cut


=item Creator

Returns the current value of Creator. 
(In the database, Creator is stored as int(11).)


=cut


=item Created

Returns the current value of Created. 
(In the database, Created is stored as datetime.)


=cut


=item Disabled

Returns the current value of Disabled. 
(In the database, Disabled is stored as smallint(6).)



=item SetDisabled VALUE


Set Disabled to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Disabled will be stored as a smallint(6).)


=cut



sub _ClassAccessible {
    {
     
        id =>
		{read => 1, type => 'int(11)', default => ''},
        EffectiveId => 
		{read => 1, write => 1, type => 'int(11)', default => ''},
        Queue => 
		{read => 1, write => 1, type => 'int(11)', default => ''},
        Type => 
		{read => 1, write => 1, type => 'varchar(16)', default => ''},
        IssueStatement => 
		{read => 1, write => 1, type => 'int(11)', default => ''},
        Resolution => 
		{read => 1, write => 1, type => 'int(11)', default => ''},
        Owner => 
		{read => 1, write => 1, type => 'int(11)', default => ''},
        Subject => 
		{read => 1, write => 1, type => 'varchar(200)', default => '[no subject]'},
        InitialPriority => 
		{read => 1, write => 1, type => 'int(11)', default => ''},
        FinalPriority => 
		{read => 1, write => 1, type => 'int(11)', default => ''},
        Priority => 
		{read => 1, write => 1, type => 'int(11)', default => ''},
        TimeEstimated => 
		{read => 1, write => 1, type => 'int(11)', default => ''},
        TimeWorked => 
		{read => 1, write => 1, type => 'int(11)', default => ''},
        Status => 
		{read => 1, write => 1, type => 'varchar(10)', default => ''},
        TimeLeft => 
		{read => 1, write => 1, type => 'int(11)', default => ''},
        Told => 
		{read => 1, write => 1, type => 'datetime', default => ''},
        Starts => 
		{read => 1, write => 1, type => 'datetime', default => ''},
        Started => 
		{read => 1, write => 1, type => 'datetime', default => ''},
        Due => 
		{read => 1, write => 1, type => 'datetime', default => ''},
        Resolved => 
		{read => 1, write => 1, type => 'datetime', default => ''},
        LastUpdatedBy => 
		{read => 1, auto => 1, type => 'int(11)', default => ''},
        LastUpdated => 
		{read => 1, auto => 1, type => 'datetime', default => ''},
        Creator => 
		{read => 1, auto => 1, type => 'int(11)', default => ''},
        Created => 
		{read => 1, auto => 1, type => 'datetime', default => ''},
        Disabled => 
		{read => 1, write => 1, type => 'smallint(6)', default => '0'},

 }
};


        eval "require RT::Ticket_Overlay";
        if ($@ && $@ !~ /^Can't locate/) {
            die $@;
        };

        eval "require RT::Ticket_Local";
        if ($@ && $@ !~ /^Can't locate/) {
            die $@;
        };




=head1 SEE ALSO

This class allows "overlay" methods to be placed
into the following files _Overlay is for a System overlay by the original author,
while _Local is for site-local customizations.  

These overlay files can contain new subs or subs to replace existing subs in this module.

If you'll be working with perl 5.6.0 or greater, each of these files should begin with the line 

   no warnings qw(redefine);

so that perl does not kick and scream when you redefine a subroutine or variable in your overlay.

RT::Ticket_Overlay, RT::Ticket_Local

=cut


1;
