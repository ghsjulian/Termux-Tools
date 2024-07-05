## How To Use Eruda Console In Mobile Browser...

## First Clone "My Termux-Tools" Repository...

## Then In Your Termux , Type cd Termux-Tools And Press Enter...

## Read The Installation Docs...

## After Completing Installation....

## Type eruda In Your Termux

## It will create a python server on port 8010

## It will work in Offline

#-------------------------------------------------#

## Now open a browser (chrome,via) etc...

## Go to bookmark , add bookmark...

## Type Title Console and In the url box...

## Type This Code In Your Bookmark URL box.

### code...

```javascript

javascript: (function () {
     var script = document.createElement("script");
     script.src = "http://localhost:8010/eruda.js";
     document.body.appendChild(script);
     script.onload = function () {
         eruda.init();
     };})();

```


## Now save the avobe code in the bookmark...

## Open Any Website Or URL and then go to bookmark same time...

## Open The Console Bookmark Which You Have Saved Before...

## Now See The Magic ...... (!)
