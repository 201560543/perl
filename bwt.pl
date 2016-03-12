use warnings;

print "Enter the String:\n";
chomp($str=<STDIN>);											#User Input of String
print "The String given is: ", $str,"\n\n";
@string= split "", $str;										#Spliting the string into an array
$a=@string;														#Length of the string
$b = "";														#Used to concatinate later
$bwt = "";														#BWT oupput to be stored

print "The rotated sequence is:\n\n";
for($j=0 ; $j<$a ; $j++)										#Creating the other different possible sequences of given string
{
	for($i=0 ; $i<$a ; $i++)
	{
		if($i == 0)
		{
		$c[$j] = $b . $string[$a-1];							#$c[j] => stores each string that is modified		
		}
		else
		{
		$c[$j] = $c[$j] . $string[$i-1];						#$c[j] => stores each string that is modified		
		}
	}
print $c[$j],"\n";
@string= split "", $c[$j];										#Modifying the string everytime a position is changed for the creation of the next sequence
}
print "\n\n";
@align=sort(@c);												#Sorting of the sequences created in array 'c'
#print @align,"\n";
print "The Lexiographically Sorted String is (BWM):\n\n";
for($j=0 ; $j<$a ; $j++)
{
@trans=();
	print $align[$j],"\n";
	@trans = split "", $align[$j];
#	print $trans[$j],"\n";
	$bwt = $bwt . $trans[$a-1];									#Extracting the last line of BWM and Generating BWT
}

print "\nThe The BW Transform is: ", $bwt;


print "\nThe BWT sequence provided is: ",$bwt,"\n";
$rbwt = "";													#Initialization of Variable
@last_column=split "",$bwt;									#Spliting of the Given BWT
$bwt_len=@last_column;										#Length of BWT
for($i=0;$i<$bwt_len;$i++)
{															#Creating the Last Column of BWM
	$a=$last_column[$i];
	$b=0;
	for($j=0;$j<$bwt_len;$j++)								#Adding The Number of times a letter is repeated in the string
	{
		if($a eq $last_column[$j])
		{
		$b++;
		$last_column_num[$j] = $last_column[$j]."$b";
		}
	}
}
@first_column=sort(@last_column_num);						#Considering First column as sorted form of last column
#print "First Colunm: ",@first_column, "\n";				#To print the first column remove #tag infront of print
#print "Last Colunm: ",@last_column_num, "\n";				#To print the last column remove #tag infront of print
@rBBWT="";													#Initialization of Variable
$rBBWT="";													#Initialization of Variable
$temp=$first_column[0];
$k=0;
while($k<$bwt_len)											#Used to generate the original sequence of which this BWT is
{
for($j=0;$j<$bwt_len;$j++)
{
	if("$temp" eq "$last_column_num[$j]")
	{ 
		$rbwt = "$rbwt" . "$first_column[$j]";				#$rbwt => Will Contain the original sequence with position on BWT
		$temp = $first_column[$j];
		$j=0;
		$k = $k + 1;
		if($k == $bwt_len)
		{
		$j = $bwt_len + 2;
		}
	}
}
}
@rBWT= split "", $rbwt;
for($j=0;$j<$#rBWT;)										#Removing the position from original sequence
{
$rBBWT = $rBBWT.$rBWT[$j];
$j = $j +2;
}
#print "Final: ",$rbwt;										#Remove #tag to View original sequence with position
print  "\nThe Original Sequence is: ",$rBBWT;			#Prints the Original Sequence

print "The Input sequence is:\n", $str,"\n";
print "How many Reads would you like to Enter?\n";
chomp($read_num=<STDIN>);
print "Enter the Reads, Hit enter after each Read Input\n";

for($i=0;$i<$read_num;$i++)
{
	chomp($reads[$i]=<STDIN>);
}

for($i=0;$i<$read_num;$i++)
{
	if($str=~/$reads[$i]/i)
	{
	$initial=0;
	$final=0;
	@read_le = split "", $reads[$i];
	$read_len = @read_le;
	@sp_genome=split "$reads[$i]", $str;
	#print @sp_genome;
	$sp_ge_len=@sp_genome;
	print "\nFor Read ", $i+1 ,": ", $reads[$i] , ". The positions on the genome is/are:\n";
	if($sp_ge_len == 1)
	{
		for($j=0;$j<$sp_ge_len;$j++)
			{
			@temp_ge=split "",$sp_genome[$j];
			$temp_ge_len=@temp_ge;
			$initial = $final + $temp_ge_len + 1;
			$final = $initial + $read_len - 1;
			print "\nFrom : ", $initial, " to ", $final, "\n";
	#		print "\tFinal Position : ", $final,"\n";
			}
	}
	else
	{
	for($j=0;$j<$sp_ge_len-1;$j++)
			{
			@temp_ge=split "",$sp_genome[$j];
			$temp_ge_len=@temp_ge;
			$initial = $final + $temp_ge_len + 1;
			$final = $initial + $read_len - 1;
			print "\nFrom : ", $initial, " to ", $final, "\n";
	#		print "\tFinal Position : ", $final,"\n";
			}
	
	}
	}
	else
	{
	print "\nExact match of Read ", $i+1,": ", $reads[$i] , ". Is not present.\n";
	}
}

<STDIN>;
