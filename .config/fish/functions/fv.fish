function fv 
    fd --type f --hidden --exclude .git |
    fzf -m --bind one:accept --preview 'bat --style numbers,changes --color=always {} | head -500' |
    xargs -r nvim
end

