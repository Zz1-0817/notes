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
#show: thmrules

= 简要介绍

本文是我学习 topos 理论的一些笔记, 比较散乱, 更结构化的笔记将在更了解 topos
后撰写.

= 回顾

== Grothendieck 拓扑

#definition([cartesian])[
  #index("cartesian")
  A category is said to be _cartesian_ if it has finite limits.
]

#definition([sieve, generated sieve and Grothendieck topology])[
  #index([sieve])
  #index([generated sieve])
  #index([Grothendieck topology])
  + A _sieve_ $S$ on an object $c$ of a category $cal(C)$ is a family of arrows
    in $cal(C)$ with codomain $c$ such that for any $f in S, f compose g in S$
    for any arrow $g$ composable with $f$ in $cal(C)$.
  + A sieve $S$ is said to be _generated_ by a family $cal(F)$ of arrows
    contained in it if every arrow in $S$ factors through an arrow in $cal(F)$.
  + A _Grothendieck topology_ on a category $cal(C)$ is an assignment $J$
    sending any object $c$ of $cal(C)$ to a collection $J(c)$ of sieves on
    $cal(C)$ in such a way that the following properties are saisfied:
    - (Maximality axiom) For any object $c$ of $cal(C)$, the maximal sieve
      $ M_c := {f | op("cod")(f) = c} $
      on $c$ belongs to $J(c)$.
    - (Pullback stability) For any arrow $f: d -> c$ in $cal(C)$ and any sieve
      $S in J(c)$, the sieve
      $ f^*(S) = {g: e -> d | f compose g in S} $
      belongs to $J(d)$.
    - (Transitivity) For any sieve $S$ in $cal(C)$ on an object $c$ and any $T
      in J(c)$, if $f^*(S) in J(op("dom")(f))$ for all $f in T$ then $S in
      J(c)$.
    A sieve on an object $c$ of $cal(C)$ is said to be _$J$-covering_(or a
    _$J$-cover_), for a Grothendieck topology $J$ on $cal(C)$, if it belongs to
    $J(C)$.
  + A _site_ is a pair $(cal(C), J)$ consisting of a category $cal(C)$ and a
    Grothendieck topology $J$ on $cal(C)$; it is said to be _small_(resp.
    _essentially small_) if the category $cal(C)$ is small(resp. essentially
    small).
  + Given two cartesian sites(i.e. sites whose underlying categories are
    cartesian) $(cal(C), J)$ and $(cal(D), K)$, a _morphism of sites_ $F:
    (cal(C), J) -> (cal(D), K)$ is a cartesian functor $F: cal(C) -> cal(D)$
    which is cover-preserving(in the sense that the image under $F$ of every
    $J$-covering sieve generates a $K$-covering sieve).
]

#definition([frame])[
  A _frame_ $F$ is a partially ordered set with arbitrary joins (and meets), in
  which the distributivity law of arbitrary joins w.r.t. finite meets holds:
  $ (or.big_(i in I) a_i) and b = or.big_(i in I) a_i and b. $
]
