#!/usr/bin/perl

use strict;
use warnings;

my $file = $ARGV[0];

open my $info, $file or die "Could not open $file: $!";

my $sumcal = 0;

while (my $line = <$info>) {
	my @spl = split '',$line;
	my $f;
	# print $line;

	while (my ($i, $v) = each @spl) {
		if ($v =~ /^\d/) {
			$f = $v;
			last;
		}

		my $r = substr $line, $i;
		if ($r =~ /^one/) { 
			$f = 1;
			last;
		}

		if ($r =~ /^two/) { 
			$f = 2;
			last;
		}

		if ($r =~ /^three/) { 
			$f = 3;
			last;
		}

		if ($r =~ /^four/) { 
			$f = 4;
			last;
		}

		if ($r =~ /^five/) { 
			$f = 5;
			last;
		}

		if ($r =~ /^six/) { 
			$f = 6;
			last;
		}

		if ($r =~ /^seven/) { 
			$f = 7;
			last;
		}

		if ($r =~ /^eight/) { 
			$f = 8;
			last;
		}

		if ($r =~ /^nine/) { 
			$f = 9;
			last;
		}
	}
	
	# print "f = $f\n";

	my $revline = reverse $line;

	my $s;
	my @revspl = reverse @spl;
	while (my ($i, $v) = each @revspl) {
		if ($v =~ /^\d/) {
			$s = $v;
			last;
		}

		my $r = substr $revline, $i;
		if ($r =~ /^eno/) { 
			$s = 1;
			last;
		}

		if ($r =~ /^owt/) { 
			$s = 2;
			last;
		}

		if ($r =~ /^eerht/) { 
			$s = 3;
			last;
		}

		if ($r =~ /^ruof/) { 
			$s = 4;
			last;
		}

		if ($r =~ /^evif/) { 
			$s = 5;
			last;
		}

		if ($r =~ /^xis/) { 
			$s = 6;
			last;
		}

		if ($r =~ /^neves/) { 
			$s = 7;
			last;
		}

		if ($r =~ /^thgie/) { 
			$s = 8;
			last;
		}

		if ($r =~ /^enin/) { 
			$s = 9;
			last;
		}
	}
	$sumcal = $sumcal + "$f$s";
}

close $info;

print ("Sum of calibration values for $file = $sumcal\n");

