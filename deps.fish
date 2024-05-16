set PM ""
switch (uname)
    case Linux
        set PM "sudo apt -y"
    case Darwin
        set PM "brew"
end

# Installing the depenencies required by every tool
eval $PM update
for dep in deps/*.deps
    set deps (cat $dep | string collect)
    set deps (echo $deps)

    for x in $deps
        if test $x != ""
            eval $PM install $x
        end
    end
end
