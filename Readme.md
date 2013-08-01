CSS utils
=========

Collection of Sass utilities.

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

    .panel {
       @include 'ios-scrollable-y';
       position: relative;
    }

NOTE: `position: relative` is important!

### ios-scrollbar-x
Works like [#ios-scrollbar-y], but makes the container
horizontally-scrollable instead of vertically.

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

### placeholder
Style the placeholder text for inputs.

    input {
      @include placeholder {
        color: #aaa;
      }
    }

### absolute
Shorthand for position absolute.

    @import 'utils/position';

    .container {
       @include absolute($top: 30px, $right: 40px);
    }

### scrollbar-image
Enables webkit scrollbars using an image.
Make a 16x16 PNG image of a circle. This will be expanded to fill the scrollbar.

    +scrollbar-image(url(scroll-dark.png), 16px)

### $textinputs
Text inputs.

    #{$textinputs} {
      background: white;
      ...
    }

### $textboxes
Text inputs, including textarea.

    #{$textboxes} {
      background: white;
      ...
    }

Acknowledgements
----------------

MIT license