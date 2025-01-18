vim.g.ale_linters = {
  python = {"mypy", "ruff"},
}

vim.g.ale_fixers = {
  python = {"ruff_format", "ruff"},
}

vim.g.ale_python_auto_poetry = 1
vim.g.ale_python_auto_uv = 1
vim.g.ale_python_auto_virtualenv = 1
vim.g.ale_python_mypy_options = "--disallow-untyped-defs --disallow-incomplete-defs --no-implicit-optional --local-partial-types --strict-equality"
