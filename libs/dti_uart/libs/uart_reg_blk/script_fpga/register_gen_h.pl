#!/usr/bin/perl
#-----------------------------------------------------------------------------
#    Copyright (C) 2015 by Dolphin Technology
#    All right reserved.
#
#    Copyright Notification
#    No part may be reproduced except as authorized by written permission.
#
#    File: reg_fpga.pl
#    Project: dti_uart
#    Author: Hyunken10
#    Created: 01-04-2019
#    Description:
#    Read - Modify - Write Control
#
#    History:
#    Date ------------ By ------------ Change Description
#    01-07-2017        Tung            Created
#------------------------------------------------------------------------------

# Library
  use Cwd;
  use Time::Local;
  use strict;
  use Spreadsheet::Read;   # Read the data from a spreadsheet
  use Spreadsheet::ParseExcel;
  use Spreadsheet::XLSX;
  use OpenOffice::OODoc;
#  use Win32::Word::Writer; # Manupulate MS doc OLE based.

# Log file
  open (my $log_fh, ">rb_gen.log") || die "Can't open new file: $! rb_gen.log\n";

# Sub Main Function ----------------------------------------------------------
  sub main {
    my  $rb_sheet       = $_[0];
    my  @rb_sheet_array = @{getSheetInfo($rb_sheet)};
    
    print  "successful Register Validation!\n";
    
    rbRegisterGen(\@rb_sheet_array);
    # rbApbBridgeGen();
    # rbDerivativeRegGen(\@rb_sheet_array);
    # rbTopBlockGen(\@rb_sheet_array);
    # rbRegStructGen(\@rb_sheet_array);
    # rbDefMSD ocGen(\@rb_sheet_array);
  }
  
# Main Function ----------------------------------------------------------
  main(@ARGV);

#------------------------------------------------------------------------#
# GetSheetInfo Function
#------------------------------------------------------------------------#
  # Function Description
  # Parameters:
  #   $_[0]: Parameter Description
  # Return:
  #   None
  sub getSheetInfo (@) {
    my $rb_sheet_file   = $_[0];
    my $rb_sheet_array  = ReadData ("$rb_sheet_file");
    
    my      @rb_def_array;
    undef   @rb_def_array;
    
    my %sheet_ctrl_hash = %{$rb_sheet_array->[0]};
    
    $rb_def_array[0]{'sheet_no'}        = $sheet_ctrl_hash{'sheets'};
    $rb_def_array[0]{'sheet_type'}      = $sheet_ctrl_hash{'type'};
    $rb_def_array[0]{'sheet_parser'}    = $sheet_ctrl_hash{'parser'};
    $rb_def_array[0]{'sheet_ver'}       = $sheet_ctrl_hash{'version'};
    
    my $sheet_index = 0;        # Index of sheets
    my $sheet_row   = 0;        # Index of rows in a sheet
    my $sheet_col   = 0;        # Index of columns in a sheet
    my $reg_no      = 0;        # Number of registers
    my $field_index = 0;        # Index of register's fields
    
    $sheet_index    = 1;
    $reg_no         = 0;
    $field_index    = 0;
    
    my $sheet_label = $rb_sheet_array->[$sheet_index]{'label'};
    $rb_def_array[$sheet_index]{'sheet_label'} = $sheet_label;
    
    for ($sheet_row = 2; $sheet_row <= $rb_sheet_array->[$sheet_index]{'maxrow'}; $sheet_row++) {
      
      # Col 2: Register Name
      if ( $rb_sheet_array->[$sheet_index]{'cell'}[2][$sheet_row] ) {
        $reg_no++;
        $field_index = 0;
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_name'} = $rb_sheet_array->[$sheet_index]{'cell'}[2][$sheet_row];
    print "$rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_name'} - ";
      }
      
      # Col 3: Register Description
      if ( $rb_sheet_array->[$sheet_index]{'cell'}[3][$sheet_row] ) {
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_des'} = $rb_sheet_array->[$sheet_index]{'cell'}[3][$sheet_row];
      }
      
      # Col 4: Register Address(Hex)
      if ( $rb_sheet_array->[$sheet_index]{'cell'}[4][$sheet_row] ne "") {
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_addr'} = $rb_sheet_array->[$sheet_index]{'cell'}[4][$sheet_row];
    print "$rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_addr'} \n";
      }
      
      # Col 5: Number of Instances
      if ( $rb_sheet_array->[$sheet_index]{'cell'}[5][$sheet_row] ) {
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'num_inst'} = $rb_sheet_array->[$sheet_index]{'cell'}[5][$sheet_row];
      }
      
      # Col 6: Suffix
      if ( $rb_sheet_array->[$sheet_index]{'cell'}[6][$sheet_row] ) {
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'suffix'} = $rb_sheet_array->[$sheet_index]{'cell'}[6][$sheet_row];
      }
      
      # Col 7: Register Width
      if ( $rb_sheet_array->[$sheet_index]{'cell'}[7][$sheet_row] ) {
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_width'} = $rb_sheet_array->[$sheet_index]{'cell'}[7][$sheet_row];
      }
      
      # Col 8: Reset Value
      if ( $rb_sheet_array->[$sheet_index]{'cell'}[8][$sheet_row] ) {
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'rst_value'} = $rb_sheet_array->[$sheet_index]{'cell'}[8][$sheet_row];
      }
      
      # Col 9: Register SW Access
      if ( $rb_sheet_array->[$sheet_index]{'cell'}[9][$sheet_row] ) {
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_access'} = $rb_sheet_array->[$sheet_index]{'cell'}[9][$sheet_row];
      }
      
      # Col 10: Register Field
      if ( $rb_sheet_array->[$sheet_index]{'cell'}[10][$sheet_row] ) {
        $field_index++;
        
        # Field Name
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_field'}[$field_index]{'field_name'}  = $rb_sheet_array->[$sheet_index]{'cell'}[10][$sheet_row];
        
        # Field Description
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_field'}[$field_index]{'field_des'}   = $rb_sheet_array->[$sheet_index]{'cell'}[11][$sheet_row];
        
        # Field Offset
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_field'}[$field_index]{'field_off'}   = $rb_sheet_array->[$sheet_index]{'cell'}[12][$sheet_row];
        
        # Field Width
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_field'}[$field_index]{'field_width'} = $rb_sheet_array->[$sheet_index]{'cell'}[13][$sheet_row];
        
        # Field Reset Value
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_field'}[$field_index]{'field_reset'} = $rb_sheet_array->[$sheet_index]{'cell'}[14][$sheet_row];
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_field'}[$field_index]{'field_reset'} =~ s/\&apos;/'/g;
        
        # Field SW Access
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_field'}[$field_index]{'field_swacc'} = $rb_sheet_array->[$sheet_index]{'cell'}[15][$sheet_row];
        
        # Field HW Access
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_field'}[$field_index]{'field_hwacc'} = $rb_sheet_array->[$sheet_index]{'cell'}[16][$sheet_row];
        
        # Field I/O Type
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_field'}[$field_index]{'field_io'}    = $rb_sheet_array->[$sheet_index]{'cell'}[17][$sheet_row];
        
        # Simulation Value
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_field'}[$field_index]{'sim_value'}   = $rb_sheet_array->[$sheet_index]{'cell'}[18][$sheet_row];
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_field'}[$field_index]{'sim_value'} =~ s/\&apos;/'/g;
        
        # Field Derivation
        $rb_def_array[$sheet_index]{'reg'}[$reg_no]{'reg_field'}[$field_index]{'field_deriv'}    = $rb_sheet_array->[$sheet_index]{'cell'}[19][$sheet_row];
      }
    }
    
    # User Command Description
    $sheet_index = 2;
    my $cmd_no      = 0;
    for ($sheet_row = 2; $sheet_row <= $rb_sheet_array->[$sheet_index]{'maxrow'}; $sheet_row++) {
      # Command
      if ( $rb_sheet_array->[$sheet_index]{'cell'}[1][$sheet_row] ) {
        $cmd_no ++;
        $rb_def_array[$sheet_index]{'cmd'}[$cmd_no]{'cmd_name'} = $rb_sheet_array->[$sheet_index]{'cell'}[1][$sheet_row];
      }
      # Opcode
      if ( $rb_sheet_array->[$sheet_index]{'cell'}[2][$sheet_row] ) {
        $rb_def_array[$sheet_index]{'cmd'}[$cmd_no]{'cmd_op'} = $rb_sheet_array->[$sheet_index]{'cell'}[2][$sheet_row];
      }
      # Description
      if ( $rb_sheet_array->[$sheet_index]{'cell'}[3][$sheet_row] ) {
        $rb_def_array[$sheet_index]{'cmd'}[$cmd_no]{'cmd_des'} = $rb_sheet_array->[$sheet_index]{'cell'}[3][$sheet_row];
      }
    }
    
    return \@rb_def_array;
  }
  
#------------------------------------------------------------------------#
# rbRegisterGen Function
#------------------------------------------------------------------------#
  # Generate register.h, Register Block Register File module
  # Parameters:
  #   $_[0]: Register Definition Array
  # Return:
  #   None
  
  sub rbRegisterGen (@) {
    my @reg_def_array    = @{$_[0]};
    
    my $register_filename = "../fpga/header/register.h";
    open (my $register_fh, ">$register_filename") || die "Can't open new file: $! $register_filename\n";
    

  
  
    # Header
    printHeader($register_fh, $register_filename, "Register File");

    # Module Declaration
    print $register_fh "/***************************** Include Files ****************************************/ \n";
#    print $register_fh "#include \"xil_io.h\"\n";
#    print $register_fh "#include \"xparameters.h\"\n";
    print $register_fh "#include \"define.h\"\n";
    print $register_fh "/***************************** Constant Definitions *********************************/ \n";

    
    my @reg_array;   undef @reg_array;
  # Collect all derivative registers
    my @deriv_array; undef @deriv_array;
    
    my $sheet_index     = 1;
    
    @reg_array = @{$reg_def_array[$sheet_index]{'reg'}};
    
  # Gen Constant Definitions 
  
    for ( my $reg_index = 1; $reg_index <= $#reg_array; $reg_index++ ) {
      my @reg_field = @{$reg_array[$reg_index]{'reg_field'}};
      my $inst_no   = $reg_array[$reg_index]{'num_inst'};
      my $inst_suffix = $reg_array[$reg_index]{'suffix'};
      
      for ( my $inst_index = 0; $inst_index < $inst_no; $inst_index++) {
        my $name_ext = ( $inst_no > 1 ) ? "_"."$inst_suffix"."$inst_index" : "";
        for ( my $field_index = 1; $field_index <= $#reg_field; $field_index++ ) {
          if ( $reg_field[$field_index]{'field_deriv'} && ($reg_field[$field_index]{'field_deriv'} !~ /no_divide/)) {
            my $deriv_name = $reg_field[$field_index]{'field_deriv'};
            # Detect if the register existed
            my $existed = 0;
            if ( @deriv_array ) {
              for ( my $deriv_index = 1; $deriv_index <= $#deriv_array; $deriv_index++ ) {
                if ( $deriv_array[$deriv_index]{'deriv_name'} eq $deriv_name ) {
                  my @deriv_field = @{$deriv_array[$deriv_index]{'deriv_field'}};
                  $deriv_array[$deriv_index]{'deriv_width'}                                  += $reg_field[$field_index]{'field_width'};
                  if ( $reg_index == $#reg_array ) {
                    $deriv_array[$deriv_index]{'deriv_field'}[$#deriv_field + 1]{'field_name'}  = "$reg_field[$field_index]{'field_name'}"."$name_ext";
                  }
                  else {
                    $deriv_array[$deriv_index]{'deriv_field'}[$#deriv_field + 1]{'field_name'}  = "$reg_array[$reg_index]{'reg_name'}"."$name_ext"."_"."$reg_field[$field_index]{'field_name'}";
                  }
                  $existed = 1;
                  last;
                }
              }
              # New Derivative Register
              if ( $existed == 0 ) {
                my $deriv_num = $#deriv_array;
                $deriv_array[$deriv_num + 1]{'deriv_name'}                   = $deriv_name;
                $deriv_array[$deriv_num + 1]{'deriv_inst'}                   = $inst_no;
                $deriv_array[$deriv_num + 1]{'deriv_width'}                  = $reg_field[$field_index]{'field_width'};
                if ( $reg_index == $#reg_array ) {
                  $deriv_array[$deriv_num + 1]{'deriv_field'}[1]{'field_name'} = "$reg_field[$field_index]{'field_name'}"."$name_ext";
                }
                else {
                  $deriv_array[$deriv_num + 1]{'deriv_field'}[1]{'field_name'} = "$reg_array[$reg_index]{'reg_name'}"."$name_ext"."_"."$reg_field[$field_index]{'field_name'}";
                }
                if ( $reg_field[$field_index]{'field_hwacc'} =~ /R(O|W)/ ) {
                  $deriv_array[$deriv_num + 1]{'deriv_io'} = "Output";
                }
                if ( $reg_field[$field_index]{'field_hwacc'} =~ /WO/ ) {
                  $deriv_array[$deriv_num + 1]{'deriv_io'} = "Input";
                }
              }
            }
            # First Derivative Register
            else {
              $deriv_array[1]{'deriv_name'}                   = $deriv_name;
              $deriv_array[1]{'deriv_inst'}                   = $inst_no;
              $deriv_array[1]{'deriv_width'}                  = $reg_field[$field_index]{'field_width'};
              if ( $reg_index == $#reg_array ) {
                $deriv_array[1]{'deriv_field'}[1]{'field_name'} = "$reg_field[$field_index]{'field_name'}"."$name_ext";
              }
              else {
                $deriv_array[1]{'deriv_field'}[1]{'field_name'} = "$reg_array[$reg_index]{'reg_name'}"."$name_ext"."_"."$reg_field[$field_index]{'field_name'}";
              }
              if ( $reg_field[$field_index]{'field_hwacc'} =~ /R(O|W)/ ) {
                $deriv_array[1]{'deriv_io'} = "Output";
              }
              if ( $reg_field[$field_index]{'field_hwacc'} =~ /WO/ ) {
                $deriv_array[1]{'deriv_io'} = "Input";
              }
            }
          }
      else{
      my $width           = $reg_field[$field_index]{'field_width'} - 1;
          my $reg_field_width = ($width > 0) ? "[$width:0]" : "";
          
          # New line in Description
          my $cmt_new_line   = "\n";
          my $cmt_apos       = "&apos;";
          my $description    = $reg_field[$field_index]{'field_des'};
          my $cmt_space      = " " x 61;
          $description    =~ s/$cmt_new_line/\n$cmt_space\/\/ /g;
          $description    =~ s/$cmt_apos/\'/g;
          my $signal_name = "";
          $signal_name = "$reg_array[$reg_index]{'reg_name'}"."$name_ext"."_"."$reg_field[$field_index]{'field_name'}";

          if ( $reg_field[$field_index]{'field_hwacc'} =~ /W/ ) {
          }
          if ( $reg_field[$field_index]{'field_hwacc'} =~ /RO/ ) {
          }
      if ( $reg_field[$field_index]{'field_hwacc'} =~ /RW/ ) {
          }
      }
        }
      }
    }
  
  # print $register_fh "//Derivative Signals\n";
    for ( my $reg_index = 1; $reg_index <= $#reg_array; $reg_index++ ) {
      my @reg_field = @{$reg_array[$reg_index]{'reg_field'}};
      my $inst_no   = $reg_array[$reg_index]{'num_inst'};
      my $inst_suffix = $reg_array[$reg_index]{'suffix'};
      for ( my $inst_index = 0; $inst_index < $inst_no; $inst_index++) {
        my $name_ext = ( $inst_no > 1 ) ? "_"."$inst_suffix"."$inst_index" : "";
        for ( my $field_index = 1; $field_index <= $#reg_field; $field_index++ ) {
          if ( $reg_field[$field_index]{'field_deriv'} && ($reg_field[$field_index]{'field_deriv'} !~ /no_divide/)) {
            my $width           = $reg_field[$field_index]{'field_width'} - 1;
            my $reg_field_width = ($width > 0) ? "[$width:0]" : "";
            my $signal_name     = "";
              $signal_name = "$reg_array[$reg_index]{'reg_name'}"."$name_ext"."_"."$reg_field[$field_index]{'field_name'}";
            if ( $reg_field[$field_index]{'field_hwacc'} =~ /R(O|W)/ ) {
            }
            if ( $reg_field[$field_index]{'field_hwacc'} =~ /WO/ ) {
            }
          }
        }
      }
    }

    
    

    # Register Declaration
    print $register_fh "\n";
    for ( my $reg_index = 1; $reg_index <= $#reg_array; $reg_index++ ) {
      my @reg_field = @{$reg_array[$reg_index]{'reg_field'}};
      my $inst_no   = $reg_array[$reg_index]{'num_inst'};
      my $inst_suffix = $reg_array[$reg_index]{'suffix'};
      
      # New line in Description
      my $cmt_space     = sprintf("%18s", "");
      my $reg_des       = $reg_array[$reg_index]{'reg_des'};
      $reg_des          =~ s/\n/\/\/$cmt_space/g;
      for ( my $inst_index = 0; $inst_index < $inst_no; $inst_index++) {
        my $name_ext    = ( $inst_no > 1 ) ? "_"."$inst_suffix"."$inst_index" : "";
        # Address of the instance
        my $inst_addr_dec = 0;
        $inst_addr_dec = hex($reg_array[$reg_index]{'reg_addr'}) + 4*$inst_index;
        
        my $inst_addr_hex = uc(sprintf("%03x", $inst_addr_dec));

        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        if ( $reg_array[$reg_index]{'reg_name'} =~ /^NA$/ ) {
        } else { 
          # print $register_fh "// ";
          print $register_fh "#define ";
          print $register_fh "ADDR_REG_";     print $register_fh uc(""."$reg_array[$reg_index]{'reg_name'}"."$name_ext");printSpace(15-length("$reg_array[$reg_index]{'reg_name'}"."$name_ext"),    $register_fh);
          print $register_fh "(UART_APB_BASEADDR + "; print $register_fh ""."0x"."$inst_addr_hex)"."\n";
        }





        # print $register_fh "//-----------------------------------------------------------------------------\n\n";
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================
        # ==================================================================================================================

        
        # Procedural Blocks For Register Fields
        for ( my $field_index = 1; $field_index <= $#reg_field; $field_index++ ) {
          # New line in Description
          my $cmt_space   = sprintf("%18s", "");
          my $field_des   = $reg_field[$field_index]{'field_des'};
          $field_des      =~ s/\n/\/\/$cmt_space/g;
          
          # Header of Register Fields

          
          # Procedural Blocks
          my $reg_field_name = "$reg_array[$reg_index]{'reg_name'}"."$name_ext"."_"."$reg_field[$field_index]{'field_name'}";
          my $proc_name = uc($reg_field_name)."_PROC";
          
          if ($reg_field[$field_index]{'field_swacc'} =~ /RW/ ) {
            my $addr_start = $reg_field[$field_index]{'field_off'};
            my $addr_end   = $reg_field[$field_index]{'field_off'} + $reg_field[$field_index]{'field_width'} - 1;
            my $field_pos  = ($reg_field[$field_index]{'field_width'} > 1) ? "[$addr_end:$addr_start]" : "[$addr_start]";
          if ($reg_field_name !~ /dat0_static_address_valid/) {
      if ( ($reg_field_name =~ /dat0_static_address/) && ($reg_field[$field_index]{'field_deriv'} !~ /no_divide/) ) {
            }
      else {
      }
            if ( ($reg_field_name =~ /dat0_static_address/) && ($reg_field[$field_index]{'field_deriv'} !~ /no_divide/) ) {
            }
            else  {
            }
          }
      }
          if ($reg_field[$field_index]{'field_swacc'} =~ /RO/ ) {
            
            # Interrupt Register
            if ( $reg_array[$reg_index]{'reg_name'} =~ /intstt/ ) {
              if ( $reg_field[$field_index]{'field_name'} =~ /err_syn/ ){
              }
              else {
                my $en_name  = "dmcfg"."_"."$reg_field[$field_index]{'field_name'}"."_en";
                my $clr_name = "dmcfg"."_"."$reg_field[$field_index]{'field_name'}"."_clr";
              }
            }
            # DDR BIST
            elsif ($reg_array[$reg_index]{'reg_name'} =~ /ddrbiststt/) {
              if ( $reg_field[$field_index]{'field_name'} =~ /fail/ ) {
              }
              else {
              }
            }
            # MPRR
            elsif ( $reg_array[$reg_index]{'reg_name'} =~ /mpr/ ) {
              if ( $reg_field[$field_index]{'field_name'} =~ /done/ ) {
              }
              else {
              }
            }
            # MRR
            elsif ( $reg_array[$reg_index]{'reg_name'} =~ /mrr/ ) {
              if ( $reg_field[$field_index]{'field_name'} =~ /done/ ) {
              }
              else {
              }
            }
            else {
            }
          }
        }
      }
    }
  
  for ( my $reg_index = 1; $reg_index <= $#reg_array; $reg_index++ ) {
    if ( $reg_array[$reg_index]{'reg_access'} =~ /R/ ) {
        my $inst_no   = $reg_array[$reg_index]{'num_inst'};
        my $inst_suffix = $reg_array[$reg_index]{'suffix'};
        for ( my $inst_index = 0; $inst_index < $inst_no; $inst_index++) {
          my $name_ext    = ( $inst_no > 1 ) ? "_"."$inst_suffix"."$inst_index" : "";
          # Address of the instance
          my $inst_addr_dec = 0;
          $inst_addr_dec = hex($reg_array[$reg_index]{'reg_addr'}) + 4*$inst_index;
          my $inst_addr_hex = uc(sprintf("%03x", $inst_addr_dec));
          my $name_ext    = ( $inst_no > 1 ) ? "_"."$inst_suffix"."$inst_index" : "";
          my $mux_data = "mux_"."$reg_array[$reg_index]{'reg_name'}"."$name_ext";

     }
      }
    }

    # Gen Type Definitions
    print $register_fh "\n", "/**************************** Type Definitions *******************************/"."\n";
    print $register_fh "", "#define _RO volatile const // Read-Only register"."\n";
    print $register_fh "", "#define _RW volatile // Read-Write register"."\n";
    print $register_fh "", "// Register field type"."\n";
    print $register_fh "", "typedef struct RegField {"."\n";
    print $register_fh "", "  u8 offset;"."\n";
    print $register_fh "", "  u32 mask;"."\n";
    print $register_fh "", "  volatile u32 value;"."\n";
    print $register_fh "", "} RegField;"."\n";

    


for ( my $reg_index = 1; $reg_index <= $#reg_array; $reg_index++ ) {
      my @reg_field = @{$reg_array[$reg_index]{'reg_field'}};
      my $inst_no   = $reg_array[$reg_index]{'num_inst'};
      my $inst_suffix = $reg_array[$reg_index]{'suffix'};
      
      # New line in Description
      my $cmt_space     = sprintf("%18s", "");
      my $reg_des       = $reg_array[$reg_index]{'reg_des'};
      $reg_des          =~ s/\n/\/\/$cmt_space/g;
      for ( my $inst_index = 0; $inst_index < $inst_no; $inst_index++) {
        my $name_ext    = ( $inst_no > 1 ) ? "_"."$inst_suffix"."$inst_index" : "";
        # Address of the instance
        my $inst_addr_dec = 0;
        $inst_addr_dec = hex($reg_array[$reg_index]{'reg_addr'}) + 4*$inst_index;
        
        my $inst_addr_hex = uc(sprintf("%03x", $inst_addr_dec));
        if ( $reg_array[$reg_index]{'reg_name'} =~ /^NA$/ ) {}
        else {
          

        print $register_fh "typedef struct reg_"; print $register_fh ""."$reg_array[$reg_index]{'reg_name'}"."$name_ext";print $register_fh " { \n";
<<<<<<< .mine
        print $register_fh "u32 data_u; \n";
=======
        print $register_fh "u32 reg_data; \n";
>>>>>>> .r4018

        # for ( my $field_index = 1; $field_index <= $#reg_field-1; $field_index++ ) {
        for ( my $field_index = 1; $field_index <= $#reg_field; $field_index++ ) {
          my $addr_start = $reg_field[$field_index]{'field_off'};
          my $addr_end   = $reg_field[$field_index]{'field_off'} + $reg_field[$field_index]{'field_width'} - 1;
          my $field_pos  = ($reg_field[$field_index]{'field_width'} > 1) ? "[$addr_end:$addr_start]" : "[$addr_start]";
          
          # print $register_fh "//   ";
          if ( $reg_field[$field_index]{'field_name'} =~ /^rfu$/ ) 
          { 
            print $register_fh "// ";
          }
          else {
            print $register_fh "RegField ";
#            print $register_fh "$reg_array[$reg_index]{'reg_name'}"."_"."$reg_field[$field_index]{'field_name'}";
            print $register_fh "$reg_field[$field_index]{'field_name'}";
          }
          if ( $reg_field[$field_index]{'field_name'} =~ /^rfu$/ ) {
            print $register_fh " ("."$reg_field[$field_index]{'field_des'}".")\n";
          }
          else {
            print $register_fh "".";"."\n";
          }
        }

        print $register_fh "} reg_";print $register_fh ""."$reg_array[$reg_index]{'reg_name'}"."$name_ext";print $register_fh "_t;\n";
        
        # Procedural Blocks For Register Fields
        for ( my $field_index = 1; $field_index <= $#reg_field; $field_index++ ) {
          # New line in Description
          my $cmt_space   = sprintf("%18s", "");
          my $field_des   = $reg_field[$field_index]{'field_des'};
          $field_des      =~ s/\n/\/\/$cmt_space/g;
          
          # Procedural Blocks
          my $reg_field_name = "$reg_array[$reg_index]{'reg_name'}"."$name_ext"."_"."$reg_field[$field_index]{'field_name'}";
          my $proc_name = uc($reg_field_name)."_PROC";
          

          
        }
        }
      }
    }

# /************************** Variable Definitions *****************************/
# extern reg_uci_t reg_uci;
    print $register_fh "\n", "/************************** Variable Definitions *****************************/"."\n";

    for ( my $reg_index = 1; $reg_index <= $#reg_array; $reg_index++ ) {
      my @reg_field = @{$reg_array[$reg_index]{'reg_field'}};
      my $inst_no   = $reg_array[$reg_index]{'num_inst'};
      my $inst_suffix = $reg_array[$reg_index]{'suffix'};
      
      # New line in Description
      my $cmt_space     = sprintf("%18s", "");
      my $reg_des       = $reg_array[$reg_index]{'reg_des'};
      $reg_des          =~ s/\n/\/\/$cmt_space/g;
      for ( my $inst_index = 0; $inst_index < $inst_no; $inst_index++) {
        my $name_ext    = ( $inst_no > 1 ) ? "_"."$inst_suffix"."$inst_index" : "";
        # Address of the instance
        my $inst_addr_dec = 0;
        $inst_addr_dec = hex($reg_array[$reg_index]{'reg_addr'}) + 4*$inst_index;
        my $inst_addr_hex = uc(sprintf("%03x", $inst_addr_dec));
        if ( $reg_array[$reg_index]{'reg_name'} =~ /^NA$/ ) {}
        else {

        print $register_fh "extern reg_"; print $register_fh ""."$reg_array[$reg_index]{'reg_name'}"."$name_ext"; print $register_fh "_t";
        print $register_fh " reg_"; print $register_fh ""."$reg_array[$reg_index]{'reg_name'}"."$name_ext";print $register_fh ";\n";
        # Procedural Blocks For Register Fields
        for ( my $field_index = 1; $field_index <= $#reg_field; $field_index++ ) {
          # New line in Description
          my $cmt_space   = sprintf("%18s", "");
          my $field_des   = $reg_field[$field_index]{'field_des'};
          $field_des      =~ s/\n/\/\/$cmt_space/g;
          # Procedural Blocks
          my $reg_field_name = "$reg_array[$reg_index]{'reg_name'}"."$name_ext"."_"."$reg_field[$field_index]{'field_name'}";
          my $proc_name = uc($reg_field_name)."_PROC";
          
          
        }
        }
      }
    }



# /************************** Function Prototypes ******************************/
    print $register_fh "\n", "/************************** Function Prototypes ******************************/"."\n";
    print $register_fh "void read_reg(u32 addr, u32 *data);\n";
    print $register_fh "void write_reg(u32 addr, u32 data);\n";
    print $register_fh "void get_field(RegField *field, u32 data);\n";
    print $register_fh "\n";

    for ( my $reg_index = 1; $reg_index <= $#reg_array; $reg_index++ ) {
      my @reg_field = @{$reg_array[$reg_index]{'reg_field'}};
      my $inst_no   = $reg_array[$reg_index]{'num_inst'};
      my $inst_suffix = $reg_array[$reg_index]{'suffix'};
      
      # New line in Description
      my $cmt_space     = sprintf("%18s", "");
      my $reg_des       = $reg_array[$reg_index]{'reg_des'};
      $reg_des          =~ s/\n/\/\/$cmt_space/g;
      if ( $reg_array[$reg_index]{'reg_name'} =~ /^NA$/ ) {}
      else {

      for ( my $inst_index = 0; $inst_index < $inst_no; $inst_index++) {
        my $name_ext    = ( $inst_no > 1 ) ? "_"."$inst_suffix"."$inst_index" : "";
        # Address of the instance
        my $inst_addr_dec = 0;
        $inst_addr_dec = hex($reg_array[$reg_index]{'reg_addr'}) + 4*$inst_index;
        
        my $inst_addr_hex = uc(sprintf("%03x", $inst_addr_dec));


        print $register_fh "void set_field_"; print $register_fh ""."$reg_array[$reg_index]{'reg_name'}"."$name_ext"; print $register_fh "(RegField *field, u32 value);\n";
        
        # Procedural Blocks For Register Fields
        for ( my $field_index = 1; $field_index <= $#reg_field; $field_index++ ) {
          # New line in Description
          my $cmt_space   = sprintf("%18s", "");
          my $field_des   = $reg_field[$field_index]{'field_des'};
          $field_des      =~ s/\n/\/\/$cmt_space/g;
          
          # Procedural Blocks
          my $reg_field_name = "$reg_array[$reg_index]{'reg_name'}"."$name_ext"."_"."$reg_field[$field_index]{'field_name'}";
          my $proc_name = uc($reg_field_name)."_PROC";
          

          
        }
      }
      }
    }


#void get_field_(RegField *field);
    print $register_fh "\n";
    print $register_fh "\n";
    print $register_fh "\n";

for ( my $reg_index = 1; $reg_index <= $#reg_array; $reg_index++ ) {
      my @reg_field = @{$reg_array[$reg_index]{'reg_field'}};
      my $inst_no   = $reg_array[$reg_index]{'num_inst'};
      my $inst_suffix = $reg_array[$reg_index]{'suffix'};
      
      # New line in Description
      my $cmt_space     = sprintf("%18s", "");
      my $reg_des       = $reg_array[$reg_index]{'reg_des'};
      $reg_des          =~ s/\n/\/\/$cmt_space/g;
      if ( $reg_array[$reg_index]{'reg_name'} =~ /^NA$/ ) {}
      else {

      for ( my $inst_index = 0; $inst_index < $inst_no; $inst_index++) {
        my $name_ext    = ( $inst_no > 1 ) ? "_"."$inst_suffix"."$inst_index" : "";
        # Address of the instance
        my $inst_addr_dec = 0;
        $inst_addr_dec = hex($reg_array[$reg_index]{'reg_addr'}) + 4*$inst_index;
        my $inst_addr_hex = uc(sprintf("%03x", $inst_addr_dec));
        print $register_fh "void get_field_"; print $register_fh ""."$reg_array[$reg_index]{'reg_name'}"."$name_ext"; print $register_fh "(RegField *field);\n";
        
        # Procedural Blocks For Register Fields
        for ( my $field_index = 1; $field_index <= $#reg_field; $field_index++ ) {
          # New line in Description
          my $cmt_space   = sprintf("%18s", "");
          my $field_des   = $reg_field[$field_index]{'field_des'};
          $field_des      =~ s/\n/\/\/$cmt_space/g;
          
          # Procedural Blocks
          my $reg_field_name = "$reg_array[$reg_index]{'reg_name'}"."$name_ext"."_"."$reg_field[$field_index]{'field_name'}";
          my $proc_name = uc($reg_field_name)."_PROC";
        }
      }
      }
    }

# void write_reg_();
    print $register_fh "\n";
    print $register_fh "\n";
    print $register_fh "\n";
for ( my $reg_index = 1; $reg_index <= $#reg_array; $reg_index++ ) {
      my @reg_field = @{$reg_array[$reg_index]{'reg_field'}};
      my $inst_no   = $reg_array[$reg_index]{'num_inst'};
      my $inst_suffix = $reg_array[$reg_index]{'suffix'};
      
      # New line in Description
      my $cmt_space     = sprintf("%18s", "");
      my $reg_des       = $reg_array[$reg_index]{'reg_des'};
      $reg_des          =~ s/\n/\/\/$cmt_space/g;
      if ( $reg_array[$reg_index]{'reg_name'} =~ /^NA$/ ) {}
      else {

      for ( my $inst_index = 0; $inst_index < $inst_no; $inst_index++) {
        my $name_ext    = ( $inst_no > 1 ) ? "_"."$inst_suffix"."$inst_index" : "";
        # Address of the instance
        my $inst_addr_dec = 0;
        $inst_addr_dec = hex($reg_array[$reg_index]{'reg_addr'}) + 4*$inst_index;
        
        my $inst_addr_hex = uc(sprintf("%03x", $inst_addr_dec));


        print $register_fh "void write_reg_"; print $register_fh ""."$reg_array[$reg_index]{'reg_name'}"."$name_ext"; print $register_fh "();\n";
        
        # Procedural Blocks For Register Fields
        for ( my $field_index = 1; $field_index <= $#reg_field; $field_index++ ) {
          # New line in Description
          my $cmt_space   = sprintf("%18s", "");
          my $field_des   = $reg_field[$field_index]{'field_des'};
          $field_des      =~ s/\n/\/\/$cmt_space/g;
          
          # Procedural Blocks
          my $reg_field_name = "$reg_array[$reg_index]{'reg_name'}"."$name_ext"."_"."$reg_field[$field_index]{'field_name'}";
          my $proc_name = uc($reg_field_name)."_PROC";
          

          
        }
      }
      }
    }

# void read_reg_();
    print $register_fh "\n";
    print $register_fh "\n";
    print $register_fh "\n";
for ( my $reg_index = 1; $reg_index <= $#reg_array; $reg_index++ ) {
      my @reg_field = @{$reg_array[$reg_index]{'reg_field'}};
      my $inst_no   = $reg_array[$reg_index]{'num_inst'};
      my $inst_suffix = $reg_array[$reg_index]{'suffix'};
      
      # New line in Description
      my $cmt_space     = sprintf("%18s", "");
      my $reg_des       = $reg_array[$reg_index]{'reg_des'};
      $reg_des          =~ s/\n/\/\/$cmt_space/g;
      if ( $reg_array[$reg_index]{'reg_name'} =~ /^NA$/ ) {}
      else {
        
      for ( my $inst_index = 0; $inst_index < $inst_no; $inst_index++) {
        my $name_ext    = ( $inst_no > 1 ) ? "_"."$inst_suffix"."$inst_index" : "";
        # Address of the instance
        my $inst_addr_dec = 0;
        $inst_addr_dec = hex($reg_array[$reg_index]{'reg_addr'}) + 4*$inst_index;
        
        my $inst_addr_hex = uc(sprintf("%03x", $inst_addr_dec));
        print $register_fh "void read_reg_"; print $register_fh ""."$reg_array[$reg_index]{'reg_name'}"."$name_ext"; print $register_fh "();\n";
        
        # Procedural Blocks For Register Fields
        for ( my $field_index = 1; $field_index <= $#reg_field; $field_index++ ) {
          # New line in Description
          my $cmt_space   = sprintf("%18s", "");
          my $field_des   = $reg_field[$field_index]{'field_des'};
          $field_des      =~ s/\n/\/\/$cmt_space/g;
          
          # Procedural Blocks
          my $reg_field_name = "$reg_array[$reg_index]{'reg_name'}"."$name_ext"."_"."$reg_field[$field_index]{'field_name'}";
          my $proc_name = uc($reg_field_name)."_PROC";
          
          
        }
      }
      }
    }

    print $register_fh "\n";
    print $register_fh "void initFieldOffset();\n";
    print $register_fh "void initFieldMask();\n";
    print $register_fh "void initFieldValue();\n";
    print $register_fh "void initRegisters();\n";



    # print $register_fh "\n", "//Finish RENAME REG";
    
    print "Generating register: Done!\n";
    close($register_fh);
  }






#------------------------------------------------------------------------#
# printHeader Functions
#------------------------------------------------------------------------#
  # Print Sheet Information
  # Parameters:
  #   $_[0]: File Handle
  #   $_[1]: File Name
  #   $_[2]: File Brief Desciption
  # Return:
  #   None
  sub printHeader (@) {
    #get data from argument
    my $FileHandle = $_[0];
    my $filename = $_[1];
    my $brief = $_[2];
    
    #print header to RTl file
    print $FileHandle "//-----------------------------------------------------------------------------\n";
    print $FileHandle "//    Copyright (C) 2024 by Dolphin Technology\n";
    print $FileHandle "//    Created: ",&getDate, "\n";
    print $FileHandle "//------------------------------------------------------------------------------\n";
  }
#------------------------------------------------------------------------#
# getDate Function
#------------------------------------------------------------------------#
  # Get Date
  # Parameters:
  #   None
  # Return:
  #   Date
  sub getDate {
    my $date_time_return ="";
    my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
    $year += 1900;
    my @mon_abrr = qw( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec );
    my $day = "";
    if (($mday == 1)||($mday == 21)||($mday == 31)) {
        $day = $mday .'st';
    }
    elsif (($mday == 2)||($mday == 22)) {
        $day = $mday .'nd';
    }
    elsif (($mday == 3)||($mday == 23)) {
        $day = $mday .'rd';
    }
    else {
        $day = $mday .'th';
    }

    $date_time_return = $hour. ":".$min.":".$sec."  ".$mon_abrr[$mon] ." " .$day ." " .$year;

    return $date_time_return;
  }

#------------------------------------------------------------------------#
# printSpace Function
#------------------------------------------------------------------------#
  sub printSpace (@) {
    my $num_space = $_[0];
    my $fileHandle = $_[1];
    for (my $i = 0; $i < $num_space; $i++) {
      print $fileHandle " ";
    }
  }
