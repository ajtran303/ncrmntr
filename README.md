# ncrmntr.rb

## Who are you?

My name is AJ and I am a gothic, self-taught programmer. [Follow me on twitter!](https://twitter.com/haograms)

## What is this?

This program was written for independent practice of Test-Driven Development and Object Oriented Programming.

It's a weird calculator called Ncrmntr.
It can do three things a normal calculator can: `display_result`, `add`, and `clear`. You can also `name` an Nrcmntr and check who is the `owner`.

## What's so weird about it?

Well, Ncrmntr's can belong to someone...

```ruby
hrafn_calc = Ncrmntr.new("Hrafnhildur")
hrafn_calc.name # => "Hrafnhildur"
hrafn_calc.owner # => "This belongs to Hrafnhildur"
```

Or they can belong to nobody. They are...  *h a u n t e d*.

```ruby
spooky_calc = Ncrmntr.new
spooky_calc.name # => nil
spooky_calc.owner # => "👻 B O O O O O 👻"
```

**A haunted Ncrmntr will display negative results.**

```ruby
rip_calc = Ncrmntr.new("RIP")
rip_calc.display_result # => 0
100.times { rip_calc.add }
rip_calc.display_result # => 100

# s p o o k y
rip_calc.name = nil
rip_calc.owner # => "👻 B O O O O O 👻"
rip_calc.display_result # => -100
```

Scary, huh?

## Okay... So, Test-Driven Development?

Yes! I started this project by writing a bunch of spaghetti code and running the script in my terminal.

My process was just purely based on blind experimentation: fixing things up depending on what `puts` statement showed up in my terminal.

I had the general idea of how to **design** (with Top-Down Design, the *other* TDD) my program but needed a better way to **develop** it!

I found abundant resources to learn how to use Minitest to create a testing suite for my program and here are my favorite ones:

* Video (Spanish): [Test-Driven Development con la gema de Ruby mini test](https://www.youtube.com/watch?v=Ikb9AHEK3PQ)

* Article (English): [Assert Yourself: An Introduction to Minitest](https://launchschool.com/blog/assert-yourself-an-introduction-to-minitest)

How I personally understand and used the TDD process, summarized:

* While developing any given "feature":
  * First write a test that describes the functionality of the feature that is *not yet implemented* -- **a failing test**
  * Run the test, read the errors and/or failures
  * Write the implementation code as if debugging
  * Run the test again
    * If it fails, rewrite
    * If it passes, refactor
  * Repeat until good (it can probably always be better)

I consider TDD to be an asset to my software development process. When I wrote the tests first, it led me to simultaneously write the interface for the program too. That captured my focus while developing the implementation code.

```Ruby
# The test for method .display_result
def test_default_result_is_0
  ncrmntr = Ncrmntr.new
  assert_equal 0, ncrmntr.display_result
end
```

Writing more tests allowed me to simultaneously  refactor the internal logic of my program. This led to a higher level of abstraction that I previously was not able to conceptualize. Ultimately, it helped me design and understand my program in a more Object-Oriented paradigm.

## What about Object-Oriented Programming?

As a self-taught programmer, the first scripts and programs I wrote naturally fell under a Procedural Programming paradigm. I understood how to write methods/functions and with really straight-forward step-by-step logic.

When I wanted to write more complex programs with more complex logic, I ended up with a lot of "spaghetti code" and I could see that I was going to hit a wall in my learning if I didn't learn a different way to code.

So, I started learning about the Object-Oriented Programming paradigm, its pillars and how it could help me become a better developer. This project helped me further grow my understanding of one particular "pillar" of OOP, **abstraction**.

### Abstraction

Test-Driven Development guided my abstraction while I was refactoring the implementation between tests to reduce the complexity of the program.

I recognized where I could separate logic out of the interface into separate and ultimately, private methods.

This is the first program I wrote that uses private methods!

Thus, "complex" logic of the program is hidden away from the interface and the remaining exposed methods create a simpler interface.

Only the essential methods are exposed as an interface: `owner` `display_result` `add` `clear`.

There are only two attributes that need to be exposed for the interface:
reading access for `result` and reading/writing access for `name`.

These methods don't need to be known or exposed for interaction with the object: `validate(name)` `haunted?` `who_is` `start_result` `calculate`.

## What are you going to do next?

I have heard through anecdotes that "pure" OOP should not use if/else logic. In my program, I use several if/else statements (and an unless clause)... But those are private methods! :D

I will spend some time researching alternative methods to implement logic without if/else statements but at this time I am not sure if that will lead me to refactor my implementation.

I imagine that this program will be the beginning of a series of similar programs that comprise a "universe" of weird calculators: `Ncrmntr`, `Dcrmntr`, `Mltplctr`, etc... I can envision that leading me to explore more about another pillar of OOP, **Inheritance!**

### Inheritance

I have been reading *Practical Object Oriented Design in Ruby* by Sandi Metz. Chapter 6: *Acquiring Behavior Through Inheritance* outlines an approach to creating inheritance hierarchies. Metz recommends having three subclasses to "push up" behavior (`owner`/`haunted?`) into a "superclass" (`Clcltr`?).

Perhaps there can also be separate class for a `Person` who can have their own behavior. It will lead me to figuring out how to make  `Person` objects interact with `Clcltr` objects and really flesh out this silly, weird calculator universe!
