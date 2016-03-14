#!usr/bin/perl -w
use strict;
my $fac;
my $total=1;
print "Enter the factorial number";
$fac=<>;
for(my $i=1;$i<=$fac;$i++)
{
$total=$i*$total;
}
print "$total";
