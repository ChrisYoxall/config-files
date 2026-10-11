return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  keys = {
    -- File pickers
    { "<leader>ff", function() require("fzf-lua").files() end, desc = "Find files" },
    { "<leader>fr", function() require("fzf-lua").oldfiles() end, desc = "Recent files" },
    { "<leader>fb", function() require("fzf-lua").buffers() end, desc = "Find buffers" },

    -- Text search
    { "<leader>fg", function() require("fzf-lua").live_grep() end, desc = "Live grep (project)" },
    { "<leader>fw", function() require("fzf-lua").grep_cword() end, desc = "Grep word under cursor" },
    { "<leader>fl", function() require("fzf-lua").grep_last() end, desc = "Resume last grep" },

    -- Git & Diagnostics
    { "<leader>gc", function() require("fzf-lua").git_commits() end, desc = "Git commits" },
    { "<leader>gs", function() require("fzf-lua").git_status() end, desc = "Git status" },
    { "<leader>fd", function() require("fzf-lua").diagnostics_workspace() end, desc = "Workspace diagnostics" },

    -- Help & Keymaps
    { "<leader>fh", function() require("fzf-lua").help_tags() end, desc = "Help tags" },
    { "<leader>fk", function() require("fzf-lua").keymaps() end, desc = "Keymaps" }
  }
}
