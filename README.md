### Getting Started

#### Prerequisites

 * nodejs >= 0.8.x
 * grunt
 * bower

To install grunt and bower run:

 ```bash
npm install -g grunt-cli bower
 ```

#### Setup

Run the following commands in terminal:

```bash
npm install .
bower install
```

#### developing

To build and watch all files while you develop run:
```bash
grunt watch
```

#### deploying

```bash
grunt build deploy
```

For comparison:
open `dev/index.html` and `dist/index.html` you will see the same "Hello from continuum analytics!". Now look at the resources loaded. `dist/index.html` should only load three sources `index.html`, `require.js` and `main.js`


### Directory Structure

* */app*: Develop and edit files in this diectory
* */dev*: Set this directory as your static path for development
* */dist*: Set this directory as your static path for production


