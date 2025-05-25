#import "@preview/great-theorems:0.1.2": *
#import "@preview/rich-counters:0.2.1": *
#import "@preview/in-dexter:0.7.0": *

#set heading(numbering: "1.1")
#show: great-theorems-init

#show link: text.with(fill: blue)

#let thmcounter = rich-counter(
  identifier: "thmblocks",
  inherited_levels: 1
)

#let defcounter = rich-counter(
  identifier: "defblocks",
  inherited_levels: 1
)

#let theorem = mathblock(
  blocktitle: "Theorem",
  counter: thmcounter,
)

#let definition = mathblock(
  blocktitle: "Definition",
  counter: thmcounter,
)

#let lemma = mathblock(
  blocktitle: "Lemma",
  counter: thmcounter,
)

#let remark = mathblock(
  blocktitle: "Remark",
  prefix: [_Remark._],
  inset: 5pt,
  fill: lime,
  radius: 5pt,
)

#let example = mathblock(
  blocktitle: "Example",
  prefix: [_Example._],
  radius: 5pt,
)


#set par(first-line-indent: 1em, spacing: 1em, justify: true,)

#let proof = proofblock()

#heading(numbering: none)[Notation Index]
#columns(2)[
  #make-index()
]

= Structures

#definition[
  #index[language]
  A _language_ $cal(L)$ is given by specifying the following data:
  + a set of function symbols $cal(F)$ and positive integers $n_f$ for each $f
    in cal(F)$;
  + a set of relation symbols $cal(R)$ and positive integers $n_R$ for each $R
    in cal(R)$;
  + a set of constant symbols $cal(C)$.
]

#example[
  #index[language of ring]
  + _The language of rings_ $cal(L)_r = { +, - , dot, 0, 1 }$, where $+, -$ and
    $dot$ are binary function symbols and $0$ and $1$ are constants;
  + _The language of ordered rings_ $cal(L)_(op("or")) = cal(L)_r union {<}$,
    where $<$ is a binary relation symbol;
  + _The language of pure set_ $cal(L) = emptyset$
  + _The language of graphs_ is $cal(L) = { R }$, where $R$ is a binary relation
    symbol.
]

#definition[
  #index[L-structure]
  An _$cal(L)$-structure_ $cal(M)$ is given by the following data:
  + a nonempty set $M$ called the _universe, domain_, or _underlying set_ of
    $cal(M)$;
  + a function $f^(cal(M)): M^(n_f) -> M$ for each $f in cal(F)$;
  + a set $R^(cal(M)) subset.eq M^(n_R)$ for each $R in cal(R)$;
  + an element $c^(cal(M)) in M$ for each $c in cal(C)$.
]

We refer to $f^(cal(M)), R^(cal(M))$ and $c^(cal(M))$ as the _interpretations_
of the symbols $f$, $R$ and $c$.
We often write the structure as
$ cal(M) = (M, f^(cal(M)), R^(cal(M)), c^(cal(M)) : f in cal(F), R in cal(R)
"and" c in cal(C) ). $
we will use the notaion $A, B, M, N, dots$ to refer to the underlying sets of
the structures $cal(A), cal(B), cal(M), cal(N), dots$.

#example[
  Suppose that we are studying groups.
  We might use the language $cal(L)_g = {dot, e}$, where $dot$ is a binary
  function symbol and $e$ is a constant symbol.

  An $cal(L)_g$-structure $cal(G) = (G, dot^(cal(G)), e^(cal(G)))$ will be a set
  $G$ equipped with a binary relation $dot^(cal(G))$ and a distinguished element
  $e^(cal(G))$.
  For example, $cal(G) = (RR, dot, 1)$ is an $cal(L)_g$-structure where we
  interpret $dot$ as multiplication and $e$ as $1$; that is, $dot^(cal(G)) =
  dot$ and $e^(cal(G)) = 1$.
  Also $cal(N) = (NN, +, 0)$ is an $cal(L)_g$-structure where $dot^(cal(N)) = +$
  and $e^(cal(G)) = 1$.
  Of course, $cal(N)$ is not a group, but it is an $cal(L)_g$-structure.
]

#definition[
  Suppose that $cal(M)$ and $cal(N)$ are $cal(L)$-structures with universes $M$
  and $N$, respectively.
  An _$cal(L)$-embedding_ $eta: cal(M) -> cal(N)$ is a one-to-one map $eta: M ->
  N$ that preserves the interpretation of all the symbols of $cal(L)$.
  More precisely,
  + $eta(f^(cal(M))(a_1, dots.c, a_(n_f))) = f^(cal(N)) (eta(a_1), dots,
    eta(a_(n_f)))$ for all $f in cal(F)$ and $a_1, dots, a_n in M$;
  + $(a_1, dots, a_(m_R)) in R^(cal(M))$ if and only if $(eta(a_1), dots,
    eta(a_(m_R))) in R^(cal(N))$ for all $R in cal(R)$ and $a_1, dots, a_(m_j)
    in M$;
  + $eta(c^(cal(M))) = c^(cal(N))$ for $c in cal(C)$.

  A bijective $cal(L)$-embedding is called an _$cal(L)$-isomorphism_.
  If $M subset.eq N$ and the inclusion map is an $cal(L)$-embedding, we say
  either that $cal(M)$ is a _substructure_ of $cal(N)$ or that $cal(N)$ is an
  _extension_ of $cal(M)$.
]

#example[
  + $(ZZ, +, 0)$ is a substructure of $(RR, +, 0)$.
  + If $eta: ZZ -> RR$ is the function $eta(x) = e^x$, then $eta$ is an
    $cal(L)_g$-embedding of $(ZZ, +, 0)$ into $(RR, dot, 1)$.
]

The _cardinality_ of $cal(M)$ is $abs(M)$, the cardinality of the universe of
$cal(M)$.
If $eta: cal(M) -> cal(N)$ is an embedding then the cardinality of $cal(N)$ is
at least the cardinality of $cal(M)$.

#definition[
  The set of _$cal(L)$-terms_ is the smallest set $cal(T)$ such that
  1. $c in cal(T)$ for each constant symbol $c in cal(C)$;
  2. each variable symbol $v_i in cal(T)$ for $i = 1, 2, dots$; and
  3. if $t_1, dots, t_(n_f) in cal(T)$ and $f in cal(F)$, then $f(t_1, dots,
     t_(n_f)) in cal(T)$
]

#example[
  $dot (v_1, -(v_3, 1))$, $dot (+ (v_1, v_2), +(v_3, 1))$ and $+(1, +(1, +(1,
  1)))$ are $cal(L)_r$-terms.
]

Suppose that $cal(M)$ is an $cal(L)$-structure and that $t$ is a term built
using variables from(ordered $m$-tuple) $overline(v) = (v_(i_1), dots, v_(i_m))$.
We want to interpret $t$ as a function $t^(cal(M)): M^m -> M$.
For $s$ a subterm of $t$ and $overline(a) = (a_(i_1), dots, a_(i_m)) in M$, we
inductively define $s^(cal(M))(overline(a))$ as follows:
+ If $s$ in a constant symbol $c$, then $s^(cal(M))(overline(a)) = c^(cal(M))$.
+ If $s$ is the variable $v_(i_j)$, then $s^(cal(M))(overline(a)) = a_(i_j)$.
+ If $s$ is the term $f(t_1, dots, t_(n_f))$, where $f$ is a function symbol of
  $cal(L)$ and $t_1, dots, t_(n_f)$ are terms, then $s^(cal(M))(overline(a)) =
  f^(cal(M))(t_1^(cal(M))(overline(a)), dots, t_(n_f)^(cal(M))(overline(a)))$.
The function $t^(cal(M))$ is defined as $overline(a) |-> r^(cal(M))
(overline(a))$.

#example[
  Let $cal(L) = {f, g, c}$, where $f$ is a unary function symbol, $g$ is a
  binary function symbol, and $c$ is a constant symbol.
  We will consider the $cal(L)$-terms $t_1 = g(v_1, c), t_2 = f(g(c, f(v_1)))$
  and $t_3 = g(f(g(v_1, v_2)), g(v_1, f(v_2)))$.
  Let $cal(M)$ be the $cal(L)$-structure $(RR, exp, +, 1)$; that is, $f^(cal(M))
  = exp, g^(cal(M)) = +$ and $c^(cal(M)) = 1$.
  Then
  - $t^(cal(M))_1(a_1) = a_1 + 1$,
  - $t^(cal(M))_2(a_1) = e^(1 + e^(a_1))$,
  - $t^(cal(M))_3 (a_1, a_2) = e^(a_1 + a_2) + (a_1 + e^(a_2))$.
]

#definition[
  We say that $phi.alt$ is an _atomic $cal(L)$-formula_ if $phi.alt$ is either
  1. $t_1 = t_2$, where $t_1$ and $t_2$ are terms, or
  2. $R(t_1, dots, t_(n_R))$, where $R in cal(R)$ and $t_1, dots, t_(n_R)$ are
     terms.

  The set of _$cal(L)$-formulas_ is the smallest set $cal(W)$ containing the
  atomic formulas such that
  + if $phi.alt$ is in $cal(W)$, then $not phi.alt$ is in $cal(W)$.
  + if $phi.alt$ and $psi$ are in $cal(W)$, then $(phi and psi)$ and $(phi.alt
    or psi)$ are in $cal(W)$, and
  + if $phi.alt$ is in $cal(W)$, then $exists v_i phi.alt$ and $forall v_i
    phi.alt$ are in $cal(W)$.
]
