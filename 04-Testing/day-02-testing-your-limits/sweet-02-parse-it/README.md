Part 1: implement #call on the request class so that it parses the JSON payload, then write a test expecting three
client hashes.

Part 2: Create a client class (in lib/client.rb) and use the client hashes to instantiate three
client objects. You don't need to worry about requiring this file, I've set that up to happen automatically

Part 3: Test those objects. The client class should respond to #id, #name, and and #evil? - write a spec asserting that
they do
