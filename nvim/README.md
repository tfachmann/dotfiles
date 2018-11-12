# Neovim

## Requirements

```
sudo apt-get install software-properties-common
sudo apt-get install python-dev python-pip python3-dev python3-pip
```


## Install
Manual Release-Package

```
https://github.com/neovim/neovim/releases
```

Repository

```
sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

sudo pip install neovim
sudo pip3 install neovim
```

### YouCompleteMe

```
sudo apt install build-essential cmake python3-dev
cd ~/.local/share/nvim/plugged/YouCompleteMe
python3 install.py --clang-completer
```
