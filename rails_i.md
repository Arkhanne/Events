# Ruby on Rails: Level I
## Create the App
````
$ rvm gemset use --create 2.5.1@events
$ rvm gemset list
$ gem install rails
$ rails new events
$ cd events
$ echo 2.5.1 > .ruby-version
$ echo events > .ruby-gemset
````
### To lauch the server (localhost:3000)
````
$ rails s
````
### What's in each directory
* <b>app</b> is where you'll put the bulk of your application code. This is where you'll spend most of your time. Rails puts a lot of emphasis on keeping code organized, so the app directory has a number of subdirectories:

  * <b>assets</b> contains sub-directories where you'll store your application's images, JavaScript files, and stylesheets.

  * <b>models</b>, <b>views</b>, and <b>controllers</b> are appropriately-named directories where you'll organize your (wait for it) model, view, and controller code.

  * <b>helpers</b> is where you put Ruby modules that define utility methods for views.

  * <b>mailers</b> is where you put Ruby classes for generating and sending e-mails.

  * <b>jobs</b> is where you put Ruby classes for running background jobs. (Rails 5 only)

  * <b>channels</b> is where you put Ruby classes for handling real-time features using Action Cable. (Rails 5 only)

* <b>bin</b> isn't something you'll mess with. It contains the rails script file, for example.

* <b>config</b> is where you go to tweak the configuration settings of your application. Initially you won't have to touch most of the files in here because generated Rails apps are configured with "sensible defaults". Later in this course we'll make stops at the following places:

  * <b>database.yml</b> configures the database used by each environment.

  * <b>routes.rb</b> maps incoming requests (URLs) to application code.

  * <b>environments</b> is a directory that contains three files that define specific settings for each environment: development, test, and production.

  * <b>initializers</b> is a directory where you put Ruby code that needs to be run when the application starts.

* <b>db</b> contains everything related to the database, including migration files and, in the case of using the default SQLite3 database, the database file itself.

* <b>lib</b> is where you put any reusable "library" code that's not a model, view, or controller. It's more common these days to package this sort of code as a gem. But it has one important subdirectory:

  * <b>tasks</b> is where you would put any custom Rake tasks for your application, with each file having a .rake extension.

* <b>log</b> is where Rails automatically creates log files so you have a record of what happened when your app ran. Each environment gets its own log file.

* <b>public</b> is the document "root" directory of the app. It contains static files that are served directly by the web server. For example, 404.html lives here and gets served when a page can't be found.

* <b>test</b> is where you put test files if you use the default test library, organized further in the models, controllers, integration, helpers, and mailers directories. In this course we'll use the RSpec library, so you can ignore the test directory.

* <b>tmp</b> is where Rails stores any temporary files needed by the app. I can't recall the last time I even peeked in this directory.

* <b>vendor</b> is where, in the old days, we used to put third-party code. Nowadays we generally use gems declared in the Gemfile instead.

* The <b>Gemfile</b> file contains a list of third-party dependencies (Ruby gems) that your application needs.