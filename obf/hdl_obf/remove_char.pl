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
  my  @logs;
  my  @remove_mod;
  my  $del = 0;
  my  $index = 0;
  my  $flag;
  my  $file;
  opendir ($fhandle, "$options->{'src'}") or die "Cannot open $options->{'src'}";

  while ($file = readdir ($fhandle)) {
    if ($file =~ /\.sv$/) {
      print "$file\n";
      $file =~ s/\.sv$//;
      $#regs = -1;
      $#assign_sigs = -1;
      $#logs = -1;

      open (LOG, ">$file\.sv1") or die "Cannot open $file\.sv1";
      open (FILE, "$file\.sv") or die "Cannot open $file\.sv";      
      while ($line = <FILE>) {
        $index++;
        # print "$line\n";
        $line =~ s/\\/_/g;
        $line =~ s/\,/\ \,\ /g;
        # print "New $line\n";
        if ($line =~ /\[\d+\]\./) {
          my $new_line;
          @words = split (/\[/, $line);
           if ((substr($words[0], 0, 6) !~ /always/) || (substr($words[0], 0, 2) !~ /if/) || (substr($words[0], 0, 6) !~ /assign/) 
            || (substr($words[0], 0, 6) !~ /wire/) || (substr($words[0], 0, 6) !~ /reg/)){
            print "FOUND*******  $words[0]\n";
           } else {
            $words[0] = "["."$words[0]";
           }
          for (my $id = 1; $id <= $#words; $id++) {
#            if ($words[$id] =~ /\[\d+\]\./) {
            if ((substr($words[$id], 0, 1) =~ /\d/) && ($words[$id] =~ /\]\./)) {
              print "FOUND  $words[$id]\n";
              $words[$id] = "_"."$words[$id]";
            }
            # elsif ((substr($words[$id], 0, 6) !~ /always/) && (substr($words[$id], 0, 2) !~ /if/) && (substr($words[$id], 0, 6) !~ /assign/))
            # {
            #   print "FOUND------------  $words[$id]\n";
            #   $words[$id] = "["."$words[$id]";
            # }
            else {
              print "FOUND*******  $words[$id]\n";
              $words[$id] = "["."$words[$id]";
            }
#              $words[$id] =~ s/\[/\_/g;
            $words[$id] =~ s/\]\./\_/g;
          }
          $line = join ("", @words);
          $line = $line."\n";
        }
        else {
          if ($line =~ /\d\./) {
            # print "FOUND  $line\n";
            $line =~ s/\./\__/g;  
          }
        }
        $line =~ s/\./\__/g;  
        $line =~ s/\//\__/g;
        push @logs, $line;
      }
      print LOG  join ("", @logs);
      close LOG;
      close FILE;
    }
  }
  close ($fhandle);

  # open (LOG, ">$options->{'output'}") or die "Cannot open $options->{'output'}";
  # open (REG, ">reg.log") or die "Cannot open $options->{'output'}";
  # open (ASSIGN, ">assign.log") or die "Cannot open $options->{'output'}";


  # while ($line = <$fhandle>) {
  #   $index++;
  #   # print "$line\n";
  #   $line =~ s/\[/ \[/g;
  #   # print "New $line\n";
  #   @words = split (" ", $line);

  #   if ($words[0] =~ /^reg/ | ($words[1] =~ /^reg$/ & $line =~ /output /)) {
  #     # print "Line $index reg $words[$#words -1]\n";
  #     if ($words[$#words] =~ /^\;/) {
  #       push @regs, $words[$#words -1];
  #       print REG "$words[$#words -1]\n";
  #     }
  #     else {
  #       $words[$#words] =~ s/\;//;
  #       push @regs, $words[$#words];
  #       print REG "$words[$#words -1]\n";
  #     };
  #   }

  #   if ($words[0] =~ /^assign/ ) {
  #     push @assign_sigs, $words[1];
  #     print ASSIGN "Line $index assign $words[1]\n";
  #     # for (my $id = 0; $id <= $#regs; $id++) {
  #     #   if ($words[1] eq "$regs[$id]"  ) {
  #     #     push @assign_sigs, $words[1];
  #     #     print ASSIGN "assign $assign_sigs[$#assign_sigs]\n";
  #     #     # print LOG "$index $words[1]\n";
  #     #   }
  #     # }
  #   }

  # }
  # print "There are $#regs  registers\n";
  # for (my $id = 0; $id <= $#regs; $id++) {
  #   $flag = 0;
  #   for (my $id1 = 0; $id1 <= $#assign_sigs; $id1++) {
  #     if ($regs[$id] eq "$assign_sigs[$id1]") {
  #       $flag = 1;
  #       push @logs, $regs[$id];
  #       print "Found $regs[$id]\n";
  #       last;
  #     }
  #   }
  # }

  # print LOG  join ("\n", @logs);
  # close $fhandle;
  # close LOG;
  # print "END";
}

Main($options);
