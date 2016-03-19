print"Take the two DNA sequences:\n";
print"\n";
print "Enter first sequence: \n";
$in2=<>;
chomp($in2);
print"Enter second sequence: \n";
$in=<>;
chomp($in);


@seq1=split('',$in);
@seq2=split('',$in2);

unshift(@seq1,'-');
unshift(@seq2,'-');


if(length($in)>length($in2))
{
$size=length($in);
}
else
{
$size=length($in2);
}
#initialization

for($i=0;$i<=length($in);$i++)
{
for($j=0;$j<=length($in2);$j++)
  {
   $score[$i][$j]=0;
}
}

#local alignment
print"Input gap penaly,match and mismatch score \n";

print"match: \n";
$match=<>;
print"mismatch: \n";
$mismatch=<>;
print "gap penalty:\n";
$gap=<>;
#printing of second sequence


print "   ";
for($j=0;$j<=length($in2);$j++)
{
print"  $seq2[$j]  ";

}



#filling the matrix

for($i=0;$i<=length($in);$i++)
 {
 print "\n$seq1[$i]  ";
  for($j=0;$j<=length($in2);$j++)
  {
$s1=$score[$i-1][$j];
$s2=$score[$i-1][$j-1];
$s3=$score[$i][$j-1];

$sc1=$s1+$gap;
if($seq1[$i] eq $seq2[$j])
 {
  $sc2=$s2+$match;
   }
else 
{ 
$sc2=$s2+$mismatch;
}
$sc3=$s3+$gap;

if($sc2>=$sc3 && $sc2>=$sc1)
{
if($sc2<0)
{
$sc2=0;
}
else
{
$score[$i][$j]=$sc2;
}
}

elsif($sc1>$sc2&& $sc1>$sc3)
{
if($sc1<0)
{
$sc1=0;
}
else
{
$score[$i][$j]=$sc1;
}
}

else
{
if($sc3<0)
{
$sc3=0;
}

else
{
$score[$i][$j]=$sc3;
}
}

if($i==0||$j==0)
{
$score[$i][$j]=0;
print "  $score[$i][$j]  ";
}
else
{
print"  $score[$i][$j]  ";
}

}

}

print"\n";

