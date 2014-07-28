SuperLeet - My Personal Blog Project 
====================================  

This project is the first incantation of my personal blog as well as my entry into Team Treehouse's forum contest for builing your own blog.  You can view the live site [running on Heroku](http://serene-tor-2991.herokuapp.com/).

I've been wanting to build my own blog from scratch for a while now. Thanks to Team Treehouse and Jason Seifer I've finally made time to make it happen.

Overview
--------

The app is built on [Ruby](http://ruby-lang.org) 2.1.2 and [Rails](http://rubyonrails.org) 4.1.4 for the backend and [Bootstrap](http://http://getbootstrap.com/) front end.

The Stack
-------------

- ***Ruby 2.1.2***
- ***Rails 4.1.4***
- ***PostgreSQL***
- ***Heroku running a single web dyno***
- ***Bootstrap 3.2***

Other Major Components
----------------------

- ***Devise and Pundit*** for authorization. Not making use of Pundit really at present but put it in for future comment system.
- ***TinyMCE-Rails*** for post markdown.
- ***Kaminari*** for pagination.
- ***Friendly Id*** for SEO friendly post slugs.
- ***Simple Form*** for form management.
- ***Disqus*** for discussions.

Future Plans
------------

- Add Paperclip for post images
- Add code highlighting (Probably by moving away from TinyMCE and toward a combination of Redcarpet, Highlight, and MarkItUp)
- Add mailing list form
- Make homepage URLs more SEO friendly  

Issues
-------------

Some issues of note I encountered while working on this project:

There is a bug in CreateAdminService. Even though everything looks like it should work, I could not get the environment varaiables to register in the class but they were working fine everywhere else.  The fix: added placeholder values for the variables and then used the live site to update the user account with actual data.

Credits
-------

CSS tweaks based on customizations by [@mdo](https://twitter.com/mdo)

Thanks to [Daniel Kehoe](https://tutorials.railsapps.org) for providing the awesome Rails Composer to make app boilerplate a cinch! 
