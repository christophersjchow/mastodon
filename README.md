# Mastodon

This repo builds an image of Mastodon with custom patches applied. The following patches are applied:

| Patch                 | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| 001-ses-support.patch | Add support for using AWS SES to send emails. This is useful |
|                       | on hosts like Linode, where outbound SMTP ports need support |
|                       | to unblock for each new VPS created                          |
