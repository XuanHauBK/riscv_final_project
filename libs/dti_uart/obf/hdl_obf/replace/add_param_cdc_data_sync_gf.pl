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
    if ( $file =~ /port_bridge\.sv$/
      || $file =~ /dti_cmd_cptr\.sv$/
    ) {
      push @logs, "--------------------------------------------------------------------------------------------------\n";
      push @logs, "--------------------------------------------------------------------------------------------------\n";
      push @logs, "\nadding cdc parameter $file\n";
      push @logs, "--------------------------------------------------------------------------------------------------\n";
      push @logs, "--------------------------------------------------------------------------------------------------\n";
      print "$file\n";
      $file =~ s/\.sv$//;
      $#regs = -1;
      $#assign_sigs = -1;
      $#result_files = -1;


      open (RESUL_FILE, ">$file\.sv1") or die "Cannot open $file\.sv1";
      open (FILE, "$file\.sv") or die "Cannot open $file\.sv"; 

      my $count_module = 0;
      my @array_signal;
      my @array_width;
      my $is_pointer = 0;
      my $dest_signal;
      my $stt;
      while ($line = <FILE>) {
        if ($line =~ /dti_cdc_data_sync_gf /) {
            $line =~ s/__clk_src\(/\.clk_src\(/g;
            $line =~ s/__clk_dest\(/\.clk_dest\(/g;
            $line =~ s/__reset_n\(/\.reset_n\(/g;
            $line =~ s/__din_src\(/\.din_src\(/g;
            $line =~ s/__dout_dest\(/\.dout_dest\(/g;
            # print "\n$line";
            $stt  = $count_module;
            
            if (   $line =~ /rd_sync_wr_full_/ 
                || $line =~ /wr_sync_rd_empty_/ 
                || $line =~ /rd_prog_full_/
                || $line =~ /rd_sync_rd_wr_full_/
                || $line =~ /rd_sync_wr_prog_full_/
               ){
                $dest_signal = 1;
                $array_width[$stt] = 1;
                $line =~ s/dti_cdc_data_sync_gf/dti_cdc_data_sync_gf \#\(\.DATA_WIDTH \(1\)\, \.SRC_SYNC \(0\)\)/g;
            }
            elsif(   $line =~ /_ptr_/
                  || $line =~ /_ptr/
                ){
               $line =~ s/dti_cdc_data_sync_gf/dti_cdc_data_sync_gf \#\(\.DATA_WIDTH \(4\)\, \.SRC_SYNC \(0\)\)/g;
               $is_pointer = 1;
                # if($line =~ /\.dout_dest\((.+?) \)/i){
                #     $dest_signal = $1;
                # }
            }            
            $count_module ++;
        }   
        push @result_files, $line;
        if ($line =~ /__dout_dest\((.+?)\)/i) {
          my $test = $1;
          # print "$line";
           if ($is_pointer == 1){
            $dest_signal = $test;
            $is_pointer = 0;
           }
        }
        # print "$stt\n";
        # print "$dest_signal\n";
        $array_signal[$stt] = $dest_signal;  
      }

     # print "90:::: $array_signal[90]\n";
      print "$count_module\n";
      close FILE;

      for (my $i = 0; $i < $count_module ; $i = $i + 1) {
          print "$array_signal[$i]\n";
      }

      open (FILE, "$file\.sv") or die "Cannot open $file\.sv"; 
    #  $count_module = 0;
      while ($line = <FILE>) {
        if ($line =~ /wire (.+?)\;/i) {
          my $current_signal = $1;
          my @words = split (/ /, $current_signal);
          # print "$words[1]\n";
          for (my $i = 0; $i < $count_module ; $i = $i + 1) {
            if (($array_signal[$i] != 1) && ($words[1] =~ $array_signal[$i])){
              print "$words[0] $i\n";
              if ($words[0] !~ /\[3\:0\]/){
                  print "Failseeeeeeeee\n";
                  push @result_files, "Failseeeeeeeee";
               }
            }
          }
        }
      }
      close FILE;
      print RESUL_FILE  join ("", @result_files);
      close RESUL_FILE;

    }
  }
  print LOG  join ("", @logs);
  close LOG;
  close ($fhandle);
}

Main($options);
