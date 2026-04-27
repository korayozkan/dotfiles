set -e

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Installing base packages..."
sudo apt install -y \
  git \
  zsh \
  curl \
  stow \
  build-essential

echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Cloning dotfiles..."
git clone https://github.com/YOURNAME/dotfiles.git ~/dotfiles

cd ~/dotfiles

echo "Installing plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Applying configs with stow..."
stow zsh
stow git
stow alacritty
stow vscode

echo "Changing default shell to zsh..."
chsh -s $(which zsh)

echo "Setup complete."
