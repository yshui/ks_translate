while(<>){
	chomp;
	my $line = $_;
	if($line =~ /^"/){
		print "#$line\n";
		print "\"\"\n";
	}elsif($line =~ /(\w{1,4}) "([^"]*)"/){
		print "#$line\n";
		print "$1 \"\"\n";
	}else{
		print "$line\n";
	}
}
