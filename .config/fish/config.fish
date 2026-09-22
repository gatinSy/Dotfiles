if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    zoxide init fish | source

    set -g fish_greeting
    set -g ABBR_TIPS_PROMPT "\n \e[1m{{ .abbr }}\e[0m => {{ .cmd }}"
end
