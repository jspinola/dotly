dotly::list_bash_files() {
  grep "#!/usr/bin/env bash" "$DOTLY_PATH"/{bin,dotfiles_template,scripts,shell,installer,restorer} -R | awk -F':' '{print $1}'
  find "$DOTLY_PATH"/{bin,dotfiles_template,scripts,shell} -type f -name "*.sh"

  if [[ -n ${DOTFILES_PATH+x} ]]; then
    grep "#!/usr/bin/env bash" "$DOTFILES_PATH"/{bin,scripts,shell} -R | awk -F':' '{print $1}'
    find "$DOTFILES_PATH"/{bin,scripts,shell} -type f -name "*.sh"
  fi
}
