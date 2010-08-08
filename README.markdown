# Inheritable Attributes Manager for Rails

Inheritable Attributes Manager makes sure that those magic rails bits (filters, nestested associations, etc.) make it into your subclasses, regardless of the order the code is loaded.

## Install

As a plugin:

    ./script/plugin install git://github.com/kofno/rails_inheritable_attributes_manager.git

As a gem:

    gem install rails_inheritable_attributes_manager

And don't forget to add the gem to your rails config

    config.gem "rails_inheritable_attributes_manager"

## Links

* [Wiki](http://wiki.github.com/kofno/rails_inheritable_attributes_manager)
* [Issues](http://github.com/kofno/rails_inheritable_attributes_manager/issues)

## Why would I need this?

You may not. In general, the Rails community tends to treat plugins as extensions to Rails, and application code builds on Rails and the plugins. For this scenario, the default inheritable attributes behavior is fine.

Of course, the other use of plugins is to extend the application's functionality. When writing an extension, its quite common to re-open the application classes (controllers, STI models, etc.) and add filters or associations. In this scenario, depending on how the code loads, subclasses may not receive the new functionality. This is exactly the scenario inheritable attributes manager was created to fix.

[More information on inheritable attributes and filter chains](http://wiki.github.com/kofno/rails_inheritable_attributes_manager/rails-inheritable-attributes)

[How it works](http://wiki.github.com/kofno/rails_inheritable_attributes_manager/how-it-works)

