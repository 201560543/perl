use strict;
open(FH,"seq.fasta") or die "file not found";
my$l=<FH>;
my$seq="";
while($l=<FH>){
	while($l!~/^>/g){
		chomp($l);
		$seq=$seq.$l;
		$l=<FH>;
		last unless defined $l;
	}
	print "$seq\n";
	$seq="";
}
