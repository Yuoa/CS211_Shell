#!/usr/bin/perl
#!/usr/local/bin/perl
#Written by Labus

use strict;
use warnings;
use Cwd;

my $basicCommandRef = getcwd."/sdriver.pl -s ./tshref -t trace";
my $basicCommand = getcwd."/sdriver.pl -s ./tsh -t trace";

for(my $i = 1; $i < 17; $i++) {

	print "[TRACE TEST - ".$i."]\n";
	print "=========================(ref)==========================\n";

	if($i < 10) {
		system($basicCommandRef."0".$i.".txt");
	}
	else {
		system($basicCommandRef.$i.".txt");
	}
	print "\n-----(Our tsh)-----\n";
	if($i < 10) {
		system $basicCommand."0".$i.".txt";
	}
	else {
		system $basicCommand.$i.".txt";
	}
	printf("\n========================================================\n\n\n");

}

exit;
