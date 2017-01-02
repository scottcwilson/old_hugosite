# Source for Personal site built using Hugo. 

Version 1.1

Author: Scott Wilson

Here's a little site I built using Hugo.
You can see the output of Hugo at <http://scottcwilson.github.io>

These are the steps I used to build this site: 

1. Install Hugo.
1. Use <pre>hugo new site my-site-name</pre>
to create the site.  Change directory to my-site-name.
1. Grab a template you like from [HugoThemes](https://github.com/spf13/hugoThemes/).  Create the directory themes and install it there. 
1. Run <pre>hugo server -w</pre> to start looking at your site locally.  Add content until you're happy.  
1. I used [ShrinkTheWeb](https://shrinktheweb.com/) to generate my thumbnails, but any thumbnail generator will work fine.
1. Fiddle with config.toml until you're happy.  Remember you have to restart `hugo server` each time you change configuration; the LiveReload doesn't handle this.
1. Create a `.gitignore` and add `public` to it.
1. Add your site to a new git repository.  For reference, mine is <https://github.com/scottcwilson/hugosite>.
1. Run <pre>hugo</pre> to generate the final copy of your site. (I assume you have added your template to the `config.toml` file; if not, you will need to use `hugo -t your-template`.) Change directory to "public".
1. Add this directory to a new repository, with the name your-github-name.github.io.  Again, for reference, mine is <https://github.com/scottcwilson/scottcwilson.github.io>.
1. You're done!  Your site will be live shortly at http://your-github-name.github.io. (Mine is http://scottcwilson.github.io.)

