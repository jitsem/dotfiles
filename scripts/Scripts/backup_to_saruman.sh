#! /bin/sh
# Print helpFunction in case parameters are empty
if [ "$1" = "-dry" ]; then
    RSYNC_ARGS="-avn"
else
    RSYNC_ARGS="-av"
fi

rsync $RSYNC_ARGS -e 'ssh -p 88' --exclude 'AUR' --exclude '.wine' --exclude '.local/share/' --exclude '.mozilla/' --exclude '.vscode-oss' --exclude '.cache' --exclude '.rustup' --exclude '.config/Code - OSS' --exclude '.nv/' --exclude '.cargo' --exclude '.conda'  /home gandalf@192.168.2.20::NetBackup/MORGOTH-BLUETHUNDER/
