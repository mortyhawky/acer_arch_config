## morty-neovim
my neovim config

### First time, clone:
cd ~/.config
git clone https://github.com/mortyhawky/config_nvim.git nvim
cd nvim


### Workflow:
git pull
git status
    Do some work
git add .
git commit -m "Modified: <file-name>"
git push


### Basic Neovim configuration:

#### Arch:  
~/.config/nvim/init.lua  
~/.config/nvim/lua
~/.config/nvim/lua/morty
~/.config/nvim/lua/morty/01settings.lua
~/.config/nvim/lua/morty/autocmds.lua
~/.config/nvim/lua/morty/init.lua
~/.config/nvim/lua/morty/mappings.lua
~/.config/nvim/lua/morty/navigations.lua
~/.config/nvim/lua/morty/neovim-keycodes.txt



#### Win11:  
set $Env:XDG_CONFIG_HOME="~\.config 
in $PROFILE, then . $PROFILE  
Test by running nvim and checking  
:lua print(vim.fn.stdpath('config')) 
— it should now point to  
 C:\Users\morty\.config\nvim  

win default is:  
 ~\AppData\Local\nvim\init.lua  


This Basic config should work the same way
on both ArchDWM and Win11
