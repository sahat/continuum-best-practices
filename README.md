### Getting Started

We use [Grunt](http://gruntjs.com/getting-started) for building, watching, minification, concatenation of source files and [Bower](http://bower.io/) for installing front-end libraries.

### Setup

Once you have installed `grunt-cli` and `bower`, run the following commands in terminal:

```bash
npm install && bower install
```

### Usage

If you only want to build source files once:
```bash
grunt build
```

To build and watch files for changes during development:
```bash
grunt watch
```

And to build optimized, concatenated source files for production:
```bash
grunt build deploy
```

