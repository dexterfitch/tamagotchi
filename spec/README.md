#Tamagotchi

A Ruby app that emulates a Tamagotchi toy - if the Tamagotchi animal had a lifespan of 10 seconds without intervention.

##Setup
Assuming you have ruby installed, in the terminal:

Your options to interact with your Tamagotchi are:

`.feed()`

`.play()`

`.put_to_bed()`

You can also check how your Tamagotchi is doing with:

`.food_level()`

`.activity_level()`

`.rest_level()`

If any of your Tamagotchi's levels get to zero (bearing in mind that your Tamagotchi lose one point in each level with every passing second), your Tamagotchi will die. It's basically doomed.

##Tests
Testing the ruby methods can be done via rspec.

`gem install rspec`

`rspec`

##Motivation

To practice creating a complex time-sensitive ruby class with numerous interacting methods.

##License

MIT License, copyright 2015. Created by Kathryn Carr and Dex Fitch.
