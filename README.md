# Membrane

Membrane make easy to use google's closure tools in your project.
It a intergrated environment based on command line and runing in Windows, Mac OS, Linux and so on. And any IDE/text editor you are using or like.  

## How to use?

1. Create project directory and initialize with git.
$ mkdir my-project
$ cd my-project
$ git init

2. Add membrane in your project.
$ git submodule add https://github.com/chone/membrane.git
$ ./membrane/init.sh

## Create your first page

1. Create a template for your page.
my-project/web/templates/hello.soy

  {namespace web.templates.hello}

  /**
   * @param text
   */
  {template .desktop}
    Hello {$text}!
  {/template}

2. Compile template.
$ membrane/soy.sh

3. Create data test for page.
my-project/web/data/hello.js

goog.provide('web.data.hello.main');

goog.scope(function() {

  var _ = web.data.hello.main;

  _.text = 'World';

});

4. Add scripts.
my-project/web/hello/main.js

goog.provide('web.hello.main');

function main() {
  alert('Its work.');
}

5. Add styles. 
my-project/web/css/hello/main.css

@import url(hello.css);

my-project/web/css/hello/hello.css

body {
  color: blue;
}

6. Make dependency.
$ membrane/deps.sh

7. Open page in browser.
my-project/membrane/index.html?namespace=web.hello

