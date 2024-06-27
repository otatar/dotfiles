return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
    require('neo-tree').setup({
      filesystem = {
        filtered_items = {
          visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
          hide_dotfiles = false,
         },
      }
  })
		vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>")
    vim.api.nvim_create_autocmd({"VimEnter"},  { command = "Neotree toggle" })

	end,
}
