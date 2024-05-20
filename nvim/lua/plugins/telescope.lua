-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Telescope

---@type LazySpec
return {
  "nvim-telescope/telescope.nvim",
  opts = {
    file_ignore_patterns = {
      "node_modules",
    },
  },
}
