echo "Initial Running Obf Dynamo LGE..."
echo "cd script"

cd script
echo "source dynamo_lge.bat"
source dynamo_lge.bat   #obf rtl code by dolphin's tool
echo "cd ../hdl_obf"
cd ../hdl_obf               
echo "source run_remove"
source run_remove           # remove "/" and "\" characters in obf code
echo "source run_replace"
source run_replace          # replace "32'h" to dec_num and remove $signed

sed -i "s|__A0(|.A0(|g" dti_gear_slice.sv
sed -i "s|__A1(|.A1(|g" dti_gear_slice.sv
sed -i  "s|__S(|.S(|g"  dti_gear_slice.sv
sed -i  "s|__X(|.X(|g"  dti_gear_slice.sv

sed -i "s|__A0(|.A0(|g" dti_gear_ctrl.sv
sed -i "s|__A1(|.A1(|g" dti_gear_ctrl.sv
sed -i  "s|__S(|.S(|g"  dti_gear_ctrl.sv
sed -i  "s|__X(|.X(|g"  dti_gear_ctrl.sv

sed -i "s|__A0(|.A0(|g" replace/dti_gear_slice.sv
sed -i "s|__A1(|.A1(|g" replace/dti_gear_slice.sv
sed -i  "s|__S(|.S(|g"  replace/dti_gear_slice.sv
sed -i  "s|__X(|.X(|g"  replace/dti_gear_slice.sv

sed -i "s|__A0(|.A0(|g" replace/dti_gear_ctrl.sv
sed -i "s|__A1(|.A1(|g" replace/dti_gear_ctrl.sv
sed -i  "s|__S(|.S(|g"  replace/dti_gear_ctrl.sv
sed -i  "s|__X(|.X(|g"  replace/dti_gear_ctrl.sv

cd replace
echo "source run_add"
source run_add

sed -i   "s|dti_cdc_data_sync_gf comp2phyclk |dti_cdc_data_sync_gf #(.DATA_WIDTH (1), .SRC_SYNC (0)) comp2phyclk|g" dti_phy_ctl_blk.sv
sed -i   "s|__clk_src(|.clk_src(|g" dti_phy_ctl_blk.sv
sed -i  "s|__clk_dest(|.clk_dest(|g" dti_phy_ctl_blk.sv
sed -i   "s|__reset_n(|.reset_n(|g"  dti_phy_ctl_blk.sv
sed -i   "s|__din_src(|.din_src(|g"  dti_phy_ctl_blk.sv
sed -i "s|__dout_dest(|.dout_dest(|g"  dti_phy_ctl_blk.sv

cd ../../hdl_obf_fpga
echo "source run_remove"
source run_remove           # remove "/" and "\" characters in obf code
echo "source run_replace"
source run_replace          # replace "32'h" to dec_num and remove $signed
cd replace
echo "source run_add"
source run_add

cd ../..