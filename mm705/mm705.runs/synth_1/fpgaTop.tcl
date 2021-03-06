# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory
set_property part xc7k325tffg900-1 [current_project]
set_param project.compositeFile.enableAutoGeneration 0
read_verilog {
  /home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v
  /home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/SyncResetA.v
  /home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkSender.v
  /home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkReceiver.v
  /home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkMLProducer.v
  /home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkMLConsumer.v
  /home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkFTop_mm705.v
  /home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/fpgaTop_mm705.v
}
read_xdc /home/cms/projects/mm705_v3/mm705/mm705.srcs/constrs_1/imports/mm705_v3/kc705.xdc
set_property used_in_implementation false [get_files /home/cms/projects/mm705_v3/mm705/mm705.srcs/constrs_1/imports/mm705_v3/kc705.xdc]

set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/cms/projects/mm705_v3/mm705/mm705.data/wt [current_project]
set_property parent.project_dir /home/cms/projects/mm705_v3/mm705 [current_project]
synth_design -top fpgaTop -part xc7k325tffg900-1
write_checkpoint fpgaTop.dcp
report_utilization -file fpgaTop_utilization_synth.rpt
