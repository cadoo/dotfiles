require('browse').setup({
  -- search provider you want to use
  provider = "google", -- duckduckgo, bing

  -- either pass it here or just pass the table to the functions
  -- see below for more
  bookmarks = {
      -- ["github"] = {
      --     ["name"] = "search github from neovim",
      --     ["code_search"] = "https://github.com/search?q=%s&type=code",
      --     ["repo_search"] = "https://github.com/search?q=%s&type=repositories",
      --     ["issues_search"] = "https://github.com/search?q=%s&type=issues",
      --     ["pulls_search"] = "https://github.com/search?q=%s&type=pullrequests",
      -- },
      ["search WP code"] = "https://developer.wordpress.org/?s=%s",
  }
})

vim.keymap.set("n", "<leader>b", function()
  require("browse").browse({ bookmarks = bookmarks })
end)
