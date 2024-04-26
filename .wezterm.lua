-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
local function scheme_for_appearance(appearance)
    if appearance:find 'Dark' then
        return 'Tokyo Night Moon' --[[ 'Catppuccin Frappé (Gogh)' ]]
    else
        return 'Tokyo Night Day' --[[ 'Catppuccin Latte (Gogh)' ]]
    end
end

config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())

-- font
config.font = wezterm.font 'MonoLisa'
config.font_size = 14.0

config.window_background_opacity = 0.9

-- custom keybinds
config.keys = {
    {
        key = 'm',
        mods = 'CMD',
        action = wezterm.action.DisableDefaultAssignment,
    },
}

-- and finally, return the configuration to wezterm
return config
