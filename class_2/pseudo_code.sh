## Pseudo Code for auto-git-push

## First identify if you are in a repository. 

if current_directory has ".git" folder; then
    get the status of git
    track the files that are updated/created
    commit your tracked files with a message
    push the files to github
else
    ask for the repo name then & search the system for the directory
    if result is found; then 
        go inside the directory
    else 
        notify the user repo doesnt exist
    fi
fi