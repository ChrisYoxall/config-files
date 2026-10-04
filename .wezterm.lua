-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Find the flavour of OS are we running
local is_windows = wezterm.target_triple:lower():find("windows") ~=nill
local is_macos = wezterm.target_triple:lower():find("darwin") ~= nil
local is_linux = wezterm.target_triple:lower():find("linux") ~=nil

-- Specify configuration

config.initial_cols = 120
config.initial_rows = 40

config.font_size = 12
config.color_scheme = "rose-pine-moon"
config.max_fps = 120
config.font = wezterm.font("Hack Nerd Font", { weight = "Regular" })
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

config.window_frame = {
  font = wezterm.font("Hack Nerd Font", { weight = "Regular" }),
}

config.inactive_pane_hsb = {
  saturation = 0.0,
  brightness = 0.5,
}

if is_linux then
  config.enable_wayland = true
end

if is_windows then
  config.win32_system_backdrop = "Acrylic"
  config.window_background_opacity = 0.7
  config.window_frame.font_size = 10.0
end

if is_macos then
  config.window_background_opacity = 0.8
  config.macos_window_background_blur = 50
  config.font_size = 15.0
  config.window_frame.font_size = 13.0
end

-- Finally, return the configuration to wezterm
return config
