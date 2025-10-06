-- lua/config/blink.lua


require('blink.cmp').setup({
	--version = "1.*",
	fuzzy = { implementation = "prefer_rust_with_warning" },
	-- Core sources: these are built-in and generally all you need.
	sources = {
		default = {
					'lsp',          -- Language Server Protocol suggestions
					'path',         -- File path completion
					'snippets',     -- LuaSnip / friendly-snippets integration
					'buffer',       -- Words from current and other open buffers
		},
	},

	-- Keymaps are simple and use preset defaults
	 keymap = {
    -- Use the 'enter' preset for standard behavior
				preset = 'default',

    -- Define specific keybindings to override/customize
    ['enter'] = { 'select_and_accept' }, -- Accept completion with Ctrl-Y
    --['<C-e>'] = { 'abort' },             -- Cancel completion with Ctrl-E

    -- Use tab to navigate and trigger snippet forwarding
    ['<Tab>'] = {
      'select_next',
      'snippet_forward', -- Move to next placeholder in a snippet
      'fallback',        -- Fallback to default behavior if completion menu is not open
    },
    ['<S-Tab>'] = {
      'select_prev',
      'snippet_backward', -- Move to previous placeholder in a snippet
      'fallback',
    },
  },

  -- Snippet integration
  snippets = {
    preset = 'luasnip', -- Required if using LuaSnip
  },

  -- Appearance and menu settings
  windows = {
    -- Enable ghost text (inline suggestion)
    ghost_text = { enabled = true },

    -- Automatically show documentation in a floating window
    documentation = {
      auto_show = false,
      -- auto_show_delay_ms = 200,
    },
    },
    appearance = {
      nerd_font_variant = 'mono'
    }
})


--[[
require("blink.cmp").setup({
  dependencies = { 'rafamadriz/friendly-snippets' },

  opts = {
    -- 'enter' for enter to accept
    --
    -- All presets have the following mappings:
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    
    -- See :h blink-cmp-config-keymap for defining your own keymap
    keymap = { preset = 'default' },

    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono'
    },

    -- (Default) Only show the documentation popup when manually triggered
    completion = { documentation = { auto_show = false } },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
})
--]]
