export Python_Version=${Python_Version:-3.13.0}
sudo apt update -y
sudo apt full-upgrade -y
sudo apt install build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl git libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev llvm -y
curl https://pyenv.run | bash
echo -e "\n" >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc
yes "" | pyenv install $Python_Version
pyenv global $Python_Version
pip install --upgrade pip
exec "$BASH"
