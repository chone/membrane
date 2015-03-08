# Membrane

Membrane make easy to use google's closure tools in your project.
It a intergrated environment based on command line and runing in Windows, Mac OS, Linux and so on. And any IDE/text editor you are using or like.  

## How to use?

1. Create project directory and initialize with git.
<pre><code>
$ mkdir my-project
$ cd my-project
$ git init
</code></pre>
2. Add membrane in your project.
<pre><code>
$ git submodule add https://github.com/chone/membrane.git
$ ./membrane/init.sh
</code></pre>
## Create your first page

1. Create a template for your page.
my-project/web/templates/hello.soy
<pre><code>
    {namespace web.templates.hello}
    /**
     * @param text
     */
    {template .desktop}
      Hello {$text}!
    {/template}
</code></pre>

2. Compile template.
<pre><code>
$ membrane/soy.sh
</code></pre>

3. Create data test for page.
my-project/web/data/hello.js
<pre><code>
goog.provide('web.data.hello.main');
goog.scope(function() {
  var _ = web.data.hello.main;
  _.text = 'World';
});
</code></pre>
4. Add scripts.
my-project/web/hello/main.js
<pre><code>
goog.provide('web.hello.main');
function main() {
  alert('Its work.');
}
</code></pre>
5. Add styles. 
my-project/web/css/hello/main.css
<pre><code>
@import url(hello.css);
</code></pre>
my-project/web/css/hello/hello.css
<pre><code>
body {
  color: blue;
}
</code></pre>
6. Make dependency.
`$ membrane/deps.sh`
7. Open page in browser.
my-project/membrane/index.html?namespace=web.hello

