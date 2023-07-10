Inspired by a couple of projects I read this morning, I decided to try to learn Nim .

Nim is an interesting combination of the simple syntax of Python, the static typing of Rust and the speed of C.

I'm starting by following the tutorial at [learnXinYminutes](https://learnxinyminutes.com/docs/nim/). My inital program is xiny.nim 

Compiling is easy:

```
nim c -r xiny.nim
```

This compiles and runs the resuling executable.

```
nim c -r xiny.nim 
Hint: used config file '/home/efm/.choosenim/toolchains/nim-1.6.14/config/nim.cfg' [Conf]
Hint: used config file '/home/efm/.choosenim/toolchains/nim-1.6.14/config/config.nims' [Conf]
..........................................................
/home/efm/git/nim-learning/xiny.nim(15, 3) Hint: 'letter' is declared but not used [XDeclaredButNotUsed]
/home/efm/git/nim-learning/xiny.nim(17, 3) Hint: 'nLength' is declared but not used [XDeclaredButNotUsed]
/home/efm/git/nim-learning/xiny.nim(18, 3) Hint: 'boat' is declared but not used [XDeclaredButNotUsed]
/home/efm/git/nim-learning/xiny.nim(19, 3) Hint: 'truth' is declared but not used [XDeclaredButNotUsed]
/home/efm/git/nim-learning/xiny.nim(22, 3) Hint: 'legs' is declared but not used [XDeclaredButNotUsed]
/home/efm/git/nim-learning/xiny.nim(23, 3) Hint: 'arms' is declared but not used [XDeclaredButNotUsed]
/home/efm/git/nim-learning/xiny.nim(24, 3) Hint: 'aboutPi' is declared but not used [XDeclaredButNotUsed]
/home/efm/git/nim-learning/xiny.nim(27, 3) Hint: 'debug' is declared but not used [XDeclaredButNotUsed]
/home/efm/git/nim-learning/xiny.nim(64, 5) Hint: 'myDrink' is declared but not used [XDeclaredButNotUsed]
Hint:  [Link]
Hint: gc: refc; opt: none (DEBUG BUILD, `-d:release` generates faster code)
26759 lines; 0.475s; 31.723MiB peakmem; proj: /home/efm/git/nim-learning/xiny.nim; out: /home/efm/git/nim-learning/xiny [SuccessX]
Hint: /home/efm/git/nim-learning/xiny  [Exec]
We have Milk and 3 other drinks
```