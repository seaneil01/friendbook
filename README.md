# Friendbook

In this project, we'll create our very first HTML page; a profile of ourselves. In the end, we'll work our way up to something that looks like [this target](http://dsgn425-2016.github.io/friendbook-target/).

First, we'll create the following sections in the page:

 - My name and profile photo (or make up a fake persona and grab an image from [here](http://uifaces.com/authorized))
 - Where I'm from
 - Some of my app ideas
 - Some of my photos (or grab some stock images from [here](http://www.sitebuilderreport.com/stock-up))
 - What I've done
 - A favorite nearby haunt (coffee shop or restaurant or pub)
 - A Vine that you like [(here are some examples to choose from)](https://vine.co/Zach.King?mode=list)
 - A YouTube video that you like [(here are some examples to choose from)](https://www.youtube.com/watch?v=nCKkHqlx9dE)

Type in these headings, and then start adding your own content beneath each one.

Then, mark up your content with our basic set of HTML tags:

  - Headings: `<h1>`, `<h2>`, ... , `<h6>`
  - Paragraph: `<p>`
  - Unordered list: `<ul>`
  - Ordered list: `<ol>`
  - List item: `<li>`
  - Link: `<a href="http://www.addressofsomepage.com/whatever">`
  - Image: `<img src="whatever.jpg">`

Next, we'll start to add some styling to our elements with CSS:

```html
<h1 class="greeting">Hi there</h1>

<style>
  .greeting {
    font-size: 24px;
    color: darkgrey;
  }
</style>
```

Below are some resources that might be helpful as we go along:



 - [Google Web Fonts](https://www.google.com/fonts)
 - Google Web Font showcases: [Beautiful Web Type](http://hellohappy.org/beautiful-web-type) and [Typographic Project](http://femmebot.github.io/google-type/)

 - Hero unit with cover image:

        .top-cover {
          background: url("cover.jpg") no-repeat center bottom;
          background-size: cover;
          height: 300px;
        }

 - [Material-Design](https://www.google.com/design/spec/material-design/introduction.html)-style box shadow:

        .some-thing {
          box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
          transition: all 0.2s ease-in-out;
        }
        
        .some-thing:hover {
          box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
        }

 - [HTML5 Element List](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)

 - An abbreviated list of other useful CSS properties and example values:

        /* Typography */
        
        color: orange;
        font-family: 'Playfair Display', serif;
        font-size: 18px;
        font-weight: bold;
        letter-spacing: 0.4em;
        line-height: 1.86;
        text-align: center;
        text-decoration: none;
        text-transform: uppercase;
        
        /* Box Model */
        
        border-color: rgb(240, 240, 240);
        border-style: solid;
        border-width: 5px;
        border: thick white solid;
        height: 200px;
        margin: auto;
        padding-bottom: 20px;
        padding-left: 20px;
        padding-right: 20px;
        padding: 20px;
        width: 100%;
        
        /* Table */
        
        border-spacing: 10px;
        vertical-align: top;
        
         /* Other */
        
        background-color: rgba(0, 0, 0, 0.5)
        box-shadow: 0 1px 3px rgba(0,0,0,0.12);
        list-style-type: square;
