cd ~/documents/git/swayconfig
git pull
cp config config_bak

vim config
cp ~/documents/git/swayconfig/config ~/.config/sway/config
sway reload

while 
do
echo "Press 'y' to confirm config is good and commit, 'n' to go back to vim, or 'q' to abort:"

read -p "> " choice

case "$choice" in
    [Yy]*)
        echo "Continuing"
	git add config
	git commit
	git push
        ;;
    [Nn]*)
	vim config
	cp ~/documents/git/swayconfig/config ~/.config/sway/config
	sway reload
	;;
    [Qq]*)
        echo "aborted."
        exit 1
        ;;
    *)
        echo "Invalid input. Continuing script..."
        ;;
esac
done
