require("core.keymaps")
require("core.plugins")
require("core.plugins-setup")

vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
  callback = function()
    local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
    if not normal.bg then return end
    
    -- Envía un comando de escape OSC 11 para cambiar el color de fondo de la terminal
    io.write(string.format("\027]11;#%06x\027\\", normal.bg))
  end,
})

-- Opcional: Para restaurar el color de fondo original de la terminal al salir de Neovim
vim.api.nvim_create_autocmd({ "VimLeave" }, {
  callback = function()
    
      -- Envía un comando de escape OSC 111 para restaurar el color de fondo predeterminado
    io.write("\027]111\027\\")
  end,
})

