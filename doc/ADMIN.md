### Login to Tuwunel

LDAP is supported upstream, log in with normal YNH credentials.

###  Coturn configuration

To be able to take advantage of audio and video call functionalities, a Coturn server is often required. It is possible to [install a Coturn server in YunoHost (https://github.com/YunoHost-Apps/coturn-ynh/blob/master/README-en.md).
It is then necessary to fill in the information provided by the Coturn server in the file 'tuwunel.toml' such as:

```
turn_uris = ["turns:your.turn.url:5349?transport=udp", "turns:your.turn.url:5349?transport=tcp"]
turn_username = "<YOUR_USERNAME>"
turn_password = "<YOUR_PASSWORD>"
```
If your Coturn (not YunoHost's one) does not use TLS, you might need to change a little bit like:
```
turn_uris = ["turn:your.turn.url:5349?transport=udp", "turn:your.turn.url:5349?transport=tcp"]
``
