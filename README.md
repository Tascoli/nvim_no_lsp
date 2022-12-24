# README

Repositório destinado a minha configuração pessoal do Neovim.

## Remover configurações anteriores

```sh
rm -rf ~/.config/nvim ~/.local/share/nvim
```

## Instalação

### Dependencias

- Git
- Make e cmake
- Python e pip
- Nodejs e npm
- Rust e Cargo
- On mac install `pbcopy` or on linux install `xsel` should be builtin to fixing copy and paste.

Após instalar o Node e o npm devemos fazer alguns ajustes para evitar erros de permissões.

```sh
mkdir ~/.npm-global &&
npm config set prefix '~/.npm-global' &&
export PATH=~/.npm-global/bin:$PATH &&      # Temporary change PATH
source ~/.profile &&
npm install -g jshint &&
NPM_CONFIG_PREFIX=~/.npm-global
```

Para insta o Rust execute o seguinte comando:
```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh &&
echo "export PATH=~/.cargo/bin/:$PATH" >> .bashrc # Permanently change PATH
```
### Neovim

Entre no site do [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) e faça a instalação conforme achar mais conveniente.

Agora vamos clonar o repositório de configurações.

```Sh
git clone <meu_repo> ~/.config/nvim
```

### Configurações

Clone o repositório com as configurações prontas

```sh
git clone <meu_repo> ~/.config/nvim
```

# Plugins

Espaço para observações sobre os plugins.

## LSP
## Markdown


## Nvim Tree keymaps

|Default Keymaps |Command         |Descripion      |
|:----           |     :----:     |:----           |
|`<CR>`          |edit            |open a file or folder; root will cd to the above directory|
|`<C-]>`         |cd              |cd in the directory under the cursor|
|`-`             |dir_up          |navigate up to the parent directory of the current file directory|
|`<C-v>`         |vsplit          |open the file in a vertical split|
|`<C-x>`         |split           |open the file in a horizontal split|
|`<C-t>`         |tabnew          |open the file in a new tab|
|`<BS>`          |close_node      |close current opened directory or parent|
|`<Tab>`         |preview         |open the file as a preview (keeps the cursor in the tree)|
|`H`             |toggle_dotfiles |toggle visibility of dotfiles via \|filters.dotfiles\| option|
|`U`             |toggle_custom   |toggle visibility of files/folders hidden via |filters.custom| option|
|`a`             |create          |add a file; leaving a trailing `/` will add a directory|
|`d`             |remove          |delete a file (will prompt for confirmation)|
|`D`             |rash            |trash a file via |trash| option|
|`r`             |rename          |rename a file|
|`<C-r>`         |full_rename     |rename a file and omit the filename on input|
|`x`             |cut             |add/remove file/directory to cut clipboard|
|`c`             |copy            |add/remove file/directory to copy clipboard|
|`p`             |paste           |paste from clipboard; cut clipboard has precedence over copy; will prompt for confirmation|
|`y`             |copy_name       |copy name to system clipboard|
|`Y`             |copy_path       |copy relative path to system clipboard|
|`gy`            |copy_absolute_path|copy absolute path to system clipboard|
|`q`             |close           |close tree window|
|`W`             |collapse_all    |collapse the whole tree|
|`<C-k>`         |toggle_file_info|toggle a popup with file infos about the file under the cursor|
|`m`             |toggle_mark     |Toggle node in bookmarks
|`bmv`           |bulk_move       |Move all bookmarked nodes into specified location|

## Todo-comments

Dependecies:

- ripgrep


