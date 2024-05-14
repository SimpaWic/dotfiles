-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
local function scheme_for_appearance(appearance)
    return 'Gruvbox dark, hard (base16)'
    -- if appearance:find 'Dark' then
    --     return 'Catppuccin Mocha'
    -- else
    --     return 'Catppuccin Latte'
    -- end
end

config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())

-- font
config.font = wezterm.font 'MonoLisa'
config.font_size = 16.0
config.line_height = 1.2

config.use_fancy_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.tab_max_width = 22

config.window_background_opacity = 0.9
config.macos_window_background_blur = 50

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

local function tab_title(tab_info)
    local title = tab_info.tab_title
    if title and #title > 0 then
        return title
    end
    return tab_info.active_pane.title
end

---@diagnostic disable-next-line: unused-local
wezterm.on('format-tab-title', function(tab, tabs, panes, cf, hover, max_width)
    local title = tab_title(tab)
    title = wezterm.truncate_left(title, max_width)

    local i = tab.tab_index + 1
    title = string.format(' %d %s ', i, title)

    local background = 'rgb(22, 24, 26 / 20%)'
    local foreground = 'white'

    if tab.is_active then
        background = 'rgb(22, 24, 26 / 90%)'
        foreground = 'white'
    end

    return {
        { Background = { Color = 'black' } },
        { Foreground = { Color = 'black' } },
        { Text = '' },
        { Background = { Color = background } },
        { Foreground = { Color = foreground } },
        { Text = title },
        { Background = { Color = 'black' } },
        { Foreground = { Color = 'black' } },
        { Text = '' },
    }
end)

-- and finally, return the configuration to wezterm
return config
