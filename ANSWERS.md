# Q0: Why is this error being thrown?

The root is being routed to the Home Controller, which makes a reference to the Pokemon model that hasn't been created yet!

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

They are appearing since the .sample call on the created "trainerless pokemon
 will return a random index from the array of Pokemon, and the view will display the pokemon by using the Pokemon index and matching it to the number of the image. The common factor is that they are "trainerless"


# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

Two things: 
1) Makes it a "patch" method, which needs to be the same in the routes.rb file
2) Capture_path is a URL helper that returns a specific path: in this case, it produces a path that includes the id of the pokemon in its parameters. We use this id to found out which pokemon the page generated that we have to assign a trainer to. 

# Question 3: What would you name your own Pokemon?

Dharamon

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed:

redirect_to '/trainers/' + pok.trainer_id.to_s

The path needed the trainer id that the pokemon belonged to so that it knows where to return. Not sure if this was the correct way to do it.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.



# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
