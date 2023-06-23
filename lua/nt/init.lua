local nt = {}

-- nt.find_root_dir()
--     Find project root directory.
--
--     This function finds the first directory containing a ".git" directory
--     by traversing upward through parent directories starting from the
--     location of the current buffer.
--
--     Return:
--         (string) Path of the project root directory
--
function nt.find_root_dir()
    local opts = {
        path = vim.api.nvim_buf_get_name(0),
        upward = true,
    }
    local root_dir = vim.fs.dirname(vim.fs.find('.git', opts)[1])
    return root_dir
end

return nt
