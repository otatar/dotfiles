local ascii_art = {
  " _____   ____   __   ____   __    ____    ", 
  "(  _  ) (_  _) /__\\ (_  _) /__\\  (  _ \\", 
  " )(_)(    )(  /(__)\\  )(  /(__)\\  )   / ", 
  "(_____)()(__)(__)(__)(__)(__)(__)(_)\\_)  "
}

return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			config = {
				-- header = ascii_art,
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
