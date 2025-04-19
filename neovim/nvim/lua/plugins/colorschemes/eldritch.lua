-- https://github.com/eldritch-theme/eldritch.nvim
--
-- Filename: ~/github/dotfiles-latest/neovim/neobean/lua/plugins/colorschemes/eldritch.lua
-- ~/github/dotfiles-latest/neovim/neobean/lua/plugins/colorschemes/eldritch.lua

-- Require the colors.lua module and access the colors directly without
-- additional file reads
local colors = require("config.colors")

return {
  "eldritch-theme/eldritch.nvim",
  lazy = true,
  name = "eldritch",
  opts = {
    -- Overriding colors globally using a definitions table
    on_colors = function(global_colors)
      -- Define all color overrides in a single table
      local color_definitions = {
        -- https://github.com/eldritch-theme/eldritch.nvim/blob/master/lua/eldritch/colors.lua
        bg = colors["mohamad_color10"],
        fg = colors["mohamad_color14"],
        selection = colors["mohamad_color16"],
        comment = colors["mohamad_color09"],
        red = colors["mohamad_color08"], -- default #f16c75
        orange = colors["mohamad_color06"], -- default #f7c67f
        yellow = colors["mohamad_color05"], -- default #f1fc79
        green = colors["mohamad_color02"],
        purple = colors["mohamad_color04"], -- default #a48cf2
        cyan = colors["mohamad_color03"],
        pink = colors["mohamad_color01"], -- default #f265b5
        bright_red = colors["mohamad_color08"],
        bright_green = colors["mohamad_color02"],
        bright_yellow = colors["mohamad_color05"],
        bright_blue = colors["mohamad_color04"],
        bright_magenta = colors["mohamad_color01"],
        bright_cyan = colors["mohamad_color03"],
        bright_white = colors["mohamad_color14"],
        menu = colors["mohamad_color10"],
        visual = colors["mohamad_color16"],
        gutter_fg = colors["mohamad_color16"],
        nontext = colors["mohamad_color16"],
        white = colors["mohamad_color14"],
        black = colors["mohamad_color10"],
        git = {
          change = colors["mohamad_color03"],
          add = colors["mohamad_color02"],
          delete = colors["mohamad_color11"],
        },
        gitSigns = {
          change = colors["mohamad_color03"],
          add = colors["mohamad_color02"],
          delete = colors["mohamad_color11"],
        },
        bg_dark = colors["mohamad_color13"],
        -- Lualine line across
        bg_highlight = colors["mohamad_color17"],
        terminal_black = colors["mohamad_color13"],
        fg_dark = colors["mohamad_color14"],
        fg_gutter = colors["mohamad_color13"],
        dark3 = colors["mohamad_color13"],
        dark5 = colors["mohamad_color13"],
        bg_visual = colors["mohamad_color16"],
        dark_cyan = colors["mohamad_color03"],
        magenta = colors["mohamad_color01"],
        magenta2 = colors["mohamad_color01"],
        magenta3 = colors["mohamad_color01"],
        dark_yellow = colors["mohamad_color05"],
        dark_green = colors["mohamad_color02"],
      }

      -- Apply each color definition to global_colors
      for key, value in pairs(color_definitions) do
        global_colors[key] = value
      end
    end,

    -- This function is found in the documentation
    on_highlights = function(highlights)
      local highlight_definitions = {
        -- nvim-spectre or grug-far.nvim highlight colors
        DiffChange = { bg = colors["mohamad_color03"], fg = "black" },
        DiffDelete = { bg = colors["mohamad_color11"], fg = "black" },
        DiffAdd = { bg = colors["mohamad_color02"], fg = "black" },
        TelescopeResultsDiffDelete = { bg = colors["mohamad_color01"], fg = "black" },

        -- horizontal line that goes across where cursor is
        CursorLine = { bg = colors["mohamad_color13"] },

        -- Set cursor color, these will be called by the "guicursor" option in
        -- the options.lua file, which will be used by neovide
        Cursor = { bg = colors["mohamad_color24"] },
        lCursor = { bg = colors["mohamad_color24"] },
        CursorIM = { bg = colors["mohamad_color24"] },

        -- I do the line below to change the color of bold text
        ["@markup.strong"] = { fg = colors["mohamad_color24"], bold = true },

        -- Inline code in markdown
        ["@markup.raw.markdown_inline"] = { fg = colors["mohamad_color02"] },

        -- Change the spell underline color
        SpellBad = { sp = colors["mohamad_color11"], undercurl = true, bold = true, italic = true },
        SpellCap = { sp = colors["mohamad_color12"], undercurl = true, bold = true, italic = true },
        SpellLocal = { sp = colors["mohamad_color12"], undercurl = true, bold = true, italic = true },
        SpellRare = { sp = colors["mohamad_color04"], undercurl = true, bold = true, italic = true },

        MiniDiffSignAdd = { fg = colors["mohamad_color05"], bold = true },
        MiniDiffSignChange = { fg = colors["mohamad_color02"], bold = true },

        -- Codeblocks for the render-markdown plugin
        RenderMarkdownCode = { bg = colors["mohamad_color07"] },

        -- This is the plugin that shows you where you are at the top
        TreesitterContext = { sp = colors["mohamad_color10"] },
        MiniFilesNormal = { sp = colors["mohamad_color10"] },
        MiniFilesBorder = { sp = colors["mohamad_color10"] },
        MiniFilesTitle = { sp = colors["mohamad_color10"] },
        MiniFilesTitleFocused = { sp = colors["mohamad_color10"] },

        NormalFloat = { bg = colors["mohamad_color10"] },
        FloatBorder = { bg = colors["mohamad_color10"] },
        FloatTitle = { bg = colors["mohamad_color10"] },
        NotifyBackground = { bg = colors["mohamad_color10"] },
        NeoTreeNormalNC = { bg = colors["mohamad_color10"] },
        NeoTreeNormal = { bg = colors["mohamad_color10"] },
        NvimTreeWinSeparator = { fg = colors["mohamad_color10"], bg = colors["mohamad_color10"] },
        NvimTreeNormalNC = { bg = colors["mohamad_color10"] },
        NvimTreeNormal = { bg = colors["mohamad_color10"] },
        TroubleNormal = { bg = colors["mohamad_color10"] },

        NoiceCmdlinePopupBorder = { fg = colors["mohamad_color10"] },
        NoiceCmdlinePopupTitle = { fg = colors["mohamad_color10"] },
        NoiceCmdlinePopupBorderFilter = { fg = colors["mohamad_color10"] },
        NoiceCmdlineIconFilter = { fg = colors["mohamad_color10"] },
        NoiceCmdlinePopupTitleFilter = { fg = colors["mohamad_color10"] },
        NoiceCmdlineIcon = { fg = colors["mohamad_color10"] },
        NoiceCmdlineIconCmdline = { fg = colors["mohamad_color03"] },
        NoiceCmdlinePopupBorderCmdline = { fg = colors["mohamad_color02"] },
        NoiceCmdlinePopupTitleCmdline = { fg = colors["mohamad_color03"] },
        NoiceCmdlineIconSearch = { fg = colors["mohamad_color04"] },
        NoiceCmdlinePopupBorderSearch = { fg = colors["mohamad_color03"] },
        NoiceCmdlinePopupTitleSearch = { fg = colors["mohamad_color04"] },
        NoiceCmdlineIconLua = { fg = colors["mohamad_color05"] },
        NoiceCmdlinePopupBorderLua = { fg = colors["mohamad_color01"] },
        NoiceCmdlinePopupTitleLua = { fg = colors["mohamad_color05"] },
        NoiceCmdlineIconHelp = { fg = colors["mohamad_color12"] },
        NoiceCmdlinePopupBorderHelp = { fg = colors["mohamad_color08"] },
        NoiceCmdlinePopupTitleHelp = { fg = colors["mohamad_color12"] },
        NoiceCmdlineIconInput = { fg = colors["mohamad_color10"] },
        NoiceCmdlinePopupBorderInput = { fg = colors["mohamad_color10"] },
        NoiceCmdlinePopupTitleInput = { fg = colors["mohamad_color10"] },
        NoiceCmdlineIconCalculator = { fg = colors["mohamad_color10"] },
        NoiceCmdlinePopupBorderCalculator = { fg = colors["mohamad_color10"] },
        NoiceCmdlinePopupTitleCalculator = { fg = colors["mohamad_color10"] },
        NoiceCompletionItemKindDefault = { fg = colors["mohamad_color10"] },

        NoiceMini = { bg = colors["mohamad_color10"] },
        StatusLine = { bg = colors["mohamad_color10"] },
        Folded = { bg = colors["mohamad_color10"] },

        DiagnosticInfo = { fg = colors["mohamad_color03"] },
        DiagnosticHint = { fg = colors["mohamad_color02"] },
        DiagnosticWarn = { fg = colors["mohamad_color12"] },
        DiagnosticOk = { fg = colors["mohamad_color04"] },
        DiagnosticError = { fg = colors["mohamad_color11"] },
        RenderMarkdownQuote = { fg = colors["mohamad_color12"] },

        -- visual mode selection
        Visual = { bg = colors["mohamad_color16"], fg = colors["mohamad_color10"] },
        PreProc = { fg = colors["mohamad_color06"] },
        ["@operator"] = { fg = colors["mohamad_color02"] },

        KubectlHeader = { fg = colors["mohamad_color04"] },
        KubectlWarning = { fg = colors["mohamad_color03"] },
        KubectlError = { fg = colors["mohamad_color01"] },
        KubectlInfo = { fg = colors["mohamad_color02"] },
        KubectlDebug = { fg = colors["mohamad_color05"] },
        KubectlSuccess = { fg = colors["mohamad_color02"] },
        KubectlPending = { fg = colors["mohamad_color03"] },
        KubectlDeprecated = { fg = colors["mohamad_color08"] },
        KubectlExperimental = { fg = colors["mohamad_color09"] },
        KubectlNote = { fg = colors["mohamad_color03"] },
        KubectlGray = { fg = colors["mohamad_color10"] },

        -- Colorcolumn that helps me with markdown guidelines
        ColorColumn = { bg = colors["mohamad_color13"] },

        FzfLuaFzfPrompt = { fg = colors["mohamad_color04"], bg = colors["mohamad_color10"] },
        FzfLuaCursorLine = { fg = colors["mohamad_color02"], bg = colors["mohamad_color10"] },
        FzfLuaTitle = { fg = colors["mohamad_color03"], bg = colors["mohamad_color10"] },
        FzfLuaSearch = { fg = colors["mohamad_color14"], bg = colors["mohamad_color10"] },
        FzfLuaBorder = { fg = colors["mohamad_color02"], bg = colors["mohamad_color10"] },
        FzfLuaNormal = { fg = colors["mohamad_color14"], bg = colors["mohamad_color10"] },

        TelescopeNormal = { fg = colors["mohamad_color14"], bg = colors["mohamad_color10"] },
        TelescopeMultiSelection = { fg = colors["mohamad_color02"], bg = colors["mohamad_color10"] },
        TelescopeSelection = { fg = colors["mohamad_color14"], bg = colors["mohamad_color13"] },
      }

      -- Apply all highlight definitions at once
      for group, props in pairs(highlight_definitions) do
        highlights[group] = props
      end
    end,
  },
}
