#!/bin/bash
#JSUB -q gpu
### 申请 1 卡 A100 GPU、16 核 CPU、128G 内存
#JSUB -gpgpu 2
#JSUB -n 32
#JSUB -M 256000
### 输出日志格式，%J 表示作业的 id，输出的日志格式为 output.作业 id。
#JSUB -o output.%J
#JSUB -e output.%J
### 指定运行程序的名称为 test (可选参数)
#JSUB -J test
# 加载环境，此处加载 anaconda 环境以及通过 anaconda 创建的名为 pytorch 的环 境
export MODULEPATH=/share/home/deploy/apps/modulefiles:$MODULEPATH
module load alphafold/2.2.0
######################查看gpu利用率################################################
STATE_FILE="state.log"
/usr/bin/touch ${STATE_FILE}
nvidia-smi -pm 1
function gpus_collection(){
        while [[ `cat "${STATE_FILE}" | grep "over" | wc -l` == "0" ]]; do
                /usr/bin/sleep 1
                /usr/bin/nvidia-smi >> "gpu.log"
        done
}
gpus_collection &
#####################AF2计算部分###################################################
af2Root=/share/home/deploy/public/alphafold2.2.0

python run_alphafold.py \
--fasta_paths=./mono.fasta \
--output_dir=./out  \
--data_dir=$af2Root \
--uniref90_database_path=$af2Root/uniref90/uniref90.fasta \
--mgnify_database_path=$af2Root/mgnify/mgy_clusters.fa \
--pdb70_database_path=$af2Root/pdb70/pdb70 \
--bfd_database_path=$af2Root/bfd/bfd_metaclust_clu_complete_id30_c90_final_seq.sorted_opt \
--uniclust30_database_path=$af2Root/uniclust30/uniclust30_2018_08/uniclust30_2018_08 \
--template_mmcif_dir=$af2Root/pdb_mmcif/mmcif_files \
--max_template_date=2020-05-14 \
--obsolete_pdbs_path=$af2Root/pdb_mmcif/obsolete.dat \
--model_preset=monomer \
--run_relax=True \
--use_gpu_relax=True \
--num_multimer_predictions_per_model=5 
echo "over" >> "${STATE_FILE}"
# 可选参数
# --small_bfd_database_path=$af2Root/small_bfd/bfd-first_non_consensus_sequences.fasta
# --db_preset=full_dbs 
# --use_precomputed_msas=True
# --pdb70_database_path=$af2Root/pdb70/pdb70 
# --num_multimer_predictions_per_model=5
