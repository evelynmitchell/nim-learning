# Single-line comments start with a #

#[
  This is a multiline comment.
  In Nim, multiline comments can be nested, beginning with #[
  ... and ending with ]#
]#

discard """
This can also work as a multiline comment.
Or for unparsable, broken code
"""

var                     # Declare (and assign) variables,
  letter: char = 'n'    # with or without type annotations
  lang = "N" & "im"
  nLength: int = len(lang)
  boat: float
  truth: bool = false

let            # Use let to declare and bind variables *once*.
  legs = 400   # legs is immutable.
  arms = 2_000 # _ are ignored and are useful for long numbers.
  aboutPi = 3.15

const            # Constants are computed at compile time. This provides
  debug = true   # performance and is useful in compile time expressions.
  compileBadCode = false

when compileBadCode:            # `when` is a compile time `if`
  legs = legs + 1               # This error will never be compiled.
  const input = readline(stdin) # Const values must be known at compile time.

discard 1 > 2 # Note: The compiler will complain if the result of an expression
              # is unused. `discard` bypasses this.


#
# Data Structures
#

# Tuples

var
  child: tuple[name: string, age: int]   # Tuples have *both* field names
  today: tuple[sun: string, temp: float] # *and* order.

child = (name: "Rudiger", age: 2) # Assign all at once with literal ()
today.sun = "Overcast"            # or individual fields.
today.temp = 70.1

# Sequences

var
  drinks: seq[string]

drinks = @["Water", "Juice", "Chocolate"] # @[V1,..,Vn] is the sequence literal

drinks.add("Milk")

if "Milk" in drinks:
  echo "We have Milk and ", drinks.len - 1, " other drinks"

let myDrink = drinks[2]