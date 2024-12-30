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
  open (LOG, ">run_replace\.log") or die "Cannot open run_replace\.log";     

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
        $line =~ s/\\//g;
        $line =~ s/\,/\ \,\ /g;

        if ($line =~ /32\'h.*/) {
        my $new_line = "";
        push @logs, "--------------------\n$line";
        my @words = split (/\'/, $line);
        my $id;
          for ( $id = 0; $id < $#words; $id++) {
           if (substr($words[$id],-2) =~ /32/){
            $words[$id] = substr($words[$id],0,-2);
      #      print "id1 fix :: $id : $words1[$id]\n";
            my $hex_num = substr($words[$id+1],1,8);
            my $dec_num = hex $hex_num;
     #       print "$dec_num\n";
            my $sub1 = substr($words[$id+1],9);
            $words[$id+1] = "$dec_num$sub1";
      #      print "id1+1 fix :: $id+1 : $words1[$id+1]\n";
            $new_line = "$new_line$words[$id]";
           }
           else {
            $new_line = "$new_line$words[$id]'";
           }
          }
          $new_line = "$new_line$words[$id]";
          $line = $new_line;
          push @logs, "$new_line";
        }   


        if ($line =~ /\$signed*/) {
        my $new_line = "";
        push @logs, "--------------------\n$line";
        my @words1 = split (/\$/, $line);
          $new_line = $words1[0];
          for (my $id = 1; $id <= $#words1; $id++) {

           if (substr($words1[$id],0,6) =~ /signed/){
            $words1[$id] = substr($words1[$id],6);
           }
           else {
            $words1[$id] = "\$$words1[$id]"
           }
            $new_line = "$new_line$words1[$id]";
          }
          $line = $new_line;
          push @logs, "$line";
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
