use warnings;
use strict;
my $l;
my %hash;
my @a;
open(FH,"file1.txt") or die "hard";
while($l=<FH>)
{
	@a=split(/ /,$l);
	$hash{$a[0]}=$a[6];
}
foreach my $ele (sort{$hash{$b} <=> $hash{$a}} (keys(%hash)))
{
	print "$ele $hash{$ele}";
}

