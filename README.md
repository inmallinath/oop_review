# Object Oriented Programming: Review Session 1
CodeCore Cohort XI Week 1 review session Topics to include Classes, Modules,
Inheritance, Custom Errors, Markdown, Revisioning.

## Classes: Ball, Ghost, Pacman
Let's take a look at classes and how they interact by modeling out a ball class
that may have a type attribute, a ghost class that has a color attribute,and a
Pacman class, whose attributes we shall discuss below.

### Ball Class
Create a `Ball` with a `ball_type` attribute; knowing that `ball_type` will only
ever be `regular` or `super`.  

Let's start out by creating a ball class that has a getter method for `ball_type`
and a default ball type of `"regular"`
>In the def initialize method (the default constructor) if you pass the argument with a colon
at the end (eg: ball_type: "regular") means that ball_type is a named parameter
the other way of passing the argument would be ball_type = "regular"


```Ruby
class Ball
  def initialize
  end

  def ball_type
  end
end

```
Now, I'd really like to be able to initialize new ball objects with a `ball_type`.
So, let's go ahead and add an optional `ball_type` param to the initialize mehtod. We can make it optional by adding a default value. Let's make it default to `"regular"`  

We should also initialize an instance variable, so our getter method can return a dynamic value.

```Ruby
class Ball
  #constructor method
  def initialize(ball_type = "regular")
    @balltype = ball_type.downcase == "regular" ? "regular" : "super"
  end

  # getter method
  def ball_type
    @balltype
  end
end

```
