function fish_user_key_bindings
    # Execute this once per mode that emacs bindings should be used in
    fish_default_key_bindings -M insert
    # Then execute the vi-bindings so they take precedence when there's a conflict.
    # Without --no-erase fish_vi_key_bindings will default to
    # resetting all bindings.
    # The argument specifies the initial mode (insert, "default" or visual).
    fish_vi_key_bindings --no-erase insert
    # Set lfcd binding here 
    bind -M default \eo 'set old_tty (stty -g); stty sane; lfcd; stty $old_tty; commandline -f repaint'
    bind -M insert \eo 'set old_tty (stty -g); stty sane; lfcd; stty $old_tty; commandline -f repaint'
    # # Emulate vim's cursor shape behavior
    set -g fish_cursor_default block
    set -g fish_cursor_insert line
    set -g fish_cursor_replace_one underscore

    fish_vi_cursor
    set -g fish_vi_force_cursor 1
end
