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

= Limits and colimits as universal cones

Our aim in this section is to introduce the dual notions of _limit_ and _colimit_
of a diagram, which are defined, respectively, to be the universal _cones_ over
and under the diagram.

#definition([constant functor and constant natural transformation])[
  #index("constant functor")
  For any object $c in cal(C)$ and any category $cal(J)$, the _constant functor_
  $c: cal(J) -> cal(C)$ sends every object of $cal(J)$ to $c$ and every
  morphism in $cal(J)$ to the identity morphism $1_c$.

  The constant functors define an embedding $Delta: cal(C) -> cal(C)^(cal(J))$
  that sends an object $c$ to the constant functor at $c$ and a morphism $f: c
  -> c'$ to the _constant natural transformation_, in which each component is
  defined to be the morphism $f$.
]

#definition([cone])[
  #index("cone")
  #index("cocone")
  A _cone over_ a diagram $F: cal(J) -> cal(C)$ with _summit_ or _apex_ $c in
  cal(C)$ is a natural transformation $lambda: c => F$ whose domain is the
  constant functor at $c$.
  The components $(lambda_j: c -> F j)_(j in J)$ of the natural transformation
  are called the _legs_ of the cone.
  Explicitly:
  - The data of a cone over $F: cal(J) -> cal(C)$ with summit $c$ is a
    collection of morphisms $lambda_j: c -> F j$, indexed by the objects $j in
    cal(J)$.
  - A family of morphisms $(lambda_j: c -> F_j)_(j in cal(J))$ defines a cone
    over $F$ if and only if, for each morphism $f: j -> k$ in $cal(J)$, the
    following triangle commutes in $cal(C)$:
    #align(center)[
      #diagram({
        let (c, fj, fk) = ((0.5, 0), (1, 0.8), (0, 0.8))
        node(c, "c")
        node(fj, "F j")
        node(fk, "F k")
        edge(c, fj, "->", $lambda_k$)
        edge(c, fk, "->", $lambda_j$)
        edge(fj, fk, "->", $F f$, label-side: left)
      })
    ]

  Dually, a _cone under_ $F$ with _nadir_ $c$ is a natural transformation
  $lambda: F => c$, whose _legs_ are the components $(lambda_j: F_j -> c)_(j in
  cal(J))$.
  The naturality condition asserts that, for each morphism $f: j -> k$ of
  $cal(J)$, the triangle
    #align(center)[
      #diagram({
        let (c, fj, fk) = ((0.5, 0.8), (0, 0), (1, 0))
        node(c, "c")
        node(fj, "F j")
        node(fk, "F k")
        edge(fj, c, "->", $lambda_j$, label-side: right)
        edge(fk, c, "->", $lambda_k$, label-side: left)
        edge(fj, fk, "->", $F f$)
      })
    ]
  commutes in $cal(C)$.
  Cones under a diagram are also called _cocones_.
]

To illustrate, if $F$ is a diagram indexed by the poset category $(ZZ, <=)$,
then a cone over $F$ with summit $c$ is comprised of a family of morphisms
$(lambda_n: c -> F n)_(n in ZZ)$ so that, for each $n lt.eq m$, the trangle
define by the morphisms $lambda_n, lambda_m$ and $F n -> F m$ commutes
#align(center)[
  #diagram({
    let (c, ds1, fm2, fm1, f0, f1, f2, ds2) = ((4, 0), (1, 1), (2, 1), (3, 1),
    (4, 1), (5, 1), (6, 1), (7, 1))
    node(c, $c$)
    node(ds1, $dots.c$)
    node(ds2, $dots.c$)
    node(fm2, $F(-2)$)
    node(fm1, $F(-1)$)
    node(f0, $F(0)$)
    node(f1, $F(1)$)
    node(f2, $F(2)$)

    edge(c, ds1, "->", $dots.c$, label-side: center)
    edge(c, ds2, "->", $dots.c$, label-side: center)
    edge(c, fm2, "->", $lambda_(-2)$, label-side: center)
    edge(c, fm1, "->", $lambda_(-1)$, label-side: center)
    edge(c, f0, "->", $lambda_0$, label-side: center)
    edge(c, f1, "->", $lambda_1$, label-side: center)
    edge(c, f2, "->", $lambda_2$, label-side: center)

    edge(ds1, fm2, "->")
    edge(fm2, fm1, "->")
    edge(fm1, f0, "->")
    edge(f0, f1, "->")
    edge(f1, f2, "->")
    edge(f2, ds2, "->")
  })
]

#definition([Limit and limit cone I])[
  For any diagram $F: cal(J) -> cal(C)$, there is a functor
  $ op("Cone")(-, F): cal(C)^(op("op")) -> op("Set") $
  that sends $c in cal(C)$ to the set of cones over with summit $c$;
  A _limit_ of $F$ is a representation for $op("Cone")(-, F)$.
  By the Yoneda lemma, a limit consists of an object $lim F in cal(C)$ together
  with a universal cone $lambda: lim F => F$, called the _limit cone_, defining
  the natural isomorphism
  $ cal(C)(-, lim F) tilde.eq op("Cone")(-, F). $
]

#definition([colimit and colimit cone I])[
  Dually, there is a functor $ op("Cone")(F, -): cal(C) -> op("Set") $ that
  sends $c$ to the set of cones under $F$ with nadir $c$.
  A _colimit_ of $F$ is a representation for $op("Cone")(F, -)$.
  By the Yoneda lemma, a colimit consists an object $op("colim")F in C$ together
  with a universal cone $lambda: F => op("colim")F$, called the _colimit cone_,
  defining the natural isomorphism
  $ cal(C)(op("colim") F, -) tilde.eq op("Cone")(F, -). $
]

#definition([limits and colimits II])[
  For any diagram $F: cal(J) -> cal(C)$, a _limit_ is a terminal obeject in the
  category of cones over $F$, i.e., in the category $integral op("Cone")(-, F)$.
  An object in the category of cones over $F$ is a cone over $F$, with any
  summit.
  In particular, the data of a terminal object in the category of cones consists
  of a limit object in $cal(C)$ together with a specified _limit cone_.
  A morphism from a cone $lambda: c => F e$ to a cone $mu: d => F$ is a cone $mu:
  d => F$ is a morphism $f: c -> d$ in $cal(C)$ so that for each $j in cal(J),
  mu_j dot f = lambda_j$.
  In other words, a morphism of cones is a map between the summits so that each
  leg of the domain cone factors through the corresponding let of the codomain
  cone along this map
  #align(center)[
    #diagram({
      let (c, d, ds1, fm2, fm1, f0, f1, f2, ds2) = ((3, 0), (3, 1), (0, 2), (1,
    2), (2, 2), (3, 2), (4, 2), (5, 2), (6, 2))
      node(c, $c$)
      node(d, $d$)
      node(ds1, $dots.c$)
      node(fm2, $F(-2)$)
      node(fm1, $F(-1)$)
      node(f0, $F(0)$)
      node(f1, $F(1)$)
      node(f2, $F(2)$)
      node(ds2, $dots.c$)

      edge(c, d, $f$, "->", label-side: center)
      edge(c, ds1, $dots.c$, "->", label-side: center)
      edge(c, fm2, $lambda_(-2)$, "->", label-side: center)
      edge(c, fm1, $lambda_(-1)$, "->", label-side: center)
      edge(c, f0, $lambda_0$, "->", bend: 30deg, label-side: center)
      edge(c, f1, $lambda_1$, "->", label-side: center)
      edge(c, f2, $lambda_2$, "->", label-side: center)
      edge(c, ds2, $dots.c$, "->", label-side: center)
      edge(d, ds1, $dots.c$, "->", label-side: center)
      edge(d, fm2, $mu_(-2)$, "->", label-side: center)
      edge(d, fm1, $mu_(-1)$, "->", label-side: center)
      edge(d, f0, $mu_0$, "->", label-side: center)
      edge(d, f1, $mu_1$, "->", label-side: center)
      edge(d, f2, $mu_2$, "->", label-side: center)
      edge(d, ds2, $dots.c$, "->", label-side: center)
      edge(ds1, fm2, "->")
      edge(fm2, fm1, "->")
      edge(fm1, f0, "->")
      edge(f0, f1, "->")
      edge(f1, f2, "->")
      edge(f2, ds2, "->")
    })
  ]
  The forgetful functor $integral op("Cone")(- ,F) -> cal(C)$ takes a cone to
  its summit.

  Dually, a _colimit_ is an initial object in the category of cones under $F$,
  i.e., in the category $integral op("Cone")(F, -)$.
  An object in the category of cones under $F$ is a cone under $F$, with any
  nadir.
  In particular, the data of an initial object is comprised of the colimit
  object in $cal(C)$ together with a specified _colimit cone_.
  A morphism from a cone $lambda: F => c$ to a cone $mu: F => d$ is a morphism
  $f: c -> d$ so that for each $j in cal(J), mu_j = f dot lambda_j$.
  In other words, a morphism of cones is a map between the nadirs so that each
  leg of the codomain cone factors through the corresponding leg of the domain
  cone along this map.
  The forgetful functor $integral op("Cone")(F, -) -> cal(C)$ takes a cone to its nadir.
]

#proposition[
  Given any two limits cones $lambda: ell => F$ and $lambda': ell' => F$ over a
  common diagram $F$, there is a unique isomorphism $ell tilde.eq ell'$ that
  commutes with the legs of the limit cones.
]

#definition([product])[
  A _product_ is a limit of a diagram indexed by a discrete category, with only
  identity morphisms.
  A diagram in $cal(C)$ indexed by a discrete category $cal(J)$ is simply a
  collection of objects $F_j in cal(C)$ indexed by $j in cal(J)$.
  A cone over this diagram is a $cal(J)$-indexed family of morphisms $(lambda_j:
  c -> F_j)_(j in cal(J))$, subject to no further constraints.
  The limit is typically denoted by $product_(j in cal(J)) F_j$ and the lets of
  the limit cone are maps
  $ (pi_k: product_(j in cal(J)) F_j -> F_k) $
  called _(product) projections_.
  The universal property asserts that composition with the product projections
  defines a natural isomorphism
  $ cal(C)(c, product_(j in cal(J))F_j) ->^((pi_k)_*)_(tilde.eq) product_(k in
  cal(J))cal(C) (c, F_k) tilde.eq op("Cone")(c, F). $
]

#example[
  The product of a pair of spaces $X$ and $Y$ is a space $X times Y$ equipped
  with continuous projection functions
  $ X <-^(pi_X) X times Y ->^(pi_Y) Y $
  satisfying the following universal property: for any other space $A$ with
  continuous maps $f: A -> X$ and $g: A -> Y$, there is a unique continuous
  function $h: A -> X times Y$ so that the diagram
  #align(center)[
    #diagram({
      let (a, x, xy, y) = ((1, 0), (0, 1), (1, 1), (2, 1))
      node(a, $A$)
      node(x, $X$)
      node(xy, $X times Y$)
      node(y, $Y$)

      edge(a, x, "->", $f$)
      edge(a, xy, "->", $exists! h$, label-side: center)
      edge(a, y, "->", $g$)
      edge(xy, x, "->", $pi_X$, label-side: left)
      edge(xy, y, "->", $pi_Y$, label-side: right)
    })
  ]
  commutes.

  Taking $A$ to be the point, which represents the underlying set functor $U:
  op("Top") -> op("Set")$, the bijection
  $ op("Top")(ast, X times Y) tilde.eq op("Top")(ast, X) times op("Top")(ast, Y) $
  tells us that the points of $X times Y$ correspond to points in the cartesian
  product of the underlying sets of $X$ and $Y$.
]
