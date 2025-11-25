cd ~/documents/git/swayconfig
git pull
cp config config_bak
vim config
cp ~/documents/git/swayconfig/config ~/.config/sway/config
ln -sf ~/documents/git/swayconfig/wofi.css ~/.config/wofi/style.css
sway reload

echo "Press 'y' to confirm config is good and commit or 'n' to abort:"

read -p "> " choice

case "$choice" in
    [Yy]*)
        echo "Continuing"
        ;;
    [Nn]*)
        echo "aborted."
        exit 1
        ;;
    *)
        echo "Invalid input. Continuing script..."
        ;;
esac

git add config
git commit
git push
