# download to runpod pod to path: '/'. Docker command in template:

# bash -c '
# wget https://github.com/thander/runpod-deploy/blob/main/pre_start.sh -O /pre_start.sh;
# /start.sh;
# ';

echo \"**** syncing venv to workspace, please wait. This could take a while on first startup! ****\"
# rsync --remove-source-files -rlptDu --ignore-existing /runpod-volume/venv/ /workspace/venv/
ln -s /runpod-volume/venv /workspace/
ln -s /runpod-volume/.insightface ~/

echo \"**** load models ****\"

echo \"**** syncing stable diffusion to workspace, please wait ****\"
# rsync --remove-source-files -rlptDu --ignore-existing /stable-diffusion-webui/ /workspace/stable-diffusion-webui/

rm -rf /workspace/stable-diffusion-webui
ln -s /runpod-volume/my-stable-diffusion-webui /workspace/stable-diffusion-webui

echo \"**** load extensions and weights ****\"

if ! grep -q -- "--xformers --api --nowebui --skip-install" /workspace/stable-diffusion-webui/webui-user.sh; then
  sed -i 's/--xformers/--xformers --api --nowebui --skip-install/' /workspace/stable-diffusion-webui/webui-user.sh;
fi

# ln -sfn /a/new/path files

# rsync -a /runpod-volume/extensions/ /workspace/stable-diffusion-webui/extensions/

# ln -s /runpod-volume/models/Stable-diffusion/* /workspace/stable-diffusion-webui/models/Stable-diffusion/
# mkdir /workspace/stable-diffusion-webui/models/roop/
# ln -s /runpod-volume/models/roop/* /workspace/stable-diffusion-webui/models/roop/

# ln -s /runpod-volume/cnmodels/* /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models/

if [[ $RUNPOD_STOP_AUTO ]]
then
  echo \"Skipping auto-start of webui\"
else  echo \"Started webui through relauncher script\"
  cd /workspace/stable-diffusion-webui
  rm log.log
  python relauncher.py > log.log &

  cd /runpod-volume/app
  rm -rf schemas/__pycache__
  git pull
  grep -q 'Model loaded in' <(tail -f /workspace/stable-diffusion-webui/log.log)
  nohup python -u handler.py &
fi

# wget https://civitai.com/api/download/models/130090 -O /runpod-volume/models/realisticVisionV51inpaint.safetensors;
# cd /workspace/stable-diffusion-webui;

# PYTHONPATH=/workspace/stable-diffusion-webui python extensions/sd-webui-segment-anything/install.py;
# git clone https://github.com/continue-revolution/sd-webui-segment-anything  /workspace/stable-diffusion-webui/extensions/sd-webui-segment-anything;
# mv /workspace/sam_vit_h_4b8939.pth /workspace/stable-diffusion-webui/extensions/sd-webui-segment-anything/models/sam/;
# wget -q https://dl.fbaipublicfiles.com/segment_anything/sam_vit_h_4b8939.pth;




# ➜  100_ease mkdir -p resized && sips *.HEIC -Z 768 --cropToHeightWidth 512 512 --out resized/*.jpg

# ls -v | cat -n | while read n f; do mv -n "$f" "0$n.png"; done 

# runpodctl create pod --templateId '1iohfg19etx' --imageName runpod/stable-diffusion:web-ui-10.2.1 --volumeSize 75 --containerDiskSize 20 --secureCloud --name ease --gpuType 'NVIDIA RTX A4000' --ports '8888/http,3001/http,22/tcp'



