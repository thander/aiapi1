**Runpod deploy cloud pod with runpod/stable-diffusion:web-ui-10.2.1 with needed extensions and models**

**bash deploy.sh**



<!-- https://huggingface.co/lllyasviel/sd_control_collection/blob/main/ip-adapter_sd15.pth -->

https://huggingface.co/lllyasviel/ControlNet-v1-1/tree/main

https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_openpose.pth



wget https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_openpose.pth -O /runpod-volume/my-stable-diffusion-webui/extensions/sd-webui-controlnet/models/control_v11p_sd15_openpose.pth