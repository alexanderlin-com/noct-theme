# Noct Theme

lmao.

Anyways here's how to import it.

```
git clone https://github.com/alexanderlin-com/noct-theme/
```
```
cd noct-theme
```



Then you just gotta do this:

## for VSCode
```
cp -r vscode/noct-theme ~/.vscode/extensions
```

## for nvim
only do this if you don't have pre-existing nvim settings
```
cp -r nvim/ ~/.config
```
otherwise, do it this way
```
mkdir -p ~/.config/nvim/colors && cp nvim/colors/noct.lua ~/.config/nvim/colors/noct.lua
```

## for kitty, wezterm, windows terminal
Copy and paste the codeblock in the .md instructions.
