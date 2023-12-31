#!/bin/bash

CONFIG=$1
CKPTS=$2
SAVE_ROOT_PATH=$3

python ./code/experiments/sl/predict.py --config $CONFIG \
                                        --checkpoint $CKPTS \
                                        --input ../Fault_data/public_data/precessed/test/seis/seistest.npy \
                                        --save_path $SAVE_ROOT_PATH/thebe_pred/ \
                                        --device cuda:0 &

python ./code/experiments/sl/predict.py --config $CONFIG \
                                        --checkpoint $CKPTS \
                                        --input ../Fault_data/real_labeled_data/origin_data/seis/mig_fill.sgy \
                                        --save_path $SAVE_ROOT_PATH/real_labeled_pred/ \
                                        --device cuda:1 &

python ./code/experiments/sl/predict.py --config $CONFIG \
                                        --checkpoint $CKPTS \
                                        --input ../Fault_data/project_data_v1/labeled/Ordos/gjb/seis/L500_1500_T500_2000_aa_pstm_0922_cg.sgy \
                                        --save_path $SAVE_ROOT_PATH/project_data_v1_pred/labeled/Ordos/gjb/ \
                                        --device cuda:2 &

python ./code/experiments/sl/predict.py --config $CONFIG \
                                        --checkpoint $CKPTS \
                                        --input ../Fault_data/project_data_v1/labeled/Ordos/pl/seis/20230419_PLB-YW-pstm-post-yanshou-Q_biaoqian.sgy \
                                        --save_path $SAVE_ROOT_PATH/project_data_v1_pred/labeled/Ordos/pl/ \
                                        --device cuda:3 &

python ./code/experiments/sl/predict.py --config $CONFIG \
                                        --checkpoint $CKPTS \
                                        --input ../Fault_data/project_data_v1/labeled/Ordos/yw/seis/mig.sgy \
                                        --save_path $SAVE_ROOT_PATH/project_data_v1_pred/labeled/Ordos/yw/ \
                                        --device cuda:4 &

python ./code/experiments/sl/predict.py --config $CONFIG \
                                        --checkpoint $CKPTS \
                                        --input ../Fault_data/project_data_v1/labeled/qyb/seis/20230412_QY-PSTM-STK-CG-TO-DIYAN.sgy \
                                        --save_path $SAVE_ROOT_PATH/project_data_v1_pred/labeled/qyb/\
                                        --device cuda:5 &

python ./code/experiments/sl/predict.py --config $CONFIG \
                                        --checkpoint $CKPTS \
                                        --input ../Fault_data/project_data_v1/unlabeled/chahetai/chjSmall_mig.sgy \
                                        --save_path $SAVE_ROOT_PATH/project_data_v1_pred/unlabeled/chahetai/ \
                                        --device cuda:6 &

python ./code/experiments/sl/predict.py --config $CONFIG \
                                        --checkpoint $CKPTS \
                                        --input ../Fault_data/project_data_v1/unlabeled/gyx/GYX-small_converted.sgy \
                                        --save_path $SAVE_ROOT_PATH/project_data_v1_pred/unlabeled/gyx/ \
                                        --device cuda:7 &

python ./code/experiments/sl/predict.py --config $CONFIG \
                                        --checkpoint $CKPTS \
                                        --input ../Fault_data/project_data_v1/unlabeled/mig1100_1700/mig1100_1700.sgy \
                                        --save_path $SAVE_ROOT_PATH/project_data_v1_pred/unlabeled/mig1100_1700/ \
                                        --device cuda:0 &

python ./code/experiments/sl/predict.py --config $CONFIG \
                                        --checkpoint $CKPTS \
                                        --input ../Fault_data/project_data_v1/unlabeled/moxi/Gst_lilei-small.sgy \
                                        --save_path $SAVE_ROOT_PATH/project_data_v1_pred/unlabeled/moxi/ \
                                        --device cuda:1 &

python ./code/experiments/sl/predict.py --config $CONFIG \
                                        --checkpoint $CKPTS \
                                        --input ../Fault_data/project_data_v1/unlabeled/n2n3_small/n2n3.sgy \
                                        --save_path $SAVE_ROOT_PATH/project_data_v1_pred/unlabeled/n2n3_small/ \
                                        --device cuda:2 &

python ./code/experiments/sl/predict.py --config $CONFIG \
                                        --checkpoint $CKPTS \
                                        --input ../Fault_data/project_data_v1/unlabeled/PXZL/PXZL.sgy \
                                        --save_path $SAVE_ROOT_PATH/project_data_v1_pred/unlabeled/PXZL/ \
                                        --device cuda:3 &

python ./code/experiments/sl/predict.py --config $CONFIG \
                                        --checkpoint $CKPTS \
                                        --input ../Fault_data/project_data_v1/unlabeled/QK/RDC-premig.sgy \
                                        --save_path $SAVE_ROOT_PATH/project_data_v1_pred/unlabeled/QK/ \
                                        --device cuda:4 &

python ./code/experiments/sl/predict.py --config $CONFIG \
                                        --checkpoint $CKPTS \
                                        --input ../Fault_data/project_data_v1/unlabeled/sc/mig-small.sgy \
                                        --save_path $SAVE_ROOT_PATH/project_data_v1_pred/unlabeled/sc/ \
                                        --device cuda:5 &

python ./code/experiments/sl/predict.py --config $CONFIG \
                                        --checkpoint $CKPTS \
                                        --input ../Fault_data/project_data_v1/unlabeled/sudan/Fara_El_Harr.sgy \
                                        --save_path $SAVE_ROOT_PATH/project_data_v1_pred/unlabeled/sudan/ \
                                        --device cuda:6 &

python ./code/experiments/sl/predict.py --config $CONFIG \
                                        --checkpoint $CKPTS \
                                        --input ../Fault_data/project_data_v1/unlabeled/yc/seis.sgy \
                                        --save_path $SAVE_ROOT_PATH/project_data_v1_pred/unlabeled/yc/ \
                                        --device cuda:7 &

