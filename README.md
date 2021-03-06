# dotfiles
Storing all of my dotfiles to get fast reconfigurations and synchronization

### bash
```
mv ~/.bashrc ~/.bashrc_old
ln -s ~/git-repos/dotfiles/.bashrc ~/.bashrc

mv ~/.bash_aliases ~/.bash_aliases_old
ln -s ~/git-repos/dotfiles/.bash_aliases ~/.bash_aliases
```

### neovim
```
mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim_old
ln -s ~/git-repos/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

mv ~/.config/nvim/.ycm_extra_conf.py ~/.config/nvim/.ycm_extra_conf.py_old
ln -s ~/git-repos/dotfiles/nvim/.ycm_extra_conf.py ~/.config/nvim/.ycm_extra_conf.py

mv ~/.config/nvim/colors/* ~/git-repos/dotfiles/nvim/colors/
rmdir ~/.config/nvim/colors
ln -s ~/git-repos/dotfiles/nvim/colors ~/.config/nvim/colors

mv ~/.config/nvim/spell/* ~/git-repos/dotfiles/nvim/spell/
rmdir ~/.config/nvim/spell
ln -s ~/git-repos/dotfiles/nvim/spell ~/.config/nvim/spell
```

### git
```
mv ~/.gitconfig ~/.gitconfig_old
ln -s ~/git-repos/dotfiles/.gitconfig ~/.gitconfig
```

### i3
```
mv ~/.config/i3/config ~/.config/i3/config_old
ln -s ~/git-repos/dotfiles/i3/.i3config ~/.config/i3/config

# sudo mv /etc/i3status.conf /etc/i3status.conf_old
# sudo ln -s ~/git-repos/dotfiles/i3/i3status.conf /etc/i3status.conf

mkdir ~/.config/i3blocks
ln -s ~/git-repos/dotfiles/i3/i3blocks.conf ~/.config/i3blocks/i3blocks.conf

ln -s ~/git-repos/dotfiles/.scripts/ ~/.scripts
```
