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

= Universal Property

#definition([universal property and universal element])[
  A _universal property_ of a object $c in cal(C)$ is expressed by a
  representable functor $F$ together with a _universal element_ $x in F c$ that
  deines a natural isomorphism $cal(C)(c, -) tilde.eq F$ or $cal(C)(-, c)
  tilde.eq F$, as appropriate, via the Yoneda lemma.
]

#example[
  The forgetful functor $U: op("Ring") -> op("Set")$ is represented by the ring
  $ZZ[X]$.
  The universal element, which defines the natural isomorphism
  $ op("Ring")(ZZ[X], R) tilde.eq U R, $
  is the element $x in ZZ[X]$.
]

= The category of elements

#definition([category of elements])[
  The _category of elements_ $integral F$ of a covariant functor $F: cal(C) ->
  op("Set")$ has
  - as objects, pairs $(c, x)$ where $c in cal(C)$ where $c in cal(C)$ and $x in
    F c$ ,and
  - a morphism $(c, x) -> (c', x')$ is a morphism $f: c -> c'$ in $cal(C)$ so
    that $F f(x) = x'$.
]
The category of elements has an evident forgetful functor $Pi: integral F ->
cal(C)$.
If $F f(x) = x'$, then
#align(center)[
  #diagram({
    let (a, b, c, d, e, f) = ((0, 0), (1, 0), (1.8, 0), (0, 1), (1, 1), (1.8, 1))

    node(a, $(c, x)$)
    node(b, $(c', x')$)
    node(c, $integral F$)
    node(d, $c$)
    node(e, $c'$)
    node(f, $cal(C)$)
    node((1.4, 0), $in$)
    node((1.4, 1), $in$)

    edge(a, b, "->", $f$)
    edge(d, e, "->", $f$, label-side: right)
    edge(c, f, "->", $Pi$, label-side: left)
    edge((0.5, 0.3), (0.5, 0.7), "|->", $Pi$, label-side: left)
  })
]

#definition([category of elements])[
  The _category of elements_ $integral F$ of a contravariant functor $F:
  cal(C)^(op("op")) -> op("Set")$ has
  - as objects, pairs $(c, x)$ where $c in cal(C)$ and $x in F c$, and
  - a morphism $(c, x) -> (c', x')$ is a morphism $f: c -> c'$ in $cal(C)$ so
    that $F f (x') = x$.
]

The category of elements has an evident forgetful functor $Pi: integral F ->
cal(C)$.
If $F f(x') = x$, then
#align(center)[
  #diagram({
    let (a, b, c, d, e, f) = ((0, 0), (1, 0), (1.8, 0), (0, 1), (1, 1), (1.8, 1))

    node(a, $(c, x)$)
    node(b, $(c', x')$)
    node(c, $integral F$)
    node(d, $c$)
    node(e, $c'$)
    node(f, $cal(C)$)
    node((1.4, 0), $in$)
    node((1.4, 1), $in$)

    edge(a, b, "->", $f$)
    edge(d, e, "->", $f$, label-side: right)
    edge(c, f, "->", $Pi$, label-side: left)
    edge((0.5, 0.3), (0.5, 0.7), "|->", $Pi$, label-side: left)
  })
]

#example[
  When $cal(C)$ is a discrete category, a functor $F: cal(C) -> op("Set")$
  encodes an indexed family of sets $(F_c)_(c in cal(C))$.
  The category of elements of $F$ is again a discrete category whose set of
  objects is $product.co_(c in cal(C)) F_c$.
  The canonical projection $product: product.co_(c in cal(C)) F_c -> cal(C)$ is
  defined so that the fiber over $c in cal(C)$ is the set $F_c$.
  The set $product.co_(c in cal(C)) F_c$ is called the _dependent sum_ of the
  indexed family of sets $(F_c)_(c in cal(C))$.
  The related _dependent product_ $product_(c in cal(C)) F_c$ is the set of
  sections of the functor $product: product.co_(c in cal(C)) F_c -> cal(C)$.
]

#example[
  Object in the category of elements of $cal(C)(c, -)$ are morphisms $f: c -> x$
  in $cal(C)$, i.e., the object of $integral cal(C)(c, -)$ are morphisms in
  $cal(C)$ with domain $c$.
  A morphism from $f: c -> x$ to $g: c -> y$ is a morphism $h: x -> y$ so that
  $g = h f$;
  We say that $h$ is a morphism under $c$:
  #align(center)[
    #diagram({
      let (a, b, c) = ((0.5, 0), (0, 0.6), (1, 0.6))
      node(a, $c$)
      node(b, $x$)
      node(c, $y$)

      edge(a, b, "->", $f$)
      edge(a, c, "->", $g$)
      edge(b, c, "->", $h$, label-side: right)
    })
  ]
  This category has another name: it is the _slice category $c slash C$ under_
  the object $c in cal(C)$.
  Dually, $integral cal(C)(-, c)$ is the _slice category $C slash c$ over_ the
  object $c in cal(C)$.
]

#lemma[
  For $F: cal(C)^(op("op")) -> op("Set")$, the category of elements is
  isomorphic to the comma category
  $ integral F tilde.eq y arrow.b F $
  defined relative to the Yoneda embedding $y: cal(C) ->
  op("Set")^(cal(C)^(op("op")))$ and object $F: bb(1) ->
  op("Set")^(cal(C)^(op("op")))$.
]

#proposition[
  A covariant set-valued functor is representable iff its category of elements
  has an initial object.
  Dually, a contravariant set-valued functor is representable iff its category
  of elements has a terminal object.
]
#proof[
  Consider a functor $F: cal(C) -> op("Set")$ and suppose $(c, x) in integral F$
  is initial.
  We will show that the natural transformation $Psi(x): cal(C)(c, -) => F$
  defined by the Yoneda lemma is a natural isomorphism.
  For any $y in F d$, initiality of $x in F$ says there exists a unique
  morphism $(c, x) -> (d, y)$, i.e., a unique morphism $f: c -> d$ in $cal(C)$
  so that $F f(x) = y$.
  As y runs through the elements of the set $F d$, this says exactly that the
  component $Psi(x)_d: cal(C)(c, d) -> F d$ is an isomorphism, where $Psi(x)_d
  (f)$ was defined to be $F f(x)$.
  Existence of the morphism $(c, x) -> (d, y)$ in $integral F$ asserts that the
  function $Psi(x)_d$ is surjctive while uniqueness asserts that it is
  injective.

  Reversing this argument, a natural isomorphism $alpha: cal(C)(c, -) tilde.eq
  F$ defines an object $alpha_c (1_c) in F c$ in the category of elements, which
  we prove is initial.
  The bijection $alpha_d: cal(C)(c, d) ->^(tilde.eq) F d$ says that for each
  object $y in F d$, there is a unique morphism $f: c -> d$ so that $F
  f(alpha_c (1_c))$ = y.
  Thus, for each $(d, y) in integral F$, there is a unique morphism $f: (c,
  alpha_c (1_c)) -> (d, y)$ in $integral F$, which says exactly that $(c,
  alpha_c (1_c))$ defines an initial object in the category of elements.
]
