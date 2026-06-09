## Voice/Video calls

This app is able to automatically configure your Matrix instance for voice/video calls.

To enable this, run the command `sudo yunohost app setting tuwunel calls_enabled -v 1` via ssh.

You may need to use port forwarding for this to work. Most likely, these ports will be: 7881, 5349, 5350 (TCP). 
If these do not work, please refer to your Yunohost server's firewall shown in the admin interface.

### Manual configuration

Please refer to [Tuwunel's own documentation](https://matrix-construct.github.io/tuwunel/calls/matrix_rtc.html) for how to manually configure this.
