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

################### First Compile

#
# Defnining Types
#

# Defining your own types puts the compiler to work for you. It's what makes
# static typing powerful and usewful.

type
  Name = string # A type alias gives you a new type that is interchangable
  Age = int     # with the old type but is more descriptive
  Person = tuple[name: Name, age: Age] # Define data structures too.
  AnotherSyntax = tuple
    fieldOne: string
    secondField: int

var
  john: Person = (name: "John B.", age: 17)
  newage: int = 18 # It would be better to use Age than intt

john.age = newage # but still works because int and Age are synonyms.

## Second compile

type
  Cash = distinct int    # `distinct` makes a new type incompatible with its
  Desc = distinct string # base type.

var
  money: Cash = 100.Cash # `.Cash` converts the int to our type
  description: Desc = "Interesting".Desc

when compileBadCode:
  john.age = money   # Error! age is of type int and money is Cash
     # Error: type mismatch: got 'Cash' for 'money' but expected 'Age = int'
  john.name = description # Compiler says: "No way!"
     # Error: type mismatch: got 'Desc' for 'description' but expected 'Name = string'
## Third compile

#
# More Types and Data Structures
#

# Enumerations allow a type to have one of a limited number of values

type
  Color = enum cRed, cBlue, cGreen
  Direction = enum # alternative formatting
    dNorth
    dSouth
    dEast
    dWest
var 
  orient = dNorth #`orient` is of type Direction, with the value `dNorth`
  pixel = cGreen  #`pixel` is of type Color, with the value `cGreen`

discard dNorth > dEast  # Enums are usually an "ordinal" type

# Subranges specify a limited valid range


type
  DieFaces = range[1..20] # Only an int from 1 to 20 is a valid value

var 
  my_roll: Diefaces = 13

when compileBadCode:
  my_roll = 23 # Error! "Error: redefinition of 'my_roll'; previous declaration here:"

# Arrays

type
  RollCounter = array[DieFaces, int] # Arrays are fixed length and
  DirNames = array[Direction, string] # indexed by any ordinal type
  Truths = array[42..44, bool]

var 
  counter: RollCounter
  directions: DirNames
  possible: Truths

possible = [false, false, false] # literal arrays are created wth [V1,..,Vn]
possible[42] = true

directions[dNorth] = "Ahh, The Great White North"
directions[dWest] = "No, don't go there"

my_roll = 13
counter[my_roll] += 1
counter[my_roll] += 1

var anotherArray = ["Default index", "starts at", "0"]

# More data structures are available, including tables, sets, lists queues,
# and crit bit trees.
# http://nim-lang.org/docs/lib.html#collections-and-algorithms

# 
# IO and Control Flow
#

# `case`, `readLine()`

echo "Read any good books lately?"
case readLine(stdin)
  of "no","No":
    echo "Go to your local library."
  of "yes", "Yes":
    echo "Carry on, then."
  else:
    echo "That's great; I assume."
