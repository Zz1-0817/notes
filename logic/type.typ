#import "@preview/ctheorems:1.1.3": *
#import "@preview/in-dexter:0.7.0": *

#let theorem = thmbox("theorem", "Theorem", base_level: 1)

#let corollary = thmbox(
  "theorem",
  "Corollary",
  base_level: 1
)

#let lemma = thmbox(
  "theorem",
  "Lemma",
  base_level: 1
)

#let proposition = thmbox(
  "theorem",
  "Proposition", base_level: 1
)

#let definition = thmbox("definition", "Definition", base_level: 1, padding:
(top: 0em, bottom: 0em))
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

= Type theory

#index("Types")
#index("witness")
Instead of the two basic notions of set theory, sets and propositions, type
theory has one basic notions: _types_.
- The basic judgment of type theory, analogous to "$A$ has a proof", is written
  "$a: A$" and pronounced as "the term $a$ has type $A$". When $A$ is a type
  representing a proposition, then $a$ may be called a _witness_ to the
  provability of $A$, or evidence of the truth of $A$.
- On the other hand, if the type $A$ is being treated more like a set than like
  a proposition, then "$a : A$" may be regarded as analogous to the
  set-theoretic statement "$a in A$".
  Howver, there is an essential difference in that "$a : A$" is a _judgment_
  whereas "$a in A$" is a _proposition_.
  In particular, when working internally in type theory, we cannot make
  statements such as "if $a : A$ then it is not the case that $b : B$", nor can
  we "disprove" the judgment "$a : A$".

In type theory, there is also a need for an equality judgment, existing at the
same level asthe judgment "$x : A$".
This is called _judgmental equality_ or _definitional equality_, and we write it
as $a equiv b : A$ or simply $a equiv b$.
It is helpful to think of this as meaning "equal by definition".
#example[
  If we define a function $f: NN -> NN$ by the equation $f(x) = x^2$, then the
  expression $f(3)$ is equal to $3^2$ by definition.
]

== $lambda$-caculus

#definition[
  #index("Abstraction")
  #index("Application")
  / Abstraction: From an expression $M$ and a variable $x$ we can construct a new
    expression: $lambda x . M$.
    We call this _abstraction of $x$ over $M$_.
  / Application: From expressions $M$ and $N$, we can construct expression $M N$.
    We call this _application of $M$ to $N$_.
]

#example[
  - Abstraction of $x$ over $x^2 + 1$ gives $lambda x . x^2 + 1$.
  - Abstraction of $y$ over $lambda x . x - y$ gives $lambda y . (lambda x . x -
    y)$, i.e. the function mapping $y$ to $lambda x . x - y$ which is itself a
    function.
  - Abstraction of $y$ over $5$ gives $lambda y . 5$, i.e. the function mapping
    $y$ to $5$.
  - Application of $lambda x . x^2 + 1$ to $3$ gives $(lambda x . x^2 + 1)(3)$.
  - Application of $lambda x . x$ to $lambda y . y$ gives $(lambda x . x)
    (lambda y . y)$.
  - Application of $f$ to $c$ gives $g c$.
    This can also be written, in a more familiar way, as $f(c)$, but this is not
    the style we use there.
]

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
  // The _full_ former expression (with subexpression $(lambda x . M) N$) is then
  // said to reduce to the _full_ latter expression (with subexpression $M[x :=
  // N]$).
]

#example[
  By compatibility, $lambda z. ((lambda x . x) (lambda y . y))$ reduces to
  $lambda z . (lambda y . y)$.
]

=== Lambda-terms

The main concern of the discipline called _lambda caculus_ is the behaviour of
funtions in the simplest, most abstract view.


#definition[
  #index(initial: "l")[$lambda$-term]
  Expressions in the lambda calculus are called _$lambda$-terms_.
  We define the set $Lambda$ of all $lambda$-terms as follows:
  To start with, we assume the existence of an infinite set $V$ of so-called
  _variables_: $V = {x, y, z, dots}$
  / (Variable): If $u in V$, then $u in Lambda$.
  / (Application): If $M$ and $N in Lambda$, then $(M N) in Lambda$.
  / (Abstraction): If $u in V$ and $M in Lambda$, then $(lambda u . M) in
    Lambda$.

  An alternative and shorter manner to define $Lambda$ is via _abstract
  syntax_(or a "grammer"):
  $ Lambda = V | (Lambda Lambda) | (lambda V . Lambda) $
  One should read this as follows: following the symbol "=" one finds three
  possible ways of constructing elements of $Lambda$.
  These three possibilities are separated by the vertical bar '|'.
]

#example[
  Examples of $lambda$-terms are:
  - with Variable as construction principle: $x, y, z$,
  - with Application as final construction step: $(x x), (y x), (x (x z))$,
  - with Abstraction as final step: $(lambda x . (x z)), (lambda y . (lambda z .
    x)), (lambda x . (x x)))$,
  - and again, with Application as final step: $((lambda x . (x z)) y),
    (y(lambda x . (x z))), ((lambda x . x)(lambda x . x))$.
]

+ We use the letters $x, y, z$ and variants with subscripts and primes to denote
  variables in $V$.
+ To denote elements of $Lambda$, we use $L, M, N, P, Q, R$ and variants
  thereof.
+ Syntactical identity of two $lambda$-terms will be denoted with the symbol
  $equiv$.
So $(x z) equiv (x z)$ but $(x z) equiv.not (x y)$.
Note that "$M equiv N$" expresses that the actual $lambda$-terms represented by
$M$ and $N$ are identical.

With the following recursive definition we determine what the _subterms_ of a
given $lambda$-term are;
these form a _multiset_, since identical terms may occur more than once.

#definition("Multiset of subterms")[
  #index("Subterm")
  / (Basic): $op("Sub")(x) = {x}$, for each $x in V$.
  / (Application): $op("Sub")((M N)) = op("Sub")(M) union op("Sub")(N) union {(M
    N)}$.
  / (Abstraction): $op("Sub")((lambda x . M)) = op("Sub")(M) union {(lambda x .
    M)}$.
  We call $L$ a subterm of $M$ if $L in op("Sub")(M)$.
]

#lemma[
  / (Reflexivity): For all $lambda$-terms $M$, we have $M in op("Sub")(M)$.
  / (Transitivity): If $L in op("Sub")(M)$ and $M in op("Sub")(N)$, then $L in
  op("Sub")(N)$.
]

#example[
  - The only subterm of $y$ is $y$ itself.
  - The subterms of $(x z)$ are $(x z), x$ and $z$.
  - Similarly, the $lambda$-term $(lambda x . (x x))$ has _four_ subterms:
    (1) $(lambda x . (x x))$ itself; (2) $(x x)$; (3) the left $x$ in $(x x)$;
    (4) the right $x$ in $(x x)$.
  - $op("Sub") ((lambda x . (x x)) (lambda x . (x x)))$ consists of $((lambda x
    . (x x))), (lambda x . (x x))$ twice, $(x x)$ twice and $x$ fource times.
]

#definition("Proper subterm")[
  #index("Proper subterm")
  $L$ is a proper subterm of $M$ if $L$ is a subterm of $M$, but $L equiv.not
  M$.
]

In order to be able to save on parentheses, the following conventions are
followed:
- Parentheses in an _outermost_ position may be omitted, so $M N$ stands for
  $lambda$-term $(M N)$ and $lambda x. M$ for $(lambda x . M)$.
- Application is left-associative, so $M N L$ is an abbreviation for $((M N)
  L)$.
- Application takes precedence over abstraction, so we can write $lambda x. M N$
  instead of $lambda x. (M N)$.
- Successive abstractions may be combined in a right-associative way under one
  $lambda$, so we write $lambda x y . M$ instead of $lambda x . (lambda y . M)$.

== Free and Bound variables

Variable occurrences in a $lambda$-term can be divided into three categories:
_free occurrences_, _bound occurrences_ and _binding occurrences_

