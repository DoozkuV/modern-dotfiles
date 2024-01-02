function fv 
    fd --type f --hidden --exclude .git |
    fzf --preview 'bat --style numbers,changes --color=always {} | head -500' |
    xargs -r nvim
end

