#!/home/raj/.plenv/shims/perl
use v5.24;

say "Enter your options:";

my $line = undef;

while( $line ne 'Q' && $line ne 'q' ){
	say "Please enter your option: ";
	chomp ( $line = <> );
	say "The value of line is $line";
}



