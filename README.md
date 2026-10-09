# Smart Terminal Paste

A VS Code extension for macOS that pastes text normally and routes clipboard images to terminal applications.

## Install

```sh
npm ci
npm run package
```

Run **Extensions: Install from VSIX…** and select `smart-terminal-paste-0.1.0.vsix`. Install locally on your Mac, including for remote workspaces.

## Use

Focus an integrated terminal and run **Smart Terminal Paste**. To use `Cmd+V`, assign it to this command in **Preferences: Open Keyboard Shortcuts**, with `terminalFocus` as the when condition.

- **Text:** Pastes normally.
- **Local images:** Sends `Ctrl+V`; the terminal application must support image paste.
- **Remote images:** Saves a PNG under `/tmp` and pastes its path.

Remote image paste requires an open remote folder and a writable `/tmp`. Saved images are not automatically removed.

```json
    {
        // Route text and images through the same paste shortcut in terminal prompts.
        "key": "cmd+v",
        "command": "smartTerminalPaste.paste",
        "when": "terminalFocus"
    },
```
