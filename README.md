Welcome!

[![Join the chat at https://gitter.im/githubteacher/github-for-developers-2016-04](https://badges.gitter.im/githubteacher/github-for-developers-2016-04.svg)](https://gitter.im/githubteacher/github-for-developers-2016-04?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Note: we'll be using Gitter, a chat service that integrates with GitHub, for Q&A. Please click on the button above to join the chat room associated with this repo.


### Useful Bits
To print the name of your currently checked out branch in your prompt, include this line as part of your `PS1`:

```bash
git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
```
