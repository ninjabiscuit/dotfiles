# my dotfiles

## install

Install Homebrew:

```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install Git

```sh
brew install git
```

Switch to ZSH

```sh
sudo echo "$(which zsh)" >> /etc/shells
chsh -s $(which zsh)
```

Clone the dotfiles:

```sh
git clone --recurse-submodules -j8 https://github.com/ninjabiscuit/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./script/bootstrap
./bin/dot
```


This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

Based on [Holman's dotfiles](https://github.com/holman/dotfiles) 
