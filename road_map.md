# Instalação do Neovim com Lua

Devemos remover o os arquivos de configuração já existentes

```sh
rm -rf ~/.config/nvim ~/.local/share/nvim
```

Todos nós sabemos que o arquivo principal de configuração do Vim é o ~/.vimrc e o arquivo correspondente dele no Neovim é o ~/.config/nvim/init.vim . Ou seja, se criarmos um link simbólico do vimrc para o init.vim seu Neovim funcionará normalmente como seu Vim funciona e você também portará todas as configurações e plugins para o Neovim.

Dentro da pasta `.config/nvim` criamos o arquivo `init.lua`.

Como havíamos dito no artigo anterior dessa série o Neovim utiliza API do Vim para entregar os resultados ou consultar comandos e executá-los e para esse caso utiliza a API vim.cmd.

´´´sh
vim.cmd([[ set guicursor= ]])
```

Se você quiser criar um arquivo separado com suas configurações e importá-lo para seu init.lua fica mais organizado, exemplo: criar um arquivo settings.lua e no seu init.lua basta adicionar essa linha:

require("settings")

O mais correto mesmo é você criar um diretório de nome lua/ e dentro dele pôr todos os arquivos que serão importados pelo init.lua, exemplo:

mkdir -p ~/.config/nvim/lua
E mover o settings.lua para lá:

mv ~/.config/nvim/settings.lua ~/.config/nvim/lua/
E o init.lua irá automáticamente ler o settings.lua mesmo sem indicar o diretório porque isso faz parte do 'runtimepath', ou seja, esse diretório de nome lua/ faz parte do padrão.

vim.cmd([[ set guicursor= ]])

Procure por ajuda no próprio nvim

```
:h <texto>
:h lua-vimscrpit
```




[Packer](https://github.com/wbthomason/packer.nvim)

https://dev.to/enrsaid/neovim-initlua-built-in-lsp-e-mais-3695

https://randomgeekery.org/config/init.lua/

https://www.adrian.idv.hk/2022-05-07-nvim-lua/

https://www.gatlin.io/content/lua-primer-for-neovim

https://stackoverflow.com/questions/72763801/minimal-neovim-lua-config-for-using-nvim-cmp-with-lsp

https://bryankegley.me/posts/nvim-getting-started/


#### Referências
[Chris@Machine](https://github.com/ChristianChiarulli/nvim)
[Como Customizar do Zero](https://terminalroot.com.br/2021/11/tudo-sobre-neovim-com-lua-como-customizar-do-zero.html)
[Neovim do Zero em 2022](https://www.manualdocodigo.com.br/vim-basico/)
[Everything you need to know to configure neovim using lua](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)
[Build your first Neovim configuration in lua](https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/
)
[Configure Neovim in Lua](https://www.meetgor.com/neovim-vimscript-to-lua/)
[Neovim for Beginners](https://alpha2phi.medium.com/neovim-for-beginners-init-lua-45ff91f741cb)
[ellisonleao/nvim-lua-guide]
(https://github.com/ellisonleao/nvim-lua-guide/blob/main/README.pt-br.md)
