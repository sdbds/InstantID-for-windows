$model="./models/juggernautXL_v8Rundiffusion.safetensors"

Set-Location $PSScriptRoot
.\venv\Scripts\activate

$Env:HF_HOME = "./huggingface"
$Env:XFORMERS_FORCE_DISABLE_TRITON = "1"
$Env:PYTHONPATH = $PSScriptRoot

python.exe "gradio_demo/app.py" --pretrained_model_name_or_path=$model