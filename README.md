# Dotfiles

Personal configuration files for my Linux development environment.

## Contents

- `.vimrc` — Vim configuration
- `.vim/` — Vim plugins, colorschemes, and additional configuration

## Installation

Clone the repository:

```bash
git clone git@github.com:Nzrsc/dotfiles.git ~/dotfiles
```

Create symbolic links:

```bash
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
```

## Updating

After modifying configuration files, commit and push changes:

```bash
cd ~/dotfiles

git add .
git commit -m "Update configuration"
git push
```

## Restoring

To restore the configuration on another machine, clone the repository and create the symbolic links as described in the installation section.
