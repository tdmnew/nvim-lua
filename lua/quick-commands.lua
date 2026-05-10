----------------------------------------------------
------------------ Quick Commands ------------------
----------------------------------------------------
local function run_terminal_command(args)
  vim.cmd("belowright 10split | terminal " .. args)
  vim.cmd("startinsert")
end

vim.keymap.set("n", "<leader>d", function()
  local cmds = {
    { name = "Edit Vim Files", location = "~/.config/nvim/lua", hasArgs = false }
  }

  -- Map commands based on filetype --
  if
      vim.bo.filetype == "javascript" or
      vim.bo.filetype == "typescript" or
      vim.bo.filetype == "html" or
      vim.bo.filetype == "css"
  then
    for _, v in ipairs({
      { name = "npm build", cmd = "npm run build", hasArgs = false, },
    })
    do
      table.insert(cmds, v)
    end
  end

  if
      vim.bo.filetype == "cs" or
      vim.bo.filetype == "cshtml" or
      vim.bo.filetype == "razor"
  then
    for _, v in ipairs({
      { name = ".NET Build & Run",        cmd = "dotnet build && dotnet run", hasArgs = false, },
      { name = "Create MonoGame Lib",     cmd = "dotnet new mglib -n ",       hasArgs = true },
      { name = "Create MonoGame Project", cmd = "dotnet new mgdesktopgl -n ", hasArgs = true },
    })
    do
      table.insert(cmds, v)
    end
  end

  vim.ui.select(cmds, {
    prompt = "Select Command: ",
    format_item = function(item)
      return item.name
    end,
  }, function(choice)
    if choice and choice.cmd then
      if choice.hasArgs then
        vim.ui.input({ prompt = 'Name: ' },
          function(input)
            if input == nil then
              return
            end

            run_terminal_command(choice.cmd .. tostring(input))
          end)
      else
        run_terminal_command(choice.cmd)
      end
    elseif choice and choice.location then
      vim.cmd(":edit" .. choice.location)
    end
  end)
end)
