GPUS=$1
len=${#array[@]}
CKPT=/home/william/Desktop/USC/PosePlanner/runs/Allegro_w_translation_24-21-28-06/nn/last_Allegro_w_translation_ep_40000_rew_768.629.pth
EXTRA_ARGS=${array[@]:1:$len}
EXTRA_ARGS_SLUG=${EXTRA_ARGS// /_}

CUDA_VISIBLE_DEVICES=${GPUS} \
python ./isaacgymenvs/train.py \
task=AllegroHandPosePlanner \
task.env.numEnvs=16 \
test=True \
wandb_activate=False headless=False \
${EXTRA_ARGS}