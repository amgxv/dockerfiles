for dir in /home/*/; do
    # strip trailing slash
    homedir="${dir%/}"
    # strip all chars up to and including the last slash
    username="${homedir##*/}"

    case $username in
    *.*) continue ;; # skip name with a dot in it
    esac

    chown -R "$username" "$dir"
done
