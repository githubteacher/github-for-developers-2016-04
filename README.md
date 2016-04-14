[![Join the chat at https://gitter.im/githubteacher/github-for-developers-2016-04](https://badges.gitter.im/githubteacher/github-for-developers-2016-04.svg)](https://gitter.im/githubteacher/github-for-developers-2016-04?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

**Please note**: we'll be using Gitter, a chat service that integrates with GitHub, for Q&A. Please click on the button above to join the chat room associated with this repo.


### Useful Bits
To print the name of your currently checked out branch in your prompt, include this line as part of your `PS1`:

```bash
git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
```


### Extras
A few people also asked about @patrickmckenna's Terminal.app theme. He uses [ocean-terminal](https://github.com/mdo/ocean-terminal). His `PS1` (prompt) is

```bash
export PS1="\[\$(tput bold)\]\[\$(tput setaf 6)\]\w\[\$(tput setaf 3)\]\$(git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')\[\$(tput setaf 6)\] > \[\$(tput sgr0)\]"
```
