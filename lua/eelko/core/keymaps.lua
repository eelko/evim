vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })

--keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
-- keymap.set("n", "<leader>s", "", { desc = "Split windows" }) -- split window 
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current window" }) -- close current split window

-- keymap.set("n", "<leader>t", "", { desc = "Tabs" }) 
-- keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab

-- Lazy package manager
keymap.set("n", "<leader>p", "", { desc = "Plugins" }) 
keymap.set("n", "<leader>pl", "<cmd>Lazy<CR>", { desc = "Lazy" })
keymap.set("n", "<leader>pm", "<cmd>Mason<CR>", { desc = "Mason" })

-- Buffer management
keymap.set("n", "]b", "<cmd>bnext<CR>", { desc = "Next buffer" }) 
keymap.set("n", "[b", "<cmd>bprev<CR>", { desc = "Previous buffer" }) 
keymap.set("n", "<leader>b", "", { desc = "Buffers" })
keymap.set("n", "<leader>bb", "<cmd>Telescope buffers<cr>", { desc = "Telescope Buffers" })
keymap.set("n", "<leader>bc", "<cmd>%bd<CR><cmd>e#<CR><cmd>bd#<CR>", { desc = "Close all buffers but this one" })
