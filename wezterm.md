# Wezterm

go to `~/.config/wezterm/wezterm.lua`

paste this in:

```
local noct = {
  foreground = "#EEFFFF",
  background = "#0A0A0A",
  cursor_bg = "#CDB4FF",
  cursor_fg = "#0A0A0A",
  cursor_border = "#CDB4FF",
  selection_fg = "#EEFFFF",
  selection_bg = "#CDB4FF25",
  ansi = {
    "#1A1A2E", "#FF8FAB", "#B8F0B0", "#FFD6A5",
    "#A0C4FF", "#CDB4FF", "#97EEFF", "#E8F0FF",
  },
  brights = {
    "#3A3A5A", "#FFB3C6", "#CCFFCC", "#FFE5B4",
    "#BDD7FF", "#E0CCFF", "#B8F5FF", "#FFFFFF",
  },
}

local config = wezterm.config_builder()
config.color_schemes = { ["Noct"] = noct }
config.color_scheme = "Noct"
return config
```
