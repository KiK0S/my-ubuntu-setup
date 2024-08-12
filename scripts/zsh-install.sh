#/bin/bash

sudo apt update -y
sudo apt install -y zsh

zsh --version
echo $(which zsh)
sudo usermod --shell $(which zsh) kikos
# sudo chsh -s $(which zsh) kikos
echo '=== zsh installed ==='

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo '=== oh-my-zsh installed ==='

git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo '=== zsh-autosuggestions installed ==='
 
git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin
echo '=== fzf-zsh-plugin installed ==='

git clone --depth 1 https://github.com/jirutka/zsh-shift-select.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-shift-select
echo '=== zsh-shift-select installed ==='

git clone --depth 1 https://github.com/dancek/zsh-codestats.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-codestats
echo '=== zsh-codestats installed ==='

git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo '=== zsh-syntax-highlighting installed ==='

cp ../templates-private/.zshrc ~
source /etc/profile
echo '=== relogin for changes to be picked up ==='

