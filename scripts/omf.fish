## Don't want to install omf if it isn't needed
if test -e $HOME/.local/share/omf
    echo "Not installing omf"
else
    echo "Installing omf"
    curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
end

