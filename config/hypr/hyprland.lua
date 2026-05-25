hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

hl.on("hyprland.start", function()
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP QT_QPA_PLATFORMTHEME")
end)
 
hl.on("hyprland.start", function()   
    hl.exec_cmd("~/.local/bin/rio -e ncmpcpp")
    hl.exec_cmd("mpv /mnt/media/Videos/AI/playlist.m3u")
    hl.exec_cmd("kitty --title Kitty", { workspace = "1" })
end)

hl.on("hyprland.start", function() 
    hl.exec_cmd("ghostty")
    hl.exec_cmd("gnome-text-editor")
    hl.exec_cmd("kitty --title Kitty", { workspace = "2" })
end)

hl.on("hyprland.start", function()
    hl.exec_cmd("pavucontrol")
    hl.exec_cmd("gnome-system-monitor")
    hl.exec_cmd("waypaper")
    hl.exec_cmd("flatpak run org.gnome.World.Secrets", { workspace = "4" })
end)

hl.on("hyprland.start", function()
    hl.exec_cmd("vivaldi")
    hl.exec_cmd("~/.bin/thunar.sh")
    hl.exec_cmd("swaybg -i ~/Pictures/Wallpaper/Nord/astral.jpg")
    hl.exec_cmd("~/.cargo/bin/hyprcorners")
    hl.exec_cmd("flatpak run dev.vencord.Vesktop")
    hl.exec_cmd("ulauncher --hide-window")
    hl.exec_cmd("firefox") 
    hl.exec_cmd("xfce4-terminal")
    hl.exec_cmd("~/.config/scripts/start_hypr_ironbar.sh")
    hl.exec_cmd("~/.config/hypr/portal.sh")
    hl.exec_cmd("~/.config/hypr/cleanup_after_start.sh")
    hl.exec_cmd("~/.config/scripts/eww-start3.sh")  
    hl.exec_cmd("kitty --title Kittylayout --session ~/.config/kitty/kitty_layout.conf")
    hl.exec_cmd("clipse --listen-shell")
    hl.exec_cmd("showtime /mnt/media/Videos/Showtime/RainParis2.mp4")
    hl.exec_cmd("imv -t 4 /mnt/media/Deviant/")
    hl.exec_cmd("ristretto -s /mnt/media/Deviant/Art6/evening_in_dystopia.jpg")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("mako")
    hl.exec_cmd("/usr/lib/polkit-gnome/dconf-editor")
    hl.exec_cmd("notify-send -a aurora \"hello $(whoami)\"")
    hl.exec_cmd("pactl load-module module-switch-on-connect")
    hl.exec_cmd("systemctl --user start xava-hyprl.service")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("hyprpm reload")
    hl.exec_cmd("swayosd-server")
    hl.exec_cmd("swayosd-libinput-backend")
end)

-- exec-once = hyprpm update
-- exec-once = hyprpm enable hyprexpo
-- exec-once = hyprpm reload
-- hyprctl eval 'hl.exec_cmd("foot")'

hl.config({
    plugin = {
        hyprexpo = {
            columns = 3,
            gap_size = 5,
            gap_size_outer = 0,
            bg_col = "rgb(111111)",
            workspace_method = "first 1",
            skip_empty = false,
            max_workspace = 0,
            show_workspace_numbers = false,
            workspace_number_color = "rgb(ffffff)",
            label_enable = false,
            label_text_mode = "id",
            label_token_map = "",
            selection_label_enable = false,
            selection_label_token_map = "a,s,d,f,g,q,w,e,r,t,z,x,c,v,b",
            gesture_distance = 300,
            cancel_key = "escape",
        },
    },
})

hl.bind("SUPER + Return", function()
    hl.plugin.hyprexpo.expo("toggle")
end)

hl.bind("SUPER", function()
    hl.plugin.hyprexpo.expo("toggle")
end)

hl.config({
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
        focus_on_activate = true,
    },
})

hl.bind("XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("sh -c 'wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+ && swayosd-client --output-volume raise'"))

hl.bind("XF86AudioLowerVolume",
    hl.dsp.exec_cmd("sh -c 'wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- && swayosd-client --output-volume lower'"))

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"))

hl.bind("Caps_Lock", hl.dsp.exec_cmd("swayosd-client --caps-lock"))

hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true, repeating = true })

hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("XCURSOR_SIZE", "24")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")

hl.config({
    general = {
        gaps_in          = 5,
        gaps_out         = 20,

        border_size      = 4,

        col              = {
            active_border   = { colors = { "rgba(5e81accc)", "rgba(5e81accc)" }, angle = 45 },
            inactive_border = "rgba(a3be8cff)",
        },
        resize_on_border = false,
        allow_tearing    = false,

        layout           = "dwindle",
    },

    decoration = {
        rounding         = 10,
        rounding_power   = 2,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 50,
            render_power = 10,
            color        = 0xee1a1a1a,
        },

        blur             = {
            enabled  = true,
            size     = 3,
            passes   = 1,
            vibrancy = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})


hl.config({
    input = {
        kb_layout    = "us,ca",
        kb_variant   = "altgr-intl",
        kb_model     = "pc105",
        kb_options   = "grp:alt_shift_toggle",
        kb_rules     = "evdev",

        follow_mouse = 1,

        sensitivity  = 0,

        touchpad     = {
            natural_scroll = false,
        },
    },
})


hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

-- Default springs
hl.curve("easy", { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, spring = "easy", style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7, bezier = "quick" })

hl.animation({ leaf = "workspaces", enabled = true, speed = 2.6, bezier = "default" })

--[[
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94, bezier = "almostLinear", style = "slide" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3.21, bezier = "almostLinear", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3.94, bezier = "almostLinear", style = "slide" })
]]

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})


---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER"


local closeWindowBind = hl.bind(mainMod .. " + C", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. " + M",
    hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.move({ workspace = "r-1" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ workspace = "r+1" }))

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })



-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })


hl.window_rule({
    name = "kitty_float",
    match = { class = "kitty" },
    float = true
})

hl.window_rule({
    name = "global_float",
    match = { class = ".*" },
    float = true
})

hl.window_rule({
    name = "file_progress",
    match = { class = "file_progress" },
    float = true
})

hl.window_rule({
    name = "confirm",
    match = { class = "confirm" },
    float = true
})

hl.window_rule({
    name = "dialog",
    match = { class = "dialog" },
    float = true
})

hl.window_rule({
    name = "download",
    match = { class = "download" },
    float = true
})

hl.window_rule({
    name = "notification",
    match = { class = "notification" },
    float = true
})

hl.window_rule({
    name = "error",
    match = { class = "error" },
    float = true
})

hl.window_rule({
    name = "splash",
    match = { class = "splash" },
    float = true
})

hl.window_rule({
    name = "xwayland_1",
    match = { class = "xwayland:1" },
    float = true,
    center = true
})

hl.window_rule({
    name = "open_file",
    match = { title = "Open File.*" },
    size = { 900, 500 },
    float = true,
    center = true
})

hl.window_rule({
    name = "rename",
    match = { title = "Rename.*" },
    size = { 400, 200 },
    center = true
})

hl.window_rule({
    name = "calculator",
    match = { class = "org.gnome.Calculator" },
    float = true
})

hl.window_rule({
    name = "albert",
    match = { class = "albert" },
    center = true,
    border_size = 0,
    no_blur = true,
    no_shadow = true,
    no_max_size = true
})

hl.window_rule({
    name = "gsimplecal",
    match = { class = "gsimplecal" },
    move = { 1140, 54 }
})

hl.window_rule({
    name = "kdenlive_main",
    match = { title = ".*- Kdenlive" },
    size = { 2127, 1167 },
    move = { 66, 115 }
})

hl.window_rule({
    name = "kdenlive_rendering_size",
    match = { title = ".*Rendering" },
    size = { 1087, 703 }
})

hl.window_rule({
    name = "kdenlive_rendering_move",
    match = { title = ".*Rendering - Kdenlive" },
    move = { 678, 317 }
})

hl.window_rule({
    name = "kdenlive_app",
    match = { class = "org.kde.kdenlive" },
    opacity = "0.8 0.8",
    float = true,

    workspace = 9
})

hl.window_rule({
    name = "ulauncher",
    match = { class = "ulauncher" },
    center = true,
    border_size = 0,
    no_blur = true,
    no_shadow = true,
    no_max_size = true,
    animation = "slide",
    opacity = "0.8 0.8"
})

hl.window_rule({
    name = "wofi",
    match = { class = "wofi" },
    opacity = "0.6 0.6",
    no_max_size = true
})

hl.window_rule({
    name = "conky_config",
    match = { class = "Conky" },
    border_size = 0,
    no_blur = true,
    no_shadow = true,
    move = { 14, 49 },

    workspace = 1
})

hl.window_rule({
    name = "conky_float",
    match = { class = "Conky" },
    float = true
})

hl.window_rule({
    name = "imv",
    match = { class = "imv" },
    move = { 1273, 120 },
    size = { 886, 547 },
    float = true,

    workspace = 6
})

hl.window_rule({
    name = "ristretto",
    match = { class = "org.xfce.ristretto" },
    opacity = "0.8 0.8",
    move = { 846, 98 },
    size = { 952, 1187 },

    float = true,
    workspace = 6
})

hl.window_rule({
    name = "mpv",
    match = { class = "mpv" },
    move = { 1280, 753 },
    size = { 768, 432 },
    max_size = { 768, 432 },

    float = true,
    workspace = 1
})

hl.window_rule({
    name = "foot_style",
    match = { class = "foot" },
    opacity = "0.7 0.7",
    move = { 1403, 743 },
    size = { 791, 471 },
    float = true,
    workspace = 4
})

hl.window_rule({
    name = "gucharmap",
    match = { class = "gucharmap" },
    float = true
})

hl.window_rule({
    name = "kitty_ws1",
    match = { title = "Kitty" },
    move = { 279, 757 },
    size = { 788, 423 },
    float = true,
    workspace = 1
})

hl.window_rule({
    name = "kitty_opacity",
    match = { class = "kitty" },
    opacity = "0.6 0.6"
})

hl.window_rule({
    name = "kitty_layout",
    match = { title = "Kittylayout" },
    move = { 303, 112 },
    size = { 1802, 1128 },
    workspace = 7
})

hl.window_rule({
    name = "nwg_look",
    match = { class = "nwg-look" },
    opacity = "0.8 0.8",
    move = { 319, 697 },
    size = { 864, 529 },
    float = true,
    workspace = 4
})

hl.window_rule({
    name = "pavucontrol",
    match = { class = "org.pulseaudio.pavucontrol" },
    opacity = "0.8 0.8",
    move = { 336, 104 },
    size = { 806, 468 },
    float = true,
    workspace = 4    
})

hl.window_rule({
    name = "totem",
    match = { class = "totem" },
    size = { 740, 473 },
    move = { 1348, 708 },
    float = true
})

hl.window_rule({
    name = "smplayer",
    match = { class = "smplayer" },
    size = { 740, 473 },
    float = true
})

hl.window_rule({
    name = "discord",
    match = { class = "discord" },
    opacity = "0.8 0.8",
    size = { 1884, 1230 },
    move = { 305, 66 },
    float = true,

    workspace = 9
})

hl.window_rule({
    name = "vesktop",
    match = { class = "vesktop" },
    opacity = "0.8 0.8",
    size = { 1884, 1230 },
    move = { 342, 76 },
    float = true,
    workspace = "8 silent"
})

hl.window_rule({
    name = "clapper_style",
    match = { class = "com.github.rafostar.Clapper" },
    move = { 1285, 749 },
    size = { 800, 490 },
    float = true,

    workspace = 9
})

hl.window_rule({
    name = "celluloid",
    match = { class = "io.github.celluloid_player.Celluloid" },
    move = { 1362, 745 },
    size = { 841, 528 },
    float = true
})

hl.window_rule({
    name = "pcmanfm_style",
    match = { class = "pcmanfm" },
    move = { 354, 102 },
    size = { 748, 560 },
    opacity = "0.8 0.8",
    float = true,

    workspace = 7
})

hl.window_rule({
    name = "blueman_manager",
    match = { class = "blueman-manager" },
    opacity = "0.8 0.8",
    size = { 580, 295 },
    move = { 409, 202 },
    float = true,

    workspace = 4
})

hl.window_rule({
    name = "tilix",
    match = { class = "tilix" },
    opacity = "0.8 0.8",
    size = { 743, 514 },
    move = { 304, 171 },
    float = true
})

hl.window_rule({
    name = "thunar_base",
    match = { class = "thunar" },
    opacity = "0.7 0.7",
    float = true
})

hl.window_rule({
    name = "thunar_title_move",
    match = { title = ".- Thunar." },
    move = { 288, 100 },
    size = { 789, 505 }
})

hl.window_rule({
    name = "thunar_generic",
    match = { title = "thunar" },
    size = { 789, 505 },
    move = { 289, 105 }
})

hl.window_rule({
    name = "thunar_rename",
    match = { class = "thunar", title = "Rename" },
    size = { 384, 194 }
})

hl.window_rule({
    name = "thunar_properties",
    match = { class = "thunar", title = "Properties" },
    move = { 510, 236 }
})

hl.window_rule({
    name = "thunar_home",
    match = { title = "bluebyt - Thunar" },
    move = { 278, 102 },
    size = { 755, 511 },
    workspace = 1
})

hl.window_rule({
    name = "thunar_downloads",
    match = { title = "Downloads - Thunar" },
    move = { 278, 102 },
    size = { 755, 511 },
    workspace = 3
})

hl.window_rule({
    name = "thunar_media",
    match = { title = "media - Thunar" },
    move = { 265, 102 },
    size = { 895, 536 },
    workspace = 9
})

hl.window_rule({
    name = "parole_title",
    match = { title = "parole" },
    size = { 763, 475 },
    move = { 1303, 147 }
})

hl.window_rule({
    name = "nemo",
    match = { class = "nemo" },
    opacity = "0.8 0.8",
    size = { 800, 550 },
    move = { 1368, 111 },
    float = true,
    workspace = 5
})

hl.window_rule({
    name = "alacritty",
    match = { class = "Alacritty" },
    opacity = "0.8 0.8",
    move = { 313, 87 },
    size = { 1767, 1229 },
    float = true,
    workspace = 5
})

hl.window_rule({
    name = "wezterm",
    match = { class = "org.wezfurlong.wezterm" },
    opacity = "0.7 0.7",
    size = { 766, 523 },
    move = { 1246, 95 },
    float = true,
    workspace = 1
})

hl.window_rule({
    name = "firefox_main",
    match = { class = "firefox" },
    move = { 274, 74 },
    size = { 1880, 1227 },
    float = true,

    workspace = 5
})

hl.window_rule({
    name = "firefox_save",
    match = { class = "firefox", title = ".Save." },
    move = { 719, 398 },
    size = { 770, 455 }
})

hl.window_rule({
    name = "brave",
    match = { class = "brave-browser" },
    move = { 263, 65 },
    size = { 1886, 1204 },
    float = true,
    workspace = 2
})

hl.window_rule({
    name = "zen_style",
    match = { class = "zen" },
    move = { 291, 74 },
    size = { 1886, 1204 },
    float = true,

    workspace = 2
})

hl.window_rule({
    name = "gedit_workspace",
    match = { class = "gedit" },
    opacity = "0.85 0.85",
    move = { 250, 70 },
    size = { 1311, 1327 },
    float = true,
    workspace = 5
})

hl.window_rule({
    name = "gthumb",
    match = { class = "gthumb" },
    opacity = "0.85 0.85",
    move = { 1212, 114 },
    size = { 964, 987 },

    float = true,
    workspace = 9
})

hl.window_rule({
    name = "lite_xl_style",
    match = { class = "com.lite_xl.LiteXL" },
    move = { 1098, 77 },
    size = { 1148, 1159 },
    opacity = "0.7 0.7",
    float = true,
    workspace = 3
})

hl.window_rule({
    name = "catfish_style",
    match = { class = "catfish" },
    move = { 169, 147 },
    size = { 774, 509 },
    float = true,
    workspace = 7
})

hl.window_rule({
    name = "shotwell_move",
    match = { class = "shotwell" },
    move = { 135, 106 },
    float = true,
    workspace = 9
})

hl.window_rule({
    name = "eog",
    match = { class = "eog" },
    float = true,
    move = { 447, 744 },
    size = { 600, 492 }
})

hl.window_rule({
    name = "epiphany",
    match = { class = "epiphany" },
    float = true
})

hl.window_rule({
    name = "gnome_tweaks",
    match = { class = "org.gnome.tweaks" },
    move = { 1285, 676 },
    size = { 909, 582 },
    float = true,
    opacity = "0.8 0.8",
    workspace = 6
})

hl.window_rule({
    name = "file_roller",
    match = { class = "file-roller" },
    move = { 889, 320 },
    size = { 535, 379 },
    float = true
})

hl.window_rule({
    name = "chromium_style",
    match = { class = "chromium" },
    move = { 287, 92 },
    size = { 1849, 1252 },
    workspace = 2,
    float = true
})

hl.window_rule({
    name = "helium",
    match = { class = "helium" },
    move = { 287, 92 },
    size = { 1849, 1252 },
    workspace = 2,
    float = true
})

hl.window_rule({
    name = "vivaldi",
    match = { class = "vivaldi-stable" },
    move = { 287, 92 },
    size = { 1849, 1252 },
    workspace = 2,
    float = true
})

hl.window_rule({
    name = "gimp",
    match = { class = "gimp-3.0" },
    opacity = "0.85 0.85",
    workspace = 9
})

hl.window_rule({
    name = "gimp_export",
    match = { title = "Export Image" },
    size = { 1146, 658 }
})

hl.window_rule({
    name = "gimp_save",
    match = { title = "Save Image" },
    size = { 1146, 658 }
})

hl.window_rule({
    name = "gnome_sysmon_workspace",
    match = { class = "org.gnome.SystemMonitor" },
    move = { 1285, 108 },
    size = { 814, 522 },
    opacity = "0.8 0.8",
    float = true,
    workspace = 4
})

hl.window_rule({
    name = "gnome_text_editor",
    match = { class = "org.gnome.TextEditor" },
    move = { 1076, 74 },
    size = { 1143, 1212 },
    float = true,
    opacity = "0.7 0.7",
    workspace = 3
})

hl.window_rule({
    name = "xfce4_terminal_style",
    match = { class = "xfce4-terminal" },
    move = { 274, 702 },
    size = { 882, 554 },
    float = true,
    opacity = "0.6 0.6",
    workspace = 9
})

hl.window_rule({
    name = "gnome_secrets_style",
    match = { class = "org.gnome.World.Secrets" },
    move = { 308, 686 },
    size = { 877, 559 },
    float = true,
    opacity = "0.8 0.8",
    workspace = 4
})

hl.window_rule({
    name = "dconf_editor_style",
    match = { class = "dconf-editor" },
    move = { 1294, 721 },
    size = { 863, 544 },
    float = true,
    opacity = "0.8 0.8",
    workspace = 6
})

hl.window_rule({
    name = "zed_style",
    match = { class = "dev.zed.Zed" },
    move = { 1106, 107 },
    size = { 1110, 1146 },
    float = true,
    opacity = "0.7 0.7",
    workspace = 3
})

hl.window_rule({
    name = "waypaper",
    match = { class = "waypaper" },
    move = { 1281, 669 },
    size = { 843, 597 },
    float = true,
    opacity = "0.8 0.8",
    workspace = 4
})

hl.window_rule({
    name = "nautilus",
    match = { class = "org.gnome.Nautilus" },
    float = true,
    opacity = "0.8 0.8",
    move = { 268, 85 },
    size = { 788, 530 }
})

hl.window_rule({
    name = "nautilus_properties",
    match = { class = "Nautilus", title = "Properties" },
    move = { 1455, 82 },
    size = { 661, 649 }
})

hl.window_rule({
    name = "showtime",
    match = { class = "org.gnome.Showtime" },
    move = { 1555, 160 },
    size = { 486, 945 },
    float = true,
    workspace = 9
})

hl.window_rule({
    name = "ptyxis",
    match = { class = "org.gnome.Ptyxis" },
    move = { 283, 735 },
    size = { 760, 472 },
    float = true,
    workspace = 3,

    opacity = "0.7"
})

hl.window_rule({
    name = "rio",
    match = { class = "rio" },
    move = { 1269, 121 },
    size = { 800, 500 },
    float = true,
    workspace = 1,
    opacity = "0.6"
})

hl.window_rule({
    name = "ghostty",
    match = { class = "com.mitchellh.ghostty" },
    move = { 256, 689 },
    size = { 811, 469 },
    float = true,
    workspace = 3,
    opacity = "0.7"
})

hl.window_rule({
    name = "geany",
    match = { class = "geany" },
    float = true,
    workspace = 9
})

hl.window_rule({
    name = "g4music",
    match = { class = "g4music" },
    float = true
})

hl.window_rule({
    name = "xdg_portal_gtk",
    match = { class = "xdg-desktop-portal-gtk" },
    opacity = "0.7 0.7",
    size = { 768, 489 },
    move = { 1389, 331 }
})

hl.window_rule({
    name = "better_control",
    match = { class = "better_control.py" },
    opacity = "0.7 0.7",
    move = { 333, 102 },
    size = { 827, 551 },
    float = true,

    workspace = 4
})

hl.window_rule({
    name = "clipse",
    match = { class = "clipse" },
    float = true,
    size = { 622, 652 }
})


local mod = "SUPER"

-- hl.bind("SUPER + Return", hl.dsp.exec_cmd("xfce4-terminal"))
hl.bind("SUPER + G", hl.dsp.exec_cmd("gedit"))
hl.bind("SUPER + Q", hl.dsp.window.close("killactive"))
hl.bind("SUPER + C", hl.dsp.exec_cmd("gsimplecal"))
-- hl.bind("SUPER + V", hl.dsp.focus("togglefloating"))
hl.bind("SUPER + R", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind("SUPER + W", hl.dsp.exec_cmd("wofi -n --show drun /dev/null"))


hl.bind("CTRL + space", hl.dsp.exec_cmd("ulauncher-toggle"))
hl.bind("CTRL + M", hl.dsp.exec_cmd("wallpaper.sh"))
hl.bind("CTRL + J", hl.dsp.exec_cmd("workspaceloop.sh"))


hl.bind("SUPER + K", hl.dsp.exec_cmd("alacritty --class clipse -e clipse"))

hl.bind("CTRL + 4", hl.dsp.exec_cmd("kitty --title fly_is_kitty sh -c 'cava'"))

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

hl.bind("CTRL + right", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("CTRL + left", hl.dsp.focus({ workspace = "e-1" }))

-- Nautilus open on 3 workspaces
local function launch_nautilus()
-- Wait for windows to open

    hl.exec_cmd("nautilus -w /home/bluebyt/", { workspace = "1" })
    hl.exec_cmd("nautilus -w ~/Downloads/", { workspace = "3" })
    hl.exec_cmd("nautilus -w /mnt/media/", { workspace = "9" })
end
-- Create a temporary test bind
hl.bind("SUPER + N", launch_nautilus)


