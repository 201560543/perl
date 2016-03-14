use warnings;
use strict;
open(FH,"file2.txt")or die "HAA";
my %hash;
my @a;
while(my $l=<FH>)
{
	chomp($l);
	@a=split(/ /,$l);
	$hash{$a[0]}=$a[1];
}

my @p=sort{$hash{$b} <=> $hash{$a}}(keys(%hash));
print "$p[0]";


