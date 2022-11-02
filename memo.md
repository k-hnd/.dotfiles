## memo
```
sudo apt update && \
  sudo apt upgrade && \
  sudo apt install zsh tmux vim git
```

## for golang
```
curl GO
sudo tar -C /usr/local -xzf go.tar.gz
mkdir ~/src ~/pkg ~/bin
```

## for python
```
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
pyenv install x.x.x
pip install black flake8
```
- [pyenv doc](https://github.com/pyenv/pyenv)
- [Caution: pyenv install](https://github.com/pyenv/pyenv/issues/1290)

## for ghq and peco
```
go get github.com/motemen/ghq
sudo apt install peco
```

## for github
```
ssh-keygen -t rsa -b 4096
ssh -T git@github.com
```
- [About GPG](https://help.github.com/en/github/authenticating-to-github/generating-a-new-gpg-key)

## for docker
```
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce
sudo gpasswd -a $USER docker
```
