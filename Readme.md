CSS utils
=========

Collection of Sass utilities.

How to use
----------

Each stylesheet is self-contained, so simply pick out what you need and put it 
in your project.

[View stylesheets >]( sass/ )

#### Example

~~~ sh
cd ~/my/project/sass/
wget https://raw.github.com/rstacruz/cssutils/master/sass/_antialias.sass
~~~

Utilities
---------

### animation
CSS animations, since Compass doesn't have any provisions for animation.
Also see [keyframes](#keyframes).

    @import 'utils/animation';

    .box {
      @include animation(bounce 300ms linear infinite);
    }

### antialias
Forces anti-aliasing on environments that support it (usually OSX and
Linux).

    @import 'utils/antialias';

    * {
      @include antialias;
    }

### ellipsis
Turns a given container to show ellipsis after one line.

    @import 'utils/ellipsis';

    .title {
      @include ellipsis;
      height: 1.5em;
      line-height: 1.5em;
    }

### force-wrap
Forces word wrapping by breaking words as needed.

    @import 'utils/force-wrap';

    p {
      @include force-wrap;
    }

### ios-scrollbar-y
Enables fancy scrolling in iOS via nested divs.

    @import 'utils/ios-scrollable';
    .panel {
       @include ios-scrollable-y;
       position: relative;
    }

Note that your markup has to have a `div` wrapper inside, like this:

    <div class='panel'>
      <div>
        (Actual content here)
      </div>
    </div>

NOTE: `position: relative` is important!

### ios-scrollbar-x
Works like [ios-scrollbar-y](#ios-scrollbar-y), but makes the container
horizontally-scrollable instead of vertically.

### keyframes
Defines keyframes for an animation.

    @import 'utils/keyframes';

    @include keyframes {
      0% { opacity: 0; }
      100% { opacity: 1.0; }
    }

### mobile-reset
Disables common tap stuff for iOS webapps to make them behave more like
native apps: text selection, tap highlight colors, image save panel popup,
and automatic font resizing.

    @import 'utils/mobile-reset';

    // Use it at the top level
    @include mobile-reset;

References:
 - http://wiki.phonegap.com/w/page/16494795/iPhone%3A%20Prevent%20callout,%20link%20selection,%20text%20auto-resize
 - http://www.bitsandpix.com/entry/ios-webkit-uiwebview-remove-tapclick-highlightborder-with-css/

### notch
For tooltips and things that have triangles sticking out of them.
Simple notch.

    .box:after {
      content: '';
      @include notch(left, 10px, #333);
    }

### box-notch
Enables notches for a container. Be sure to set `position: relative` as
well.

    @import 'utils/notch';

    .box {
      position: relative;
      @include box-notch(left, top, 50%, 10px, #aaa);
    }

You may also set a border:

    .box {
      position: relative;
      @include box-notch(left, top, 50%, 10px, #aaa, 2px, #444);
    }

### nowrap
Disables wrapping.

    @import 'utils/nowrap';

    .box {
      @include nowrap;
    }

### placeholder
Style the placeholder text for inputs.

    input {
      @include placeholder {
        color: #aaa;
      }
    }

### absolute
Shorthand for `position: absolute`.

    @import 'utils/position';

    .container {
       @include absolute($top: 30px, $right: 40px);
    }

### relative
Shorthand for `position: relative`.
See [absolute](#absolute) for an example.

### fixed
Shorthand for `position: fixed`.
See [absolute](#absolute) for an example.

### retina
Media query for retina support.

    @import 'utils/retina';

    .box {
       @include retina {
         background-image: url(icon@2x.png);
       }
    }

### hidpi
Media query for high-DPI resolutions. Consider using [retina](#retina)
instead.

    @import 'utils/retina';

    .box {
      @include hidpi(2) {
        ...
      }
    }

### scrollbar-image
Enables webkit scrollbars using an image.
Make a 16x16 PNG image of a circle. This will be expanded to fill the scrollbar.

    html {
      @include scrollbar-image(url(scroll-dark.png), 16px);
    }

### selection
Changes selection color.

    @import 'utils/selection';

    .header {
      @include selection {
        background: #fa30f0;
        color: white;
      }
    }

### root-selection
Changes selection color for the entire document. Include it at the top level.

    @import 'utils/selection';

    @include root-selection {
      background: #fa30f0;
      color: white;
    }

### $textinputs
Text inputs.

    @import 'utils/textboxes';

    #{$textinputs} {
      background: white;
      ...
    }

### $textboxes
Text inputs, including textarea.

    @import 'utils/textboxes';

    #{$textboxes} {
      background: white;
      ...
    }

Acknowledgements
----------------

MIT license
