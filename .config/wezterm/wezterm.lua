-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
local function scheme_for_appearance(appearance)
    if appearance:find 'Dark' then
        return 'Tokyo Night Storm'
    else
        return 'Tokyo Night Day'
    end
end

config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())

-- font
config.font = wezterm.font 'MonoLisa'
config.font_size = 14.0
config.line_height = 1.0

config.enable_tab_bar = false

-- config.window_background_opacity = 0.8
-- config.macos_window_background_blur = 20

config.window_decorations = 'RESIZE'

-- custom keybinds
config.keys = {
    {
        key = 'm',
        mods = 'CMD',
        action = wezterm.action.DisableDefaultAssignment,
    },
    {
        key = '1',
        mods = 'CMD',
        action = wezterm.action.DisableDefaultAssignment,
    },
    {
        key = '2',
        mods = 'CMD',
        action = wezterm.action.DisableDefaultAssignment,
    },
    {
        key = '3',
        mods = 'CMD',
        action = wezterm.action.DisableDefaultAssignment,
    },
    {
        key = '4',
        mods = 'CMD',
        action = wezterm.action.DisableDefaultAssignment,
    },
    {
        key = 'h',
        mods = 'CTRL',
        action = wezterm.action.DisableDefaultAssignment,
    },
    {
        key = 'j',
        mods = 'CTRL',
        action = wezterm.action.DisableDefaultAssignment,
    },
    {
        key = 'k',
        mods = 'CTRL',
        action = wezterm.action.DisableDefaultAssignment,
    },
    {
        key = 'l',
        mods = 'CTRL',
        action = wezterm.action.DisableDefaultAssignment,
    },
}

config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true

-- and finally, return the configuration to wezterm
return config
