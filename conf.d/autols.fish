function _install_autols --on-event autols_install
    if not set --query autols_cmd
        set -U autols_cmd ls
    end
end

function __autols --on-variable PWD --description 'Automatically ls when the $PWD changes.'
    if not status --is-interactive
        return
    end
    if not set -q autols_cmd
        ls
        return
    end
    $autols_cmd
end

function _uninstall_autols --on-event autols_uninstall
    functions -e __autols
end
