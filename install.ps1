Set-Location $PSScriptRoot

$Env:PIP_DISABLE_PIP_VERSION_CHECK = 1
#$Env:PIP_INDEX_URL = "https://mirror.baidu.com/pypi/simple"
#$Env:HF_ENDPOINT = "https://hf-mirror.com"

if (!(Test-Path -Path "venv")) {
    Write-Output  "创建python虚拟环境venv..."
    python -m venv venv
}
.\venv\Scripts\activate

Write-Output "安装依赖..."
pip install -U -r gradio_demo/requirements-windows.txt

huggingface-cli download --resume-download InstantX/InstantID --local-dir checkpoints

huggingface-cli download --resume-download DIAMONIK7777/antelopev2 --local-dir models/antelopev2

Write-Output "安装完毕"
Read-Host | Out-Null ;
