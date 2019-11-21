#!/bin/bash
epoch=$(date +%s)

keyBindInst="$HOME/Library/Application Support/Code/User/keybindings.json"
setInst="$HOME/Library/Application Support/Code/User/settings.json"

if [[ -f "$keyBindInst" ]]; then
    /bin/mv "$keyBindInst" "$HOME/Library/Application Support/Code/User/keybindings_$epoch.json.bak"
fi
if [[ -f "$setInst" ]]; then
    /bin/mv "$setInst" "$HOME/Library/Application Support/Code/User/settings_$epoch.json.bak"
fi

/bin/ln -s keybindings.json "$keyBindInst"
/bin/ln -s settings.json "$setInst"

/usr/local/bin/code --install-extension chrislajoie.icinga-language
/usr/local/bin/code --install-extension chrislajoie.vscode-modelines
