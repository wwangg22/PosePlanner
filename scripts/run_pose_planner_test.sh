GPUS=$1
len=${#array[@]}
CKPT=/home/william/Desktop/USC/PosePlanner/runs/Allegro_pose_all_dir_18-20-52-47/nn/Allegro_pose_all_dir.pth
EXTRA_ARGS=${array[@]:1:$len}
EXTRA_ARGS_SLUG=${EXTRA_ARGS// /_}

CUDA_VISIBLE_DEVICES=${GPUS} \
python ./isaacgymenvs/train.py \
task=AllegroHandPosePlanner \
task.env.numEnvs=16 \
checkpoint=${CKPT} \
test=True \
wandb_activate=False headless=False \
${EXTRA_ARGS}