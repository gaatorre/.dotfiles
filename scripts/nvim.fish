# Install

## Don't want to install anything unless it is needed
if test -e $HOME/.local/share/nvim/site/autoload/plug.vim
    echo "Not installing vim-plug"
else
    echo "Installing vim-plug"
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
end

# Configure Vim Plug
nvim +'PlugInstall --sync' +qa

