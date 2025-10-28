GPUS=$1
len=${#array[@]}
CKPT=/home/william/Desktop/USC/PosePlanner/runs/Allegro_pose_planner_27-18-18-50/nn/Allegro_pose_planner.pth
EXTRA_ARGS=${array[@]:1:$len}
EXTRA_ARGS_SLUG=${EXTRA_ARGS// /_}

CUDA_VISIBLE_DEVICES=${GPUS} \
python ./isaacgymenvs/train.py \
task=AllegroHandPosePlanner \
checkpoint=${CKPT} \
wandb_activate=True headless=True \
wandb_name=Allegro_pose_planner_joint wandb_project=PosePlanner experiment=Allegro_pose_planner_joint \
${EXTRA_ARGS}