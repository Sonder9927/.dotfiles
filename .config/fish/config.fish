
function fish_greeting
end
if status is-interactive
    # Commands to run in interactive sessions can go here
end
scheme set tomorrow

set proxy_host 127.0.0.1:8889
set proxy_auth true
set proxy_user merak

# autojump
#if test -f /home/merak/.autojump/share/autojump/autojump.fish; . /home/merak/.autojump/share/autojump/autojump.fish; end
begin
  set --local AUTOJUMP_PATH /usr/share/autojump/autojump.fish
  if test -e $AUTOJUMP_PATH
    source $AUTOJUMP_PATH
  end
  function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
  end
end

# miniconda3
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /home/merak/.miniconda/bin/conda "shell.fish" "hook" $argv | source
eval /opt/miniconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# hub
eval "$(hub alias -s)"
# dotfiles

# %set TexMan /usr/local/texlive/2021/texmf-dist/doc/man
# %set TexInfo /usr/local/texlive/2021/texmf-dist/doc/info
# %set TexLive /usr/local/texlive/2021/bin/x86_64-linux
# %set MANPATH $MANPATH $TexMan
# %set INFOPATH $INFOPATH $TexInfo

set PATH /home/merak/.local/bin /home/merak/.cargo/bin /home/merak/go/bin /home/merak/.local/share/gem/ruby/3.0.0/bin /opt/cuda/bin $PATH

set GOPROXY "https://mirrors.aliyun.com/goproxy/"
set GOPATH /home/merak/go

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/merak/.ghcup/bin $PATH # ghcup-env

alias vi lvim
alias pycharm ~/Downloads/pycharm-2021.3.3/bin/pycharm.sh
alias goland ~/Downloads/GoLand-2022.1/bin/goland.sh

set FTP_PROXY ""
set ALL_PROXY ""
set HTTPS_PROXY ""
set HTTP_PROXY ""
set https_proxy ""
set http_proxy ""
set ftp_proxy ""
set all_proxy ""

#neofetch
[ -e "hello" ] && ./hello
conda activate rose
