use warnings;
use strict;
open(FH,"P01308.txt")or die ("file not found");
my $l=<FH>;
my $seq="";
my %aa;
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
my @a;
my $i;
@a=split(//,$seq);	
for( $i=0;$i<length($seq);$i++)
{
	$aa{$a[$i]}++;
}
foreach my $key (keys(%aa))
{
	print"\n$key=$aa{$key}";
}

