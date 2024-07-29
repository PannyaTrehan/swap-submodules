remove_submodule() {
    #only requires the path of the submodule (the one that will be replaced) 
    local submodule_path=$1

    if [ -z "$submodule_path" ]; then
        echo "Submodule path is required."
        exit 1
    fi

    echo "Removing submodule at $submodule_path"

    git rm $submodule_path
    git config --remove-section submodule.$submodule_path
    rm -rf .git/modules/$submodule_path

    echo "Submodule removed successfully."
}

add_submodule() {
    local submodule_url=$1
    local submodule_path=$2

    #if the submodule_url (for new repo) or submodule_path is empty (length of 0)
    if [ -z "$submodule_url" ] || [ -z "$submodule_path" ]; then
        echo "Submodule URL and path are required."
        exit 1
    fi

    echo "Adding submodule from $submodule_url at $submodule_path"

    git submodule add $submodule_url $submodule_path

    echo "Submodule added successfully."
}

# expects three arguments (current module file path or just its name), github link to new submodule,
# the name of the new folder (where the files of the new module will be located) 

main() {
    local old_submodule_path=$1
    local new_submodule_url=$2
    local new_submodule_path=$3

    if [ -z "$old_submodule_path" ] || [ -z "$new_submodule_url" ] || [ -z "$new_submodule_path" ]; then
        echo "Usage: $0 <old_submodule_path> <new_submodule_url> <new_submodule_path>"
        exit 1
    fi

    remove_submodule $old_submodule_path
    add_submodule $new_submodule_url $new_submodule_path

    echo "Submodule replacement complete. Remember to commit the changes."
}

main "$@"