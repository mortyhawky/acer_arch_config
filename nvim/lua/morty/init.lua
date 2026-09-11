--print the name of the lua file for debugging purposes.
--print("Start: ~/.config/nvim/lua/morty/init.lua")
require("morty.options")
require("morty.autocmds")
require("morty.mappings")
require("morty.navigations")
require("morty.netrw")
 
-- ----------------------------
-- Some useful commands.
-- ----------------------------
-- 1234567890123456789012345678901234567890123456789012345678901234567
-- Command       Mapping        Actual keys    Description
-- :Ex           leader e       space e        :Explorer
-- :sp [file]    leader -       space -        split vert
-- :vs [file]    leader |       space |        split hori
-- :wq           leader q       space q
-- Ctrl+g                                      Show full path
-- g Ctrl+g                                    Show more info
-- Ctrl+/-/0                    Ctrl+/-/0      Zoom in/out/default
-- nvim .        v .                           Open in Explore mode
