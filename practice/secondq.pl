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

foreach my $ele (sort{$hash{$a} <=> $hash{$b}} (keys(%hash)))
{
	print "$ele $hash{$ele}";
}

