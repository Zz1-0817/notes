#import "@preview/ctheorems:1.1.3": *

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
  "Proposition",
  base_level: 1
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


#show: thmrules
#show link: set text(fill: blue)

#pagebreak()

- #link("https://www.math.uni.wroc.pl/~pkowa/english.html")[Teacher's Homepage]
- #link("https://www.youtube.com/watch?v=t5NTBa75CoM&list=PLLxG_np9o-2cf3CawSVL9AO9f7BaDbGC4")[Vedios Page]

= Lecture 1: Ax's Theorem

#remark[
  Let $f in CC[X]$
  If $f$ is one-to-one, then $f$ is onto.
  But it is not true for $f in QQ[X]$ or $f in RR[X]$.
]
#proof[
  $f$ is one-to-one $=>$ $f$ is not constant.
  Then for any $b in CC$, $f - b$ is not constant.
  Since $CC$ is algebraic closed, there is an $a in CC$, such that $f(a) - b = 0$.
]

Fix $n > 0$ and $f_1, dots, f_n in CC[X_1, dots, X_n]$, let
$ F: CC^n -> CC^n, quad F(z_1, dots, z_n) = (f_1(z_1, dots, z_n), dots, f_n(z_1,
dots, z_n)) $
#theorem("Ax")[
  If $f$ is one-to-one, then $f$ is onto.
]

Let $K$ be a field.
"Ax theorem holds for $K$", if the Ax theorem holds for $K$ replacing $CC$.

#example[
  + By remark, Ax theorem does not hold for $QQ$.
  + Bialynicki-Birula and Rosenlicht showed that Ax theorem holds for $RR$.
]

#proof("Ax theorem")[
  + Ax's theorem holds for finite fields.
  + Let $p$ be a prime number, $FF^(op("alg"))_p$ be algebraic closure of
    $FF_p$.
    Ax's theorem holds for $FF_p^(op("alg"))$.

    Recall
    + $(forall m)$ there is a unique finite field (up to isomorphism) $FF_(p^m)$
      containing exactly $p^m$ elements
    + if $m_1 divides m_2$, then $FF_(p^(m_1)) subset FF_(p^(m_2))$
    + $FF^(op("alg"))_p =  union_n FF_(p^n)$

    By considering coefficients, if $f_1, dots, f_n in FF_p^(op("alg"))[X_1, dots,
  X_n]$, then $f_1, dots, f_n in FF_(p^(m!))[X_1, dots, X_n]$ for some $m$.
    Then $forall k >= m$, $f_1, dots, f_n in FF_(p^(k!))[X_1, dots, X_n]$, it
    implies that $F(FF^n_(p^(k!))) subset FF^n_(p^(k!))$.

  + Ax's theorem for $CC$.
    For any $d, n > 0$, there is a sentence in the *language of rings* $phi.alt_(d,
    n)$ expressing that Ax's theorem holds for $f_1, dots, f_n$ of total degree
    at most $d$.
    @theorem-MT-1.
]

#theorem("MT 1(Lefschetz principle)")[
  Let $phi.alt$ be any sentence in language of rings.
  $phi.alt$ is true in $CC$ if and only f for infinitely many primes $p$, $phi$ is
  true in $FF_p^(op("alg"))$.
]<theorem-MT-1>

Question: what goes wrong for false "onto" $=>$ "one-to-one".

= Lecture 2: Hilbert's Nullstellensatz

Let $f in CC[X] without { 0 }$, $f$ is non-constant if and only if $(f) eq.not
CC[X]$.

Since $CC$ is algebraic closed, $(f) eq.not CC[X]$ implies that $f$ has a zero
in $CC$.

#theorem("Hilbert Nullstellensatz weak form")[
  Let $f_1, dots, f_n in CC[X_1, dots, X_n]$.
  If $(f_1, dots, f_n) eq.not CC[X_1, dots, X_n]$, then there exists a $Sigma in
  CC^n$ such that $f_1 (Sigma) = dots.c = f_m (Sigma) = 0$.
]
#proof[
  Let $I = (f_1, dots, f_n)$ be a proper ideal contained in a maximal ideal
  $frak(m)$.
  By Zariski's lemma, $K = CC[X_1, dots, X_n] \/ frak(m)$ is a finite extension
  over $CC$.
  Since $CC$ is algebraically closed, $CC tilde.eq K$.
  Let $x_i$ be the complex number correspondence to $X_i + frak(m)$ under the
  isomorphism $CC tilde.eq K$.
  Now $(x_1, dots, x_n)$ is a common zero for $I$.
]

But we can apply the following to get a proof without "Zariski's lemma":

+ Let $phi.alt$ be a sentence in the language of rings with parameters from $CC$,
  saying that there is a tuple $overline(c)$, such that
  $f_1(overline(c)) = dots.c = f_m (overline(c)) = 0$, so $phi.alt$ is true in
  $K^(op("alg"))$.
+ #theorem("MT 2")[
    Any extension $F subset.eq M$ of algebraically closed fields is elementary,
    meaning that for any sentence $phi.alt$ in the language of rings with parameters
    from $F$, $phi.alt$ is true in $F$ if and only if $phi.alt$ is true in $M$.
  ]

== Basic definitions of Model Theory

#definition("Language of rings")[
  $L_r := { +, dot, -, 0, 1 }$, where $+$ and $dot$ are binary function symbols,
  $-$ is unary function symbol, , and $0$ and $1$ are constant symbols.
  From $L_r$, we construct $L_r$-formula, a "meaningful finite way" using
  - variables like $x, y, z, t, x_1, y_1, dots$
  - constant symbols: $0, 1$
  - function symbols: $+, dot, -$
  - equality symbol: $=$
  - parantheses: $(,)$
  - logical connectives: $and, or, not$
  - quantified symbols: $forall, exists$
]

#example[
  - $phi.alt_1: (exists x) x dot x = -1$, a square root of $-1$ exists.
  - $phi.alt_2: (forall x) (exists y) x = y dot y$, square roots exist.
  - $phi.alt_3: (forall x) (exists y) x = y dot (y dot y)$, cube roots exist.
  - $phi.alt: (exists y) x = y dot y$
]

What should be $phi.alt_(d, n)$ from Ax's theorem?
For $d = 1, n = 2$, i.e. $phi.alt_(1, 2)$.

Consider $f_1 = a_0 + a_1 X_1 + a_2 X_2, f_2 = b_0 + b_1 X_1 + b_2 X_2$, $F = (f_1, f_2)$
is one-to-one.
$ forall a_0, a_1, a_2, b_0, b_1, b_2(forall x_1, x_2, y_1, y_2 &(a_0 + (a_1 dot x_1) + (a_2 dot y_1) = (a_0 + (a_1
  dot x_2) + (a_2 dot y_2)) and \
  &(b_0 + (b_1 dot x_1) + (b_2 dot y_1) = (b_0 + (b_1 dot b_2) + (b_2 dot
  y_2)) =>\
  & (x_1 = x_2 and y_1 = y_2))\
  &=> ((forall z, v)(exists x, y) (a_0 + a_1 dot x + a_2 y = z) and (b_0 + b_1
  dot x + b_2 y =v)))
  $

= Lecture 3.

$L_r = {+, dot, -, 0, 1}$: language of rings

- $phi.alt_1: exists x x dot x = - 1$
- $phi.alt_2: forall x exists y x = y dot y$
- $phi.alt_3: forall x exists y x = (y dot y) dot y$
- $phi.alt_4: exists y x = y^2$.
  Here $x$ is free(not quantified)

$phi.alt_(n, d)$ from Ax's theorem.

In $phi.alt_1, phi.alt_2, phi.alt_3, phi.alt_(n, d)$, there are no free variables

Denote $phi.alt = phi.alt(x)$ if $x$ is a free variable in $phi.alt$

A set of $L_r$-sentences is called an _$L_r$-theory_.

#example[
  + The theory of rings.
    - $forall x, y quad z (x + y) + z = x + (y + z)$
    - $forall x, y quad x + y = y + x$
    - $forall x quad x + 0 = x$
    - $forall x quad x + (-x) = 0$
    - $forall x, y, z quad x dot (y dot z) = (x dot y) dot z$
    - $forall x quad x dot 1 = x and 1 dot x = x$
    - $forall x, y, z quad x dot (y + z) = (x dot y) + (x dot z)$
    - $forall x, y, z quad (x + y) dot z = (x dot z) + (y dot z)$
  + The theory of commutative (unital) rings.
  + The theory of domains of charactersitic $5$.
  + The theory of algebraically closed fields.
]

#definition[
  An $L_r$-structure is a set $M$ together with interpretation of symbols from
  $L_r$ that is:
  - two binary functions $+^M, dot^M: M^2 -> M$.
  - a unary functions $-^M: M -> M$
  - two constants $0^M, 1^M in M$.
  Write $cal(M) = (M, +^M, dot^M, -^M, 0^M, 1^M)$: $L_r$-structure.
]

If $phi.alt$ is an $L_r$-sentence, and $cal(M)$ is an $L_r$-structure, then we
can check whether $phi.alt$ hols for is satisfied in $cal(M)$, denoted $cal(M)
tack.r.double emptyset$.

If $Gamma$ is an $L_r$ -theory, then $cal(M) tack.r$ is defined as $cal(M)
tack.r.double phi$ for all $phi in Gamma$, $M$ is a _model_ of $Gamma$

#example[
  - If $Gamma$ is the theory of rings, then $cal(M) tack.r.double Gamma$ iff
    $cal(M)$ is a ring.
  - (Tarski's example) The sentence "Snow is white" is true iff "the snow is
    white".
  - $phi.alt_1$ does not hold in $RR$ or $RR tack.r.double not phi.alt_1$ "$-1$
    is not a square in $RR$"
  - $RR tack.r.double not phi.alt_2$ "not all elements are square in RR"
  - $RR tack.r.double phi.alt_2$ "all elements are cubes in $RR$"
  - $R$: commutative ring.
    $R tack.r.double phi.alt_(n, d)$ iff for all polynomial functions $F: R^n ->
    R^n$ of degree $<= d$, if $F$ is "one-to-one", then $F$ is onto.
]

== Problem
4. If $K$ is a field, then $K tack.r.double phi.alt_(n, 1)$.
5. Show: $ZZ tack.r.double phi.alt_(1, 1)$.

#remark[
  + $phi_(1, 2)$ is complicated to write, but it is easy to preove(believe that
    any $phi_(n, d)$ exists)
  + I'll not define formally "$cal(M) tack.r.double phi.alt$"
]

== Basic defintions of Model Theory(General Case)

#definition("Language")

_can be found in the book "Model theory: An introduction"_

#example[
  Language of $K$-vector spaces

  Let $K$ be a field, $L_(op("Vect")_K) = {+, - , lambda_a, 0, a: a in K }$
]

= Lecture 4.

Fix $cal(L) = (cal(F), cal(R), cal(C))$, we have $L$-formula, $L$-sentence as
for $L_r$ one new thing $ R in cal(R), n_R = 4, c_1, c_2, c_3, c_4 in cal(C) $
- $R(c_1, c_2, c_3, c_4)$: sentence
- $R(c_1, c_2, x, y)$: formula
$f in cal(F), n_f = 2, f(x_1, c_1) = c_2$ is a formula, but $f(x, c_1)$ is not a
formula.

e.g. "$0 < 1$" is an $L_(op("or"))$-sentence.

By $abs(L)$ (cardinality), we mean $abs(cal(F)) + abs(cal(R)) + abs(cal(C))$.

#lemma("no proof")[
  The set of $L$-formulas has cardinality
  $ abs(L) + aleph_0 = max (abs(L), aleph_0) $
]
If $phi.alt(x_1, dots, x_n)$ is $L$-formula, $c_1, dots, c_n in cal(C)$, then
$phi.alt(c_1, dots, d_n)$ is $L$-sentence.

For any set $A$, we  have new language
$ L_A = (cal(F), cal(R), cal(C)_A) quad cal(C) := cal(C) union {c_a | a in A} $

An $L$-structure is a set $M$ together with:
- a function $f^M: M^(n_t) -> M$ for each $f in cal(F)$
- a subset $R^M subset.eq M^(n_R)$ for all $R in cal(R)$
- an elements $c^M in M$ for all $c in cal(C)$
Denote
$ cal(M) = (M, f^M, R^M, c^M)_(f in cal(F), R in cal(R), c in cal(C)), $
where $cal(M)$ is an $L$-structure, $M$ is a universe, $f^M, R^M, c^M$ is
interpretations.

e.g.
$ (RR, +^RR, dot^RR, -^RR, 0^RR, 1^RR). $


- $phi$: $L$-sentence
- $cal(M)$: $L$-sentence
$cal(M) tack.r.double phi.alt$ means $phi.alt$ holds in $cal(M)$.

#example[
  $L_(op("Vect")_RR) = { +, -, lambda_r, 0 : r in RR }$
  - $RR times RR$: vector space over $RR$,

  it is $L_(op("Vect")_RR)$-structure

  - $(a, b) +^(RR times RR) (c, d) = (a +^RR c, b +^RR d)$
  - $-^(RR times RR)(a, b) = (-^(RR)a, -^(RR)b)$
  - $lambda^(RR times RR)_r (a, b) = (r dot^(RR) a, r dot^(RR) b)$
  - $0^(RR times RR) = (0^RR, 0^RR)$

  Normally, we write for $a, b in RR$:
  - $a + b$ and not $a +^RR b$
]

#example[
  - $(QQ; <)$: $L_(op("or"))$-structure

    $(QQ; <) tack.r.double forall x, y exists z (x < y) -> ((x < z) and (z < y))$
    "The order on $QQ$ is dense"
    But $(ZZ, <) tack.r.double not *$
  - $L_(op("or"))$-structure.
    $(RR, +, dot, -, 0, 1, <) tack.r.double forall x, y quad x = y dot y -> (x >
    0 or x = 0)$ "squares are non-negative"
]

$cal(M)$, $cal(L)$-structure with universe $M$ and $A subset.eq M$.
Then $cal(M)$ is naturally $L_A$-structure: $(c_a)^M = a$

Theory of $M$:
  $ op("Th")(M) &= { phi.alt: phi.alt "is" L"-sentence and" cal(M) tack.r.double
phi.alt }\
   op("Th")_A (M) &= { phi.alt: phi.alt "is" L_A"-sentence and" cal(M)
   tack.r.double phi.alt } $

#definition[
  Let $cal(M). cal(N)$ be $cal(L)$-structures.
  $cal(M)$ and $cal(N)$ are elementairly equivalent, denoted $cal(M) equiv
  cal(N)$, if $op("Th")(cal(M)) = op("Th")(cal(N))$.
]

== Problem 6

1. $L = {dot, e}$: language of groups.
  Find an $L$-sentence of $phi$ such that for all groups $G$ we have
  $ G tack.r.double phi.alt "iff" G tilde.eq ZZ \/ 2 ZZ times ZZ \/ 2 ZZ. $
2. Generalization of (1).
  - $L$: a finite language,
  - $cal(M)$: finite $L$-structure
  Show that there is an $L$-sentence $phi.alt$ such that for all $L$-structures
  $cal(W)$ we have
  $ cal(W) tack.r.double phi.alt "iff" cal(W) tilde.eq cal(M) $
  (and try to define what does "$tilde.eq$" this mean in general;
  Take $L$: language of groups)

== Problem 7

In language of groups.
Show: $(ZZ, +) equiv.not (ZZ times ZZ, +)$
$ (exists y)((forall x) (exists z) z + z = x or z + z = x - y )   $

= Lecture 5. Compactness Theorem

- $L = (cal(F), cal(R), cal(C))$ language
- $T$: $L$-theory
- $phi.alt$: $L$-sentence

#theorem("CT")[
  Let $kappa := aleph_0 + abs(T) = max (aleph_0, abs(T))$.
  If any finite subset of $T$ has a model, then $T$ has a model of cardinality
  $<= kappa$.
]

#definition[
  - $phi$ is a _logical consequence_ of $T$, denoted $T tack.r.double phi$, if
    for any $L$-structure $M$: if $M tack.r.double T$, then $M tack.r.double
    phi$.
  - $T$ is _maximal_, if for any $L$-sentence $alpha$,  $alpha in T$ or $not alpha
    in T$.
  - $T$ is _finitely satisfiable_ if each finite subset of $T$ has a model.
  - $T$ has the _witness property_ if for any $L$-formula $alpha(x)$, there is $c
    in cal(C)$(called _Henkin constants_) such that
    $ ((exists x alpha(x)) -> alpha(c)) in T. $
]

- Witness property: $M tack.r.double T$
- $cal(M) tack.r.double exists x alpha(x)$, then ${ m in M | cal(M)
  tack.r.double alpha(m) }$ nonempty.

#example[
  $cal(M)$: $L$-structure $=> op("Th")(cal(M))$ is maximal, because for each
  $L$-sentence $phi$, either $phi$ is true in $cal(M)$ or not (and never both!).
  "It cannot be true that today is Thursday and today is not Thursday."
]

#lemma[
  Let $T$ be finitely satisfiable and maximal.
  If $Delta subset.eq T$ is finite and $Delta tack.r.double phi.alt$, then
  $phi.alt in T$.
]
#proof[
  Assume that, so $phi in.not T$.
  Since $T$ is maximal, $not phi in T$.
  Take any $L$-structure $cal(M)$.
  Since $Delta tack.r.double phi$, we have: if $cal(M) tack.r.double$, then
  $cal(M) tack.r.double phi$.
  Hence if $cal(M) tack.r.double Delta$, then it is not true that $M
  tack.r.double not phi$.
  So the finite theorems $Delta union {not phi}$ has no model, contradiction.
]

#lemma[
  Suppose that $T$ is finitely satisfiable, maximal and has the witness
  property, then $T$ has model of cardinality $<= abs(cal(C))$
]
#proof[
  For $c_1, c_2 in cal(C)$, define: $c_1 tilde c_2$ iff "$c_1 = c_2$" $in T$.

  #underline[Claim 1.] $tilde$ is equivalence relation on $cal(C)$.
  #proof[
    We check transitivity only, take $c_1 tilde c_2$ for "$c_1 = c_2$" $in T$ and
    $c_2 tilde c_3$ for "$c_2 = c_3$" $in T$.
    ${c_1 = c_2, c_2 = c_3} tack.r.double c_1 = c_3$
    By "$c_1 = c_2$" $in T$, "$c_2 = c_3$" $in T$, and lemma 1, and maximality of
    $Gamma$, we get "$c_1 = c_3$" $in Gamma$, so $c_1 tilde c_3$.
  ]

  Define $M := cal(C) \/ tilde$ be equivalence class.
  We'll put an $L$-structure on $M$.
  Let $R in cal(R)$, $n := n_R$.
  take any $c_1, d_1, dots, c_n, d_n in cal(C)$

  #underline[Claim 2.] If $c_1 tilde d_1, dots, c_n tilde d_n$, then "$R(c_1,
  dots, c_n)$" $in Gamma$ iff "$R(d_1, dots, d_n)$" $in Gamma$.
  #proof[
    One implacetion is enough.
    Assume "$R(c_1, dots, c_n)$" $in T$, since $c_1 tilde d_1, dots, c_n tilde
    d_n$, we have "$c_1 = d_1$" $in T$, ..., "$c_n = d_n$" $in T$.
    By substitutivity of equality
    $ {c_1 = d_1, dots, c_n = d_n, R(c_1, dots, c_n)} tack.r.double R(d_1, dots,
    d_n) $
    Since $Gamma$ is maximal, by lemma 1.
  ]
  By claim 2, we can define $(c_1 \/ tilde, dots, c_n \/ tilde) in R^M$ iff
  "$R(c_1, dots, c_n) in T$"

  Take $f in cal(F), n = n_f$, take $c_1, dots, c_n in cal(C)$, we want to
  define $f^M(c_1 \/ tilde, dots, c_n \/ tilde)$.
  Since $T$ has hte witness property, there is $c in cal(C)$ such that
  $ (exists x f(c_1, dots, c_n) = x) -> f(c_1, dots, c_n) = c in T $
  We applied the witness property to $L$-formula
  - $alpha(x)$: "$f(c_1, dots, c_n) = x$"

  #underline[Claim 3.(we skip proof)]
  For any $c_1, dots, c_n, c, d_1, dots, d_n, d in cal(C)$ if $c_1 tilde d_1,
  dots, c_n tilde d_n$, "$f(c_1, dots, c_n) = c$" $in T$, "$f(d_1, dots, d_n) =
  d$" $in T$, then $c tilde d$.

  Using Claim 3, we define
  $ f^M(c_1 \/ tilde, dots, c_n \/ tilde) = c "iff" f(c_1, dots, c_n) = c in  $
]

