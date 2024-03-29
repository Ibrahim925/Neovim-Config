require('bufferline').setup {
    options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead
        icon = '▎',
		style="icon",
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        name_formatter = function(buf)
            if buf.name:match('%.md') then
                return vim.fn.fnamemodify(buf.name, ':t:r')
            end
        end,
        max_name_length = 18,
        max_prefix_length = 15,
        tab_size = 18,
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = false,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            return "("..count..")"
        end,
        offsets = {{filetype = "NvimTree", text = "Workspace"}},
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_buffer_default_icon = true,
	    show_close_icon = true,
        show_tab_indicators = false,
        persist_buffer_sort = true,
        -- separator_style = "slant",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = 'insert_after_current'
  }
}
