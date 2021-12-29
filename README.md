# Easy SRI Scripts
(Easy Subresource Integrity Scripts)

### What

Generates hashes to be used in HTML to ensure the integrity of embedded files (like CSS, JS).

### Why

For security, to make sure your files have not been tampered with, especially if they're embedded from an external source.

### How

    sri384 myfile.js

Then use the output in the script/link tag by adding it as "integrity" parameter.

You can use sri256, sri384 and sri512 to generate SHA256, SHA384 and SHA512 respectively.

Note that SHA384 fits perfectly into base64 and no padding is required.

**Example:**

    <script src="myfile.js" integrity="sha384-ZWGMTAHGDMJeeWcmuu0wupWx49u2K8TEf+MsgdLgAbBhold623Vhnz6AEd+3k4iY"></script>

### Installing

Simply run

    sudo make install

or manually copy the scripts somewhere in your PATH (usually /usr/local/bin).

### Dependencies

These scripts require:

 * Standard shell ('/bin/sh')
 * shasum
 * xxd
 * base64

### Troubleshooting

If even just a single bit of the file changes, it won't load (that's the point).

Make sure your web server, proxy, CDN, and so forth, do not "minify" or otherwise tamper with your files.

If you want to minify your files for performance, do so first, then generate the hash for the minified file.

Subresource Integrity works with all major, up-to-date browsers (this does not include IE).

### Who

These scripts were brought to you by [Sindastra](https://sindastra.github.io/)

[![GitHub followers](https://img.shields.io/github/followers/sindastra?style=social)](https://github.com/sindastra/)
[![Twitter Follow](https://img.shields.io/twitter/follow/sindastra?style=social)](https://twitter.com/sindastra)
[![Mastodon Follow](https://img.shields.io/mastodon/follow/330409?domain=https%3A%2F%2Fchaos.social&style=social)](https://chaos.social/@sindastra)
[![YouTube Channel Subscribers](https://img.shields.io/youtube/channel/subscribers/UCM79aw2rkePB6D2bIfjhHtQ?style=social)](https://www.youtube.com/channel/UCM79aw2rkePB6D2bIfjhHtQ)

Follow her on Twitter: [@sindastra](https://twitter.com/sindastra)

[![GitHub Repo stars](https://img.shields.io/github/stars/sindastra/easy-sri-scripts?style=social)](https://github.com/sindastra/easy-sri-scripts)

⬆️ Star this repo to not miss updates (button on top right)

⬇️ Support the author, tip a coffee!

[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/W7W215OZB)
