" File: lightline-material.vim
" Description: lightline.vim theme for material colorscheme
" Author: khalidchawtany <khalidchawtany@yahoo.com>
" Source: https://github.com/khalidchawtany/lightline-material

let s:is_dark=(&background == 'dark')

let s:mono0   = '#686868'
let s:c_mono0 = 235

" #1D1F21 for hybrid
" #263238 for material
let s:mono1   = '#1D1F21'
let s:mono2   = '#1D1F21'
let s:mono3   = '#1D1F21'
let s:mono4   = '#1D1F21'
let s:mono5   = '#1D1F21'
let s:c_mono1 = 237
let s:c_mono2 = 239
let s:c_mono3 = 241
let s:c_mono4 = 243
let s:c_mono5 = 245

let s:red      = '#1D1F21'
let s:green    = '#1D1F21'
let s:blue     = '#1D1F21'
let s:orange   = '#1D1F21'
let s:c_red    = 167
let s:c_green  = 142
let s:c_blue   = 109
let s:c_orange = 208


let s:p = {
      \ 'normal':   {},
      \ 'inactive': {},
      \ 'insert':   {},
      \ 'replace':  {},
      \ 'visual':   {},
      \ 'tabline':  {}}


let s:p.normal.middle = [
      \ [s:mono0, s:mono1, s:c_mono4, s:c_mono1]]
let s:p.normal.left = [
      \ [s:mono0, s:green, s:c_mono0, s:c_green],
      \ [s:mono0, s:mono3, s:c_mono5, s:c_mono3]]
let s:p.normal.right = [
      \ [s:mono0, s:mono4, s:c_mono0, s:c_mono4],
      \ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]

let s:p.inactive.middle = [
      \ [s:mono0, s:mono2, s:c_mono4, s:c_mono2]]
let s:p.inactive.right = [
      \ s:p.inactive.middle[0],
      \ s:p.inactive.middle[0]]
let s:p.inactive.left = [
      \ s:p.inactive.middle[0],
      \ s:p.inactive.middle[0]]

let s:p.insert.left = [
      \ [s:mono0, s:blue, s:c_mono0, s:c_blue],
      \ s:p.normal.left[1]]
let s:p.replace.left = [
      \ [s:mono0, s:red, s:c_mono0, s:c_red],
      \ s:p.normal.left[1]]
let s:p.visual.left = [
      \ [s:mono0, s:orange, s:c_mono0, s:c_orange],
      \ s:p.normal.left[1]]

let s:p.tabline.middle = [
      \ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
let s:p.tabline.right = [
      \ [s:mono0, s:mono1, s:c_mono4, s:c_mono1],
      \ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
let s:p.tabline.left = [
      \ [s:mono0, s:mono1, s:c_mono4, s:c_mono1]]
let s:p.tabline.tabsel = [
      \ [s:mono0, s:mono0, s:c_mono5, s:c_mono0]]

let g:lightline#colorscheme#transparency#palette = s:p
