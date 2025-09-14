#import "@preview/tinyset:0.1.0": *
#import "@preview/mannot:0.2.2": markrect
#import "@preview/ctheorems:1.1.3": *
#show: thmrules.with(qed-symbol: $square$)


#let theorem = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))
#let corollary = thmplain(
  "corollary",
  "Corollary",
  base: "theorem",
  titlefmt: strong
)
#let definition = thmbox("definition", "Definition", inset: (x: 1.2em, top: 1em))

#let example = thmplain("example", "Example").with(numbering: none)
#let proof = thmproof("proof", "Proof")

#header(number: 1, name: "Nicholas Welsh", class: "MTH 2401 - Fall 2025") 

#align(center)[== Week 1]

+ #qs[
Write expressions for the following sets.
\ #align(center)[For the following, I used the idea that integers divisible by a number can be written as multiples of that number.]
+ #pt[ 
    Write an expression for the set $A$ of all integers divisible by 5.
    #align(center)[
      #rect(
        $ A = {x in ZZ | x = 5k "for some" k in ZZ } $
      )
    ]
]

+ #pt[ 
    Write an expression for the set $B$ of all integers divisible by 2.
    #align(center)[
      #rect(
        $ B = {x in ZZ | x = 2k "for some" k in ZZ } $
      )
    ]
]

+ #pt[ 
    Construct the set of all integers divisible by 10 from $A$ and $B$ using a set operation.
    #align(center)[
      #rect(
        $ A inter B = {x in ZZ | x = 10k "for some" k in ZZ } $
      )
    ]
]
]

+ #qs[
  Consider a sphere of radius r centered at (0, 0, 0). Express the following sets in set notation.
  #align(center)[Here I use the Euclidean norm $||x|| = sqrt(x^2+y^2+z^2)$ to describe distances from the origin.]
  
+ #pt[
  The points outside the sphere (Set $A$).
  #align(center)[
      #rect(
        $ A = {x in RR^3 | ||x|| > r } $
      )
    ]
  ]

+ #pt[
  The points inside the sphere (Set $B$).
  #align(center)[
    #rect(
      $ B = {x in RR^3 | ||x|| < r } $
    )
  ]
]

+ #pt[
  The points on the surface of the sphere (Set $C$).
  #align(center)[
    #rect(
      $ C = {x in RR^3 | ||x|| = r } $
    )
  ]
]

+ #pt[
  The points inside the sphere but outside the sphere of radius $r/2$ centered at (0, 0, 0) (Set $D)$.
  #align(center)[
    #rect(
      $ D = {x in RR^3 | r/2 < ||x|| < r } $
    )
  ]
]

+ #pt[
  The points inside the sphere but outside the cube of length $(3r)/2$ centered at (0, 0, 0) with faces parallel to coordinate planes. (Set $E$).
  #align(center)[
    #rect(
      $ E = {x in RR^3 | ||x|| < r "and max"{|x|,|y|,|z|} > (3r)/4} $
    )
  ]
]
]
+ #qs[
  Prove 1.23 Elementary Properties of Probability Measures (iii), which states $ PP(A^C)= 1−PP(A) "for any event" A. $\
  
  #rect[
    #proof[Let $A$ be an event. Then $ A union A^C  = Omega "and" A inter A^C = emptyset, $ so $A$ and $A^C$ are disjoint and their union is the sample space. \ By the first rule of the Elementary Properties of Probability Measures Theorem, $ PP(Omega) = PP(A union A^C) = PP(A) + PP(A^C). $ By the first definition of a probability measure, $PP(Omega) = 1$. Simplifying gives us the expression $ 1 = PP(A) + PP(A^C) => PP(A^C) = 1-PP(A). $]
    ]
  ]

+ #qs[
   Hana, Damien, and Erisa are flipping a coin in succession (in this order). The first one to flip tails wins the game.

+ #pt[
   Write down a sample space for the game and describe it in your own words.
   #rect[#ans[ The sample space $Omega$ consists of all the sequences of coin flips that end the first time someone flips tails. Each outcome would look like a run of heads followed by a singular tail. The person who flips that specific tail is the winner. Examples of outcomes could be $Omega = {"H","HT","HHT","HHHT", ...}.$]]
]

+ #pt[
   Specify the outcomes in each of the events $H$ = {Hana wins}, $D$ = {Damien wins}, $E$ = {Erisa wins}
   #rect[#ans[$1.$ Hana wins on the first flip, or after everyone gets heads in the first round, she gets tails (H={T,HHHT,HHHHHHT,…}). So she wins all outcomes with a multiple of 3 heads followed by the first tails.\ $2.$ Damien wins on the second flip, or after everyone gets heads and Hana gets heads and Damien gets tails (D={HT,HHHHT,HHHHHHHT,…}). He wins all outcomes with $3k+1$ heads followed by the first tails.\ $3.$ Erisa wins on the third flip, or after everyone gets heads and Hana and Damien gets heads and Erisa gets tails (E={HHT,HHHHHT,HHHHHHHHT,…}). She wins all outcomes with $3k+2$ heads followed by the first tail.
]]
]

+ #pt[
  Specify the outcomes in the events $H union D, (H inter E)^C,$ and $(H union E union D)^C,$ and describe what they represent in words.
  #rect[#ans[$1.$ $H union D$ is the event that either Hana or Damien wins, with the outcome being all sequences where the first tails is flipped by Hana or Damien. So Erisa never wins.\ 2. Since $H inter E = emptyset$ because Hana and Erisa cannot both win, the complement would be the sample space $Omega$, meaning the outcome will always belong to this event. \ 3. Since $H union D union E = Omega$, meaning someone has to win, its complement is $emptyset$. So there are no outcomes where none of Hana, Damien, or Erisa wins.]]]
]\

+ #qs[
  Suppose we choose a uniformly random point in a circle of radius 1 centered at (0, 0). Let $A$ be the lower half of the circle and $B$ be the circle of radius $1/2$ centered at (0, 0). Find the probability the point is in $A union B$.
  #align(center)[
    #rect[#align(left)[Recall the area of a circle's formula, $"area"=pi r^2$. In order to find the probability, we need to find the area of set $A$, set $B$, and $A inter B$ to find $A union B$. We can start with $A$ and $B$: $ "area"(A) = 1/2(pi(1)^2) = pi/2, space "area"(B) = pi(1/2)^2 = pi/4 $
    In order to find the area of $A inter B$, realize that since $A$ is the lower half of the circle of radius 1, $A inter B$ should be the lower half of the circle of radius $1/2$ due to them both sharing the same center:$ "area"(A inter B) = 1/2 (pi/4) = pi/8 $ Now we can use the formula for $A union B$ (inclusion/exclusion) to find the area: $ "area"(A union B) = "area"(A) + "area"(B) - "area"(A inter B) $ $ => pi/2 + pi/4 - pi/8 = (5pi)/8 $ Let $Omega$ be the unit disk of radius 1 centered at the origin. We can now take the probability that the point is in $A union B$: #align(center)[#rect[$ PP(A union B) = "area"(A union B)/"area"(Omega) = ((5pi)/8)/pi = 5/8 $]]]]
  ]
]

#align(center)[== Week 2]

+ #qs[
  Find the probability that you will roll a sum of 5 on three fair six-sided dice.
  #align(center)[
    #rect[#align(left)[First, note that the total number of outcomes is \
      $ 6 times 6 times 6 = 6^3 = 216. $
      Next, list all triples of dice rolls that sum to 5: \
      $ (1,1,3), (1,3,1), (3,1,1) -> 3 "outcomes",\ (1,2,2), (2,1,2), (2,2,1) -> 3 "outcomes." $
      In total there are 6 favorable outcomes. The probability is then:]
      #rect[$ PP("sum of 5 on three fair six-sided dice") =6/216  = 1/36 $] ]
  ]
]

+ #qs[
  Suppose you forgot your TRACKS password. You remember a few facts about the password.
  
  - The password is 10 to 12 characters.
  - The first character is a lowercase character.
  - The last four characters are 47 and then two symbols above the number keys on a standard
keyboard.
  - All other characters are uppercase characters.

  Find the probability of guessing the password within the 5 attempts it allows before locking
your account.
#align(center)[
  #rect[#align(left)[
    Here is what we know:
    - The first character is a lowercase letter, meaning there are 26 choices.
    - The last 4 characters always contain "47" and 2 symbols from the top of the keyboard. Since there are 10 symbols total, and it is assumed that repeats are allowed/order matters, we have $10 times 10 = 100$ choices.
    - All other characters in the middle are uppercase characters, which means that there are 26 choices each.
    Since the length of the password can be either 10, 11, or 12, that means we have three valid cases:
    1. Length 10, where the middle has 5 characters, the possibilities are: $26 times 26^5 times 100 = 26^6 times 100$.
    2. Following from length 10, length 11 just has an additional character: $26^7 times 100$
    3. Length 12 has: $26^8 times 100$.
    So the total valid passwords can be simplified to $ 100(26^6 + 26^7 + 26^8) = "21,716,779,052,800". $
    Therefore, the probability of guessing the password within the first 5 attempts is:
  ] #rect[$ PP("guessing the password first 5 attempts") = 5/("21,716,779,052,800") approx 2.3 times 10^(-13) . $] 
    
  ]
]
]

+ #qs[
  In 1.54 Pathfinding, we consider a path with fixed start and end points on a grid. The
paths may move right and up on the grid only. Suppose we have points
  - $A = (a_1,a_2)$
  - $B = (b_1,b_2)$
  - $C = (c_1,c_2)$
  - $D = (d_1,d_2)$
  Where $a_1 < b_1 < c_1 < d_1 "and" a_2 < b_2 < c_2 < d_2.$
  
  1. Write an expression for the probability that a random path from $A$ to $D$ will pass through both $B$ and $C$.
  2. Write an expression for the probability that a random path from $A$ to $D$ will pass through $B$, but not $C$.
  3. Write an expression for the probability that a random path from $A$ to $D$ will pass through neither $B$ nor $C$.
  4. Find the probability a path from (0,0) passes through (9,9), but not (5,5) or (7,7).
  #align(center)[
    #rect[#align(left)[
      Before solving any problems, we can generalize the question by introducing a function for two general points. We can use points A and B as examples but it can work for any function which has the first point coordinates less than the second. Recall:
      $ A = (a_1,a_2), B = (b_1,b_2) "with" a_1 < b_1, a_2 < b_2, $
      We can simply create a binomial coefficient with $n$ being the sums of the distance between the two points, and $k$ being the distance of one point:
      $ "path"(A,B) = binom((b_1-a_1)+(b_2-a_2),b_1-a_1) $
      This counts how many sequences of "right" and "up" steps connect $A$ to $B.$
     1. Any path that goes from $A$ to $D$ $italic("through")$ $B$ and $C$ must break into three parts:\ 1. $A -> B$ \ 2. $B -> C$ \ 3. $C -> D$ \ The total number of the paths is the product of those three counts: #align(center)[#rect[$ PP(A -> D "through" B "and" C)=("path"(A,B)"path"(B,C)"path"(C,D))/"path"(A,D) $]] 
     2. We can count all the paths via $B$, excluding the ones that also go through $C$ by subtracting them to get our answer: #align(center)[#rect[$ PP(A -> D "through" B "but not" C)$  $ = ("path"(A,B)"path"(B,D)-"path"(A,B)"path"(B,C)"path"(C,D))/"path"(A,D) $]]
     3. To get the probability of neither $B$ nor $C$, we can take 1 minus the probability it will be either $B italic("or") C,$ as you recall from the following formula: $ PP("through" B "or" C) = PP(B) + PP(C) - PP(B inter C).\ => PP("neither") = 1- PP("through" B "or" C). $ This one will be long: To improve readability, note the variables below:
     $ PP(B) = ("path"(A,B)"path"(B,D))/"path"(A,D), PP(C) = ("path"(A,C)"path"(C,D))/"path"(A,D), \ PP(B inter C) = ("path"(A,B)"path"(B,C)"path"(C,D))/"path"(A,D). $ Then, our final solution will look like:
     #align(center)[#rect[$  PP("neither") = 1- (PP(B) + PP(C) - PP(B inter C)). $]]
     4. Let $A = (0,0), B = (5,5), C = (7,7), "and" D = (9,9),$ then $PP("avoid" (5,5),(7,7))$ would equal:
     $  1- ("path"(A,B)"path"(B,D) + "path"(A,C)"path"(C,D) - "path"(A,B)"path"(B,C)"path"(C,D))/"path"(A,D) $ #align(center)[(next page)]\ 
    ]]
  ]
  #align(center)[
    #rect[#align(left)[(This is a continuation of the last page. I have put this text down to make sure both boxes are the exact same size.)\
      Which is similar to part (c). The solution would be: $ PP("avoid" (5,5),(7,7)) = 1 - (binom(10,5)binom(8,4)+binom(14,7)binom(4,2)-binom(10,5)binom(4,2)binom(4,2))/binom(18,9) $ ]  #align(center)[#rect[$ PP("avoid" (5,5),(7,7)) = 1- (17640+20592-9072)/48620  approx 40%. $]]
    ]
  ]
]



+ #qs[
  Suppose we toss 5 fair coins. Find the probability there is a streak of at least 2 consecutive
heads.
#align(center)[
  #rect[#align(left)[
    There are $2^5 = 32$ total outcomes when flipping 5 coins.  
    Instead of directly counting the cases with a streak of 2 heads, 
    consider the complement, which is sequences with no consecutive heads.  

    Let $a_n$ be the number of $n$-coin sequences with no two H’s in a row.  
    By inspection: $ a_1=2 space ("H","T"), a_2=3 space ("HT","TH","TT"), a_3 = 5 space ("TTT","TTH","THT","HTT","HTH")  $ 
    Each sequence of length $n$ can be formed by adding a T to any $a_(n-1)$ sequence,  
    or by adding HT to any $a_(n-2)$ sequence, so $ a_n = a_(n-1)+a_(n-2) $  This is a recursion formula similar to Fibonacci. Using $a_1$ and $a_2$ as base cases: $ a_4 = 8, a_5 = 13, a_6 = 21, a_7 = 34, ... $ and so on. So for 5 fair coins, there are 13 sequences with no streak of 2 heads. Therefore the number of favorable outcomes is $ 32-13=19. $] #rect[$ PP("streak of" >= "2 heads") = 19/32 $]
  ]
]
\ \ \ \ \ \ \ \ \ \ \ \ \ \ 
]

+ #qs[
  Powerball is a popular lottery game in the US. In the drawing, 5 of 69 numbered white balls
and then randomly selects 1 of 26 numbered red balls. Players buy tickets for with 5 white
numbers and 1 red (Powerball) number. Players may win 1 of 9 prizes based on how many
white and red numbers match the drawing (ignoring order):

#set enum(numbering: "1.")
#figure(
  align(center)[
    #table(
  columns: (auto, auto),
  inset: 10pt,
  align: left,
  stroke: 1pt + black,

  table.header(
    [*Matching Numbers*], [*Prize*]
  ),
  

  [1. 5 white balls + red ball], [$"$"100,000,000$],
  [2. 5 white balls],            [$"$"1,000,000$],
  [3. 4 white balls + red ball], [$"$"50,000$],
  [4. 4 white balls],            [$"$"100$],
  [5. 3 white balls + red ball], [$"$"100$],
  [6. 3 white balls],            [$"$"7$],
  [7. 2 white balls + red ball], [$"$"7$],
  [8. 1 white ball + red ball],  [$"$"4$],
  [9. 0 white balls + red ball], [$"$"4$],
)
  ]
)
Find the probability of winning each prize.
#align(center)[
  #rect[#align(left)[
   Finding the total number of possible outcomes for all probabilities is easy. The question states that players always pick 5 white balls and 1 red ball. So the denominator of each probability will be: $ "Total" = binom(69,5) times binom(26,1) = binom(69,5) times 26 $ We can start with the jackpot and go down the list:
   
 \ 1. 5 White Balls + Red Ball: $ (binom(5,5)binom(64,0)binom(1,1)binom(25,0))/(binom(69,5)binom(26,1)) = 1/(binom(69,5)times 26) approx 3.42 times 10^(-9) $
\ 2. 5 White Balls: $ (binom(5,5)binom(64,0)binom(1,0)binom(25,1))/(binom(69,5)binom(26,1)) = 25/(binom(69,5)times 26) approx 8.56 times 10^(-8) $
\ 3. 4 White Balls + Red Ball: $ (binom(5,4)binom(64,1)binom(1,1)binom(25,0))/(binom(69,5)binom(26,1)) = (5 times 64)/(binom(69,5)times 26) approx 1.10times 10^(-6) $
\ 4. 4 White Balls: $ (binom(5,4)binom(64,1)binom(1,0)binom(25,1))/(binom(69,5)binom(26,1)) = (5 times 64 times 25)/(binom(69,5)times 26) approx 2.74 times 10^(-5) $
\ 5. 3 White Balls + Red Ball: $ (binom(5,3)binom(64,2)binom(1,1)binom(25,0))/(binom(69,5)binom(26,1)) = (10 times binom(64,2))/(binom(69,5)times 26) approx 6.90times 10^(-5) $
\ 6. 3 White Balls: $ (binom(5,3)binom(64,2)binom(1,0)binom(25,1))/(binom(69,5)binom(26,1)) = (10 times binom(64,2) times 25)/(binom(69,5)times 26) approx 1.72 times 10^(-3) approx 0.1725% $
\ 7. 2 White Balls + Red Ball: $ (binom(5,2)binom(64,3)binom(1,1)binom(25,0))/(binom(69,5)binom(26,1)) = (10 times binom(64,3))/(binom(69,5)times 26) approx 1.43 times 10^(-3) approx 0.143% $
#align(center)[(scroll down for the last two)]]
  ]
\ \
#align(center)[
  #rect[#align(left)[
    (This is a continuation of the last page. I have put this text down to make sure both boxes are the exact same size.)\
    \ 8. 1 White Balls + Red Ball: $ (binom(5,1)binom(64,4)binom(1,1)binom(25,0))/(binom(69,5)binom(26,1)) = (5 times binom(64,4))/(binom(69,5)times 26) approx 1.09 times 10^(-2) approx 1.09% $
\ 9. 0 White Balls + Red Ball: $ (binom(5,0)binom(64,5)binom(1,1)binom(25,0))/(binom(69,5)binom(26,1)) = binom(64,5)/(binom(69,5)times 26) approx 2.61 times 10^(-2) approx 2.61% $
  ]]
]
]
]
