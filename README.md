# ⚡ Modern Neovim Configuration

![Neovim Config Banner](./assets/banner.jpg)

Welcome to a sleek, modern, and highly-optimized **Neovim configuration** designed to transform Neovim into a blazing-fast, IDE-like development environment. Powered by **Lazy.nvim**, themed with **Catppuccin Mocha**, and configured for a superior developer experience across multiple languages.

---

## ✨ Features At A Glance

### 🎨 UI & Aesthetics
*   **Catppuccin Mocha Theme**: Rich, vibrant, and eye-friendly dark mode with complete integration for Telescope, Neo-tree, Treesitter, and LSP diagnostics.
*   **Modern Cmdline & Notifications**: Powered by `noice.nvim` and `nvim-notify` for rich floating inputs, beautiful popups, and smooth LSP progress bars.
*   **Sleek Statusline**: Customized `lualine.nvim` featuring Git integration (branch, diff, diagnostics), relative file paths, and status extensions for neo-tree and toggleterm.
*   **Doom-Style Dashboard**: Clean startup screen using `dashboard-nvim` with quick access keybinds.
*   **Which-Key**: Interactive popup keymap guide that triggers as you type.
*   **Indent Guides**: Clear vertical indent guidelines via `indent-blankline.nvim` (ibl).

### 🔍 Search & Navigation
*   **Telescope**: Fuzzy search files, live grep through your codebase, search buffers, help tags, and recent files.
*   **Neo-Tree**: Feature-rich sidebar file explorer showing git status, automatically focusing the current buffer.
*   **Aerial Outline**: A modern code outline sidebar to view and jump between classes, functions, and symbols.
*   **Flash.nvim**: Lightning-fast code navigation and motion by typing target search patterns.
*   **Smart Folds**: Enhanced code folding powered by `nvim-ufo`, providing clean fold previews.
*   **Vim-Illuminate**: Automatically highlights other occurrences of the word under your cursor.

### 🛠️ IDE Capabilities (LSP & Autocomplete)
*   **Blink.cmp**: High-speed, Rust-powered autocompletion engine supporting LSP, snippets (via LuaSnip), and filesystem paths.
*   **LSP Config**: Pre-configured language servers for C/C++ (`clangd`), Python (`pyright`), Java (`jdtls`), JS/TS (`ts_ls`), Bash (`bashls`), and Lua (`lua_ls`).
*   **Conform.nvim**: Auto-formatting on save (`BufWritePre`) with support for Prettier, Ruff, Black, StyLua, clang-format, Google Java Format, and shfmt.
*   **Nvim-Lint**: Code linting using Ruff, ESLint, and ShellCheck.
*   **Trouble.nvim**: A beautiful panel to consolidate and navigate diagnostics, symbols, todos, and quickfix lists.
*   **Todo-Comments**: Highlights and searches tasks (`TODO`, `FIXME`, `NOTE`) throughout your workspace.
*   **Mason & Mason-Tool-Installer**: Automatically downloads and installs language servers, formatters, and debuggers on launch.

### 📦 Git, Terminal, & Tools
*   **Gitsigns**: Inline diff indications, hunk preview, hunk staging/resetting, and real-time git blame.
*   **Diffview**: Side-by-side Git diff comparison panel.
*   **Toggleterm**: Integrated floating terminal window and quick-toggle for **LazyGit**.
*   **Session Management**: Automatic workspace session saving and restoring powered by `persistence.nvim`.

### 🐛 Debugging & Testing
*   **DAP (Debugger)**: Full-featured debugger using `nvim-dap`, `nvim-dap-ui` (panel layout), and virtual text variables.
*   **Neotest**: Interactive unit test runner with adapters for Python and Jest (JS/TS).
*   **CMake Tools**: Robust build/debug integration for C/C++ projects.
*   **Overseer**: Extensible task runner and task lists.

---

## ⚙️ Requirements & Prerequisites

Before installing, ensure you have the following installed on your system:

### 1. Neovim
*   **Version**: Neovim **v0.10.0** or newer is recommended.
*   **Platform**: Linux, macOS, or WSL (Windows Subsystem for Linux).

### 2. Fonts
*   A **Nerd Font** must be set in your terminal emulator to render icons properly.
    *   *Recommended*: [JetBrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip) or [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts).

### 3. CLI Utilities
*   `git` (for cloning plugins)
*   `curl` (for plugin installations)
*   `ripgrep` (essential for Telescope fuzzy live grep)
*   `unzip` & `tar` (for Mason downloads)
*   A compiler like `gcc`, `g++`, or `clang` and `make` (to build custom plugin extensions)
*   `lazygit` (optional, for the interactive git GUI wrapper)

### 4. Language Runtimes (For Mason Tools)
*   **Node.js / npm**: Required for linters/formatters like `prettier` and `eslint_d`.
*   **Python 3 / pip**: Required for Python analysis tools and debugger.

---

## 🚀 Installation & Setup

Set up the configuration in a few simple steps:

### Step 1: Backup Your Current Configuration (Optional)
If you have an existing Neovim setup, back up your config and directories:

```bash
# Backup configuration
mv ~/.config/nvim ~/.config/nvim.bak

# Backup state, data, and cache
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### Step 2: Clone the Configuration
Clone or copy this repository directly into your standard configuration directory:

```bash
git clone <your-repository-url> ~/.config/nvim
```

### Step 3: Run Neovim
Simply start Neovim:

```bash
nvim
```

Lazy.nvim will automatically bootstrap, download all plugins, compile necessary components, and install them. Wait a moment for the process to complete, then restart Neovim.

### Step 4: Tool Installation (Automatic)
Upon first launch, `mason-tool-installer.nvim` will run in the background. It will automatically download and install:
*   **LSPs**: `clangd`, `pyright`, `lua-language-server`, `jdtls`, `bash-language-server`, `typescript-language-server`
*   **Formatters & Linters**: `clang-format`, `stylua`, `prettier`, `ruff`, `eslint_d`
*   **Debuggers**: `debugpy`, `codelldb`

You can monitor the installation status by executing the command:
```vim
:Mason
```

---

## 📂 Configuration Structure

Here is how the configuration files are laid out:

```text
~/.config/nvim
├── assets/                  # Images and graphics (e.g. banner)
├── init.lua                 # Entry point (requires config & plugins)
├── lazy-lock.json           # Lockfile pinning plugin versions
├── LICENSE                  # Project License
└── lua/
    ├── config/              # Core configuration files
    │   ├── autocmds.lua     # Auto-commands (yank highlight, cursor restore)
    │   ├── keymaps.lua      # Core editor keymaps
    │   ├── lazy.lua         # Plugin manager bootstrap & initialization
    │   └── options.lua      # Global Vim options
    └── plugins/             # Modular plugin definitions (loaded by Lazy.nvim)
        ├── lsp.lua          # Language Server Protocol settings
        ├── completion.lua   # Autocomplete (Blink.cmp)
        ├── telescope.lua    # Fuzzy Finder
        ├── neotree.lua      # File Explorer
        ├── colorscheme.lua  # Catppuccin configuration
        └── ... (other plugin files)
```

---

## ⌨️ Keymaps & Cheat Sheet

The configuration sets **`<Space>`** as the `<leader>` key. Below is a categorized quick reference:

### 📝 Core Editor Mappings
| Keymap | Mode | Action | Description |
| :--- | :--- | :--- | :--- |
| `<leader>w` | Normal | `:w<CR>` | Save the current file |
| `<leader>q` | Normal | `:q<CR>` | Quit Neovim |
| `<Esc>` | Normal | `:nohlsearch<CR>` | Clear search highlighting |
| `<C-h> / j / k / l` | Normal | Window Navigation | Move focus left, down, up, or right |
| `<C-Up / Down / Left / Right>` | Normal | Resize Windows | Grow or shrink split sizes |
| `< / >` | Visual | Shift & Re-select | Indent/outdent block and keep selection active |

### 📂 Navigation & Searching
| Keymap | Mode | Action | Description |
| :--- | :--- | :--- | :--- |
| `<leader>e` | Normal | Neo-Tree Toggle | Toggle the file explorer sidebar |
| `<leader>ff` | Normal | Telescope | Find Files in workspace |
| `<leader>fg` | Normal | Telescope | Live Grep (search text in codebase) |
| `<leader>fb` | Normal | Telescope | Browse active buffers |
| `<leader>fh` | Normal | Telescope | Search Neovim help tags |
| `<leader>fr` | Normal | Telescope | Search recently opened files |
| `<leader>a` | Normal | Aerial Toggle | Toggle code outline sidebar (Classes/Functions) |
| `s` | N, X, O | Flash Jump | Initiate character search jump motion |
| `S` | N, X, O | Treesitter Flash | Select node via Treesitter pattern selection |

### 🛠️ LSP & Code Quality
| Keymap | Mode | Action | Description |
| :--- | :--- | :--- | :--- |
| `gd` | Normal | Go to Definition | Jump to definition of symbol under cursor |
| `gD` | Normal | Go to Declaration | Jump to declaration |
| `gr` | Normal | Find References | Show all references of symbol |
| `gi` | Normal | Go to Implementation| Jump to implementations |
| `K` | Normal | Hover | Display documentation tooltip |
| `<leader>rn` | Normal | Rename Symbol | Smart rename symbol across workspace |
| `<leader>ca` | Normal | Code Action | Open context-aware code fixes |
| `[d` / `]d` | Normal | Next/Prev Diagnostic | Jump to next or previous error/warning |
| `<leader>ld` | Normal | Line Diagnostics | Open floating diagnostic detail popup |
| `<leader>lD` | Normal | Diagnostic List | Send diagnostics to local list |

### 📦 Git Integrations
| Keymap | Mode | Action | Description |
| :--- | :--- | :--- | :--- |
| `<leader>gg` | Normal | LazyGit | Open floating LazyGit terminal overlay |
| `<leader>gd` | Normal | Diffview Open | Open side-by-side Git diff panel |
| `<leader>gD` | Normal | Diffview Close | Close Git diff panel |
| `]h` / `[h` | Normal | Next/Prev Hunk | Jump to next/prev Git change hunk |
| `<leader>gh` | Normal | Preview Hunk | Floating preview of changes in current hunk |
| `<leader>gs` | Normal | Stage Hunk | Stage current hunk |
| `<leader>gr` | Normal | Reset Hunk | Discard changes in current hunk |
| `<leader>gb` | Normal | Blame Line | Show floating git blame details for current line |

### 🐛 Debugging & Testing (DAP & Neotest)
| Keymap | Mode | Action | Description |
| :--- | :--- | :--- | :--- |
| `<F5>` | Normal | DAP Continue | Start or continue execution |
| `<F10>` | Normal | DAP Step Over | Step over function call |
| `<F11>` | Normal | DAP Step Into | Step into function call |
| `<F12>` | Normal | DAP Step Out | Step out of function call |
| `<leader>db` | Normal | Toggle Breakpoint| Place or remove breakpoint on current line |
| `<leader>dr` | Normal | DAP REPL | Open the debugging interactive prompt |
| `<leader>tt` | Normal | Test Nearest | Run the nearest test under cursor |
| `<leader>tf` | Normal | Test File | Run all tests in the current file |
| `<leader>td` | Normal | Debug Test | Debug nearest test using DAP |
| `<leader>ts` | Normal | Test Summary | Toggle the interactive test summary panel |
| `<leader>to` | Normal | Test Output | Open the detailed testing output log |

### ⚡ CMake Tools & Tasks
| Keymap | Mode | Action | Description |
| :--- | :--- | :--- | :--- |
| `<leader>cg` | Normal | CMake Generate | Generate build files |
| `<leader>cb` | Normal | CMake Build | Compile target binaries |
| `<leader>cr` | Normal | CMake Run | Run selected target |
| `<leader>cd` | Normal | CMake Debug | Debug target binary with DAP |
| `<leader>cs` | Normal | CMake Build Type | Select build type (Release, Debug) |
| `<leader>ct` | Normal | CMake Target | Select build target |
| `<leader>or` | Normal | Overseer Run | Trigger task templates |
| `<leader>ot` | Normal | Task List | Toggle running background tasks panel |

---

## 💡 Troubleshooting & FAQs

#### Q: Icons are not showing up (instead showing boxes/question marks).
Ensure you have downloaded and installed a [Nerd Font](https://www.nerdfonts.com/) and that your terminal application is configured to use it.

#### Q: How do I force Mason to update or install a server manually?
Run `:Mason` inside Neovim. This opens an interactive dashboard where you can hit `i` to install a package under the cursor, or `u` to update.

#### Q: Autocompletion is slow or not working.
`blink.cmp` utilizes a fast compiled engine. Ensure your compile toolchain (such as `gcc`/`clang` and `make`) is installed so the blink plugin builds its native dependencies correctly during setup. Run `:Lazy` to check if any plugins failed to install or compile.

---

*Made with 💖 for the open-source community. Enjoy typing at the speed of light!*
