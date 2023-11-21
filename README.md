# My Awesome Vim / NeoVim Configuration Without Plugins

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
<p align="center">
  <img width="200" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Vimlogo.svg/1200px-Vimlogo.svg.png" alt="Vim Logo">
   <img width="600" src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Neovim-logo.svg/1200px-Neovim-logo.svg.png" alt="Neovim Logo">
</p>

[Vim](https://www.vim.org/) / [NeoVim](https://neovim.io) is a powerful and highly configurable text editor designed to make text manipulation and coding a breeze. It's known for its unique modal editing system, where different modes offer distinct functionalities like insertion, navigation, and text manipulation. This design philosophy enables lightning-fast editing once you're familiar with the concepts.

what are vim plugins? Plugins in Vim are add-ons that extend its capabilities for more efficient coding and editing.

Pros:

- Enhanced Functionality: Plugins extend Vim's capabilities, making tasks like coding and editing more efficient.
- Language Support: Plugins offer specialized features for different programming languages.

Cons:

- Dependencies: Plugins can create compatibility issues and dependencies.
- Conflicts: Multiple plugins might clash, requiring conflict resolution.

There are additional aspects to consider in each case.

**However, it's certain that a configuration file without plugins is copy and work!.**

*What if I want plugins? visit: <https://github.com/YanivZalach/Vim_Config>*

What do we have here? My Vim configuration file! WITHOUT ANY PLUGINS

Who can use it? Anyone can use it!

<img width="960" alt="Screenshot 2023-08-27 182110" src="https://github.com/YanivZalach/Vim_Config_NO_PLUGINS/assets/131461377/fcdd579e-aba6-4390-b1fc-f0cedaf5069b">

## Requirements 🛠️

Before using this Vim configuration, make sure you have One of the following installed on your system:

- [Vim](https://www.vim.org/) 📜
- [NeoVim](https://neovim.io) 📜

## Installation 📦

1. Install the programs listed above using your package manager or download them from their respective websites.

2. Copy the config file:

### Linux & MacOS

  Copy and paste the following command into the terminal and press 'enter':

  For Vim:

  ```bash
  git clone https://github.com/YanivZalach/Vim_Config_NO_PLUGINS.git ~/.Vim_Config
  echo "source ~/.Vim_Config/.vimrc" > ~/.vimrc
  ```

  For NeoVim:

  ```bash
  git clone https://github.com/YanivZalach/Vim_Config_NO_PLUGINS.git ~/.config/nvim_git
  echo "source ~/.config/nvim_git/init.vim" > ~/.config/nvim/init.vim
  ```

### Windows

  Copy and paste the following command into PowerShell and press 'enter':

  For Vim:

  ```pwsh
  git clone https://github.com/YanivZalach/Vim_Config_NO_PLUGINS.git $HOME\.Vim_Config
  mv $HOME\.Vim_Config\.vimrc $HOME\.
  ```

  For NeoVim:

  ```pwsh
  git clone https://github.com/YanivZalach/Vim_Config_NO_PLUGINS.git  $HOME\AppData\Local\nvim
  mv $HOME\AppData\Local\nvim\.vimrc $HOME\AppData\Local\nvim\init.vim
  ```

3. **We are Done!**

## Usage, Features, and Special Key Bindings 🚀

### Welcome to Your Enhanced Vim Experience

Smart Tab and Indentation Settings 💡

- Experience seamless and intelligent code indentation for a consistent coding journey.

Beautiful Color Scheme 🌈

- A soothing color scheme that's easy on your eyes is set as default, enhancing your focus and readability.
  
Basic Auto-Completion 🔌
  
- Auto-completion, which can be extended for future enhancements.

Netrw File Exsplorer 🌲

- Navigate through your project effortlessly with a File Exsplorer, your trusty sidekick.
  
Vim-StatusBar ✈️

- a sleek and customizable status bar for Vim, located at the bottom of your editor.

Vim-terminal 💻

- A terminal emulator directly within Vim. This feature empowers you to run commands, compile code, and perform other terminal-related tasks without leaving your Vim environment.

Hebrew Mode 🚀

- A mode that support right to left written languages. This feature empowers you so you can use any Language in vim.

### Native Vim Key Bindings 🎮

Utilize these native Vim key bindings to navigate and control the text editor efficiently:

- `:w`: Save changes to the file.
- `:q`: Quit Vim.
- `:q!`: Quit Vim without saving changes.
- `:wq` or `:x`: Save changes and quit Vim.
- `j`, `k`, `h`, `l`: Navigate through the file.
- `zz`: Center the current line on the screen.
- `i`, `a`, `s`: Enter insert mode.
- `shift+v`: Enter visual line mode.
- `z=`: Get spelling check suggestions for a word.
- `<Ctrl> + n`:  Auto-Completion
- `dd`: Delete the current line.
- `yy`: Yank (copy) the current line.
- `p`: Paste the content you've yanked or deleted.
- `u`: Undo the last action.
- `<Ctrl> + r`: Redo an undone action.
- `/pattern`: Search for a specific pattern in the text.
- `n`: Move to the next occurrence of the search pattern.
- `N`: Move to the previous occurrence of the search pattern.

Remember, Vim's unique modal nature means that you often need to switch to Normal mode (by pressing `Esc`) before executing the above commands.

### Enhanced Key Bindings for Speed and Fun! ⚡️

Take your editing experience to the next level with these added key bindings:

- `<Ctrl> + c`: Copy text to the main clipboard in normal mode.
- `<Ctrl> + <Shift> + v`: Paste text from the main clipboard.
- `<Space> + r`: Showing vim registers.
- `jj`: Quickly exit insert mode.
- `Q`: Format a paragraph into lines.
- `<Ctrl> + z`: Toggle spell check.
- `<Space> + e`: Open a file explorer.
- `<Space> + o`: Open a file from explorer.
- `<Space> + v`: Enter V-Block Mode.
- `<Ctrl> + t`: Toggle a terminal window.
- `<Ctrl> + i`: Make the terminal scrollable or switch to input mode.
- `<Space> + y`: Split window vertically.
- `<Space> + x`: Split window horizontally.
- `<Ctrl> + j`, `<Ctrl> + k`, `<Ctrl> + h`, `<Ctrl> + l`: Navigate between splits.
- `<Alt> + Left Arrow`, `<Alt> + Right Arrow`, `<Alt> + Up Arrow`, `<Alt> + Down Arrow`: Resize splits.
- `<Space> + t`: Switch between tabs.
- `<Space> + c`: Create\Open a new tab.
- `<Ctrl> + s`: Save the current file.
- `<Ctrl> + q`: Save and quit.
- `<Space> + sw`: Surround word with a wanted character.
- `<Space> + rw`: Replace all occurrences of a word.
- `<Space + ht`: Toggle `Hebrew` mode.
- `J`: In visual mode, move line down.
- `K`: In visual mode, move line up.


## Troubleshooting 🔧

The installation is not working:

- Make sure you have Git installed on your computer.
  Open the terminal and run the following command:

  ```bash
  git --version
  ```

  If Git is installed, you will see the installed version. If not, you need to install it using your package manager.
  Then retry the Installation.
  
- Check if a file/directory already exists
  
  **Linux & MacOS**
  
  Check if the `~/.config/nvim` , `~/.Vim_Config` or `~/.vimrc` already exists.
  Open the terminal and run the following command to check if they exists:

  - To check if the `~/.config/nvim` directory exists, run:

      ```bash
      ls ~/.config/nvim
      ```

      Is found, run:

      ```bash
      mv ~/.config/nvim ~/.config/nvim_backup
      ```

  - To check if the `~/.Vim_Config` directory exists, run:

      ```bash
      ls ~/.Vim_Config
      ```

      Is found, run:

      ```bash
      mv ~/.Vim_Config ~/.Vim_Config_backup
      ```

  - To check if the `~/.vimrc` file exists, run:

      ```bash
      cat ~/.vimrc
      ```

      Is found, run:

      ```bash
      mv ~/.vimrc ~/.vimrc_backup
      ```

  **Windows**
  
  Check if the `$HOME\AppData\Local\nvim` , `$HOME\.Vim_Config` or `$HOME\.vimrc` already exists.
  Open PowerShell and run the following command to check if they exists:

  - To check if the `$HOME\AppData\Local\nvim` directory exists, run:

      ```pwsh
      dir $HOME\AppData\Local\nvim
      ```

      Is found, run:

      ```pwsh
      mv $HOME\AppData\Local\nvim $HOME\AppData\Local\nvim_backup
      ```

  - To check if the `$HOME\.Vim_Config` directory exists, run:

      ```pwsh
      dir $HOME\.Vim_Config
      ```

      Is found, run:

      ```pwsh
      mv $HOME\.Vim_Config $HOME\.Vim_Config_backup
      ```

  - To check if the `$HOME\.vimrc` file exists, run:

      ```pwsh
      cat $HOME\.vimrc
      ```

      Is found, run:

      ```pwsh
      mv $HOME\.vimrc $HOME\.vimrc_backup
      ```

  This will rename the existing directory/file as _backup.
  Retry the Installation.
  
## Acknowledgments 🙏

A special thanks to the Vim/NeoVim community for their support.

### Happy Editing! 🪶💻
