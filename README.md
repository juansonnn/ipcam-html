# ipcam-html

An HTML/Shell combo to configure Foscam H.264 ip cameras. The MJPEG cameras use a different api it appears.

I've found with one of the more recent updates that my foscam (FI9821W V2) ip camera doesn't like to use the web interface without loading browser plugins.  Plugins which really don't work for me.  However, foscam has [documentation on their forums](http://foscam.us/forum/cgi-sdk-for-hd-camera-t6045.html) which show the appropriate cgi-bin URLs to punch in enough settings to get the camera up and running.

This really isn't designed to be fancy or do everything you would do with the camera.  It's designed to be simple, portable, and get the camera up and running.  The assumption is that the camera will be viewed / controlled with other software.

## How do I use this?

It should work on OS X or Linux or anything with sh, sed, and web-browser.

1. Copy conf.example to conf and edit your settings
2. Run build.sh to copy the variables into the html file
3. Open the HTML file and click on the appropriate link.

## Security considerations

The HTML page only uses https:// URLs (EXCEPT FOR THE VISITOR ACCOUNT - see below), however those may be cached in your local browser history.  Those URLS may have your camera password, or wifi password depending on what links you're using.

Regarding the VISITOR account, the very bottom of the page is a html / javascript canvas element which pulls a JPEG from the camera every second and displays it inline giving a viewer pseudo-video.  However it does NOT use HTTPS for this purpose so please consider that.
