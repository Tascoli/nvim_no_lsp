-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

local status_ok, mason = pcall(require,"mason")
if not status_ok then
    return
end

mason.setup({
    -- TODO: I need figure out how auto-install languages

    pip = {
        -- Whether to upgrade pip to the latest version in the virtual environment before installing packages.
        upgrade_pip = false,

        -- These args will be added to `pip install` calls. Note that setting extra args might impact intended behavior
        -- and is not recommended.
        --
        -- Example: { "--proxy", "https://proxyserver" }
        install_args = {},
    },

    -- Controls to which degree logs are written to the log file. It's useful to set this to vim.log.levels.DEBUG when
    -- debugging issues with package installations.
    log_level = vim.log.levels.INFO,

    -- Limit for the maximum amount of packages to be installed at the same time. Once this limit is reached, any further
    -- packages that are requested to be installed will be put in a queue.
    max_concurrent_installers = 4,

    github = {
        -- The template URL to use when downloading assets from GitHub.
        -- The placeholders are the following (in order):
        -- 1. The repository (e.g. "rust-lang/rust-analyzer")
        -- 2. The release version (e.g. "v0.3.0")
        -- 3. The asset name (e.g. "rust-analyzer-v0.3.0-x86_64-unknown-linux-gnu.tar.gz")
        download_url_template = "https://github.com/%s/releases/download/%s/%s",
    },

    -- The provider implementations to use for resolving package metadata (latest version, available versions, etc.).
    -- Accepts multiple entries, where later entries will be used as fallback should prior providers fail.
    -- Builtin providers are:
    --   - mason.providers.registry-api (default) - uses the https://api.mason-registry.dev API
    --   - mason.providers.client                 - uses only client-side tooling to resolve metadata
    providers = {
        "mason.providers.registry-api",
    },

    ui = {
         -- Whether to automatically check for new versions when opening the :Mason window.
         check_outdated_packages_on_open = true,

         -- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
         border = "none",

        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        },
    },
})


local status_ok, mason_lspconfig = pcall(require,"mason-lspconfig")
if not status_ok then
    return
end

mason_lspconfig.setup({
    automatic_installation = true
})

require('lspconfig').sumneko_lua.setup{
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim','root_pattern' }
            }
        }
    }
}

require('lspconfig').pyright.setup {}

require('lspconfig').marksman.setup{
    cmd = {"marksman", "server"},
    filetypes = {"markdown"},
    -- root_dir = root_pattern('.git', '.marksman.toml'),
    single_file_suport = true,
}

-----------------------------------------------------------------------------

