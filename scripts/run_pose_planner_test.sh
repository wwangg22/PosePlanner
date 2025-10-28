GPUS=$1
len=${#array[@]}
CKPT=/home/william/Desktop/USC/PosePlanner/runs/Allegro_pose_planner_joint_27-19-38-53/nn/Allegro_pose_planner_joint.pth
EXTRA_ARGS=${array[@]:1:$len}
EXTRA_ARGS_SLUG=${EXTRA_ARGS// /_}

CUDA_VISIBLE_DEVICES=${GPUS} \
python ./isaacgymenvs/train.py \
task=AllegroHandPosePlanner \
task.env.numEnvs=2 \
checkpoint=/${CKPT} \
test=True \
wandb_activate=False headless=False \
${EXTRA_ARGS}