pacman -S --noconfirm \
    base-devel git curl wget vim tmux zsh cronie wireguard-tools chezmoi \
    exa ripgrep fzf htop bat duf fd jq procs tree starship \
    nodejs npm python python-pip go \
    docker docker-compose 

git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

chezmoi init --apply https://github.com/Mylodie/dotfiles.git

chsh -s $(which zsh)