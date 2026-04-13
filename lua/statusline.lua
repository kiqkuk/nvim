-- lua/statusline.lua

local M = {}

local mode_map = {
  ['n']   = { 'NORMAL',   '%#StatusNormal#' },
  ['i']   = { 'INSERT',   '%#StatusInsert#' },
  ['v']   = { 'VISUAL',   '%#StatusVisual#' },
  ['V']   = { 'V-LINE',   '%#StatusVisual#' },
  ['\22'] = { 'V-BLOCK',  '%#StatusVisual#' },
  ['c']   = { 'COMMAND',  '%#StatusCmd#' },
  ['R']   = { 'REPLACE',  '%#StatusReplace#' },
  ['t']   = { 'TERM',     '%#StatusTerminal#' },
}

function M.render()
  local mode_data = mode_map[vim.api.nvim_get_mode().mode] or { 'UNKNOWN', '%#StatusNormal#' }
  local label = mode_data[1]
  local highlight = mode_data[2]

  local mode_str = string.format("%s %s ", highlight, label)

  local file_str = "%#StatusPath# %f %m %r "

  local diag = vim.diagnostic.status()
  local diag_str = (diag and diag ~= "") and ("%#StatusDiag# " .. diag .. " ") or ""

  local ft = vim.bo.filetype:upper()
  local location = "%l:%c"
  local ft_str = string.format("%%#StatusFiletype# %s [%s] ", ft, location)

  return table.concat({
    mode_str,
    file_str,
    "%=",
    diag_str,
    ft_str
  })
end

return M
