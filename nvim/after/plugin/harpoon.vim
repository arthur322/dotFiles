lua << EOF
require("harpoon").setup({
  global_settings = {
    save_on_toggle = false,
    save_on_change = true,
    enter_on_sendcmd = false,
  }
})
EOF

nnoremap <leader>[ :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>] :lua require("harpoon.mark").add_file()<CR>

nnoremap <leader>j :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>k :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>l :lua require("harpoon.ui").nav_file(3)<CR>
