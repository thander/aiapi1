wget https://civitai.com/api/download/models/130072 -O /workspace/models/realisticVisionV51.safetensors;
wget https://civitai.com/api/download/models/132760 -O /workspace/models/absolutereality.safetensors;
wget https://huggingface.co/CiaraRowles/TemporalDiff/resolve/main/temporaldiff-v1-animatediff.ckpt -O /workspace/temporaldiff-v1-animatediff.ckpt


wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-plus-face_sd15.bin -O /workspace/extensions/sd-webui-controlnet/models/ip-adapter-plus-face_sd15.pth
wget https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile.pth -O /workspace/extensions/sd-webui-controlnet/models/control_v11f1e_sd15_tile.pth
wget https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile.yaml -O /workspace/extensions/sd-webui-controlnet/models/control_v11f1e_sd15_tile.yaml
wget https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/ip-adapter_sd15_plus.pth -O /workspace/extensions/sd-webui-controlnet/models/ip-adapter_sd15_plus.pth





wget https://civitai.com/api/download/models/130090 -O models/realisticVisionV51inpaint.safetensors;
git clone https://github.com/continue-revolution/sd-webui-segment-anything extensions/sd-webui-segment-anything
git clone https://github.com/w-e-w/sd-webui-nudenet-nsfw-censor extensions/sd-webui-nudenet-nsfw-censor
git clone https://github.com/Mikubill/sd-webui-controlnet extensions/sd-webui-controlnet
git clone https://github.com/s0md3v/sd-webui-roop extensions/sd-webui-roop


wget https://dl.fbaipublicfiles.com/segment_anything/sam_vit_h_4b8939.pth -O  /workspace/extensions/sd-webui-segment-anything/models/sam/sam_vit_h_4b8939.pth
wget https://huggingface.co/ShilongLiu/GroundingDINO/resolve/main/groundingdino_swint_ogc.pth -O /workspace/extensions/sd-webui-segment-anything/models/grounding-dino/groundingdino_swint_ogc.pth

# git clone https://github.com/IDEA-Research/GroundingDINO.git
# cd GroundingDINO
# pip install -e .

Downloading /root/.insightface/models/buffalo_l.zip from https://github.com/deepinsight/insightface/releases/download/v0.7/buffalo_l.zip...
Downloading: "https://github.com/sczhou/CodeFormer/releases/download/v0.1.0/parsing_parsenet.pth" to /workspace/stable-diffusion-webui/repositories/CodeFormer/weights/facelib/parsing_parsenet.pth
Downloading: "https://github.com/xinntao/facexlib/releases/download/v0.1.0/detection_Resnet50_Final.pth" to /workspace/stable-diffusion-webui/repositories/CodeFormer/weights/facelib/detection_Resnet50_Final.pth
Downloading: "https://github.com/sczhou/CodeFormer/releases/download/v0.1.0/codeformer.pth" to /workspace/stable-diffusion-webui/models/Codeformer/codeformer-v0.1.0.pth
Downloading: "https://github.com/cszn/KAIR/releases/download/v1.0/ESRGAN.pth" to /workspace/stable-diffusion-webui/models/ESRGAN/ESRGAN_4x.pth


pip install insightface==0.7.3
pip install onnx
pip install onnxruntime-gpu>=1.16.1
pip install opencv-python
pip install tqdm