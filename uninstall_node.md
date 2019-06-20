# Uninstall Node (if not installed via 'brew')

![So...you want to uninstall node](https://i.imgflip.com/31jrir.jpg)

If you've found this page, the Terminal command `node --version` shows you have
some version of node installed.

We first want to see if you installed node via Homebrew:

_Run:_

```bash
brew leaves
```

If you see `node` among the list, then you can uninstall Node with the following
steps:

_Run:_

```bash
# 1/4
$ brew uninstall node
# or `brew uninstall --force node`

# 2/4
$ brew cleanup

# 3/4
$ rm -f /usr/local/bin/npm /usr/local/lib/dtrace/node.d

# 4/4
$ rm -rf ~/.npm
```

---

If you installed node without using Homebrew, follow these instructions:

1. Create an intermediate file:

   _Run:_

   ```bash
   $ lsbom -f -l -s -pf /var/db/receipts/org.nodejs.node.pkg.bom >> ~/filelist.txt
   ```

2. Manually review your file (located in your Home folder)

   _Run:_

   ```bash
   $ subl ~/filelist.txt
   ```

3. Delete the files:

   _Run:_

   ```bash
   # 1/2
   $ cat ~/filelist.txt | while read f; do sudo rm /usr/local/${f}; done

   # 2/2
   $ sudo rm -rf /usr/local/lib/node /usr/local/lib/node_modules /var/db/receipts/org.nodejs.*
   ```

## Resources

[Stack Overflow: How do I completely uninstall Node.js, and reinstall from beginning (Mac OS X)](https://stackoverflow.com/a/26919540/5578727)
