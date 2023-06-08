-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  [""] = {
    ["<D-v>"] = { '+p<CR>', desc = "Paste" }
  },
  ["!"] = {
    ["<D-v>"] = { '<C-R>+', desc = "Paste" }
  },
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    ["--"] = { ":Telescope fd<cr>", desc = "Find files with fd" },
  },
  t = {
    ["<D-v>"] = { '<C-R>+', desc = "Paste" },
  },
  v = {
    ["<D-v>"] = { '<C-R>+', desc = "Paste" },
    ["<D-c>"] = { '"+y', desc = "Copy" },
  },
}
