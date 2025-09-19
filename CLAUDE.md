# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Architecture Overview

This is a LazyVim-based Neovim configuration that extends the base LazyVim setup with custom plugins and configurations.

### Core Structure
- **Entry Point**: `init.lua` bootstraps the configuration by loading `config.lazy`
- **Plugin Management**: Uses lazy.nvim with automatic colorscheme switching based on time of day
- **Configuration Layout**:
  - `lua/config/`: Core configuration files (options, keymaps, autocmds)
  - `lua/plugins/`: Individual plugin configurations that override/extend LazyVim defaults

### Key Customizations
- **Colorscheme**: Rose-pine theme with time-based switching logic in `lua/config/lazy.lua` (dawn 7am-8pm, main otherwise, currently forced to main)
- **Performance**: Aggressive optimizations including 30+ disabled vim plugins, fast update times (10ms), and syntax limiting (300 columns)
- **LSP**: Enhanced configurations for Go (gopls), TypeScript (vtsls), Biome, Protocol Buffers (protols), and SQL (sqls) with inlay hints enabled
- **Formatting**: Biome-first approach for JS/TS with LSP fallback, goimports/gofumt/impl/gopls for Go, yamlfix for YAML
- **UI**: Mouse disabled, virtual diagnostic text disabled, custom quickfix keymaps, spell checking enabled

## Common Commands

### Code Formatting
```bash
# Lua code formatting (uses stylua with 2-space indentation, 120 column width)
stylua lua/ --config-path stylua.toml
```

### Plugin Management
```bash
# In Neovim, update plugins
:Lazy sync

# Check plugin status
:Lazy
```

### Development Workflow
- Plugin configurations are in `lua/plugins/` - each file returns a table/array of plugin specs
- Custom keymaps go in `lua/config/keymaps.lua` (includes `jk` escape mapping and quickfix nav)
- Options and performance tweaks are in `lua/config/options.lua` (Neovim 0.11 optimized)
- Time-based colorscheme logic is in `lua/config/lazy.lua` (currently disabled, forcing main theme)
- When editing plugin configs, restart Neovim or use `:Lazy reload <plugin>` to see changes
- Configuration follows LazyVim conventions - custom configs override/extend base LazyVim settings

## Important Configuration Details

### Performance Optimizations
- 30+ vim plugins disabled in `lua/config/lazy.lua` (netrw, tar, gzip, etc.)
- Fast update times: `updatetime = 10ms`, `timeoutlen = 200ms`, `ttimeoutlen = 5ms`
- Syntax highlighting limited to 300 columns (`synmaxcol = 300`)
- Persistent undo enabled with custom directory (`~/.nvim/undo`)
- Smooth scrolling and improved diff algorithms for Neovim 0.11

### LSP & Formatting Architecture
- Biome takes precedence over LSP formatting for JS/TS/JSON with fallback to LSP
- Go formatting uses multiple tools: goimports → gofumt → impl → gopls
- YAML formatting via yamlfix with specific environment variables
- Virtual diagnostic text disabled in favor of signs (`virtual_text = false`)
- Inlay hints enabled for gopls, vtsls (TypeScript), and JavaScript

### Key Behaviors
- Mouse completely disabled (`vim.opt.mouse = ""`)
- Spell checking enabled by default for English (`vim.opt.spell = true`)
- Custom quickfix navigation: `<leader>qn/qp/qc`
- Insert mode escape via `jk` mapping
- No swap files, command height set to 0 (hidden command line)