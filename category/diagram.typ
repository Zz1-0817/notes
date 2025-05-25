#import "@preview/ctheorems:1.1.3": *
#import "@preview/in-dexter:0.7.0": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge

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

= Diagram

Commutative diagrams in a category can be used to define more complicated
mathematical objects.

#definition([monoid])[
  A _monoid_ is an object $M in op("Set")$ together with a pair of morphisms
  $mu: M times M -> M$ and $eta: 1 -> M$ so that the following diagrams commute:
  #align(center)[
    #diagram({
      let (tuple, right_pair, down_pair, single) = ((0, 0), (1, 0), (0, 1), (1,
    1))
      node(tuple, $M times M times M$)
      node(right_pair, $M times M$)
      node(down_pair, $M times M$)
      node(single, $M$)

      edge(tuple, right_pair, "->", $1_M times mu$)
      edge(tuple, down_pair, "->", $mu times 1_M$)
      edge(down_pair, single, "->", $mu$, label-side: right)
      edge(right_pair, single, "->", $mu$, label-side: left)
    })
  ]
]

#definition([topological monoid])[
  A _topological monoid_ is an object $M in op("Top")$ together with morphisms
  $mu: M times M -> M$ and $eta: 1 -> M$ so that the following diagrams commute:
]

#definition([diagram])[
  A _diagram_ in a category $cal(C)$ is a functor $F: cal(J) -> cal(C)$ whose
  domain, the _indexing category_, is a small category.
]

#lemma[
  Functors preserve commutative diagrams.
]

#remark[
  In pratices, one thinks of the indexing category as a directed graph, defining
  the _shape_ of the diagram, together with specified commutativity relations.
]

#lemma[
  Suppose $f_1, dots, f_n$ is a composable sequence -- a "path" -- of morphisms
  in a category.
  If the composite $f_k f_(k - 1) dots.c f_(i + 1) f_i$ equals $g_m dots.c g_1$,
  for another composable sequence of morphisms $g_1, dots, g_m$, then
  $ f_n dots f_1 = f_n dots.c f_(k + 1) g_M dots.c g_1 f_(i - 1) dots.c f_1. $
]

#lemma[
  If the triangle displayed on the left commutes
  #align(center)[
    #diagram({
      let (lt, lb, rm) = ((0, 0), (0, 1), (1, 0.5)) // left top, left bottom, right middle
      node(lt, $bullet$)
      node(lb, $bullet$)
      node(rm, $bullet$)
      edge(lt, lb, "->", $f$)
      edge(lt, rm, "->", $h$)
      edge(lb, rm, "->", $g$, label-side: right)
    })
    #h(2em)
    #diagram({
      let (lt, lb, rm) = ((0, 0), (0, 1), (1, 0.5)) // left top, left bottom, right middle
      node(lt, $bullet$)
      node(lb, $bullet$)
      node(rm, $bullet$)
      edge(lb, lt, "->", $f^(-1)$, label-side: left)
      edge(lt, rm, "->", $h$)
      edge(lb, rm, "->", $g$, label-side: right)
    })
  ]
  and if $f$ is an isomorphism, then the triangle displayed on the right also
  commute.
  Dually, for any triple of morphisms with domains and codomains as displayed
  with $k$ as an isomorphism
  #align(center)[
    #diagram({
      let (lm, rt, rb) = ((0, 0.5), (1, 0), (1, 1))
      node(lm, $bullet$)
      node(rt, $bullet$)
      node(rb, $bullet$)
      edge(lm, rt, "->", $j$)
      edge(lm, rb, "->", $l$, label-side: right)
      edge(rt, rb, "->", $k$, label-side: left)
    })
    #h(2em)
    #diagram({
      let (lm, rt, rb) = ((0, 0.5), (1, 0), (1, 1))
      node(lm, $bullet$)
      node(rt, $bullet$)
      node(rb, $bullet$)
      edge(lm, rt, "->", $j$)
      edge(lm, rb, "->", $l$, label-side: right)
      edge(rb, rt, "->", $k^(-1)$, label-side: right)
    })
  ]
  the left-hand triangle commutes if and only if the right-hand triangle
  commutes.
]

#lemma[
  For any commutative square $beta alpha = delta gamma$ in which each of the
  morphisms is an isomorphism, then the inverses define a commutative square
  $alpha^(-1) beta = gamma^(-1) delta^(-1)$.
]
