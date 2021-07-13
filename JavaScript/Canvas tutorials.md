# Canvas tutorials



### How to use image like as object

When this script gets executed, the image starts loading.

If you try to call `drawImage()` before the image has finished loading, it won't do anything (or, in older browsers, may even throw an exception). So you need to be sure to use the load event so you don't try this before the image has loaded:

~~~javascript
var img = new Image();   // Create new img element
img.addEventListener('load', function() {
  // execute drawImage statements here
}, false);
img.src = 'myImage.png'; // Set source path
~~~



Embedding an image via data: URL

~~~~javascript
var img = new Image();   // Create new img element
img.src = 'data:image/gif;base64,R0lGODlhCwALAIAAAAAA3pn/ZiH5BAEAAAEALAAAAAALAAsAAAIUhA+hkcuO4lmNVindo7qyrIXiGBYAOw==';
~~~~



Refreshing frame

~~~~javascript
window.requestAnimationFrame()
~~~~

