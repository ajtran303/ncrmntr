# ncrmntr.rb

Click here to check it out--> [![Run on Repl.it](https://repl.it/badge/github/ajtran303/ncrmntr)](https://repl.it/github/ajtran303/ncrmntr)

## A simple adding calculator

This program demonstrates basic Object-Oriented design.

The Incrementor class has a `result` attribute that starts at 0.

The Incrementor has three methods that accesses and modifies `result`: `add_one`, `clear`, and `show`.

Incrementors can be initialized with an `owner` parameter.

Incrementors that are not initialized with an `owner` will be ***h a u n t e d*** by default.

The `belongs_to` method will check who is the `owner` of an Incrementor instance, if any.

Ownership can be transferred with the `give_to` method, which takes a `name` parameter.
