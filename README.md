Welcome!

### Useful Bits
To print the name of your currently checked out branch in your prompt, include this line as part of your `PS1`:

```bash
git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
```
