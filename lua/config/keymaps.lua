-- Функция для удаления пустых строк внутри ближайших {}
function RemoveEmptyLinesInBraces()
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)

  -- Находим ближайшие открывающую и закрывающую скобку
  local start_line, end_line
  for i = row, 1, -1 do
    if lines[i]:find("{") then
      start_line = i
      break
    end
  end
  for i = row, #lines do
    if lines[i]:find("}") then
      end_line = i
      break
    end
  end

  if not start_line or not end_line then
    print("Не найдены скобки вокруг курсора")
    return
  end

  -- Берём блок между скобками
  local block = vim.api.nvim_buf_get_lines(0, start_line, end_line - 1, false)
  local new_block = {}

  -- Убираем пустые строки
  for _, line in ipairs(block) do
    if line:match("%S") then
      table.insert(new_block, line)
    end
  end

  -- Заменяем старый блок на новый
  vim.api.nvim_buf_set_lines(0, start_line, end_line - 1, false, new_block)
end

-- Привязываем к хоткею, например <leader>ue
vim.keymap.set(
  "n",
  "<leader>ue",
  RemoveEmptyLinesInBraces,
  { desc = "Удалить пустые строки внутри {}" }
)
