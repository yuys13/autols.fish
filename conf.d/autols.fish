function _install_autols --on-event autols_install
    if not set --query autols_cmd
        set -U autols_cmd ls
    end
end

function __autols --on-variable PWD
    if status --is-interactive
        $autols_cmd
    end
end

function _uninstall_autols --on-event autols_uninstall
    functions -e __autols
end

