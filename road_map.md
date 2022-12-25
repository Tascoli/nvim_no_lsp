# Instalação do Neovim com Lua

Devemos remover o os arquivos de configuração já existentes

```sh
rm -rf ~/.config/nvim ~/.local/share/nvim
```

Todos nós sabemos que o arquivo principal de configuração do Vim é o ~/.vimrc e o arquivo correspondente dele no Neovim é o ~/.config/nvim/init.vim . Ou seja, se criarmos um link simbólico do vimrc para o init.vim seu Neovim funcionará normalmente como seu Vim funciona e você também portará todas as configurações e plugins para o Neovim.

Dentro da pasta `.config/nvim` criamos o arquivo `init.lua`.

Como havíamos dito no artigo anterior dessa série o Neovim utiliza API do Vim para entregar os resultados ou consultar comandos e executá-los e para esse caso utiliza a API vim.cmd.

```sh
vim.cmd([[ set guicursor= ]])
```
Se você quiser criar um arquivo separado com suas configurações e importá-lo para seu init.lua fica mais organizado, exemplo: criar um arquivo settings.lua e no seu init.lua basta adicionar essa linha:

```lua
require("settings")
```
O mais correto mesmo é você criar um diretório de nome lua/ e dentro dele pôr todos os arquivos que serão importados pelo init.lua, exemplo:

```
mkdir -p ~/.config/nvim/lua
```

E mover o settings.lua para lá:

```
mv ~/.config/nvim/settings.lua ~/.config/nvim/lua/
```

E o init.lua irá automáticamente ler o settings.lua mesmo sem indicar o diretório porque isso faz parte do 'runtimepath', ou seja, esse diretório de nome lua/ faz parte do padrão.
```lua
vim.cmd([[ set guicursor= ]])
```
Procure por ajuda no próprio nvim

```
:h <texto>
:h lua-vimscrpit
```

## Keymaps

At first glance, the Lua code might appear too verbose but it’s a good thing as
you’ll see soon.

In the Lua code snippet we shared above, we defined a function called map(). It accepts four parameters namely:

1. mode (as in Vim modes like Normal/Insert mode)

2. lhs (the custom keybinds you need) -> {lhs}	means left-hand-side	*{lhs}*

3. rhs (the commands or existing keybinds to customise) -> {rhs} means right-hand-side	*{rhs}*

4. opts (additional options like <silent>/<noremap>, see :h map-arguments for more info on it)

    - nnoremap  - the noremap for non-recursive remaps - All use this way
    - to define a mapping which will not be echoed on the command line, add "<silent>" as the first argument.


```vim
vim.api.nvim_set_keymap(mode, lhs, rhs, options)
```

<!-- TODO:
Review and set references

-->


## Referências
[Chris@Machine](https://github.com/ChristianChiarulli/nvim)

[Miners](https://blog.codeminer42.com/neovim-tips-and-how-to-start/)

[Como Customizar do Zero](https://terminalroot.com.br/2021/11/tudo-sobre-neovim-com-lua-como-customizar-do-zero.html)

[Neovim do Zero em 2022](https://www.manualdocodigo.com.br/vim-basico/)

[Configurando a verificação ortográfica](https://pt.wikibooks.org/wiki/Vim/Configurando_a_verifica%C3%A7%C3%A3o_ortogr%C3%A1fica)

[Build your first Neovim configuration in lua](https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/)

[Everything you need to know to configure neovim using lua](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)

[Neovim for Beginners](https://alpha2phi.medium.com/neovim-for-beginners-init-lua-45ff91f741cb)

[NeoVim:Passos iniciais](https://dev.to/enrsaid/neovim-initlua-built-in-lsp-e-mais-3695)

[My init.lua for Neovim](https://randomgeekery.org/config/init.lua/)

[Getting Started with Neovim](https://bryankegley.me/posts/nvim-getting-started/)

[Configure Neovim in Lua](https://www.meetgor.com/neovim-vimscript-to-lua/)

[Configuring Neovim using Lua](https://icyphox.sh/blog/nvim-lua/)

[ellisonleao/nvim-lua-guide](https://github.com/ellisonleao/nvim-lua-guide/blob/main/README.pt-br.md)

[Packer](https://github.com/wbthomason/packer.nvim)

[Devgenius](https://blog.devgenius.io/create-custom-keymaps-in-neovim-with-lua-d1167de0f2c2)


# Referencias avançadas
[Porting neovim config to lua](https://www.adrian.idv.hk/2022-05-07-nvim-lua/)

[Lua Primer for Neovim](https://www.gatlin.io/content/lua-primer-for-neovim)

[Useful lua function](https://dev.to/voyeg3r/writing-useful-lua-functions-to-my-neovim-14ki)

