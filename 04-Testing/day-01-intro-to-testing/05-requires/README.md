## Objectives
This builds on `02-objects`

Your task is to split the files up like they would be in a real application:

- Classes live under `lib/*.rb`
- Tests live under `spec/*_spec.rb`

This should be a pretty quick exercise - take the specs and classes from the Objects exercise
and split them into mutiple files. It should look like:

lib/class.rb
spec/class_spec.rb

Running `rake` within each folder should run the spec files, which should correctly load the classes, and pass all specs.

The goal here is to get comfortable flipping between multiple files - the spec and the class, learn the convention for
laying out tests in relation to their class definition.
