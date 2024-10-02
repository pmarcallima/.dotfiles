
return
{
    "jbyuki/nabla.nvim",
    config = function()
        -- Ativar virtual text para equações diretamente na linha
        vim.api.nvim_create_autocmd({"BufEnter", "TextChanged", "TextChangedI"}, {
            pattern = "*.norg",  -- Você pode mudar isso para qualquer tipo de arquivo
            callback = function()
                require("nabla").enable_virt()
            end,
        })

        vim.api.nvim_set_keymap('n', '<leader>rn', ":lua require('nabla').popup()<CR>", { noremap = true, silent = true })
    end
}
