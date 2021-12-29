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
