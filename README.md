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
```Ruby
class Ball
  #constructor method
  def initialize
  end

  # getter method
  def ball_type
    'regular'
  end
end
```
