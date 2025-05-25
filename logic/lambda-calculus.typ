#import "@preview/ctheorems:1.1.3": *
#import "@preview/in-dexter:0.7.0": *

#let theorem = thmbox("theorem", "Theorem", base_level: 1)
#let corollary = thmbox("theorem", "Corollary", base_level: 1)
#let lemma = thmbox("theorem", "Lemma", base_level: 1)
#let proposition = thmbox("theorem", "Proposition", base_level: 1)
#let definition = thmbox("definition", "Definition", base_level: 1)
#let example = thmplain("example", "Example").with(numbering: none)
#let remark = thmplain("remark", "Remark").with(numbering: none)
#let proof = thmproof("proof", "Proof")

#set heading(numbering: "1.")
#set page(numbering: "1 / 1")
#set par( first-line-indent: 1em, spacing: 0.65em, justify: true,)
#outline()

#heading(numbering: none)[Notation Index]
#columns(2)[
  #make-index()
]

#show: thmrules
#show link: set text(fill: blue)

#pagebreak()

= Introduction

What is usually called $lambda$-calculus is a collection of several formal
systems, based on a notation invented by
#link("https://en.wikipedia.org/wiki/Alonzo_Church")[Alonzo Church] in the
1930s.
They are designed to describe the most basic ways that operators or functions
can be combined to form other operators.

= Construction Principles

We conclude that in dealing with functions, there are two _construction
principles_ and one _evaluation rule_.
The construction principles for functions are the following:

/ Abstraction: From an expression $M$ and a variable $x$, we can construct a new
  expression: $lambda x . M$.
  We call this _abstraction of $x$ over $M$_.
#example("Abstraction")[
  - Abstraction of $x$ over $x^2 + 1$ gives $lambda x . x^2 + 1$.
  - Abstraction of $y$ over $lambda x . x - y$ gives $lambda y . (lambda x . x -
    y)$, i.e. the function mapping $y$ to $lambda x . x - y$ which is itself a
    function.
  - Abstraction of $y$ over $5$ gives $lambda y . 5$, i.e. the function mapping
    $y$ to $5$.
]
/ Application: From expressions $M$ and $N$ we can construction expression $M
  N$.
  we call this _application of $M$ to $N$_.
#example("Application")[
  - Application of $lambda x . x^2 + 1$ to $3$ gives $(lambda x . x^2 + 1)(3)$.
  - Application of $lambda x . x$ to $lambda y . y$ gives $(lambda x . x)
    (lambda y . y)$.
  - Application of $f$ to $c$ gives $f c$.
    This can also be written, in a more familiar way, as $f(c)$, but this is not
    the style we use there.
]

Formally,
#definition([variables and $lambda$-term])[
  #index[variables]
  #index(initial: "l")[$lambda$-term]
  Assume that there is given an infinite sequence of expressions $v_(0), v_(00),
  dots$ called _variables_;
  and a finite, infinite or empty sequence of expresions called _atomic
  constants_, different from the variables.
  The set of expressions called _$lambda$-terms_ is defined inductively as
  follows:
  + all variables and atomic constants are $lambda$-terms, called _atoms_.
  + if $M$ and $N$ are any $lambda$-terms, then $(M N)$ is a $lambda$-term,
    called an _application of $M$ to $N$_.
  + if $M$ is any $lambda$-term and $x$ is any variable, then $(lambda x . M)$
    is a $lambda$-term, called an _abstraction of $x$ over $M$_.
]

#remark[
  The expression '$lambda$' by itself is not a term, though it may occur in
  terms;
  similarly the expression '$lambda x$' is not a term.
]

Letters '$x$', '$y$', '$z$', '$u$', '$v$', '$w$' will denote variables
throughout the note, and disctinct letters will denote distinct variables unless
stated otherwise.

#example[
  Examples of $lambda$-terms include
  - with Variable as construction principle: $x, y, z$,
  - with Application as final construction step: $(x x), (y x), (x (x z))$,
  - with Abstraction as final step: $(lambda x . (x z)), (lambda y . (lambda z .
    x)), (lambda x . (x x)))$,
  - and again, with Application as final step: $((lambda x . (x z)) y),
    (y(lambda x . (x z))), ((lambda x . x)(lambda x . x))$.
]

== Saving parentheses convention

In order to be able to save on parentheses, the following conventions are
followed:
- Parentheses in an _outermost_ position may be omitted, so $M N$ stands for
  $lambda$-term $(M N)$ and $lambda x. M$ for $(lambda x . M)$.
- Application is _left-associative_, so $M N L$ is an abbreviation for $((M N)
  L)$.
- Application takes precedence over abstraction, so we can write $lambda x. M N$
  instead of $lambda x. (M N)$.
- Successive abstractions may be combined in a right-associative way under one
  $lambda$, so we write $lambda x y . M$ instead of $lambda x . (lambda y . M)$.

_Syntactic identity_ of terms will be denote by '$equiv$'; in other words
$ M equiv N $
will mean that $M$ is exactly the same term as $N$.

== Occurrences of $lambda$-terms

#definition("length")[
  The _length_ of a term $M$, called $op("lgh")(M)$ is the total number of
  occurrences of atoms in $M$.
  In more detail, define
  + $op("lgh")(a) = 1$ for atoms $a$;
  + $op("lgh")(M N) = op("lgh")(M) + op("lgh")(N)$;
  + $op("lgh")(lambda x . M) = 1 + op("lgh") (M)$.
]

#definition("occur in")[
  For $lambda$-terms $P$ and $Q$, the relation $P$ _occurs in_ $Q$(or $P$ is a
  _subterm_ of $Q$, or $Q$ _contains_ $P$) is defined by induction on $Q$:
  + $P$ occurs in $P$;
  + if $P$ occurs in $M$ or in $N$, then $P$ occurs in $(M N)$;
  + if $P$ occurs in $M$ or $P equiv x$, then $P$ occurs in $(lambda x . M)$.
]

#definition("scope")[
  For a particular occurrence of $lambda x . M$ in a term $P$, the occurrence of
  $M$ is called the _scope_ of the occurrence of $lambda x$ on the left.
]

#definition("Free and bound variables")[
  An occurrence of a variable $x$ in a term $P$ is called
  - _bound_ if it is in the scope of a $lambda x$ in $P$,
  - _binding_, if and only if it is the $x$ in "$lambda x$",
  - _free_ otherwise.
  If $x$ has at least one binding occurrence in $P$, we call $x$ a _bound
  variable_ of $P$.
  If $x$ has at least one free occurrence in $P$, we call $x$ a free variable of
  $P$.
  The set of all free variables of $P$ is called
  $ op("FV")(P). $
  A _closed $lambda$ term_ is a $lambda$-term without any free variables.
  A closed $lambda$-term is also called a _combinator_.
  The set of all closed $lambda$-terms is denoted by $Lambda^0$.
]

$op("FV")(P)$ can be defined recursively as follows:
1. (Variable) $op("FV")(x) = {x}$;
2. (Application) $op("FV")(M N) = op("FV")(M) union op("FV")(N)$;
3. (Abstraction) $op("FV") (lambda x . M) = op("FV") (M) without {x}$.

#example[
  - $ op("FV")(lambda x . x y) &= op("FV") (x y) without {x}\
  &= (op("FV")(x) union op("FV")(y)) without {x}\
  &= ({x} union {y}) without {x}\
  &= { x, y } without {x}\
  &= {y}.$
  - $op("FV")(x (lambda x . x y)) = {x, y}$.
]

#example[
  $lambda x y z . x x y$ and $lambda x y . x x y$ are closed $lambda$-terms;
  $lambda x . x x y$ is not.
]

= Evaluation rule

#definition([$alpha$-convertible and $alpha$-variant])[
  If $M attach(eq, br: alpha) N$, then $M$ and $N$ are said to be
  _$alpha$-convertible_ or _$alpha$-equivalent_.
  $M$ is called an _$alpha$-variant_ of $N$ and vice versa.
]

#definition("Substitution")[
  For any $M, N, x$, define $M[x := N]$ inductively($x equiv.not y$)
  + $x[x := N] equiv N$;
  + $a[x := N] equiv a$ for all atoms $a equiv.not x$;
  + $(P Q)[x := N] equiv ( P[x := N]  Q[x := N])$;
  + $(lambda x . P)[x := N] equiv lambda x . P$;
  + $(lambda y . P)[x := N] equiv lambda y . P$ if $x in.not op("FV") (P)$;
  + $(lambda y . P)[x := N] equiv lambda y . P[x := N]$ if $x in op("FV") (P)$
    and $y in.not op("FV") (N)$;
  + $(lambda y . P)[x := N] equiv lambda z . P[y := z][x := N]$, where $z$ is
    chosen to be the first variable $in.not op("FV")(N P)$, if $x in
    op("FV")(P)$ and $y in op("FV") (N)$.
]

#remark[
  The purpose clause 7. is to prevent the
  intuitive meaning of $(lambda y . P)[x := N]$ from depending on the bound
  variable $y$.

  For example, take three distinct varibles $w, x, y$ and look at
  $ (lambda y . x)[x := w]. $
  The term $lambda y . x$ represents the *constant function* whose value is always
  $x$, so we should intuitively expect $(lambda y . x)[x := w]$ to represent the
  *constant function* whose value is always $w$.

  Now consider $(lambda w . x)[x := w]$.
  The term $lambda w . x$ represents the *constant function* whose value is $x$,
  just as $lambda y . x$ did.
  So we should hope that $(lambda w . x)[x := w]$ would represent the *constant
  function* whose value is always $w$.
  But if $(lambda w . x)[x := w]$ was evaluated by 6., our hope would fail;
  we would have
  $ (lambda w. x)[x := w] equiv lambda w . w, $
  which represents the identity function, not a constant function.
  Clause 7. rescues our hope:
  By 7. with $N equiv y equiv w$, we have
  $ (lambda w . x) [x := w] &equiv lambda z . x[w := z][x := w]\
  &equiv lambda z . x[x := w]\
  &equiv lambda z . w. $
]

#remark[
  In this note, I apply the symbol $[x := N]$ in @mendelson_introduction_2015
  which used in @hindley_lambda-calculus_2008 has the form like $[N \/ x]$.
  For example, $x[x := N]$ should be written as $[N \/ x] x$ in
  @hindley_lambda-calculus_2008.
]

#example[
  $ (lambda y . x (lambda w . v w x))[x := (u v)] &equiv lambda y . x [x := (u
  v)] (lambda w . v w x)[x := (u v)]\
  &equiv lambda y . (u v) (lambda w. v w u v) \
  (lambda y . x (lambda x . x))[x := (lambda y . x y)] &equiv lambda y . x[x
  := (lambda y . x y)] (lambda x . x)[x := (lambda y . x y)]\ &equiv lambda y .
  (lambda y . x y)(lambda x . x)\
  (y (lambda v . x v))[x := (lambda y . v y)] &equiv y[x := (lambda y . v y)]
  (lambda v . x v)[x := (lambda y . v y)]\
  &equiv y (lambda z . x v[v := z][x := (lambda y . v y)])\
  &equiv y (lambda z . (lambda y . v y) z )\
  (lambda y . y x)[x := x y] &equiv lambda z . ((z x)[x := x y])\
  &equiv lambda z . ((z[x := x y]) (x[x := x y]))\
  &equiv lambda z . z (x y)\
  (lambda x . z y)[x := (u v)] &equiv lambda x . z y. $
]

#lemma[
  For all terms $M, N$ and variables $x$:
  + $M [x := x] equiv M$;
  + $x in.not op("FV")(M) => M [x := N] equiv M$;
  + $x in op("FV")(M) => op("FV")(M[x := N]) = op("FV")(N) union (op("FV")(M)
    without {x})$;
  + $op("lgh")(M[x := y]) = op("lgh")(M)$.
]

#lemma[
  Let $x, y, v$ be distinct(the usual notation convention), and let no variable
  bound in $M$ be free in $v P Q$.
  Then
  + $M [x := v][v := P] equiv M[x := P]$ if $v in.not op("FV")(M)$;
  + $M[x := v][v := x] equiv M$ if $v in.not op("FV")(M)$;
  + $M[y := Q][x := P] equiv M [x := P][y := (Q[x := P])]$ if $y in.not
    op("FV")(P)$;
  + $M[y := Q][x := P] equiv M[x := P][y := Q]$ if $y in.not op("FV")(P), x
    in.not op("FV")(Q)$;
  + $M[x := Q][x := P] equiv M[x := (Q[x := P])]$.
]

#definition("Change of bound variables and congruence")[
  Let a term $P$ contains an occurrence of $lambda x . M$, and let $y in.not
  op("FV")(M)$.
  The act of replacing this $lambda x . M$ by
  $ lambda y . M[x := y] $
  is called a _change of bound variable_ or an _$alpha$-conversion_ in $P$.
  Iff $P$ can be changed to $Q$ by a finite (perhaps empty) seties of changes of
  bound variables, we shall say $P$ is _congruent_ to $Q$, or $P$
  _$alpha$-converts to_ $Q$, or
  $ P attach(equiv, br: alpha) Q. $
]

#remark[
  In @mendelson_introduction_2015, _change of bound variable_ is a special case
  of "_rename_":
  Let $M^(x -> y)$ denote the result of replacing every free occurrence of $x$
  in $M$ by $y$.
  The relation "renaming", expressed with symbol $attach(eq, br: alpha)$, is defined as
  follows:
  $ lambda x . M attach(eq, br: alpha) lambda y . M^(x -> y), $
  provided that $y in.not op("FV")(M)$ and $y$ is not a binding variable in $M$.
  For the two conditons in this defintion:
  + "$y in.not op("FV")(M)$".
    Take $lambda x . M equiv lambda x . y$, so $y in op("FV")(M)$.
    Then $lambda y . M^(x -> y) equiv lambda y . y$.
    Now the same variable occurrence $y$ is the first free, and then bound.
  + "$y$ is not a binding variable in $M$".
    Take $lambda x . M equiv lambda x . lambda y . x$; then $lambda y . M^(x ->
    y) equiv lambda y . lambda y . y$.
    In the first expression, the final $x$ is bound by the _second_ $lambda y$.
    So again, renaming would essentially change the situation.
]

#lemma[
  + If $P attach(equiv, br: alpha) Q$, then $op("FV")(P) = op("FV")(Q)$;
  + The relation $attach(equiv, br: alpha)$ is reflexive, transitive and
    symmetric.
    That is, for all $P, Q, R$, we have:
    / (reflexivity): $P attach(equiv, br: alpha) P$,
    / (transitivity): $P attach(equiv, br: alpha) Q, Q attach(equiv, br: alpha)
      R => P attach(equiv, br: alpha) R$,
    / (symmetry): $P attach(equiv, br: alpha) Q => Q attach(equiv, br: alpha)
      P$.
]

#example[
  1.
  $ (lambda x . x (lambda z . x y)) z &attach(equiv, br: alpha) (lambda x .
  x(lambda z . x y)) z. $
  2.
  $ (lambda x . x (lambda z . x y)) z &attach(equiv, br: alpha) (lambda x . x
  (lambda z . x y)[x := u]) z\ &equiv (lambda u . u(lambda z . u y)) z. $
  3.
  $ (lambda x . x (lambda z . x y)) z &attach(equiv, br: alpha) (lambda z
    . x[x := z] (lambda z . x y)[x := z]) z\
    &equiv (lambda z . z(lambda w . x y[z := w][x := z])) z\
    &equiv (lambda z . z(lambda w . z y)) z\
    &attach(equiv, br: alpha) (lambda z . z(lambda w . z y[u := w])) z\
    &equiv (lambda z . z(lambda x . z y[w := x][u := w])) z\
    &equiv (lambda z . z(lambda x . z y)) z. $
  4.
  $ (lambda x . x (lambda z . x y)) z attach(eq.not, br: alpha) (lambda y .
  y(lambda z . y y)) z. $
  5.
  $ (lambda x . x (lambda z . x y)) z attach(eq.not, br: alpha) (lambda z .
  z(lambda z . z y)) z. $
  6.
  $ (lambda x . x (lambda z . x y)) z attach(eq.not, br: alpha) (lambda u .
  u(lambda z . u y)) v. $
]

#lemma[
  Let $x, y, v$ be distinct(the usual notation convention).
  Then
  + $M [x := v][v := P] attach(equiv, br: alpha) M[x := P]$ if $v in.not
    op("FV")(M)$;
  + $M[x := v][v := x] attach(equiv, br: alpha) M$ if $v in.not op("FV")(M)$;
  + $M[y := Q][x := P] attach(equiv, br: alpha) M [x := P][y := (Q[x := P])]$ if
    $y in.not op("FV")(P)$;
  + $M[y := Q][x := P] attach(equiv, br: alpha) M[x := P][y := Q]$ if $y in.not
    op("FV")(P), x in.not op("FV")(Q)$;
  + $M[x := Q][x := P] attach(equiv, br: alpha) M[x := (Q[x := P])]$.
]

#lemma[
  If $M attach(equiv, br: alpha) M', N attach(equiv, br: alpha) N'$, then
  + $M_1 N_1 attach(equiv, br: alpha) M_2 N_2$,
  + $lambda x . M_1 attach(equiv, br: alpha) lambda x . M_2$,
  + $M[x := N] attach(equiv, br: alpha) M'[x := N']$.
]

// #remark[
//   + When $y in.not op("FV")(N)$, then the definition permits us to let binding
//     variable $y$ stay as it is: $(lambda y . P)[x := N] equiv lambda y . (P[x :=
//   N])$, since $P^(y -> y) equiv P$.
//   + This also holds when $x in.not op("FV")(P)$, since then there is no $x$ to
//     substitute for.
//   + Renaming can be considered as a special case of substitution, since we can
//     show that $M^(x -> u) attach(eq, br: alpha) M[x := u]$ if the conditions of
//     renaming are satisfied.
// ]


The $beta$-reduction makes use of _substitution_, formally expressed by means of
square brackets "[" and "]": the expression $M[x : N]$ represents "$M$ in which
$N$ has been substituted for $x$".

#definition[
  #index(initial: "b")[$beta$-reduction]
  The formalisation of the _function evaluation process_ is called
  "$beta$-reduction".
  An expression of the form $(lambda x . M) N$ can be rewritten to the expression
  $M[X := N]$, i.e. the expression $M$ in which every $x$ has been replaced with
  $N$.
  We call the process _$beta$-reduction_ of $(lambda x. M) N$ to $M[x := N]$.
]

#example[
  - $(lambda x . x^2 + 1)(3)$ reduces to $(x^2 + 1)[x := 3]$, which is $3^2 + 1$.
  - $(lambda x . sin(x) - cos(x))(3 + 5)$ reduces to $sin(3 + 5) - cos(3 + 5)$.
  - $(lambda y . 5)(3)$ reduces $5[y : 5]$, which is $5$.
  - $(lambda x . x) (lambda y . y)$ reduces to $x[x := lambda y . y]$, which is
    $lambda y . y$.
]

#remark[
  Reduction is also possible on suitable _parts_ of expressions: when an
  expression of the form $(lambda x . M) N$ is a subexpression of a bigger one,
  then this subexpression may be rewritten to $M[x := N]$, as described above,
  provided that the rest of the expression is left unchanged.
]

#example[
  By compatibility, $lambda z. ((lambda x . x) (lambda y . y))$ reduces to
  $lambda z . (lambda y . y)$.
]

#bibliography("references.bib")
