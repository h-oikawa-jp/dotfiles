# Set up the prompt
if [[ ! -d "${ZDOTDIR:-$HOME}/.zprezto" ]]; then
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
  chown -R ${USER} ~/.zprezto
  chmod -R 755 ~/.zprezto
fi
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
autoload -Uz promptinit
promptinit
prompt steeef

# Source Zshrc.
if [[ -d "${ZDOTDIR:-$HOME/.zsh}" ]]; then
  source "${ZDOTDIR:-$HOME/.zsh/alias.zsh}"
  source "${ZDOTDIR:-$HOME/.zsh/functions.zsh}"
  source "${ZDOTDIR:-$HOME/.zsh/plugin.zsh}"
  source "${ZDOTDIR:-$HOME/.zsh/setopt.zsh}"
  source "${ZDOTDIR:-$HOME/.zsh/completion.zsh}"
fi

if [[ -s "${ZDOTDIR:-$HOME}/wsl.profile" ]]; then
  source "${ZDOTDIR:-$HOME}/wsl.profile"
fi
