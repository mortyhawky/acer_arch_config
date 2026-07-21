### shortcuts.md

```bash
zathura --page=15 file.pdf
```

Zathura is very keyboard-oriented. The zoom controls are:
Key	Action
+	Zoom in
-	Zoom out
=	Zoom to default
a	Fit page width
s	Fit page height
z	Toggle zoom mode

A few other useful defaults (very Vim-like):
Key	Action
j / k	Scroll down/up
h / l	Scroll left/right
Ctrl+d	Half page down
Ctrl+u	Half page up
gg	Go to first page
G	Go to last page
n	Next search result
/	Search
q	Quit

You can see the full list inside Zathura with:
:help

or from a terminal:
zathura --help

Customizing zoom

Since you use Vim/tiling-WM style tools, you may like putting this in:

~/.config/zathura/zathurarc

For example:

set adjust-open "best-fit"
set smooth-scroll true
set zoom-min 10
set zoom-max 500
set zoom-step 10

Then each press of + or - changes zoom by 10%.

You can also make it more Vim-like:

map J zoom in
map K zoom out

although the defaults are already pretty close to Vim.
Given your dwm + vifm + neovim workflow, Zathura is probably a very good fit — it follows the same "keyboard first, minimal UI" philosophy.
Can zathura invert colors, i.e. set background to black and text to white?  Further can I 
Yes. Zathura can invert document colors, and it is quite common for dark-themed setups.
The setting you want is:
set recolor true
in:
~/.config/zathura/zathurarc

This enables color inversion.
You can also control the exact colors:

set recolor-darkcolor "#ffffff"
set recolor-lightcolor "#000000"

Meaning:

    recolor-darkcolor → text color

    recolor-lightcolor → page/background color

So normal PDF:
black text on white page
becomes:
white text on black page
Toggle it while running
You don't need to restart Zathura. Press:

Ctrl+r

set recolor true
set recolor-darkcolor "#eeeeee"
set recolor-lightcolor "#111111"

set default-bg "#111111"
set default-fg "#eeeeee"

The first two affect PDF content. The last two affect Zathura's own UI elements.
Per-document toggle

If you only want it sometimes:

    Ctrl+r → toggle invert mode

set recolor-keephue true

This preserves colors in images while still making the page background dark. It often works better for technical PDFs containing plots, schematics, and screenshots.
