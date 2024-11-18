return {
  {
    "olrtg/nvim-emmet",
    config = function()
      -- Define the keybinding with functionality and description
      vim.keymap.set({ "n", "v" }, "<leader>mt", require("nvim-emmet").wrap_with_abbreviation, { desc = "Emmet: Wrap with Abbreviation" })
    end,
  },
}
