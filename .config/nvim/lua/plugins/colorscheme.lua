return {
    "folke/tokyonight.nvim",
    config = function()
        print("loading tokyo");
        require("tokyonight").setup({
            style = "night",
            light_style = "night",
            transparent = true,
            terminal_colors = true,
            styles = {
                comments = { italic = false },
                keywords = { italic = false },
                functions = { italic = false },
                variables = { italic = false },
                sidebars = "dark",
                floats = "dark",
            },
            sidebars = { "qf", "help" },
            hide_inactive_statusline = false,
            dim_inactive = false,
            lualine_bold = false,

            ---@param colors ColorScheme
            on_colors = function(colors) end,

            ---@param highlights Highlights
            ---@param colors ColorScheme
            on_highlights = function(highlights, colors)
                highlights.EndOfBuffer = {
                    fg = colors.comment
                }
            end,
        })

        vim.cmd.colorscheme("tokyonight-night");
    end,
}
