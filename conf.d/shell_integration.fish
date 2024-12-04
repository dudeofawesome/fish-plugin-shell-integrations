if not set -q --global _shell_integration_log
    set --global _shell_integration_log false
end

# Attach event handlers
functions --query \
    _shell_integration_activate_iterm \
    _shell_integration_activate_vscode

# Emit load event on shell startup
if [ "$_shell_integration_loaded" != true ]
    set --global _shell_integration_loaded true
    emit _shell_integration_load
end
