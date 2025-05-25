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

= Representation

#definition([Representable and representation])[
  + A covariant or contravariant functor $F$ from a locally small category
    $cal(C)$ to $op("Set")$ is _representable_ if there is an object $c in
    cal(C)$ and a natural isomorphism between $F$ and the functor of appropriate
    variance represented by $c$, in which case one says that the functor $F$ is
    _represented by_ the object $c$.
  + A _representation_ for a functor $F$ is a choice of object $c in cal(C)$
    together with a specified natural isomorphism $cal(C)(c, -) tilde.eq F$,
    if $F$ is covariant, or $cal(C)(-, c) tilde.eq F$, if $F$ is
    contravariant.
]
#remark[
  A representable functor $F: cal(C) -> op("Set")$ or $F: cal(C)^(op("op")) ->
  op("Set")$ encodes a _universal property_ of its representing object.
  Put colloquially, a universal property of an object $X$ is a description of
  the covariant functor $cal(C)(X, -)$ or of the contravariant functor
  $cal(C)(-, X)$ associated to that object.
]
#example[
  The following *covariant functors* are representable.
  + The identity functor $op("id")_(op("Set")): op("Set") -> op("Set")$ is
    represented by the singleton set $1$.
    That is, for any set $X$, there is a natural isomorphism $op("Set")(1, X)
    tilde.eq X$ that defines a bijection between elements $x in X$ and functions
    $x: 1 -> X$ carrying the singleton element to $x$.
    Naturality says that for any $f: X -> Y$, the diagram
      #align(center)[
        #diagram({
          let (a, b, c, d) = ((0, 0), (1, 0), (0, 1), (1, 1))
          node(a, $op("Set")(1, X)$)
          node(b, $X$)
          node(c, $op("Set")(1, Y)$)
          node(d, $Y$)

          edge(a, b, "->", $tilde.eq$)
          edge(a, c, "->", $f_*$)
          edge(b, d, "->", $f$, label-side: left)
          edge(c, d, "->", $tilde.eq$, label-side: right)
        })
      ]
    commutes, i.e., that the composite function $1 ->^(x) X ->^(f) Y$
    corresponds to the element $f(x) in Y$, as is evidently the case.
  + The forgetful functor $U: op("Group") -> op("Set")$ is represented by the
    group $ZZ$.
    That is, for any group $G$, there is a natural isomorphism $op("Group")(ZZ,
    G) tilde.eq U G$ that associates, to every element $g in U G$, the unique
    homomorphism $Z -> G$ that maps the integer $1$ to $g$.
    This defines a bijection because every homomorphism $ZZ -> G$ is determined
    by the image of the generator $1$; that is to say, $ZZ$ is the *free group
    on a single generator*.
    This bijection is natural because the composite group homomorphism
    $ ZZ ->^(g) G ->^(phi.alt) H $
    carries the integer $1$ to $phi.alt(g) in H$.
  + For any unital ring $R$, the forgetful functor $U: op("Mod")_R -> op("Set")$
    is represented by the $R$-module $R$.
    That is, there is natural bijection between $R$-module homomorphisms $R ->
    M$ and elements of the underlying set of $M$, in which $m in U M$ is
    associated to the unique $R$-module homomorphism that carries the
    multiplicative identity of $R$ to $m$;
    that is to say, $R$ is the _free $R$-module on a single generator_.
  + The functor $U: op("Ring") -> op("Set")$ is represented by the unital ring
    $ZZ[X]$, the polynomial ring in one variable with integer coefficients.
    A unital ring homomorphism $ZZ[X] -> R$ is uniquely determined by the image
    of $x$;
    put another way, $ZZ[X]$ is the _free unital ring on a single generator_.
  + The functor $U(-)^n: op("Group") -> op("Set")$ that sends a group $G$ to the
    set of $n$-tuples of elements of $G$ is represented by the _free group $F_n$
    on $n$ generators_.
    Similarly, the functor $U(-)^n: op("Ab") -> op("Set")$ is represented by the
    _free abelian group $plus.circle.big_n ZZ$ on $n$ generators_.

    More generally, any group presentation, such as
    $ S_3 := angle.l s, t | s^2 = t^2 = 1, s t s = t s t angle.r, $
    defines a functor $op("Group") -> op("Set")$ that carries a group $G$ the
    the set
    $ {(g_1, g_2) in G^2 | g_1^2 = g^2_2 = e, g_1 g_2 g_1 = g_2 g_1 g_2}. $
    The functor is represented by the group admitting the given presentation, in
    this case by the symmetric group $S_3$ on three elements: the presentation
    tells us that homomorphisms $S_3 -> G$ are classified by pairs of elements
    $g_1, g_2 in G$ satisfying the listed relations.
  + The functor $(-)^times: op("Ring") -> op("Set")$ that sends a unital ring to
    its set of units is represented by the ring $ZZ[X, X^(-1)]$ of Laurent
    polynomials in one variable.
    That is to say, a ring homomorphism $ZZ[X, X^(-1)] -> R$ may be defined by
    sending $X$ to any unit of $R$ and is completely determined by this
    assignment, and moreover there are no ring homomorphisms that carry $x$ to a
    non-unit.
]

#example[
  The following *contravariant functors* are representable.
  + The contravariant power set functor $P: op("Set")^(op("op")) -> op("Set")$
    is represented by the set $Omega = {tack.b, tack.t}$ with two elements.
    The natural isomorphism $op("Set")(A, Omega) tilde.eq P A$ is defined by the
    bijection that associates a function $A -> Omega$ with the subset that is
    the preimage of $tack.t$;
    reversing perspectives, a subset $A' subset A$ is identified with its
    _classifying function_ $chi_(A'): A -> Omega$, which sends exactly the
    elements of $A'$ to the element $tack.b$.
    The naturality condition stipulates that for any function $f: A -> B$, the
    diagram
    #align(center)[
      #diagram({
        let (a, b, c, d) = ((0, 0), (1, 0), (0, 1), (1, 1))

        node(a, $op("Set")(B, Omega)$)
        node(b, $P B$)
        node(c, $op("Set")(A, Omega)$)
        node(d, $P A$)
        edge(a, b, "->", $tilde.eq$)
        edge(a, c, "->", $f^*$)
        edge(b, d, "->", $f^(-1)$, label-side: left)
        edge(c, d, "->", $tilde.eq$, label-side: right)
      })
    ]
    commutes.
    That is, naturality asserts that given a function $chi_(B'): B -> Omega$
    classifying the subset $B' subset B$, the composite function $A ->^(f) B
    ->^(X_(B')) Omega$ classifies the subset $f^(-1)(B') subset A$.
]

= The Yoneda Lemma

Given a functor $F: cal(C) -> op("Set")$, what data is needed to define a
natural isomorphism $cal(C)(c, -) tilde.eq F$?
More generally, what data is needed to define a natural transformation
$cal(C)(c, -) tilde.eq F$?

#example[
  Cosider diagrams indexed by the ordinal category $omega$.
  A functor $F: omega -> op("Set")$ is given by a family of sets $(F_n)_(n in
  omega)$ together with functions $f_(n, n + 1): F_n -> F_(n + 1)$.
  The functor $omega(k, -) -> op("Set")$ represented by the object $K in
  omega$ corresponds to a family whose first $k$ sets, indexed by objects $n <
  k$, are empty and whose remaining sets, indexed by $n gt.eq k$ are singletons.
  The data of a natural transformation $alpha: omega(k, -) => F$ is given by its
  components $(alpha_n: omega(k, n) -> F_n)_(n in omega)$, which must satisfy a
  naturality condition.
]

#proposition[
  $G$-equivariant maps $G -> X$ corresponds bijectively to elements of $X$,
  identified as the image of the identity element $e in G$.
]

#theorem("Yoneda lemma")[
  For any functor $F: cal(C) -> op("Set")$, whose domian $cal(C)$ is locally
  small and any object $c in cal(C)$, there is a bijection
  $ op("Hom")(cal(C)(c, -), F) tilde.eq F c $
  that associates a natural transformation $alpha: cal(C)(c, -) => F$ to the
  element $alpha_c (op("id")_c) in F c$.
  Moreover, this correspondence is natural in both $c$ and $F$.
]<theorem-Yoneda-lemma>
#proof([of the bijection])[
  A function
  $Phi: op("Hom")(cal(C)(c, -), F) -> F c$ that maps a natural transformation
  $alpha: cal(C)(c, -) => F$ to the image of $op("id")_c$ under the component
  function $alpha_c: cal(C)(c, c) -> F c$, i.e.,
  $ Phi: op("Hom")(cal(C)(c, -), F) -> F c quad Phi(alpha) :=
  alpha_c (op("id")_c). $
  Define
  $ Psi: F c -> op("Hom")(cal(C)(c, -), F),quad Psi(x)_d (f) := F f(x), $
  and we claim $Psi$ is an inverse of $Phi$:

  - $Psi compose Phi = op(id)$.
    $Psi compose Phi(alpha) = Psi(alpha(op("id")_c))$, so $Psi compose
    Phi(alpha)_c (op("id"_c)) = F op("id")_c (alpha(op("id")_c)) =
    alpha(op("id")_c)$.
    But the following diagram shows that $cal(C)(c, d) -> F d$ is totally
    determined by the image of $op(id)_c$.
    #align(center)[
      #diagram({
        let (a, b, c, d) = ((0, 0), (1, 0), (0, 1), (1, 1))
        node(a, $cal(C)(c, c)$)
        node(b, $F c$)
        node(c, $cal(C)(c, d)$)
        node(d, $F d$)
        edge(a, b, "->")
        edge(a, c, "->", $f_*$)
        edge(b, d, "->", $F f$, label-side: left)
        edge(c, d, "->")
      })
    ]
    It remains to show the naturality of $Psi(x)$:
    $ F g compose Psi(x)_d (f) = F g compose F f(x) = F(g compose f) (x) =
    Psi(x)_e (g compose f) = Psi(x)_e (g_* f). $
    #align(center)[
      #diagram({
        let (a, b, c, d) = ((0, 0), (1, 0), (0, 1), (1, 1))
        node(a, $cal(C)(c, d)$)
        node(b, $F d$)
        node(c, $cal(C)(c, e)$)
        node(d, $F e$)
        edge(a, b, "->", $Psi(x)_d$)
        edge(a, c, "->", $g_*$)
        edge(b, d, "->", $F g$, label-side: left)
        edge(c, d, "->", $Psi(x)_e$, label-side: right)
      })
    ]
  - $Phi compose Psi = op(id)$.
    That is $Phi compose Psi (x) = Psi(x)_c (1_c) = x$.
]
#proof([of naturality])[
  The naturality in the statement of the Yoneda lemma amounts to the following
  pair of assertions.
  Naturality in the functor asserts that, given a natural transformation $beta:
  F => G$, the element of $G c$ representing the composite natural
  transformation $beta alpha: cal(C)(c, -) => F => G$ is the image under
  $beta_c: F c -> G c$ of the element of $F c$ representing $alpha: cal(C)(c, -)
  => F$, i.e. the diagram
  #align(center)[
    #diagram({
      let (a, b, c, d) = ((0, 0), (1, 0), (0, 1), (1, 1))
      node(a, $op("Hom")(cal(C)(c, -), F)$)
      node(b, $F c$)
      node(c, $op("Hom")(cal(C)(c, -), G)$)
      node(d, $G c$)
      edge(a, b, "->", $Phi_F$)
      edge(a, c, "->", $beta_*$)
      edge(b, d, "->", $F g$, label-side: left)
      edge(c, d, "->", $Phi_G$, label-side: right)
    })
  ]
  commutes in $op("Set")$.
  By definition, $Phi_G (beta dot alpha) = (beta dot alpha)_c (1_c)$, which is
  $beta_c (alpha_c (1_c))$.

  Naturality in the object asserts that, given a morphism $f: c -> d$ in
  $cal(C)$, the element of $F d$ representing the composite natural
  transformation $alpha f^*: cal(C)(d, -) => cal(C)(c, -) => F$ is the image
  under $F f: F c -> F d$ of the element of $F c$ representing $alpha$, i.e.,
  the diagram
  #align(center)[
    #diagram({
      let (a, b, c, d) = ((0, 0), (1, 0), (0, 1), (1, 1))
      node(a, $op("Hom")(cal(C)(c, -), F)$)
      node(b, $F c$)
      node(c, $op("Hom")(cal(C)(d, -), F)$)
      node(d, $F d$)
      edge(a, b, "->", $Phi_c$)
      edge(a, c, "->", $(f^*)^*$)
      edge(b, d, "->", $F f$, label-side: left)
      edge(c, d, "->", $Phi_d$, label-side: right)
    })
  ]
  commutes.
  Here, the image of $alpha in op("Hom")(cal(C)(c, -), F)$ along the top-right
  composite is $F f (alpha_c (1_c))$, and the image along the left-bottom
  composite is $(alpha dot f^*)_d (1_d)$.
  By the definition of vertical composition, the $d$th component of the
  composite natural transformation $alpha dot f^*$ is the function
  $ cal(C)(d, d) ->^(f^*) cal(C)(c, d) ->^(alpha_d) F d quad 1_d mapsto f mapsto
  alpha_d(f). $
]

#corollary("Yoneda embedding")[
  The functors
  #align(center)[
    #diagram({
      let (a, b, c, d, e, f) = ((0, 0), (1, 0), (0, 1), (1, 1), (0, 2), (1, 2))
      node(a, $cal(C)$)
      node(b, $op("Set")^(cal(C)^(op("op")))$)
      node(c, $c$)
      node(d, $cal(C)(-, c)$)
      node(e, $d$)
      node(f, $cal(C)(-, d)$)

      edge(a, b, "hook->", $y$)
      edge(c, d, "|->")
      edge(e, f, "|->")
      edge(c, e, "->", $f$)
      edge(d, f, "->", $f_*$, label-side: left)
      edge((0.3, 1.5), (0.7, 1.5), "|->")
    })
    #h(2em)
    #diagram({
      let (a, b, c, d, e, f) = ((0, 0), (1, 0), (0, 1), (1, 1), (0, 2), (1, 2))
      node(a, $cal(C)^op("op")$)
      node(b, $op("Set")^(cal(C))$)
      node(c, $c$)
      node(d, $cal(C)(-, c)$)
      node(e, $d$)
      node(f, $cal(C)(-, d)$)

      edge(a, b, "hook->", $y$)
      edge(c, d, "|->")
      edge(e, f, "|->")
      edge(c, e, "->", $f$)
      edge(f, d, "->", $f^*$)
      edge((0.3, 1.5), (0.7, 1.5), "|->")
    })
  ]
  define full and faithful embeddings.
]
#proof[
  The functors $cal(C) -> op("Set")^(cal(C)^(op("op")))$ and $cal(C)^(op("op"))
  -> op("Set")^(cal(C))$ are fully faithful if they define local bijections
  between hom-sets
  $ cal(C)(c, d) tilde.eq op("Hom")(cal(C)(-, c), cal(C)(-, d)) quad cal(C)(c,
  d) tilde.eq op("Hom")(cal(C)(d, -), cal(C)(c, -)). $
  Distinct morphisms $c -> d$ induce distinct natural transformations.
  @theorem-Yoneda-lemma[The Yoneda lemma] implies that every natural
  transformation between represented functors arises in this way.
  The natural transformations
  $ alpha: cal(C)(d, -) => cal(C)(c, -) $
  corresponds to elements to $cal(C)(c, d)$, i.e., to morphisms $f: c -> d$ in
  $cal(C)$, where the element $f$ is $alpha_d (1_d)$.
  The natural transformation $f^*: cal(C)(d, -) => cal(C)(c, -)$ defined by
  pre-composition by $f$ sends $1_d$ to $f$.
  Thus, the bijection implies that $alpha = f^*$.
]

#corollary[
  Every row operation on matrices with $n$ rows is defined by left
  multiplication by some $n times n$ matrix, namely the matrix obtained by
  performing the row operation on the identity matrix.
]

#corollary[
  Any group is isomorphic to a subgroup of a permutation group.
]

#definition([representably isomorphic])[
  In a locally small category $cal(C)$, any pair of isomorphic objects $x
  tilde.eq y$ are _representably isomorphic_, meaning that $cal(C)(-, x)
  tilde.eq cal(C)(-, y)$ and $cal(C)(x, -) tilde.eq cal(C)(y, -)$.
]

#proposition[
  Consider a pair of objects $x$ and $y$ in a locally small category $cal(C)$.
  + If either the co- or contravariant functors represented by $x$ and $y$ are
    naturally isomorphic, then $x$ and $y$ are isomorphic.
  + In particalar, if $x$ and $y$ represent the same functor, then $x$ and
    $y$ are isomorphic.
]
