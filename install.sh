# Remove Nano because Vim is better
sudo apt-get remove --auto-remove nano;

# Install vim
sudo apt install vim

# Install tmux
sudo apt-get update;
sudo apt-get install tmux;

# Install Ccat for colored cat pages
sudo apt-get install wget --force-yes && 
wget https://github.com/jingweno/ccat/releases/download/v1.1.0/linux-amd64-1.1.0.tar.gz &&
tar xfz linux-amd64-1.1.0.tar.gz &&
sudo cp linux-amd64-1.1.0/ccat /usr/local/bin/ &&
rm -r linux-amd64-1.1.0.tar.gz linux-amd64-1.1.0/;

# Install Exa for better ls
curl https://sh.rustup.rs -sSf >> rust.sh && chmod +x rust.sh && ./rust.sh -y &&
wget -c https://github.com/ogham/exa/releases/download/v0.8.0/exa-linux-x86_64-0.8.0.zip &&
unzip exa-linux-x86_64-0.8.0.zip && rm exa-linux-x86_64-0.8.0.zip && rm rust.sh &&
sudo mv exa-linux-x86_64 /usr/local/bin/exa;

# Install ZSH
sudo apt install zsh;
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install my favorite zsh theme
mkdir ~/.oh-my-zsh/custom/themes;
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Install Zsh-Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install Zsh-Syntax-Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Replace the current zshrc, vimrc, and tmux.conf with the ones from the repo
mv ~/.zshrc ~/zshrc.bak; cp .zshrc ~/;
mv ~/.vimrc ~/vimrc.bak; cp .vimrc ~/;
mv ~/.tmux.conf ~/.tmux.conf.bak; cp .tmux.conf ~/
