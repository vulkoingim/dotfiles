# GPG

## Ops

###



```
echo enable-ssh-support >> ~/.gnupg/gpg-agent.conf

gpg-agent --daemon --enable-ssh

export SSH_AUTH_SOCK="${HOME}/.gnupg/S.gpg-agent.ssh"

echo 'eval "$(direnv hook zsh)"' >> ~/.zshrc

sudo killall gpg-agent
```

### encrypt gpg

```
cat ~/message | gpg -ear "$YUBI_KEY_ID" > encrypted_msg
```

### decrypt gpg message

```
cat encrypted_p| gpg -d
```
