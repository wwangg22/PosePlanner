GPUS=$1
len=${#array[@]}
CKPT=/home/william/Desktop/USC/PosePlanner/runs/Allegro_6D_Z_24-16-57-16/nn/Allegro_6D_Z.pth
EXTRA_ARGS=${array[@]:1:$len}
EXTRA_ARGS_SLUG=${EXTRA_ARGS// /_}

CUDA_VISIBLE_DEVICES=${GPUS} \
python ./isaacgymenvs/train.py \
task=AllegroHandPosePlanner \
checkpoint=${CKPT} \
wandb_activate=True headless=True \
wandb_name=Allegro_w_translation wandb_project=PosePlanner experiment=Allegro_w_translation \
${EXTRA_ARGS}