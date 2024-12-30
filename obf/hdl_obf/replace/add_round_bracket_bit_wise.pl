#!/usr/bin/perl
# Library
use English;
use Cwd;
use Time::Local;
use strict;
use Getopt::Long;

# Local Variables and Get Script Arguments
my  $options = {};
$options->{'src'}           = "";   #   Top source file
$options->{'output'}        = "";   #   Output file
$options->{'level'}         = "";   #   Top module
$options->{'skip'}          = 0 ;   #   Recompile Design
$options->{'help'}          = 0 ;

GetOptions  (
  "src=s"             => \$options->{'src'}             ,
  "out=s"             => \$options->{'output'}          ,
  # "level=i"           => \$options->{'level'}           ,
  # "skip=s@"           => \$options->{'skip'}            ,
  # "remove=s@"         => \$options->{'remove'}          ,
  "help"              => \$options->{'help'}
);

if ($options->{'help'}) {
  PrintUsage();
  die "\n\n";
}

printf "Source file      : $options->{'src'}\n";
printf "Output file      : $options->{'output'}\n";
# printf "Wave level       : $options->{'level'}\n";
# printf "Skip module      : @{$options->{'skip'}}\n";
# printf "Remove module    : @{$options->{'remove'}}\n";

# Function: PrintUsage ---------------------------------------------------------------------------
# Print Usage Message
# Parameters:
#   None
# Return:
#   None
#
sub PrintUsage {
  printf "\nWave Generator Script Usage\n";
  printf "Script Syntax: wave_generator.pl --src=top_level_source --out=output_file [options]\n\n";
  printf "Options                 Description\n";
  printf "--file-list=file        Specify compiling file-list\n";
  printf "--group-file=file       Specify timing group\n";
  printf "--option=option         Miscellaneous vsim options\n";
  printf "--unload=module         Specify module which internal sub-module will not Appear in the Waveform\n";
  printf "--unload-recs=module    Specify module which internal sub-module and signals will not appear in the waveform\n";
  printf "--load=module           Specify module which signals will be added to waveform\n";
  printf "--load-recs=module      Specify Module which signals and sub-module will be added to waveform\n";
  printf "--gen-group=group       Specify waveform group will be generated: parameter, input, output or internal\n";
  printf "--help                  Print Script Usage Page\n\n";
}

# Main Function ----------------------------------------------------------------------------------
# Create Empty Array Reference
# Parameters:
#   $_[0]: Argument Hash Reference
# Return:
#   None
#
sub Main(@) {
  my  $options = $_[0];
  my  $fhandle;
  my  $fhandle_o;
  my  $line;
  my  $tmp;
  my  @words;
  my  @regs;
  my  @assign_sigs;
  my  @result_files;
  my  @logs;
  my  @remove_mod;
  my  $del = 0;
  my  $index = 0;
  my  $flag;
  my  $file;
  opendir ($fhandle, "$options->{'src'}") or die "Cannot open $options->{'src'}";

  $#logs = -1;
  open (LOG, ">run_add\.log") or die "Cannot open run_add\.log";     

  while ($file = readdir ($fhandle)) {
    if ($file =~ /\.sv$/) {
      push @logs, "--------------------------------------------------------------------------------------------------\n";
      push @logs, "--------------------------------------------------------------------------------------------------\n";
      push @logs, "\nreplacing $file\n";
      push @logs, "--------------------------------------------------------------------------------------------------\n";
      push @logs, "--------------------------------------------------------------------------------------------------\n";
      print "$file\n";
      $file =~ s/\.sv$//;
      $#regs = -1;
      $#assign_sigs = -1;
      $#result_files = -1;



      open (RESUL_FILE, ">$file\.sv1") or die "Cannot open $file\.sv1";
      open (FILE, "$file\.sv") or die "Cannot open $file\.sv"; 


      while ($line = <FILE>) {

        $index++;
        # $line =~ s/\\//g;


        if (($line =~ /\& \&/) ) {
          my $index_str = index($line,"& &");
          print "$line";
          print "id1: $index_str\n";
          my $str1 = substr($line,0,$index_str);
          my $str2 = substr($line,$index_str+3);
          print "$str1\n";
          print "$str2";
          if ( (substr($str2,0,1) =~  /[a-zA-Z]/) || (substr($str2,0,1) =~  /\_/) ){
            print "ok1111\n";
            my $stt;
            for ($stt = 1; $stt < length($str2) ; $stt++){
              if ((substr($str2,$stt,1) =~ /\ /) || (substr($str2,$stt,1) =~ /\;/)){
                print "$stt\n";
                my $str21 = substr($str2,0,$stt);
                my $str22 = substr($str2,$stt);
                $str2 = "$str21)$str22";
                print "$str2";
                last;
              }
            }
          }
          elsif (substr($str2,0,1) =~ /\(/) {
            print "0k2222\n";
            my $stt;
            for ($stt = 1; $stt < length($str2) ; $stt++){
              if (substr($str2,$stt,1) =~ /\)/){
                print "id2: $stt\n";
                my $str21 = substr($str2,0,$stt);
                my $str22 = substr($str2,$stt);
                $str2 = "$str21)$str22";
                print "$str2";
                last;
              }
            }            
          }           
          $line = "$str1& (&$str2";

   #       print "$str1\n";
   #       print "$str2\n";
  #        $line =~ s/\& \&/\& \(\&/g;

  #        $line =~ s/\;/\)\;/g;
    #      my $new_line = "";
          # $line = $new_line;
          print "$line\n";
      #    push @logs, "$new_line";
        }   

       if ($line =~ /\| \|/) {
          my $index_str = index($line,"| |");
          print "$line";
          print "id1: $index_str\n";
          my $str1 = substr($line,0,$index_str);
          my $str2 = substr($line,$index_str+3);
          print "$str1\n";
          print "$str2";
          if (substr($str2,0,1) =~ /T/) {
            print "ok1111\n";
            my $stt;
            for ($stt = 1; $stt < length($str2) ; $stt++){
              if ((substr($str2,$stt,1) =~ /\ /) || (substr($str2,$stt,1) =~ /\;/)){
                print "$stt\n";
                my $str21 = substr($str2,0,$stt);
                my $str22 = substr($str2,$stt);
                $str2 = "$str21)$str22";
                print "$str2";
                last;
              }
            }
          }
          elsif (substr($str2,0,1) =~ /\(/) {
            print "0k2222\n";
            my $stt;
            for ($stt = 1; $stt < length($str2) ; $stt++){
              if (substr($str2,$stt,1) =~ /\)/){
                print "id2: $stt\n";
                my $str21 = substr($str2,0,$stt);
                my $str22 = substr($str2,$stt);
                $str2 = "$str21)$str22";
                print "$str2";
                last;
              }
            }            
          }           
          $line = "$str1| (|$str2";

   #      my $new_line = "";
         # $line = $new_line;
         my $line_temp = $line;
         print "$line\n";
         my $count1 = ($line_temp =~ s/[\(]//g);
         my $count2 = ($line_temp =~ s/[\)]//g);
         if ($count1 != $count2) {
          print "errrrrrrrrrrrrrrrr";
           print $line =~ s/[\n]//g;
           $line = "$line)\n"
         }
   #      print $line =~ s/[\(]//g;
   #      print $line =~ s/[\)]//g;
     #    push @logs, "$new_line";
       }   
         push @result_files, $line;
      }
 
      print RESUL_FILE  join ("", @result_files);
      close RESUL_FILE;
      close FILE;
    }
  }
  print LOG  join ("", @logs);
  close LOG;
  close ($fhandle);
}

Main($options);
