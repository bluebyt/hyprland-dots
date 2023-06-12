---
output:
  pdf_document: 
    keep_tex: true
    includes:
      in_header: columns.tex
    latex_engine: xelatex
documentclass: scrartcl
classoption: 
  - landscape
  - fontsize=7.5pt
papersize: a4
geometry:
  - top=1.0cm
  - left=1.0cm
  - right=1.0cm
  - bottom=1.5cm
mainfont: DejaVuSansMono
---


:::::: {.cols data-latex=""}

::: {.col data-latex="{0.48\textwidth}"}

## Default shortcuts

### Scrolling

| Action | Shortcut |
| ------ | --------------- |
| Scroll line up | ctrl+shift+up (also ⌥+⌘+⇞ and ⌘+↑ on macOS) |
| Scroll line down | ctrl+shift+down (also ⌥+⌘+⇟ and ⌘+↓ on macOS) |
| Scroll page up | ctrl+shift+page_up (also ⌘+⇞ on macOS) |
| Scroll page down | ctrl+shift+page_down (also ⌘+⇟ on macOS) |
| Scroll to top | ctrl+shift+home (also ⌘+↖ on macOS) |
| Scroll to bottom | ctrl+shift+end (also ⌘+↘ on macOS) |


### Tabs management

| Action | Shortcut |
| ------ | --------------- |
| New tab | ctrl+shift+t (also ⌘+t on macOS) |
| Close tab | ctrl+shift+q (also ⌘+w on macOS) |
| Next tab | ctrl+shift+right (also ^+⇥ and ⇧+⌘+] on macOS) |
| Previous tab | ctrl+shift+left (also ⇧+^+⇥ and ⇧+⌘+[ on macOS) |
| Move tab forward | ctrl+shift+. |
| Move tab backward | ctrl+shift+, |
| Set tab title | ctrl+shift+alt+t (also ⇧+⌘+i on macOS) |

### Other keyboard shortcuts

| Action | Shortcut |
| ------ | --------------- |
| Copy to clipboard | ctrl+shift+c (also ⌘+c on macOS) |
| Paste from clipboard | ctrl+shift+v (also ⌘+v on macOS) |
| Paste from selection | ctrl+shift+s |
| Increase font size | ctrl+shift+equal (also ⌘++ on macOS) |
| Decrease font size | ctrl+shift+minus (also ⌘+- on macOS) |
| Restore font size | ctrl+shift+backspace (also ⌘+0 on macOS) |
| Toggle fullscreen | ctrl+shift+f11 (also ^+⌘+f on macOS) |
| Toggle maximized | ctrl+shift+f10 |
| Input unicode character | ctrl+shift+u (also ^+⌘+space on macOS) |
| Click URL with keyboard | ctrl+shift+e |
| Reset the terminal | ctrl+shift+delete |
| Reload kitty.conf | ctrl+shift+f5 (also ^+⌘+f5 on macOS) |
| Debug kitty.conf | ctrl+shift+f6 (also ⌘+option+f6 on macOS) |
| Pass selection to program | ctrl+shift+o |
| Edit kitty config file | ctrl+shift+f2 |
| View kitty docs in browser | ctrl+shift+f1 |
| Open a kitty shell | ctrl+shift+escape |
| Increase/decrease background opacity | ctrl+shift+a>m / crtl+shift+a>l |
| Full background opacity | ctrl+shift+a>1 |
| Reset background opacity | ctrl+shift+a>d |



:::

::: {.col data-latex="{0.02\textwidth}"}
\ 
<!-- an empty Div (with a white space), serving as
a column separator -->
:::

::: {.col data-latex="{0.48\textwidth}"}

### Shell integration


| Action | Shortcut |
| ------ | --------------- |
| View output of last command | crtl+shift+g |
| Prev/next prompt in scrollback | crtl+shift+z / crtl+shitft+x |



### Windows management

| Action | Shortcut |
| ------ | --------------- |
| New window | ctrl+shift+enter (also ⌘+↩ on macOS) |
| Switch to next layout | ctrl+shift+l |
| New OS window | ctrl+shift+n (also ⌘+n on macOS) |
| Close window | ctrl+shift+w (also ⇧+⌘+d on macOS) |
| Next window | ctrl+shift+] |
| Previous window | ctrl+shift+[ |
| Move window forward | ctrl+shift+f |
| Move window backward | ctrl+shift+b |
| Move window to top | ctrl+shift+` |
| Focus specific window | ctrl+shift+1, ctrl+shift+2 ... ctrl+shift+0 (also ⌘+1, ⌘+2 ... ⌘+9 on macOS) (clockwise from the top-left) |


## Mappable actions

### Copy/Paste

- **copy_and_clear_or_interrupt**: Copy the selected text from the active window to the clipboard and clear selection, if no selection, send Ctrl-C
- **copy_or_interrupt**: Copy the selected text from the active window to the clipboard, if no selection, send Ctrl-C
- **copy_to_clipboard**: Copy the selected text from the active window to the clipboard. Default shortcut: ctrl+shift+c
- **pass_selection_to_program**: Pass selected text from active window to specified program. Default shortcut: ctrl+shift+o
- **paste**: Paste the specified text into the current window
- **show_scrollback**: Show scrollback in a pager like less. Default shortcut: ctrl+shift+h
- **copy_to_buffer**: Copy the selection from the active window to the specified buffer.
- **paste_from_buffer**: Paste from the specified buffer to the active window.
- **paste_from_clipboard**: Paste from the clipboard to the active window. Default shortcut: ctrl+shift+v
- **paste_from_selection**: Paste from the clipboard to the active window. Default shortcut: ctrl+shift+s

### Mouse actions

- **mouse_click_url**: Click the URL under the mouse
- **mouse_click_url_or_select**: Click the URL under the mouse only if the screen has no selection
- **mouse_selection**: Manipulate the selection based on the current mouse position
- **paste_selection**: Paste the current primary selection
- **paste_selection_or_clipboard**: Paste the current primary selection or the clipboard if no selection is present


:::

::::::

\pagebreak

:::::: {.cols data-latex=""}

::: {.col data-latex="{0.48\textwidth}"}



### Scrolling

- **scroll_end**: Scroll to the bottom of the scrollback buffer. Default shortcut: ctrl+shift+end
- **scroll_home**: Scroll to the top of the scrollback buffer. Default shortcut: ctrl+shift+home
- **scroll_line_down**: Scroll down by one line. Default shortcut: ctrl+shift+down
- **scroll_line_up**: Scroll up by one line. Default shortcut: ctrl+shift+up
- **scroll_page_down**: Scroll down by one page. Default shortcut: ctrl+shift+page_down
- **scroll_page_up**: Scroll up by one page. Default shortcut: ctrl+shift+page_up



### Windows management

- **close_other_windows_in_tab**: Close all windows in the tab other than the currently active window.
- **close_window**: Close the currently active window. Default shortcut: ctrl+shift+w
- **move_window**: Move the window in the specified direction. Default shortcut: ctrl+shift+b
- **move_window_forward**: Move active window forward (swap it with the next window). Default shortcut: ctrl+shift+f
- **move_window_to_top**: Move active window to the top (make it the first window). Default shortcut: ctrl+shift+`
- **neighboring_window**: Focus the neighboring window in the current tab. Default shortcut: ctrl+shift+]
- **nth_window**: Focus the nth window if positive or the previously active windows if negative. Default shortcut: ctrl+shift+[
- **reset_window_sizes**: Reset window sizes undoing any dynamic resizing of windows.
- **resize_window**: Resize the active window by the specified amount.
- **change_font_size**: Change the font size for the current or all OS Windows. Default shortcuts using this action: ctrl+shift+minus, ctrl+shift+equal, ctrl+shift+backspace
- **close_os_window**: Close the currently active OS Window. Default shortcut: shift+cmd+w
- **detach_window**: Detach a window, moving it to another tab or OS Window.
- **new_os_window_with_cwd**: New OS Window with the same working directory as the currently active window.
- **new_window**: Create a new window. Default shortcut: ctrl+shift+enter
- **new_window_with_cwd**: Create a new window with working directory same as that of the active window.
- **quit**: Quit, closing all windows
- **set_background_opacity**: Set the background opacity for the active OS Window. Default shortcuts using this action: ctrl+shift+a>l, ctrl+shift+a>1, ctrl+shift+a>m, ctrl+shift+a>d
- **start_resizing_window**: Resize the active window interactively. Default shortcut: ctrl+shift+r
- **toggle_fullscreen**: Toggle the fullscreen status of the active OS Window. Default shortcut: ctrl+shift+f11
- **toggle_maximized**: Toggle the maximized status of the active OS Window. Default shortcut: ctrl+shift+f10


:::

::: {.col data-latex="{0.02\textwidth}"}
\ 
<!-- an empty Div (with a white space), serving as
a column separator -->
:::

::: {.col data-latex="{0.48\textwidth}"}

### Marks

- **remove_marker**: Remove a previously created marker
- **scroll_to_mark**: Scroll to the next or previous mark of the specified type
- **toggle_marker**: Toggle the current marker on/off
- **create_marker**: Create a new marker



### Tab management

- **detach_tab**: Detach a tab, moving it to another OS Window
- **goto_tab**: Go to the specified tab, by number, starting with 1. Zero and negative numbers go to previously active tabs
- **move_tab_backward**: Move the active tab backward. Default shortcut: ctrl+shift+,
- **move_tab_forward**: Move the active tab forward. Default shortcut: ctrl+shift+.
- **new_tab**: Create a new tab. Default shortcut: ctrl+shift+t
- **new_tab_with_cwd**: Create a new tab with working directory for the window in it set to the same as the active window.
- **next_tab**: Make the next tab active. Default shortcut: ctrl+shift+right
- **previous_tab**: Make the previous tab active. Default shortcut: ctrl+shift+left
- **select_tab**: Interactively select a tab to switch to
- **set_tab_title**: Change the title of the active tab. Default shortcut: ctrl+shift+alt+t


### Miscellaneous

- **send_text**: Send the specified text to the active window. Default shortcut: ctrl+shift+alt+h
- **signal_child**: Send the specified SIGNAL to the foreground process in the active window.
- **clear_terminal**: Clear the terminal. Default shortcut: ctrl+shift+delete
- **combine**: Combine multiple actions and map to a single keypress. The syntax is:
    map key combine <separator> action1 <separator> action2 <separator> action3 ...
- **disable_ligatures_in**: Turn on/off ligatures in the specified window.
- **discard_event**: Discard this event completely ignoring it.
- **edit_config_file**: Edit the kitty.conf config file in your favorite text editor. Default shortcut: ctrl+shift+f2
- **input_unicode_character**: Input an arbitrary unicode character.
- **kitten**: Run the specified kitten. Default shortcuts using this action: ctrl+shift+p>n, ctrl+shift+u, ctrl+shift+p>h, ctrl+shift+p>l, ctrl+shift+p>f, ctrl+shift+p>w, ctrl+shift+p>y, ctrl+shift+p>shift+f
- **kitty_shell**: Run the kitty shell to control kitty with commands. Default shortcut: ctrl+shift+escape
- **launch**: Launch the specified program in a new window/tab/etc.
- **load_config_file**: Reload the config file. Default shortcut: ctrl+shift+f5
- **open_url_with_hints**: Click a URL using the keyboard. Default shortcut: ctrl+shift+e
- **remote_control**: Run a remote control command.
- **set_colors**: Change colors in the specified windows.
- **show_kitty_env_vars**: Show the environment variables that the kitty process sees.


:::

::::::
