use warnings;
use strict;
my $l;
my @a;
open(FH,"file1.txt") or die "hard";
my $k=<>;
chomp ($k);
while($l=<FH>)
{
	@a=split(/ /,$l);
	if(($k cmp $a[0])==0)
	{
		print "$a[5]";
	}

}


