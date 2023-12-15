function _shell_integration_activate_vscode --on-event _shell_integration_load
    if type -q code
        and string match -q "$TERM_PROGRAM" vscode
        if "$_shell_integration_log" = true
            echo "Loading VS Code shell integration"
        end

        source (code --locate-shell-integration-path fish)
    end
end
