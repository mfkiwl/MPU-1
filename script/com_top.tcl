# ####################################################################### #
# MODELSIM RTL COMPILATION SCRIPT
# ####################################################################### #
# ----------------------------------------------------------------------- #
# Set paths
# ----------------------------------------------------------------------- #
set dir_path "."
set script_path "$dir_path/script"

# ----------------------------------------------------------------------- #
# Design setup
# ----------------------------------------------------------------------- #
source $script_path/design_setup.tcl

# ----------------------------------------------------------------------- #
# Compile
# ----------------------------------------------------------------------- #
echo "----- Compilation Source done -----"
foreach vhdFile $behav_list {
  vcom +cover=sbceft -check_synthesis -source ${vhdFile}
}
echo "----- Compilation Source done -----"
