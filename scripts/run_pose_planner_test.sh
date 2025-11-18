GPUS=$1
len=${#array[@]}
CKPT=/home/william/Desktop/USC/PosePlanner/runs/Allegro_pose_strict_dist_04-09-51-03/nn/Allegro_pose_strict_dist.pth
EXTRA_ARGS=${array[@]:1:$len}
EXTRA_ARGS_SLUG=${EXTRA_ARGS// /_}

CUDA_VISIBLE_DEVICES=${GPUS} \
python ./isaacgymenvs/train.py \
task=AllegroHandPosePlanner \
task.env.numEnvs=2 \
checkpoint=${CKPT} \
test=True \
wandb_activate=False headless=False \
${EXTRA_ARGS}