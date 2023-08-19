function _shell_integration_activate_iterm --on-event _shell_integration_load
    set f = "$HOME/.iterm2_shell_integration.fish"
    if test -e "$f"
        and "$TERM_PROGRAM" = "iTerm.app"
        if "$_shell_integration_log" = true
            echo "Loading iTerm shell integration"
        end

        source "$f"
    end
end
