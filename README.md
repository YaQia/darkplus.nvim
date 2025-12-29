
![header](./assets/Dark_PLUS.png)

---

Darkplus inspired colorscheme written in lua.

## Showcase
![2022-10-05-21:52:55](https://user-images.githubusercontent.com/696094/194197308-3b5c1728-fc07-4b80-b30b-1d14c09d6656.png)
![2022-10-05-21:42:21](https://user-images.githubusercontent.com/696094/194197310-e2728711-43c3-49d4-b1f4-4db7cd3b2901.png)
![2022-10-05-21:42:08](https://user-images.githubusercontent.com/696094/194197313-309fe9ec-4d4e-4c81-b95d-118117c895de.png)


## Install

```lua
use "YaQia/darkplus.nvim"
```

## Activate

```lua
vim.cmd("colorscheme darkplus")
```

## Light / Dark

- Uses the dark palette by default; set `:set background=light` (or `vim.o.background = 'light'`) to switch to the light palette.
- The colorscheme listens for `background` changes and reapplies automatically, so terminal-driven OSC 11 background switches will be reflected without extra setup.
- The bundled lualine theme follows the current background and rebuilds when the colorscheme reapplies.

## Warning

This is a fork of lunarvim/darkplus.nvim.

Background color of highlight groups about borders are changed into the same color of `Normal`,
 which is not suitable for floating windows without borderlines.
 
 I use rounded everywhere, so this is my personal preference. Please understand.
