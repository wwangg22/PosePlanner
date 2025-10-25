GPUS=$1
len=${#array[@]}
CKPT=/home/william/Desktop/USC/PosePlanner/runs/Allegro_6D_Z_24-13-39-55/nn/Allegro_6D_Z.pth
EXTRA_ARGS=${array[@]:1:$len}
EXTRA_ARGS_SLUG=${EXTRA_ARGS// /_}

CUDA_VISIBLE_DEVICES=${GPUS} \
python ./isaacgymenvs/train.py \
task=AllegroHandPosePlanner \
checkpoint=${CKPT} \
wandb_activate=True headless=True \
wandb_name=Allegro_6D_Z wandb_project=PosePlanner experiment=Allegro_6D_Z \
${EXTRA_ARGS}