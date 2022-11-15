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

Entre no [site](https://github.com/neovim/neovim/wiki/Installing-Neovim) do projeto e faça a instalação conforme achar mais conveniente.

Agora vamos clonar o repositório de configurações.

```Sh
git clone <meu_repo> ~/.config/nvim
```

### Configurações

Clone o repositório com as configurações prontas

```sh
git clone <MEU_REPO> ~/.config/nvim
```