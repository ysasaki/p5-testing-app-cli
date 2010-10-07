package MyApp::Command::Print;
use strict;
use warnings;
use base qw(App::CLI::Command);

sub subcommands {
    qw/uc ucfirst/;
}

sub options {
    ( 'strings|s=s' => 'strings' );
}

sub run {
    my $self = shift;
    my $strings = shift || $self->{strings} || $self->usage;

    print $strings, "\n";
}

package MyApp::Command::Print::uc;
use strict;
use warnings;
use base qw(App::CLI::Command);

sub run {
    my $self = shift;
    my $strings = shift || $self->{strings} || $self->usage;

    print uc $strings, "\n";
}

package MyApp::Command::Print::ucfirst;
use strict;
use warnings;
use base qw(App::CLI::Command);

sub run {
    my $self = shift;
    my $strings = shift || $self->{strings} || $self->usage;

    print ucfirst $strings, "\n";
}

1;

__END__

=head1 NAME

MyApp::Command::Print - apply uc(first)? to string and print it

=head1 SYNOPSIS

myapp.pl [--strings|-s STRINGS] [--uc] [--ucfirst] STRINGS

=cut
