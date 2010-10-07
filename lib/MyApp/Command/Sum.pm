package MyApp::Command::Sum;

use strict;
use warnings;
use base qw(App::CLI::Command);
use List::Util;

sub run {
	my ( $self, @rest ) = @_;

	if ( @rest ) {
		my $sum = List::Util::sum(@rest);
		printf "Sum %d\n", $sum;
	}
	else {
		print "Sum 0\n";
	}
}

1;

__END__

=head1 NAME

MyApp::Command::Sum - sum rest arguments

=head1 SYNOPSIS

myapp.pl sum [n1 n2 n3 ...]

=cut
