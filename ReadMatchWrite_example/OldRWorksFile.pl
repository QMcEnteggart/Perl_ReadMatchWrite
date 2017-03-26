
my $line;
my $length;
my @linearray;

#Z:/RWorks/
open ESDUIN,"<ESDU_RES" || die "Cannot open test for reading\n";
open CDOUT,">CD_Out.txt" || die "Cannot open write file for reading\n";

while (<ESDUIN>) #loop through each line of the input file
{	
	$line = $_; #read in currect line	
		
		#match, start of line, followed by CD,
		#followed by a white space more than once
	if ($line =~ /^ CD\s+/){ 		
		#split the input line by white spaces
		@linearray = split(/\s+/,$line);	
		#get rid of the first 2 elements 
		splice(@linearray,0,2);
			$length = @linearray;
			print CDOUT "$length\n";
			for my $element (@linearray){
				#print to output file
				print CDOUT "$element\n";				
  			}
	}#end if							
 }#end while
 
 close(ESDUIN);
 close(CDOUT);