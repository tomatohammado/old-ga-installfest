# Generating SSH Keys and Linking with Github

# Instructions

## Check for Existing Keys

In Terminal...

_Run:_

```sh
$ ls -al ~/.ssh

# Example Output – No existing keys

ls: /Users/generalassembly/.ssh: No such file or directory
```

If the directory does not exist, continue to the next step to generate new SSH
keys.

If the directory does exist, you likely already have keys (such as `id_rsa` and
`id_rsa.pub`). If that is the case, you can start at the "Add Your Key to the
SSH-Agent" step and use those keys but you can also generate new SSH keys if you
like.

## Generate a New SSH Key

_Run:_

```sh
# Replace <THE_EMAIL...></THE_EMAIL...> with your email, , keep the double quotes

$ ssh-keygen -t rsa -b 4096 -C "<THE_EMAIL_YOU_USE_FOR_GITHUB@EMAIL.COM>"

# We recommend you simply press Enter for these prompts
Enter file in which to save the key (/Users/generalassembly/.ssh/id_rsa):
Created directory '/Users/generalassembly/.ssh'.
Enter passphrase (empty for no passphrase):
Enter same passphrase again:

# Example Output

Your identification has been saved in /Users/generalassembly/.ssh/id_rsa.
Your public key has been saved in /Users/generalassembly/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:acBIXG8XX5IyuPMKHpMHJ5favNE8/OHE0hoDwT3nA/E ga@ga.co
The key's randomart image is:
+---[RSA 4096]----+
|   ..... oo....  |
|   ..o .+ *+oo   |
|    . o o+.BE    |
|      ooBo  o    |
|       XSB o .   |
|      *.= X =    |
|     . = + X .   |
|      . o . o    |
|                 |
+----[SHA256]-----+

```

## Add Your Key to the SSH-Agent

_Run:_

```sh
# 1/2

$ eval "$(ssh-agent -s)"

# Example Output

Agent pid 30609

# 2/2

$ ssh-add ~/.ssh/id_rsa

# Example Output

Identity added: /Users/generalassembly/.ssh/id_rsa (ga@ga.co)
```

**Note:** If you didn't generate a new SSH key in Step 1, and used an existing
SSH key instead, you will need to replace `id_rsa` in the above command with the
name of your existing private key file.

## Add Your SSH Key to your Github Accounts

1. Copy the SSH key to your clipboard with...

   _Run:_

   ```sh
   $ pbcopy < ~/.ssh/id_rsa.pub
   ```

   **Note:** `pbcopy` is a macOS only command.

   If you are using Linux, type: `cat ~/.ssh/id_rsa.pub` and manually copy the
   output. **_It iss important to copy the key exactly without adding newlines
   or whitespace._**

2. Go to Github (`github.com`). On the top right corner of any page – click your
   profile photo, then click Settings.

3. In the user settings sidebar, click "SSH and GPG keys."

4. Click "New SSH key".

5. In the Title field, add a descriptive label that uniquely identifies the
   computer you're currently using, e.g. "My MacBook".

6. Paste your key (copied to the clipboard in Step 1) into the Key field.

7. Click "Add SSH key."

8. Confirm the action by entering your GitHub password.

**Repeat the 8 commands above on git.generalassemb.ly.**

## Checking your Connection

_Run:_

```sh
# 1/2 Github

$ ssh -T git@github.com

# Example Output

The authenticity of host 'github.com (192.30.253.113)' can't be established.
RSA key fingerprint is SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8.
Are you sure you want to continue connecting (yes/no)? y
Please type 'yes' or 'no': yes
Warning: Permanently added 'github.com,192.30.253.113' (RSA) to the list of known hosts.
Hi generalassembly! You've successfully authenticated, but GitHub does not provide shell access.


# 2/2 Github Enterprise

$ ssh -T git@git.generalassemb.ly
```

You may be asked to authenticate this action using your password, which is the
SSH key passphrase you created earlier.

### Troubleshooting

If you receive a message about "access denied," please notify an instructor or
you can
[read these instructions for diagnosing the issue](https://help.github.com/articles/error-permission-denied-publickey/)

# Closing

Go over learning objectives, and make sure your profiles are up to date.

If you're switching from HTTPS to SSH, you'll now need to update your remote
repository URLs for your existing local repos. For more information,
[see Changing a remote's URL](https://help.github.com/articles/changing-a-remote-s-url/).

## Resources

- [Github guide to configure SSH keys](https://help.github.com/articles/generating-ssh-keys/#step-1-check-for-ssh-keys)
- [Changing a remote's URL](https://help.github.com/articles/changing-a-remote-s-url/)
- [Configuring a remote for a fork](https://help.github.com/articles/configuring-a-remote-for-a-fork/)
- [GitHub's SSH key fingerprints](https://help.github.com/articles/what-are-github-s-ssh-key-fingerprints/)
