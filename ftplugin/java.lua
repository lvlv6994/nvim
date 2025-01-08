--require('jdtls').start_or_attach({
--    -- This will be the default in neovim 0.7+
--    debounce_text_changes = 150,
--    -- This will be the default in neovim 0.7+
--    root_dir = require('jdtls.setup').find_root({ 'pom.xml', '.git', 'mvnw', 'gradlew' }),
--    -- This will be the default in neovim 0.7+
--    cmd = { 'jdtls', '-data', '/Users/xm/.jdtls' },
--    -- This will be the default in neovim 0.7+
--    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
--    -- Here you can configure eclipse.jdt.ls specific settings
--    -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
--    -- for a list of options
--    settings = {
--        java = {
--            eclipse = {
--                downloadSources = true,
--            },
--            configuration = {
--                updateBuildConfiguration = "interactive",
--            },
--            maven = {
--                downloadSources = true,
--            },
--            implementationsCodeLens = {
--                enabled = true,
--            },
--            referencesCodeLens = {
--                enabled = true,
--            },
--            references = {
--                includeDecompiledSources = true,
--            },
--        }
--    },

--    -- Language server `initializationOptions`
--    -- You need to extend the `bundles` with paths to jar files
--    -- if you want to use additional eclipse.jdt.ls plugins.
--    --
--    -- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
--    --
--    -- If you don't plan on using the debugger or other eclipse.jdt.ls plugins you can remove this
--    init_options = {
--        bundles = {}
--    },

--})



---- Add the commands
--require("jdtls.setup").add_commands()
--vim.api.nvim_exec(
--    [[
--command! -buffer -nargs=? -complete=custom,v:lua.require'jdtls'._complete_compile JdtCompile lua require('jdtls').compile(<f-args>)
--command! -buffer -nargs=? -complete=custom,v:lua.require'jdtls'._complete_set_runtime JdtSetRuntime lua require('jdtls').set_runtime(<f-args>)
--command! -buffer JdtUpdateConfig lua require('jdtls').update_project_config()
--command! -buffer JdtJol lua require('jdtls').jol()
--command! -buffer JdtBytecode lua require('jdtls').javap()
--command! -buffer JdtJshell lua require('jdtls').jshell(),
--  ]] ,
--    false
--)

vim.cmd("set makeprg=java")
