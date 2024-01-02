function zv 
    cd "$(zoxide query $argv)" && fd --type f --hidden --exclude .git |
        fzf -m --bind one:accept --preview 'bat --style numbers,changes --color=always {} | head -500' |
        xargs -r nvim
end


# function zv 
#     cd "$(zoxide query $argv)" || exit 1
#     set -l output (fd --type f --hidden --exclude .git)
#     if test (echo $output | wc -w) -eq 1
#         nvim $output 
#     else if test -n "$output"
#         echo $output | 
#         fzf -d ' ' --preview 'bat --style numbers,changes --color=always {} | head -500' |
#         xargs -r nvim
#     end
# end

