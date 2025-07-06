#!/bin/bash

gpuid=$1

declare -a dataroots=(
#	'path/to/tcga_luad'
	'/home/yx423/rds/hpc-work/MMP_Slide_Embed/tcga_lung'
)

# Loop through different folds
for k in 0 1 2 3 4; do
	split_dir="survival/TCGA_LUAD_overall_survival_k=${k}"
	split_names="train"
	bash "./scripts/prototype/1024/clustering_luad_1024.sh" $gpuid $split_dir $split_names "${dataroots[@]}"
done