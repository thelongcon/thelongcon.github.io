The Long Con website
====================

This site uses Jekyll and is served by Github pages, and it available at https://thelongcon.ca

Site layout
-----------

### Sponsors

The current year sponsors page is driven by the file `_data/sponsors.yml`. This also drives the "Made possible by" on
the landing page.

### Speakers

The current year speakers page is generated from `_speakers.json` run through the `_speakers.erb` template file.


Local development
-----------------

You have two options - use Docker or install Jekyll manually.

### Option 1 (recommended): use Docker

If you have Docker installed, you can build the site in one step using `build.sh`. This will build
a Debian Docker image with the right version of Jekyll installed and then build and serve it on your
local machine.

This method is recommended because it uses a fixed, known-working version of Jekyll and Debian and
does not clutter your machine with different Ruby libraries. It also works well on Mac, Windows, and
Linux, as long as Docker is installed.

### Option 2: Installing Jekyll

This is not recommended because installing Jekyll can be annoying.

If you already have Ruby installed, you can install Jekyll on your machine using `gem install jekyll`
and then view the site with `jekyll serve -w`.


