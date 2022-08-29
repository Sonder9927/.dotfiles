# CONFIGURATION
---

## INFO
My configuration in Arch_Linux

[see main raw code in config](https://github.com/Sonder9927/.dotfiles/tree/master/.config)

or [my Github HomePage Overview](https://Sonder9927)

or [my Git Page](https://Sonder9927.github.io.)

## Learn
use git --bare control my dotfiles.

refer to [利用 Git bare repo 版本控制配置文件 dotfiles](https://blog.csdn.net/weixin_43958105/article/details/119453385)

---

## alias in fish shell
I try to alias `dotfiles` in `fish` with my scription [dotfiles.fish](https://github.com/Sonder9927/.dotfiles/blob/master/.config/fish/functions/dotfiles.fish):

```fish
function dotfiles
  git --git-dir={$HOME}/.dotfiles --work-tree={$HOME} $argv
end
```

`--git-dir` and `--work-tree` maybe can be replaced with `-C` in new version of git.

==note==: both `--git-dir` and `--work-tree` should be **front of** git command like `config` and `status`.

---

## untrack
- `cd ~/.dotfiles`
- `dotfiles config --local status.showUntrackedFiles no`

---

## push issue
I created the repo locally, so I faced the issue when first push it.

To use it with github, need to do these steps:

1. create the repo on github
2. should already complete add and commit
3. `dotfiles remote add origin git@github:{user}/{repo}.git`
4. `dotfiles push -u origin master`

after doing these steps I can use it as git:
- 'dotfiles add ...'
- 'dotfiles commit -m ...'
- 'dotfiles push` 
