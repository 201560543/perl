#!usr/bin/perl -w
use strict;
my $el=0;
my $ele;
my $no;
my @arr;
my $i;
print "Enter the size of an array";
$no=<>;
for($i=0;$i<=$no;$i++)
{
$arr[$i]=<>;
}
foreach $ele(@arr)
{
   $el=$ele+$el;
}
print "$el\n";

    





