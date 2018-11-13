# Ruby on Rails: Level I

## Create the App

```bash
rvm gemset use --create 2.5.1@events
rvm gemset list
gem install rails
rails new events
cd events
echo 2.5.1 > .ruby-version
echo events > .ruby-gemset
```

### To lauch the server (localhost:3000)

```bash
rails s
```

### What's in each directory

* **app** is where you'll put the bulk of your application code. This is where you'll spend most of your time. Rails puts a lot of emphasis on keeping code organized, so the app directory has a number of subdirectories:

  * **assets** contains sub-directories where you'll store your application's images, JavaScript files, and stylesheets.

  * **models**, **views**, and **controllers** are appropriately-named directories where you'll organize your (wait for it) model, view, and controller code.

  * **helpers** is where you put Ruby modules that define utility methods for views.

  * **mailers** is where you put Ruby classes for generating and sending e-mails.

  * **jobs** is where you put Ruby classes for running background jobs. (Rails 5 only)

  * **channels** is where you put Ruby classes for handling real-time features using Action Cable. (Rails 5 only)

* **bin** isn't something you'll mess with. It contains the rails script file, for example.

* **config** is where you go to tweak the configuration settings of your application. Initially you won't have to touch most of the files in here because generated Rails apps are configured with "sensible defaults". Later in this course we'll make stops at the following places:

  * **database.yml** configures the database used by each environment.

  * **routes.rb** maps incoming requests (URLs) to application code.

  * **environments** is a directory that contains three files that define specific settings for each environment: development, test, and production.

  * **initializers** is a directory where you put Ruby code that needs to be run when the application starts.

* **db** contains everything related to the database, including migration files and, in the case of using the default SQLite3 database, the database file itself.

* **lib** is where you put any reusable "library" code that's not a model, view, or controller. It's more common these days to package this sort of code as a gem. But it has one important subdirectory:

  * **tasks** is where you would put any custom Rake tasks for your application, with each file having a .rake extension.

* **log** is where Rails automatically creates log files so you have a record of what happened when your app ran. Each environment gets its own log file.

* **public** is the document "root" directory of the app. It contains static files that are served directly by the web server. For example, 404.html lives here and gets served when a page can't be found.

* **test** is where you put test files if you use the default test library, organized further in the models, controllers, integration, helpers, and mailers directories. In this course we'll use the RSpec library, so you can ignore the test directory.

* **tmp** is where Rails stores any temporary files needed by the app. I can't recall the last time I even peeked in this directory.

* **vendor** is where, in the old days, we used to put third-party code. Nowadays we generally use gems declared in the Gemfile instead.

* The **Gemfile** file contains a list of third-party dependencies (Ruby gems) that your application needs.

## Views and Controllers

```ruby
# routes.rb
Rails.application.routes.draw do
  # verb "url" => "name_of_controller#name_of_action"
  get "events" => "events#index
end
```

```bash
rails g controller events
```

```ruby
# events_controller.rb
class EventsController < ApplicationController
  def index
    @time = Time.now
    @events = ['BugSmash', 'Hackathon', 'Kata Camp', 'Rails User Group']
  end
end
```

```erb
# index.html.erb
<h1><%= @events.size %> Events</h1>

Listing generated at <%= @time %>
<ul>
  <% @events.each do |event| %>
    <li><%= event %></li>
  <% end %>
</ul>
```

## ERb Tags

```erb
# runs the Ruby code and substitutes result into template
<%=           %>

# runs the Ruby code but does not substitute result into template
<%            %>
```