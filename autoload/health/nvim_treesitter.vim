function! health#nvim_treesitter#check()
  if has('nvim-0.6') " TODO: Remove this guard once 0.6 is stable
    call health#report_start("info: use the Lua checkhealth :checkhealth nvim-treesitter")
    return
  end
  lua require 'nvim-treesitter.health'.check()
endfunction
