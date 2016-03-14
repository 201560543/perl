#!usr/bin/perl -w
use strict;
 my $nam;
 my @v;
 $nam="10:15:23";
 @v=split(/:/,$nam);
print "$v[0]hrs $v[1] minutes $v[2] seconds\n";
