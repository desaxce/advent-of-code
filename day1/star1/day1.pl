#!/usr/bin/perl

use strict;
use warnings;

my $file = $ARGV[0];

open my $info, $file or die "Could not open $file: $!";

my $sumcal = 0;

while (my $line = <$info>) {
	my @spl = split '',$line;
	my $f;
	for (@spl) {
		if ($_ =~ /^\d/) {
			$f = $_;
			last;
		}
	}
	
	my $s;
	my @revspl = reverse @spl;
	for (@revspl) {
		if ($_ =~ /^\d/) {
			$s = $_;
			last;
		}
	}
	$sumcal = $sumcal + "$f$s";
}

close $info;

print ("Sum of calibration values for $file = $sumcal\n");

