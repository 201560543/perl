use warnings;
use strict;
my $l;
my @a;
my @p;
open(FH,"matrix") or die("file not found");
$l=<FH>;
@a=split(/\s+/,$l);
#print "\n$a[1] $a[2] $a[3] $a[4]";
print "@a";
@p=split(/\n/,$l);
print "\n@p";
print"enter 1st amino acid";
my $i=<>;
print "enter 2nd amino acid";
my $j=<>;

