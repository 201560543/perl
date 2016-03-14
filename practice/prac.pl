use warnings;
use strict;
open(FH,"P01308.txt")or die ("file not found");
my $l=<FH>;
my $seq="";
while($l=<FH>)
{ 
	if($l=~/^SQ/)
	{
		while($l!~/^\/\//)
		{ 
			$l=<FH>;
			chomp($l);
			$l=~s/\s+//g;
			if($l!~/^\/\//)
			{
				$seq=$seq.$l;
			}
		}
	}
}
print"[$seq]";
	

