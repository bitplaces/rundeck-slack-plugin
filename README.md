rundeck-hipchat-plugin
======================

Sends rundeck notification messages to a HipChat room

Installation Instructions
-------------------------

1. Either download the latest release from Maven Central 
([link](http://search.maven.org/#search%7Cga%7C1%7Crundeck-hipchat-plugin)) or build a snapshot from source. 
2. Copy the plugin jar (rundeck-hipchat-plugin-\<version\>.jar) into your $RDECK_BASE/libext - no restart of rundeck required. 

See the [rundeck documentation](http://rundeck.org/docs/manual/plugins.html#installing-plugins) for more 
information on installing rundeck plugins.

## Configuration

The plugin requires two configuration entries. They can be specified in the framework.properties and project.properties config files. 

* auth_token: HipChat API authentication token. Notification level token will do.
* room: HipChat room to send notification message to.

Configure the service_key in your project configuration by
adding an entry like so: $RDECK_BASE/projects/{project}/etc/project.properties

    project.plugin.Notification.HipChatNotification.apiAuthToken=xxasdf12w354123dsf
    project.plugin.Notification.HipChatNotification.room=myroom

Or configure it at the instance level: $RDECK_BASE/etc/framework.properties

    framework.plugin.Notification.HipChatNotification.apiAuthToken=xxasdf12w354123dsf
    framework.plugin.Notification.HipChatNotification.room=myroom
