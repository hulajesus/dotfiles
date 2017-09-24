" These keys are easier to type than the default set
" We exclude semicolon because it's hard to read and
" i and l are too easy to mistake for each other slowing
" down recognition. The home keys and the immediate keys
" accessible by middle fingers are available
let g:EasyMotion_keys='asdfjkoweriop'
let g:EasyMotion_smartcase = 1
let g:EasyMotion_prompt = '>>> '
nmap F <Plug>(easymotion-s2)
let g:EasyMotion_enter_jump_first = 1
map z/ <Plug>(easymotion-sn)
omap z/ <Plug>(easymotion-tn)
