# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Hangout.create([{name: 'Omrika'}, {hours: 10}, {minutes: 30}, {description: 'I want to go out for drinks.'},{meridiem: 'AM'}])
Hangout.create([{name: 'Dylan'}, {hours: 7}, {minutes: 50}, {description: 'Movie date anyone?.'},{meridiem: 'PM'}])
Hangout.create([{name: 'Jenna'}, {hours: 11}, {minutes: 25}, {description: 'Party at my house.'},{meridiem: 'PM'}])
Hangout.create([{name: 'Ben'}, {hours: 9}, {minutes: 30}, {description: 'Swimming lessons?'},{meridiem: 'AM'}])
Hangout.create([{name: 'Blake'}, {hours: 6}, {minutes: 10}, {description: 'Yoga?'},{meridiem: 'AM'}])

Response.create([{name: 'Sam'}])
Response.create([{name: 'Peter'}])
Response.create([{name: 'Gil'}])
Response.create([{name: 'Sylvia'}])
Response.create([{name: 'Uzo'}])

Event.create([{name: 'Jenna'}, {description: 'Flatiron Presents'}, {location: '139 Chapel Street'}, {hours: 7}, {minutes: 30}, {meridiem: 'PM'}])
Event.create([{name: 'Blake'}, {description: 'Flatiron Party'}, {location: '11 Broadway'}, {hours: 9}, {minutes: 45}, {meridiem: 'PM'}])
Event.create([{name: 'Gil'}, {description: 'Flatiron Movie Night'}, {location: '11 Broadway'}, {hours: 8}, {minutes: 25}, {meridiem: 'PM'}])
Event.create([{name: 'Lois'}, {description: 'Flatiron Meetup'}, {location: '11 Broadway'}, {hours: 10}, {minutes: 00}, {meridiem: 'AM'}])
Event.create([{name: 'Omrika'}, {description: 'Lunch Time'}, {location: '139 Chapel St'}, {hours: 12}, {minutes: 00}, {meridiem: 'PM'}])