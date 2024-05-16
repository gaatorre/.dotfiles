echo "Checking if stow is installed"

set PM ""
switch (uname)
    case Linux
        set PM "sudo apt -y"
    case Darwin
        set PM "brew"
end

# checking if stow is installed
if command -q stow
   echo "    stow is installed"
   echo
else
   echo "Installing gnu stow"
   eval $PM update
   eval $PM install stow
end

# Checking if this is a work machine
test -n (hostname | grep "mit")
set isWork $status

if test $isWork -eq 0
    echo "This is a work machine, not installing blacklisted packages"
else
    echo "This is a personal machine, installing all packages"
end

# Stowing the configs that make sense to stow
set bListWork (cat blacklist.work | string collect)
set bListPer (cat blacklist.per | string collect)
for dir in */ 
    set dir (string trim -r -c / $dir)
    if test $isWork -eq 0
        and string match -q -r "$dir" $bListWork
        echo "---- $dir"
    else if test $isWork -ne 0
        and string match -q -r "$dir" $bListPer
        echo "---- $dir"
    else
        echo "stow $dir"
        stow $dir
    end
end

# Running a script per item
for script in scripts/*.fish
    echo "Running $script"
    echo
    fish $script
    echo
end

pip3 install -r deps/requirements.txt

if test $argv[-1] = "--ansible"
    echo "Running from ansible";
else
    echo "Not running from ansible"
    fish deps.fish
end
