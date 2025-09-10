require("toggleterm").setup({
    size = 20, -- Adjust the size of the terminal as needed
    open_mapping = [[<c-\>]], -- Keybinding to open the terminal
    direction = "float", -- Set the terminal to be a floating terminal
    shell = "zsh", -- Ensure the terminal uses Zsh
})
