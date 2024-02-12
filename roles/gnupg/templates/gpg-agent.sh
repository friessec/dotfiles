#export GPG_TTY="$(tty)"
#export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
#gpg-connect-agent updatestartuptty /bye >/dev/null

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
