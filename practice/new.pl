#!usr/bin/perl -w
use strict;
my (%hash,$key,$value);
my $str="himanshihvyvyuuyguybubugytyvuygvuygfctyuiunvfhgcyggh";
my $st=substr($str,1,7);
my $pt=substr($str,8,10);
my $pm=substr($str,11,7);
print "$st\n";
print "$pt\n";
print "$pm\n";
%hash=("garima",2,"sahil",3,"vijay",4);
while(($key,$value)=each(%hash))
{
print $key,$value;
}

