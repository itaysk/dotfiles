#https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly

sudo mkdir /c
sudo mount --bind /mnt/c /c

echo "export DOCKER_HOST=tcp://localhost:2375" >> ~/.shell_profile
export KUBECONFIG=$(ls $(wslpath $(cmd.exe /C "echo %USERPROFILE%" | tr -d '\r'))/.kube/config* -1 | tr '\n' ':')
