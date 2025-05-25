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

#heading(numbering: none)[Notation Index]
#columns(2)[
  #make-index()
]

#show: thmrules
#show link: set text(fill: blue)

#pagebreak()

= Mathematical Logic

/ Motivation and Goals:
  1. Frege intended to base mathematics on logical and set-theoretical
     principles.
  2. Russelll tried to eliminate contradictions that arose in Frege's system.
  3. Hilbert's goal was to show that "the generally accepted method of
     mathematics taken as a whole do not lead to a contradictions"(_Hilbert's
     program_)


= Deductive system

Informally, a deductive system is a collection of *rules* for deriving things
called *judgments*.

#definition([Deductive system])[
  #index("Deductive form")
  A _deductive system_(or sometimes, _inference system_) is specified by
  + A collection of judgments, and
  + A collection of _steps_, each of which has a (typically finite) list of
    judgement as hypotheses and a single judgemnet as conclusion.
    A step is usually written as
    $ (J_1 dots.c J_n) / J $
    If $n = 0$, a step is often called an axiom.
    In set theory, if $n > 0$, a step is usually called an _axiom schema_.
]

In the deductive system of first-order logic, there is only one kind of judgment
"A has a proof", and all judgments are of this form.

= The Propositional Calculus

== Propositional Connectives: Truth Tables

Sentences may be combined in various ways to form more complicated sentences.
We shall consider only _truth-funtional_ combinations, in which the truth or
falsity of the new sentence is determined by the truth or falsity of its
component sentences.

#definition("Propositional connectives")[
  #index("Propositional connectives")
  The symbols $not$(negation), $and$(conjunction), $not$(disjuction), $=>$(conditional) and $<=>$(biconditional) will be called _propositional connectives_.
  #figure(
  align(center)[#table(
    columns: 7,
    align: (col, row) => (center,center,center,center,center,center,center,).at(col),
    inset: 6pt,
    [$A$], [$B$], [$not A$], [$A and B$], [$A or B$],
    [$A arrow.r.double.long B$], [$A arrow.l.r.double B$],
    [T], [T], [F], [T], [T], [T], [T],
    [F], [T], [T], [F], [T], [T], [F],
    [T], [F], [F], [F], [T], [F], [F],
    [F], [F], [T], [F], [F], [T], [T],
  )]
  )
]
 
#definition("Statement form")[
  #index("Statement form")
  A statement form is an expression built up from the #emph[statement letters]
  $A , B , C$ and so on by appropriate applications of the propositional
  connectives.

  + All statement letters and such letters with numerical subscripts are
    statement forms.
  + If $cal(B)$ and $cal(C)$ are statement forms, then so are 
    $ (not cal(B)) , (cal(B) and cal(C)) , (cal(B) or cal(C)) , (cal(B)
    arrow.r.double.long cal(C)) "and" (cal(B) arrow.l.r.double cal(C)). $
  + Only those expressions are statement forms that are determined to be so by
    meas of condition 1 and 2.

  Each statement form determines a _truth function_, which can be graphically
  represented by a truth table.
]

== Tautologies

#definition("Truth function of n argument")[
  A truth fucntion of $n$ arguments is defined a function of $n$ arguments, the
  arguments and vlaues of which are the truth values T or F.
]

#definition("Tautology")[
  #index("Tautology")
  A tautology is a statement form that is always true, no matter what the truth
  values of its statement letters may be.
]

#definition("Logically imply and logical equivalent")[
  #index("Logically imply")
  #index("Logically consequence")
  $cal(B)$ is said to _logical imply_ $cal(C)$(or, synonymously, $cal(C)$ is a
  _logical consequence_ of $cal(B)$) if and only if every truth assignment to
  the statement letters of $cal(B)$ and $cal(C)$ that makes $cal(B)$ true also
  makes $cal(C)$ true.
]

#example()[
  - $(A or B)$ logically implies $A$.
  - $A$ logically implies $(A or B)$.
  - $(A and (A => B))$ logically implies $B$.
]

#definition("Logically equivalent")[
  #index("Logically equivalent")
  $cal(B)$ and $cal(C)$ are said to be _logical equivalent_ if and only if
  $cal(B)$ and $cal(C)$ recieve the same truth value under every assignment of
  truth values to the statement letters of $cal(B)$ and $cal(C)$.
]

#example()[
  - $A$ and $(not (not A))$.
  - $(A and B)$ and $(B and A)$.
]

#proposition()[
  #set enum(numbering: "a.")
  + $cal(B)$ logically implies $cal(C)$ if and only if $(cal(B) => cal(C))$ is a
    tautology.
  + $cal(B)$ and $cal(C)$ logically equivalent if and only if $(cal(B) <=>
    cal(C))$ is a tautology.
]

#proposition()[
  If $cal(B)$ and $(cal(B) => cal(C))$ are Tautologies, then so is $cal(C)$.
]

#proposition()[
  If $cal(T)$ is a tautology containing as statement letters $A_1 , A_2 , dots.h
  , A_(n prime)$ and $cal(B)$ arises from $cal(T)$ by substituting statement
  forms $cal(T)_1 , cal(T)_2 , dots.h , cal(T)_n$ for $A_1 , A_2 , dots.h ,
  A_n$, respectively, then $cal(B)$ is a tautology; that is, substitution in a
  tautology yields a tautology.
]

#example()[
  Let $cal(T)$ be $((A_1 and A_2) => A_1)$, let $cal(T)_1$ be $(B or C)$ and let
  $cal(T)_2$ be $(C and D)$.
  Then $cal(B)$ is $(((B or C) and (C and D)) => (B or C))$.
]

#proposition()[
  If $cal(C)_1$ arises from $cal(B)_1$ by substitution of $cal(C)$ for one or
  more occurrences of $cal(B)$, then $((cal(B) arrow.l.r.double cal(C))
  arrow.r.double.long (cal(B)_1 arrow.l.r.double cal(C)_1))$ is a tautology.
  Hence if $cal(B)$ and $cal(C)$ are logically equivalent, then so are
  $cal(B)_1$ and $cal(C)_1$.
]

#example()[
  Let $cal(B)_1$ be $cal(B) and D$, $cal(C)$ be $not not cal(B)$, then
  $cal(C)_1$ is $not not cal(B) and D$.
  Since $cal(C)$ and $(not(not cal(C))$ are logically equivalent, $(cal(C) or
  D)$ and $((not(not cal(C))) or D)$ are also logically equivalent.
]

== Adequate Sets of Connectives

#proposition()[
  Every truth function is generated by a statement form involving the
  connectives $not , and$ and $or$.
]

#example()[
  + $(not A_1 and A_2) or (A_1 and not A_2) or (not A_1 and A_2)$

    #figure(
    align(center)[#table(
      columns: 3,
      align: (col, row) => (center,center,center,).at(col),
      inset: 6pt,
      [$x_1$], [$x_2$], [$f (x_1 , x_2)$],
      [T], [T], [F],
      [F], [T], [T],
      [T], [F], [T],
      [F], [F], [T],
    )]
    )

  + $(A_1 and A_2 and A_3) or (A_1 and not A_2 and A_3) or (not A_1 and not A_2 and A_3) or (not A_1 and not A_2 and not A_3)$

    #figure(
    align(center)[#table(
      columns: 4,
      align: (col, row) => (center,center,center,center,).at(col),
      inset: 6pt,
      [$x_1$], [$x_2$], [$x_3$], [$g (x_1 , x_2 , x_3)$],
      [T], [T], [T], [T],
      [F], [T], [T], [F],
      [T], [F], [T], [T],
      [F], [F], [T], [T],
      [T], [T], [F], [F],
      [F], [T], [F], [F],
      [T], [F], [F], [F],
      [F], [F], [F], [T],
    )]
    )
]

#corollary()[
  Every truth function can be generated by a statement form containing as
  connectives only $and$ and $not$, or only $or$ and $not$, or only
  $arrow.r.double.long$ and $not$.
]

#example()[
  The following statement forms are tautologies
  - $cal(B) or cal(C) arrow.l.r.double not (not cal(B) and not cal(C))$
  - $cal(B) and cal(C) arrow.l.r.double not (not cal(B) or not cal(C))$
  - $cal(B) or cal(C) arrow.l.r.double (not cal(B) arrow.r.double.long cal(C))$
  - $cal(B) and cal(C) arrow.l.r.double not (cal(B) arrow.r.double.long not cal(C))$
]

#definition("Joint denial and alternative denial")[
  _Joint denial_ and _alternative denial_ are a single connectives $arrow.b$ and
  $divides$, respectively.
  #figure(
  align(center)[#table(
    columns: 4,
    align: (col, row) => (center,center,center, center).at(col),
    inset: 6pt,
    [$A$], [$B$], [$A arrow.b B$], [$A divides B$],
    [T], [T], [F], [F],
    [F], [T], [F], [T],
    [T], [F], [F], [T],
    [F], [F], [T], [T]
  )]
  )
]

#corollary()[
  The only binary connectives that alone are adequate for the construction of
  all truth functions are $arrow.b$ and $divides$.
]

#example()[
  The following statement forms are tautologies
  - $not A arrow.l.r.double (A arrow.b A)$
  - $(A and B) arrow.l.r.double (A arrow.b A) arrow.b (B arrow.b B) \)$
  - $not A arrow.l.r.double (A divides A)$
  - $(A or B) arrow.l.r.double ((A divides A) divides (B divides B))$
]

== An Axiom System for the Propositional Calculus

#definition("Formal theory")[
  #index("Formal theory")
  #index("Expression")
  #index("Well-formed formulas")
  #index("Direct consequence")
  #index("Rules of inference")
  A formal theory $cal(T)$ is defined when the following conditions are
  satisfied:
  + A countable set of symbols is given as the symbols of $cal(T)$.
    A finite sequence of symbols of $cal(T)$ is called an
    #emph[expression] of $cal(T)$.
  + There is a subset of the set of expressions of $cal(T)$ called the
    set of #emph[well-formed formulas] \(wfs) of $cal(T)$. There is
    usually an effective procedure to determine whether a given
    expression a wf.
  + There is a set of wfs called the set of #emph[axioms] of $cal(T)$.
    Most often, one can effectively decide whether a given wf is an
    axiom; in such a case, $cal(T)$ is called an #emph[axiomatic]
    theory.
  + There is a finite set $R_1 , dots.h , R_n$ of relations among wfs,
    called #emph[rules of inference];. For each $R_i$, there is a unique
    positive integer $j$ such that, for every set of $j$ wfs and each wf
    $cal(B)$, one can effectively decide whether the given $j$ wfs are
    in the relation $R_i$ to $cal(B)$, and, if so, $cal(B)$ is said to
    #emph[follow from] or to be a #emph[direct consequence] of the given
    wfs by virtue of $R_i$.
]

#definition("Proof and theorem")[
  #index("Proof")
  #index("Theorem")
  A _proof_ in $cal(T)$ is a sequence $cal(B)_1 , dots.h , cal(B)_k$ of wfs such
  that, for each $i$, either $cal(B)_i$ is an axiom of $cal(T)$ or $cal(B)_i$ is
  a direct consequence of some of the preceding wfs in the sequence by virtue of
  one of the rules of inference of $cal(T)$.

  A _theorem_ in $cal(T)$ is a wf $cal(B)$ in $cal(T)$ such that $cal(B)$ is the
  last wf of some proof in $cal(T)$.
  Such a proof is called a #emph[proof] of $cal(B)$ in $cal(T)$.
]

#definition("Decidable and undecidable")[
  #index("Decidable")
  #index("Undecidable")
  A theory for which there is an effective procedure for checking whether  there
  is a proof for any given wf $cal(B)$ is said to be #emph[decidable];;
  otherwise, the theory is said to be #emph[undecidable];.
]

#definition("Consequence and hypothesis")[
  #index("Consequence")
  #index("hypothesis")
  A wf $cal(C)$ is said to be a #emph[consequence] in $cal(T)$ of a set $Gamma$
  of wfs if and only if there is a sequence $cal(B)_1 , dots.h , cal(B)_k$ of
  wfs such that $cal(C)$ is $cal(B)_k$ and, for each $i$, either $cal(B)_i$ is
  an axiom, or $cal(B)_i$ is in $Gamma$, or $cal(B)_i$ is a direct consequence
  by some rule of inference of some of the preceding wfs in the sequence.
  Such a sequence is called a #emph[proof];\(or #emph[deduction];) of $cal(C)$
  from $Gamma$.
  The members of $Gamma$ are called the #emph[hypothesis]
  or #emph[poremeisses] of the proof. We use $Gamma tack.r cal(C)$ as an
  abbreviation for "$cal(C)$ is a consequence of $Gamma$". If $Gamma$ is
  a finite set ${cal(H)_1 , dots.h , cal(H)_m}$, we write
  $cal(H)_1 , dots.h , cal(H)_n tack.r cal(C)$ instead of
  ${cal(H)_1 , dots.h , cal(H)_n} tack.r cal(C)$.
]

$diameter tack.r cal(C)$ if and only if $cal(C)$ is a theorem.
It is customary to omit the sign $diameter$ and simply write $tack.r cal(C)$.
One can verify the followings
+ If $Gamma subset Delta$ and $Gamma tack.r cal(C)$, then $Delta tack.r cal(C)$.
+ $Gamma tack.r cal(C)$ if and only if there is a finite subset $Delta$ of
  $Gamma$ such that $Delta tack.r cal(C)$.
+ If $Delta tack.r cal(C)$, and for each $cal(B)$ in $Delta , Gamma tack.r
  cal(B)$, then $Gamma tack.r cal(C)$.

#definition("L")[
  #index("L")
  We now introduce a formal axiomatic theory L for the propositional calculus.
  + The symbols of $L$ are $not , arrow.r.double.long , (,)$, and the
    letters $A_i$ with positive integers $i$ as subscripts:
    $A_1 , A_2 , A_3 , dots.h$. The symbols $not$ and
    $arrow.r.double.long$ are called #emph[primitive connectives];, and
    the letters $A_i$ are called #emph[statement letters];.
  + #block[
    #set enum(numbering: "a.", start: 1)
    + All statement letters are wfs.
    + If $B$ and $C$ are wfs, then so are $(not B)$ and
      $B arrow.r.double.long C \)$. Thus, a wf of $L$ is just a statement
      form built up from the statement letters $A_i$ by means of the
      connectives $not$ and $arrow.r.double.long$.
    ]
  + If $cal(B) , cal(C)$ and $cal(D)$ are wfs of $L$, then the following
    are axioms of $L$:
    / (A1): $(cal(B) arrow.r.double.long (cal(C) arrow.r.double.long cal(B)))$
    / (A2): $((cal(B) arrow.r.double.long (cal(C) arrow.r.double.long cal(D))) arrow.r.double.long ((cal(B) arrow.r.double.long cal(C)) arrow.r.double.long (cal(B) arrow.r.double.long cal(D))))$
    / (A3): $(((not cal(C)) arrow.r.double.long (not cal(B))) arrow.r.double.long (((not cal(C)) arrow.r.double.long cal(B)) arrow.r.double.long cal(C)))$
  + The only rule of inference of $L$ is #emph[modus ponens];: $cal(C)$
      is a direct consequence of $cal(B)$ and
      $(cal(B) arrow.r.double.long cal(C))$. We shall abbreviate
      applications of this rule by MP.
]<L>

#lemma()[
  $tack.r_L cal(B) arrow.r.double.long cal(B)$ for all wfs $cal(B)$.
]

For the remainder of the chapter, unless something is said to the contrary, we
shall omit the subscipt L in $tack.r_L$.
In addition, we shall use $Gamma, cal(B) tack.r cal(C)$ to stand for $Gamma
union lr({cal(B)}) tack.r cal(C)$.
In general, we let $Gamma, cal(B)_1, dots, cal(B)_n tack.r cal(C)$ stand for
$Gamma union lr({cal(B)_1, dots, cal(B)_n}) tack.r cal(C)$

#proposition("Deduction Theorem")[
  If $Gamma$ is a set of wfs and $cal(B)$ and $cal(C)$ are wfs, and $Gamma ,
  cal(B) tack.r cal(C)$, then $Gamma tack.r cal(B) arrow.r.double.long cal(C)$.
  In particular, if $cal(B) tack.r cal(C)$, then $tack.r cal(B)
  arrow.r.double.long cal(C)$.
]

#corollary()[
+ $cal(B) arrow.r.double.long cal(C) , cal(C) arrow.r.double.long cal(B) arrow.r.double.long cal(B)$
+ $cal(B) arrow.r.double.long (cal(C) arrow.r.double.long cal(D)) , cal(C) tack.r cal(B) arrow.r.double.long cal(D)$

]

#lemma()[
  For any wfs $cal(B)$ and $cal(C)$ the following wfs are theorems of L.
  + $not not cal(B) arrow.r.double.long cal(B)$
  + $cal(B) arrow.r.double.long not not cal(B)$
  + $not cal(B) arrow.r.double.long (cal(B) arrow.r.double.long cal(C))$
  + $(not cal(C) arrow.r.double.long not cal(B)) arrow.r.double.long (cal(B) arrow.r.double.long cal(C))$
  + $(cal(B) arrow.r.double.long cal(C)) arrow.r.double.long (not cal(C) arrow.r.double.long not cal(B))$
  + $cal(B) arrow.r.double.long (not cal(C) arrow.r.double.long not (cal(b) arrow.r.double.long cal(C)))$
  + $(cal(B) arrow.r.double.long cal(C)) arrow.r.double.long ((not cal(B) arrow.r.double.long cal(C)) arrow.r.double.long cal(C))$
]

#proposition()[
  Every theorem of $L$ is a tautology.
]

#lemma()[
  Let $cal(B)$ be a wf and let $B_1 , dots.h , B_k$ be statement letters that
  occur in $cal(B)$.
  For a given assignment of truth values to $B_1 , dots.h , B_k$, let $B
  prime_j$ be $B_j$ if $B_j$ takes the value $T$; and let $B prime_j$ be $not
  B_j$ if $B_j$ takes the value $F$.
  Let $cal(B) prime$ be $cal(B)$ if $cal(B)$ takes the value T under the
  assignment, and let $cal(B) prime$ be $not cal(B)$ if $cal(B)$ takes the value
  F.
  Then $B prime_1 , dots.h , B prime_k tack.r cal(B) prime$.
]

#example()[
  Let $cal(B)$ be $not (not A_2 arrow.r.double.long A_5)$, then
  #figure(
  align(center)[#table(
    columns: 3,
    align: (col, row) => (center,center,center,).at(col),
    inset: 6pt,
    [$A_2$], [$A_5$], [$not \( not (A_2 arrow.r.double.long A_5)$],
    [T], [T], [F],
    [F], [T], [F],
    [T], [F], [F],
    [F], [F], [T],
  )]
  )

  - corresponding to third row there is
    $A_2 , not A_5 tack.r not not (not A_2 arrow.r.double.long A_5)$
  - corresponding to fourth row there is
    $not A_2 , not A_5 tack.r not (not A_2 arrow.r.double.long A_5)$
]

#proposition("Completeness Theorem")[
  If a wf $cal(B)$ of $L$ is tautology, then it is a theorem of $L$.
]<L-theory-completeness-theorem>

#corollary()[
  If $cal(C)$ is an expression involving the signs $not , arrow.r.double.long ,
  and , or$ and $arrow.l.r.double$ that is an abbreviation for a wf $cal(B)$ of
  L, then $cal(C)$ is a tautology if and only if $cal(B)$ is a theorem of $L$.
]

#corollary()[
  The system L is consistent; that is, there is no wf $cal(B)$ such that both
  $cal(B)$ and $not cal(B)$ are theorems of $L$.
]

#definition("Absolutely consistent")[
  #index("Absolutely consistent")
  A theory in which no all wfs are theorems is said to be #emph[absolutely
  consistent];.
]

== Independence: Many-Valued Logics

#definition("Independent")[
  #index("Independent")
  A subset $Y$ of the set of axioms of a theory is said to be #emph[independent]
  if some wf in $Y$ cannot be proved by means of the rules of inference from the
  set of those axioms not in $Y$.
]

#proposition()[
  Each of the axiom schemas #link(<L>)[(A1)-(A3)] is independent.
]

== Other Axiomatizations

= First Order Logic and Model Theory

== Quantifiers

#definition("Universal quantifier and Existential quantifier")[
  #index("Universal quantifier")
  #index("Existential quantifier")
  If $P(x)$ asserts that $x$ has the property $P$, then $(forall x) P(x)$ means
  that property $P$ holds for all $x$ and $(exists x) P(X)$ means that some $x$
  has the property $P$.
  In $(forall x)P(x)$, "$(forall x)$" is called a _universal quantifier_ ; in
  $(exists x) P(x)$, "$(exists x)$" is called an _existential quantifier_.
]

#remark[
It was unnecessary for us to use the symbol $exists$ as a primitive symbol
because we can define existential quantification as follows:
$ ((exists x) cal(B)) "stands for" (not ((forall x)(not cal(B)))). $
]

We shall use commas, parenthesis, the symbols $not$ and $=>$ of the
propositional calculus, the universal quantifier $forall$, and the following
groups of symbols:
- Individual variables: $x_1, x_2, dots, x_n, dots$
- Individual constants: $a_1, a_2, dots, a_n, dots$
- Predicate letters: $A^n_k$($n$ and $k$ are any positive integers)
- Function letters: $f^n_k$($n$ and $k$ are any positive integers)
where $n$ indicates the number of arguments, and $k$ is just the indexing number.

#definition("Term")[
#index("Term")
The function letters applied to he variables and individual constants generate
the _terms_:

+ Variables and individual constants are terms.
+ If $f^n_k$ is a function letter and $t_1, t_2, dots, t_n$ are terms, then
  $f^n_k (t_1, t_2, dots, t_n)$ is a term.
+ An expression is a term only if it can be shown to be a term on the basis of
  condition 1 and 2.
]

#definition("Atomic formula")[
  #index("Atomic formula")
  If $A^n_k$ is a predicate letter and $t_1, t_2, dots, t_n$ are terms, then
  $A^n_k (t_1, t_2, dots, t_n)$ is an _atomic formula_.
]

#definition("Well-formed formulas(wfs)")[
  #index("Well-formed formulas")
  The _well-formed formulas(wfs)_ of quantification theory are defined as
  follows
  + Every atomic formula is a wf.
  + If $cal(B)$ and $cal(C)$ are wfs and $y$ is a variable, then $(not cal(B)),
    (cal(B) => cal(C))$ and $((forall y) cal(B))$ are wfs.
  + An expression is a wf only if it can be shown to be a wf on the basis of
    conditions 1 and 2.
]

#definition("scope")[
  #index("scope")
  In $((forall y) cal(B))$, "$cal(B)$" is called the _scope_ of the quantifier
  "$(forall y)$".
]

#definition("Free and Bound")[
  #index("Free occurrence")
  #index("Bound occurrence")
  #index("Free in a wf")
  #index("Bound in a wf")
  An occurrence of a variable $x$ is said to be #emph[bound] in a wf $cal(B)$
  if either it is the occurrence of $x$ in a quantifier "$(forall x)$" in
  $cal(B)$ or it lies within the scope of a quantifier "$(forall x)$" in
  $cal(B)$.
  Otherwise, the occurrence is said to be #emph[free] in $cal(B)$.

  A variable is said to be #emph[free\(bound)] in a wf $cal(B)$ if it
  has a free\(bound) occurrence in $cal(B)$.
  Thus, a variable may be both free and bound in the same wf.
]

#example()[
  All occurrences of $x_2$ in following examples are free
  + $A_1^2 (x_1 , x_2)$.
    All occurrences of $x_1$ are free.
  + $A_1^2 (x_1 , x_2) arrow.r.double.long (forall x_1) A_1^1 (x_1)$.
    The second and the third occurrences of $x_1$ are bound.
  + $(forall x_1) (A_1^2 (x_1 , x_2) arrow.r.double.long (forall x_1) A_1^1 (x_1))$.
    All occurrences of $x_1$ are bound.
  + $(exists x_1) A_1^2 (x_1 , x_2)$.
    All occurrences of $x_1$ are bound.
]

We shall often indicate that some of the variables $x_(i_1), dots, x_(i_k)$ are
free variables in a wf $cal(B)$ by writing $cal(B)$ as $cal(B)(x_(i_1), dots,
x_(i_k))$.
This does not mean that $cal(B)$ contains these variables as free variables,
nor does it mean that $cal(B)$ does not contain other free variables.
This notation is convenient because we can then agree to write as $cal(B)(t_1,
dots, t_k)$ the result of substituting in $cal(B)$ the terms $t_1, dots, t_k$
for all free occurrences (if any) of $x_(i_1), dots, x_(i_k)$, respectively.

#definition("Free for")[
  #index("Free for")
  If $cal(B)$ is a wf and $t$ is a term, then $t$ is said to be
  #emph[free for] $x_i$ in $cal(B)$ if no free occurrence of $x_i$ in
  $cal(B)$ lies within the scope of any quantifier $(forall x_j)$, where
  $x_j$ is a variable in $t$.
]<definition-free-for>

The concept of $t$ being free for $x_i$ in a wf $cal(B)(x_i)$ will have certain
technical application later on.
It means that, if $t$ is substituted for all free occurrences (if any) of $x_i$
in $cal(B) (x_i)$, no occurrence of a variable in $t$ becomes a bound
occurrence in $cal(B) (t)$.

#example()[
  + The term $x_2$ is free for $x_1$ in $A_1^1 (x_1)$, but $x_2$ is not free
    for $x_1$ in $(forall x_2) A_1^1 (x_1)$.
  + The term $f_1^2 (x_1 , x_3)$ is free for $x_1$ in $(forall x_2) A_1^2 (x_1
    , x_2) arrow.r.double.long A_1^1 (x_1)$ but is not free for $x_1$ in
    $(exists x_3) (forall x_2) A_1^2 (x_1 , x_2) arrow.r.double.long A_1^1
    (x_1)$.
]

One can verify the followings

- A term that contains no variables is free for any variable in any wf.
- A term $t$ is free for any variable in $cal(B)$ if none of the
  variables of $t$ is bound in $cal(B)$.
- $x_i$ is free for $x_i$ in any wf.
- Any term is free for $x_i$ in $cal(B)$ if $cal(B)$ contains no free
  occurrences of $x_i$.

== First-Order Languages and Their Interpretations: Satisfiability and Truth Models

#definition("Language")[
  #index("Language")
  A first-order language $cal(L)$ contains the following symbols
  - The propositional connectives $not$ and $arrow.r.double.long$, and
    the universal quantifier symbol $forall$.
  - Punctuation marks: the left parenthesis "(", the right parenthesis ")", and
    the comma ",".
  - Denumerably many individual variables $x_1 , x_2 , dots.h$.
  - A finite or denumerable, possibly empty, set of function letters.
  - A finite or denumerable, possibly empty, set of individual contants.
  - A #strong[nonempty] set of predicate letters.

  By a #emph[term] of $cal(L)$ we mean a term whose symbols are symbols of
  $cal(L)$.
  By a #emph[wf] of $cal(L)$ we mean a wf whose symbols are symbols of
  $cal(L)$.
]

In a language $cal(L)$, by definition, some or all of the function letters and
individual constants may be absent, and some but not all of the
predicate letters may be absent.

#definition("Logical constant and nonlogical constant")[
  #index("Nonlogical constant")
  The individual constants, function letters, and predicate letters of a
  language $cal(L)$ are called the #emph[nonlogical constants] of
  $cal(L)$.

  Propositional connectives, quantifiers, comma ",", the left parenthesis "$\($"
  and right parenthesis "$\)$" are called the _logical constants_ of $cal(L)$.
]

#definition("Interpretation")[
  #index("Interpretation")
  Let $cal(L)$ be a first-order language. An #emph[interpretation] $M$ of
  $cal(L)$ consists of the following ingredients.

  - A nonempty set $D$, called the domain of the interpretation.
  - For each predicate letter $A_j^n$ of $cal(L)$, an assignment of an
    $n$-place relation $(A_j^n)^M$ in $D$.
  - For each function letter $f_j^n$ of $cal(L)$, an assignment of an
    $n$-place operation $(f_j^n)^M$ in $D$.\(that is, a function from
    $D^n$ into $D$).
  - For each individual constant $a_i$ of $cal(L)$, an assignment of some
    fixed element $(a_i)^M$ of $D$.
]

#definition("Closed wf(sentence)")[
  #index("Closed wf")
  #index("Sentence")
  For a given interpretation of a language $cal(L)$, a wf of $cal(L)$
  without free variables, called a #emph[closed wf] or a #emph[sentence]
  represents a proposition that is true or false, whereas a wf with free
  variables may be satisfied \(i.e.~true) for some values in the domain
  and not satisfied \(i.e.~false) for the other.
]

Let $M$ be an interpretation of a language $cal(L)$ and let $D$ be the
domain of $M$. Let $Sigma$ be the set of all denumerable sequences of
elements of $D$. For a wf $cal(B)$ of $cal(L)$, we shall define what it
means for a sequence $s = (s_1 , s_2 , dots.h)$ in $Sigma$ to satisfy
$cal(B)$ in $M$. As a preliminary step, for a given $s$ in $Sigma$ we
shall define a function $s^(\*)$ that assigns to each term $t$ of
$cal(L)$ an element $s^(\*) (t)$ in $D$.

+ If $t$ is a variable $x_j$, let $s^(\*) (t)$ be $s_j$.
+ If $t$ is an individual constant $a_j$, then $s^(\*) (t)$ is the
  interpretation $(a_j)^M$ of this constant.
+ If $f_k^n$ is a function letter, $(f_k^n)^M$ is the corresponding
  operation in $D$, and $t_1 , dots.h , t_n$ are terms, then

$ s^(\*) (f_k^n (t_1 , dots.h , t_n)) = (f_k^n)^M (s^(\*) (t_1) , dots.h ,
s^(\*) (t_n)) $

#definition("Satisfiability")[
  #index("Satisfiability")
  #index("satisfy")
  Now we proceed to the definition of #emph[satisfaction];, which will be
  an inductive definition

  + If $cal(B)$ is an atomic wf $A_k^n (t_1 , dots.h , t_n)$ and
    $(A_k^n)^M$ is the corresponding $n$-place relation of the
    interpretation, then a sequence $s = (s_1 , s_2 , dots.h)$
    #emph[satisfies] $cal(B)$ if and only if
    $(A_k^n)^M (s^(\*) (t_1) , dots.h , s^(\*) (t_n))$, that is, if the
    $n$-tuple $⟨s^(\*) (t_1) , dots.h , s^(\*) (t_n)⟩$ is in the relation
    $(A_k^n)^M$.
  + $s$ #emph[satisfies] $not cal(B)$ if and only if $s$ does not satisfy
    $cal(B)$.
  + $s$ #emph[satisfies] $cal(B) arrow.r.double.long cal(C)$ if and only
    if $s$ does not satisfy $cal(B)$ or $s$ satisfies $cal(C)$.
  + $s$ #emph[satisfies] $(forall x_i) cal(B)$ if and only if every
    sequence that differs from $s$ in at most the $i$-th component
    satisfies $cal(B)$.
]

#definition("True, false and model")[
  Let $Sigma$ be the set of all denumerable sequences of elements of $D$.
  - A wf $cal(B)$ is #emph[true] for the interpretation $M$, written
    $tack.r.double_M cal(B)$, if and only if every sequence in $Sigma$
    satisfies $cal(B)$.
  - $cal(B)$ is said to be #emph[false] for $M$ if and only if no sequence
    in $Sigma$ satisfies $cal(B)$.
  - An interpretation $M$ is said to be a #emph[model] for a set $Gamma$
    of wfs if and only if every wf in $Gamma$ is true for $M$.
]

=== Properties of the notions of truth, falsity and satisfaction<properties-of-the-notions-of-truth-falsity-and-satisfaction>

*Most of the results are also obvious if one wishes to use only the ordinary
intuitive understantding of the notions of truth, falsity, and satisfaction.*

#block[
  #set enum(numbering: "I.")
+ #block[
  #set enum(numbering: "a.", start: 1)
  + $cal(B)$ is false for an interpretation $M$ if and only if
    $not cal(B)$ is true for $M$.
  + $cal(B)$ is true for $M$ if and only if $not cal(B)$ is false for
    $M$.
  ]

+ No wf can be both true and false for $M$.

+ If $tack.r.double_M cal(B)$ and
  $tack.r.double_M cal(B) arrow.r.double.long cal(C)$, then
  $tack.r.double_M cal(C)$.

+ $cal(B) arrow.r.double.long cal(C)$ is false for $M$ if and only if
  $tack.r.double_M cal(B)$ and $tack.r.double_M not cal(C)$.

+ Consider an interpretation $M$ with domain $D$.
  #block[
    #set enum(numbering: "a.", start: 1)
  + A sequence $s$ satisfies $cal(B) and cal(C)$ if and only if $s$
    satisfies $cal(B)$ and $s$ satisfies $cal(C)$.
  + $s$ satiesfies $cal(B) or cal(C)$ if and only if $s$ satisfies
    $cal(B)$ or $s$ satisfies $cal(C)$.
  + $s$ satisfies $cal(B) arrow.l.r.double cal(C)$ if and only if $s$
    satisfies both $cal(B)$ and $cal(C)$ or $s$ satisfies neither
    $cal(B)$ nor $cal(C)$.
  + $s = (s_1 , s_2 , dots.h , s_i , dots.h)$ satisfies
    $(exists x_i) cal(B)$ if and only if there is an element $c$ in the
    domain $D$ such that the sequence
    $(s_1 , s_2 , dots.h , c , dots.h)$ satisfies $cal(B)$.
  ]
]

#definition("Closure")[
  #index("Closure")
  By the #emph[closure] of $cal(B)$ we mean the closed wf obtained from
  $cal(B)$ by prefixing in universal quantifiers those variables, in order
  of descending subscripts, that are free in $cal(B)$. If $cal(B)$ has no
  free variables, the closure of $cal(B)$ is defined to be $cal(B)$
  itself.
]

#example()[
  if $cal(B)$ is $A_1^2 (x_2 , x_5) arrow.r.double.long not (exists x_2) A_1^3
  (x_1 , x_2 , x_3)$, its closure is
  $ (forall x_5) (forall x_3) (forall x_2) (forall x_1) cal(B). $
]

#block[
#set enum(numbering: "I.", start: 6)
+ $tack.r.double_M cal(B)$ if and only if
  $tack.r.double_M (forall x_i) cal(B)$. In other words, $cal(B)$ is
  true if and only if its closure is true.
]

#definition("Instance")[
  #index("Instance")
  An _instance_ of a statement form is a wf obtained from the statement form by
  substituting wfs for all statement letters, with all occurrences of the same
  statement letter being replaced by the same wf.
]

#example()[
  An instance of $A_1 => not A_2 or A_1$ is $A_1^1(x_2) => (not (forall x_1)
  A^1_1(x_1)) or A_1^1(x_2)$.
]

#block[
#set enum(numbering: "I.", start: 7)
+ Every instance of a tautology is true for any interpretation.
]

#definition("Relation(Property)")[
  #index("Relation")
  #index("Property")
  Let $x_(i_1) , dots.h , x_(i_k)$ be $k$ distinct variables in order of
  increasing subscripts. Let $cal(B) (x_(i_1) , dots.h , x_(i_k))$ be a wf that
  has $x_(i_1) , dots.h , x_(i_k)$ as its only free variables.
  The set of $k$-tuples $⟨b_1 , dots.h , b_k⟩$ of elements of the domain $D$
  such that any sequence with $b_1 , dots.h , b_k$ in its $i_1$-th, $dots.h$,
  $i_k$-th places, respectively, satisfies $cal(B) (x_(i_1) , dots.h , x_(i_k))$
  is called the #emph[relation \(property) of the interpretation] defined by
  $cal(B)$.

  Extending our terminology, we shall say that every $k$-tuple $⟨b_1 , dots.h ,
  b_k⟩$ in this relation #emph[satisfies] $cal(B) (x_(i_1) , dots.h , x_(i_k))$
  in the interpretation $M$; this will be written $tack.r.double_M cal(B) [b_1 ,
  dots.h , b_k]$.
]

#example()[
+ If the domain $D$ of $M$ is the set of human beings, $A_1^2 (x , y)$
  is interpreted as $x$ is a brother of $y$, and $A_2^2 (x , y)$ is
  interpreted as $x$ is a parent of $y$, then the binary relation on $D$
  corresponding to the wf

  $ cal(B) (x_1 , x_2) : (exists x_3) (A_1^2 (x_1 , x_3) and A_2^2 (x_3 , x_2)) $
  is the relation of unclehood. $tack.r.double_M cal(B) [b , c]$ when and only
  when $b$ is an uncle of $c$.
+ If the domain is the set of positive integers, $A_1^2$ is interpreted
  as $=$, $f_1^2$ is interpreted as multiplication, and $a_1$ is
  interpreted as $1$, then the wf $cal(B) (x_1)$:
  $ not A_1^2 (x_1 , a_1) and (forall x_2) ((exists x_3) A_1^2 (x_1 , f_1^2 (x_2 , x_3)) arrow.r.double.long A_1^2 (x_2 , x_1) or A_1^2 (x_2 , a_1)) $
  determines the property of being a prime number.
  Thus $tack.r.double_M cal(B) [k]$ if and only if $k$ is a prime number.
]

#block[
  #set enum(numbering: "I.", start: 8)
+ If the free variables \(if any) of a wf $cal(B)$ occur in the list
  $x_(i_1) , dots.h , x_(i_k)$ and if the sequences $s$ and $s prime$
  have the same components in the $i_1$-th, $dots.h$, $i_k$-th places,
  then $s$ satisfies $cal(B)$ if and only if $s prime$ satisfies
  $cal(B)$.

+ If $cal(B)$ is a closed wf of a language $cal(L)$, then, for any
  interpretation $M$, either $tack.r.double_M cal(B)$ or
  $tack.r.double_M not cal(B)$, that is, either $cal(B)$ is true for
  $M$, or $cal(B)$ is false for $M$. Of course, $cal(B)$ may be true for
  some interpretation and false for others.

  If $cal(B)$ is not closed, that is, if $cal(B)$ contains free
  variables, $cal(B)$ may be neither true nor false for some
  interpretation.

+ Assume $t$ is free for $x_i$ in $cal(B) (x_i)$. Then
  $(forall x_i) cal(B) (x_i) arrow.r.double.long cal(B) (t)$ is true for
  all interpretations.

  #remark()[
  If $t$ is not free for $x_i$, this property may not hold.
  For example, let $A_1^1 (x_i)$ be $(exists x_j) x_i eq.not x_j$ and $t = x_j$
  ]

+ If $cal(B)$ does not contain $x_i$ free, then
  $(forall x_i) (cal(B) arrow.r.double.long cal(C)) arrow.r.double.long (cal(B) arrow.r.double.long (forall x_i) cal(C))$
  is true for all interpretations.
]

=== Logical Validity

#definition("Logical valid and contradictory")[
  #index("Logical valid")
  #index("Contradictory")
  A wf $cal(B)$ is said to be #emph[logically valid] if and only if
  $cal(B)$ is true for every interpretation.

  We say that $cal(B)$ is #emph[contradictory] if and only if $cal(B)$ is false
  for every interpretation, or, $not cal(B)$ is logically valid.
]

#definition("Satisfiable")[
  #index("Satisfiable")
  A wf $cal(B)$ is said to be #emph[satisfiable] if and only if there is an
  interpretation for which $cal(B)$ is satisfied by at least one sequence.

  A set $Gamma$ of wfs is said to be #emph[satisfiable] if and only if there is
  an interpretation in which there is a sequence that satisfies every wf of
  $Gamma$.
]

#definition("Logically imply, logical consequence and logical equivalent")[
  #index("Logically imply")
  #index("Logically consequence")
  #index("Logically equivalent")
  - $cal(B)$ is said to #emph[logically imply] $cal(C)$ if and only if, in
    every interpretation, every sequence that satisfies $cal(B)$ also satisfies
    $cal(C)$.
  - $cal(C)$ is said to be a #emph[logical consequence] of a set $Gamma$ of wfs if
    and only if, in every interpretation, every sequence that satisfies every wf
    in $Gamma$ also satisfies $cal(C)$.
  - $cal(B)$ and $cal(C)$ are said to be #emph[logically equivalent] if and only
    if they logically imply each other.
]

One can prove the followings:
- $cal(B)$ is logically valid if and only if $not cal(B)$ is not
  satisfiable.
- $cal(B)$ is satisfiable if and only if $not cal(B)$ is not logically
  valid.
- $cal(B)$ logically implies $cal(C)$ if and only if
  $cal(B) arrow.r.double.long cal(C)$ is logically valid.
- $cal(B)$ and $cal(C)$ are logically equivalent if and only if
  $cal(B) arrow.l.r.double cal(C)$ is logically valid.
- If $cal(B)$ logically implies $cal(C)$ and $cal(B)$ is true in a given
  interpretation, then so is $cal(C)$.
- If $cal(C)$ is a logical consequence of a set $Gamma$ of wfs and all
  wfs in $Gamma$ in $Gamma$ are true in a given interpretation, then so
  is $cal(C)$.

== First-Order Theories

#definition("First-order theory")[
  #index("First-order theory")
  Let $cal(L)$ be a first-order language. A #emph[first-order theory] in
  the language $cal(L)$ will be a formal theory $K$ whose
  - #strong[symbols] are #strong[wfs] the symbols and wfs of $cal(L)$ ,
  - #strong[axioms] of $K$ are divided into two classes: the
    #link(<logical-axioms>)[logical axioms] and the #link(<proper-axioms>)[proper axioms].
  - The #strong[rules of inference] of any first-order theory are
    - #strong[Modus ponens];\(MP): $cal(C)$ follows from $cal(B)$ and
      $cal(B) arrow.r.double.long cal(C)$.
    - #strong[Generalization];\(Gen): $(forall x_i) cal(B)$ follows from
      $cal(B)$.
]

=== Logical Axioms
<logical-axioms>
If $cal(B) , cal(C)$ and $cal(D)$ are wfs of $cal(L)$, then the
following are #emph[logical axioms] of $K$:
/ (A1): $cal(B) arrow.r.double.long (cal(C) arrow.r.double.long cal(B))$
/ (A2): $(cal(B) arrow.r.double.long (cal(C) arrow.r.double.long cal(D)))
  arrow.r.double.long ((cal(B) arrow.r.double.long cal(C)) arrow.r.double.long
  (cal(B) arrow.r.double.long cal(C)))$

/ (A3): $(not cal(C) arrow.r.double.long not cal(B)) arrow.r.double.long ((not
  cal(C) arrow.r.double.long cal(B)) arrow.r.double.long cal(C))$

/ (A4): $(forall x_i) cal(B) (x_i) arrow.r.double.long cal(B) (t)$ if $cal(B)
  (x_i)$ is a wf of $cal(L)$ and $t$ is a term of $cal(L)$ that is free for
  $x_i$ in $cal(B) (x_i)$.

  Note that $t$ may be identical with $x_i$ so that all wfs $(forall x_i) cal(B)
  arrow.r.double.long cal(B)$ are axioms.

/ (A5): $(forall x_i) (cal(B) arrow.r.double.long cal(C)) arrow.r.double.long
  (cal(B) arrow.r.double.long (forall x_i) cal(C))$ if $cal(B)$ contains no free
  occurrences of $x_i$.

=== Proper Axioms
<proper-axioms>
Proper Axioms can NOT be specified, since they vary from theory to
theory.

#definition("Predicate calculus")[
  A first-order theory in which there are no proper axioms is
  called a first-order #emph[predicate calculus].
]

=== Rules of Inference

#definition("Model")[
  #index("Model")
  Let $K$ be a first-order theory in the language $cal(L)$.
  By a #emph[model] of $K$ we mean an interpretation of $cal(L)$ for which all
  the axioms of $K$ are true.
]

By (III) and (VI) in
@properties-of-the-notions-of-truth-falsity-and-satisfaction, if the rules of
modus ponens and generalization are applied to wfs that are true for a given
interpretatiton, then the results of these applications are also true.
Hence, *Every theorem of $K$ is true in every model of $K$*.

#example("Partial order")[
  Let the language $cal(L)$ have a single predicate letter $A^2_2$ and no
  function letters and individual constants.
  We shall write $x_i < x_j$ instead of $A^2_2(x_i, x_j)$.
  The theory $K$ has two proper axioms.
  / (irreflexivity): $(forall x_1)(not x_1 < x_1)$
  / (transitivity): $(forall x_1)(forall x_2)(forall x_3)(x_1 < x_2 and x_2 <
    x_3 => x_1 < x_3)$

  A model of the theory is called a _partial ordered structure_.
]

#example("Group theory")[
  Let the language $cal(L)$ have one predicate letter $A^2_1$, one function
  letter $f^2_1$, and one individual constant $a_1$.
  To conform with ordinary notation, we shall write $t=s$ instead of $A^2_1(t,
  s)$, $t + s$ instead of $f^2_1(t, s)$, and $0$ instead of $a_1$.
  The proper axioms of $K$ are:
  / (associativity): $(forall x_1)(forall x_2)(forall x_3)(x_1 + (x_2 + x_3) =
    (x_1 + x_2) + x_3)$
  / (identity): $(forall x_1)(0 + x_1 = x_1)$
  / (inverse): $(forall x_1)(exists x_2)(x_2 + x_1 = 0)$
  / (reflexivity of $=$): $(forall x_1)(x_1 = x_1)$
  / (symmetry of $=$): $(forall x_1)(forall x_2)(x_1 = x_2 => x_2 = x_1)$
  / (transitivity of $=$): $(forall x_1)(forall x_2)(forall x_3)(x_1 = x_2 and
    x_2 = x_3 => x_1 = x_3)$
  / (substitutivity of $=$): $(forall x_1)(forall x_2)(forall x_3)(x_2 = x_3 =>
    x_1 + x_2 = x_1 + x_3 and x_2 + x_1 = x_3 + x_1)$
]

== Properties of First-Order Theories

Let $K$ be an arbitrary first-order theory $K$.
Instead of writing $tack.r_K cal(B)$, we shall sometimes simply write $tack.r
cal(B)$.
Moreover, we shall refer to first-order theories simply as #emph[theories];,
unless something is said to be contrary.

#proposition()[
  Every wf $cal(B)$ of $K$ that is an instance of a tautology is a theorem of
  $K$, and it may be proved using only axioms #link(<logical-axioms>)[(A1)-(A3)] and MP.
]<first-order-theory-tautology-is-theorem>
#proof[
  @L-theory-completeness-theorem[Completeness theorem]
]

#proposition()[
  Every theorem of a first-order predicate calculus is logically valid.
]<proposition-first-order-theorem-is-logical-valid>
#proof[
  (A1)-(A3) are logical valid by property (VII) in
  @properties-of-the-notions-of-truth-falsity-and-satisfaction.

  (A4) and (A5) are logical valid by properties (X) and (XI), ibid.

  By properties (III) and (VI), ibid, MP and Gen preserve logical Validity.
]

#definition("Consistent and inconsistent")[
  #index("Consistent")
  #index("Inconsistent")
  A theory $K$ is #emph[consistent] if no wf $cal(B)$ and its negation
  $not cal(B)$ are both provable in $K$. A theory is #emph[inconsistent]
  if it is not consistent.
]

#corollary()[
  Any first-order predicate calculus is consistent.
]

#definition("Depend upon")[
  #index("Depend upon")
  Let $cal(B)$ be a wf in a set $Gamma$ of wfs and assume that we are
  given a deduction $cal(D)_1 , dots.h , cal(D)_n$ from $Gamma$, together
  with justification for each step in the deduction. We shall say that
  $cal(D)_i$ _depends upon_ $cal(B)$ in this proof if and only if:

  + $cal(D)_i$ is $cal(B)$ and the justification for $cal(D)_i$ is that it
    belongs to $Gamma$; or
  + $cal(D)_i$ is justified as a direct consequence by MP or Gen of some
    preceding wfs of the sequence, where at least one of these preceding
    wfs #emph[depends upon] $cal(B)$.
]

#example()[
  $cal(B) , (forall x_1) cal(B) arrow.r.double.long cal(C) tack.r (forall x_1) cal(C)$

  $(cal(D)_1)$ $cal(B)$ by Hyp.

  $(cal(D)_2)$ $(forall x_1) cal(B)$ by $(cal(D)_1)$ and Gen.

  $(cal(D)_3)$ $(forall x_1) cal(B) arrow.r.double.long cal(C)$ by Hyp.

  $(cal(D)_4)$ $cal(C)$ by $(cal(D)_3) , (cal(D)_3)$, and MP.

  $(cal(D)_5)$ $(forall x_1) cal(C) \)$ by $(cal(D)_4)$ and Gen.

  Here, $(cal(D)_1)$ depends upon $cal(B)$; $(cal(D)_2)$ depends upon
  $cal(B)$; $(cal(D)_3)$ depends upon
  $(forall x_1) cal(B) arrow.r.double.long cal(C)$; $(cal(D)_4)$ depends
  upon $cal(B)$ and $(forall x_1) cal(B) arrow.r.double.long cal(C)$; and
  $(cal(D)_5)$ depends upon $cal(B)$ and
  $(forall x_1) cal(B) arrow.r.double.long cal(C)$.
]

#proposition()[
  If $cal(C)$ does not depend upon $cal(B)$ in a deduction showing that $Gamma,
  cal(B) tack.r cal(C)$, then $Gamma tack.r cal(C)$.
]<not-depend-upon-reduce-hypothesis>
#proof[
  Let $cal(D)_1, dots, cal(D)_n = cal(B)$ be a deduction of $cal(C)$ from
  $Gamma$ and $cal(B)$, in which $cal(C)$ does not depend upon $cal(B)$.
  Assume the proposition is true for all deductions of length less than $n$.

  If $cal(C)$ belongs to $Gamma$ or is an axiom, then $Gamma tack.r cal(C)$.
  If $cal(C)$ is a direct consequence of one or two preceding wfs by Gen or MP,
  then, by the inductive hypothesis, these preceding wfs are decucible from
  $Gamma$ from $Gamma$ alone.
  Consequently, so is $cal(C)$.
]

#proposition("Deduction Theorem")[
  Assume that, in some deduction showing that $Gamma , cal(B) tack.r cal(C)$,
  Gen only applies to a wf, where either
  - the wf does not depend upon $cal(B)$; or
  - the quantified variable is not a free variable of $cal(B)$,
  then $Gamma tack.r cal(B) arrow.r.double.long cal(C)$.
]<first-order-deduction-theorem>
#proof[
  Let $cal(D)_1, dots, cal(D)_n = cal(C)$ be a deduction of $cal(C)$ from $Gamma$ and
  $cal(B)$, satisfying the assumption of the proposition.
  Let us show by induction that $Gamma tack.r cal(B) => cal(D)_i$ for each $i
  <= n$.

  + If $cal(D)_i$ is an axiom or belongs to $Gamma$, then $Gamma tack.r cal(B)
    => cal(D)_i$ by MP, since $cal(D)_i => (cal(B) => cal(D)_i)$ is a theorem by
    (A1).
  + If $cal(D)_i$ is $cal(B)$, then $Gamma tack.r cal(B) => cal(D)_i$ by
    @first-order-theory-tautology-is-theorem, since $B => B$ is a tautology .
  + If there exist $j$ and $k$ less than $i$ such that $cal(D)_k$ is $cal(D)_j
    => cal(D)_i$, then, by inductive hypothesis, $Gamma tack.r cal(B) =>
    cal(D)_j$ and $Gamma tack.r cal(B) => (cal(D)_j => cal(D)_i)$.
    Hence $Gamma tack.r cal(B) => cal(D)_i$ by MP twice, since
    $ tack.r (cal(B) => (cal(D)_j => cal(D)_j)) => ((cal(B) => cal(D)_j) =>
    (cal(B) => cal(D)_i) $
    is a theorem by (A2).
  + Finally, suppose that there is some $j < i$ such that $cal(D)_i$ is $(forall
    x_k) cal(D)_j$.
    By the inductive hypothesis, $Gamma tack.r cal(B) => cal(D)_j$.
    By the hypothesis of the theorem
    - If $cal(D)_j$ does not depend upon $cal(B)$, then by
      @not-depend-upon-reduce-hypothesis $Gamma tack.r cal(D)_j$.
      Hence, following a similar deduction like the case 1, $Gamma tack.r cal(B) =>
      cal(D)_i$.
    - If $x_k$ is not a free variable of $cal(B)$, then $tack.r (forall x_k)
      (cal(B) => cal(D)_j) => (cal(B) => (forall x_k) cal(D)_j)$ by (A5).
      Since $Gamma tack.r cal(B) => cal(D)_j$, $Gamma tack.r (forall x_k)(cal(B)
      => cal(D)_j)$ by Gen.
      Hence $Gamma tack.r cal(B) => (forall x_k) cal(D)_j$ by MP, that is,
      $Gamma tack.r cal(B) => cal(D)_i$.
]

#example()[
  Here is an example that does not satisfy the condition in
  @first-order-deduction-theorem[Deduction theorem].

  Let $D$ be the set of natural numbers $NN$, $Q(x)$ denotes "$x$ is a prime
  greater than $2$" and $P(x)$ denotes "$x$ is odd".
  Then $P(x) tack.r (forall x) Q(x)$ is true but $tack.r P(x) => (forall x) Q(x)$
  is not true.
]

#corollary()[
  If a deduction showing that $Gamma , cal(B) tack.r cal(C)$ involves no
  application of Gen of which the quantified variables is free in $cal(B)$, then
  $Gamma tack.r cal(B) arrow.r.double.long cal(C)$.
]

#corollary()[
  If $cal(B)$ is a closed wf and $Gamma , cal(B) tack.r cal(C)$, then
  $Gamma tack.r cal(B) arrow.r.double.long cal(C)$.
]

== Additional Metatheorems and Derived Rules

It is assumed that we are dealing with an arbitrary theory $K$.

=== Particularization Rule A4<particularization-rule-A4>

If $t$ is free for $x$ in $cal(B) (x)$, then
$(forall x) cal(B) (x) tack.r cal(B) (t)$.
In particular, $(forall x) cal(B) tack.r cal(B)$.

=== Existential Rule E4

Let $t$ be a term that is free for $x$ in a wf $cal(B) (x , t)$, and let
$cal(B) (t , t)$ arise from $cal(B) (x , t)$ by replacing all free
occurrences of $x$ by $t$. \($cal(B) (x , t)$ may or may not contain
occurrences of $t$.)
Then $cal(B) (t , t) tack.r (exists x) cal(B) (x , t)$.
#proof[
  It suffices to show that $tack.r cal(B)(t, t) => (exists x)cal(B)(x, t)$. By
  (A4), $tack.r (forall x) not cal(B)(x, t) => not cal(B)(t, t)$.
  Hence, by the tautology $(A => not B) => (B => not A)$ and MP, $tack.r
  cal(B)(t, t) => not (forall x) not cal(B)(x, t)$, which, in abbreviation form,
  is $tack.r cal(B)(t, t) => (exists x)cal(B)(x, t)$.
]

A special case is $cal(B)(t) tack.r (exists x) cal(B) (x)$, whenever $t$ is free
for $x$ in $cal(x)$.
In particular, when $t$ is $x$ itself, $cal(x) tack.r (exists x) cal(B) (x)$.


#example()[
  $tack.r (forall x) cal(B) arrow.r.double.long (exists x) cal(B)$

  + $(forall x) cal(B)$ by Hyp
  + $cal(B)$ by 1, rule A4
  + $(exists x) cal(B)$ by 2, rule E4
  + $(forall x) cal(B) tack.r (exists x) cal(B)$ by 1-3
  + $tack.r (forall x) cal(B) arrow.r.double.long (exists x) cal(B)$ by 1-4
]

#heading(numbering: none, level: 4)[Useful derived rules]

/ Negation elimination:
  $ not not cal(B) tack.r cal(B). $
/ Negation introduction:
  $ cal(B) tack.r not not cal(B). $
/ Conjunction elimination:
  $ cal(B) and cal(C) tack.r cal(B) quad cal(B) and cal(C) tack.r cal(C) "and"
  not (cal(B) and cal(C)) tack.r not cal(B) and not cal(C). $
/ Conjunction introduction:
  $ cal(B) , cal(C) tack.r cal(B) and cal(C). $
/ Disjunction elimination:
  $ cal(B) or cal(C) , not cal(B) tack.r cal(C) quad cal(B) or cal(C), not
  cal(C) tack.r cal(B)
  \ not (cal(B) or cal(C)) tack.r not cal(B) and not
  cal(C) "and" cal(B) arrow.r.double.long cal(D) , cal(C) arrow.r.double.long
  cal(D) , cal(B) or cal(C) tack.r cal(D). $
/ Disjunction introduction:
  $ cal(B) tack.r cal(B) or cal(C) "and" cal(C) tack.r cal(B) or cal(C). $
/ Conditional elimination:
  $ &cal(B) arrow.r.double.long cal(C) , not cal(C) tack.r not cal(B) quad
  cal(B) arrow.r.double.long not cal(C) , cal(C) tack.r not cal(B) quad
  not cal(B) arrow.r.double.long cal(C) , not cal(C) tack.r cal(B) \
  & not cal(B) arrow.r.double.long not cal(C) , cal(C) tack.r cal(B) quad not
  (cal(B) arrow.r.double.long cal(C)) tack.r cal(B) "and" not (cal(B)
  arrow.r.double.long cal(C)) tack.r not cal(C). $
/ Conditional introduction:
  $ cal(B) , not cal(C) tack.r not (cal(B) arrow.r.double.long cal(C)) $
/ Conditional contrapositive:
  $ cal(B) arrow.r.double.long cal(C) tack.r not cal(C) arrow.r.double.long not
  cal(B) "and" not cal(C) arrow.r.double.long not cal(B) tack.r cal(B)
  arrow.r.double.long cal(C) $
/ Biconditional elimination:
  $ &cal(B) arrow.l.r.double cal(C) , cal(B) tack.r cal(C) quad
  cal(B) arrow.l.r.double cal(C) , not cal(B) tack.r not cal(C) quad
  cal(B) arrow.l.r.double cal(C) , cal(C) tack.r cal(B) \
  &cal(B) arrow.l.r.double cal(C) , not cal(C) tack.r not cal(B) quad
  cal(B) arrow.l.r.double cal(C) tack.r cal(B) arrow.r.double.long cal(C)
  "and"
  cal(B) arrow.l.r.double cal(C) tack.r cal(C) arrow.r.double.long cal(B). $
/ Biconditional introduction:
  $ cal(B) arrow.r.double.long cal(C) , cal(C) arrow.r.double.long cal(B) tack.r cal(B) arrow.l.r.double cal(C) $
/ Biconditional negation:
  $ cal(B) arrow.l.r.double cal(C) tack.r not cal(B) arrow.l.r.double not cal(C)
  "and" not cal(B) arrow.l.r.double not cal(C) tack.r cal(B) arrow.l.r.double
  cal(C). $

#lemma()[
  For any wfs $cal(B)$ and $cal(C)$, $tack.r (forall x) (cal(B) arrow.l.r.double
  cal(C)) arrow.r.double.long ((forall x) cal(B) arrow.l.r.double (forall x)
  cal(C))$.
]

#proposition()[
  If $cal(C)$ is a subformula of $cal(B) , cal(B) prime$ is the result of
  replacing zero or more occurrences of $cal(C)$ in $cal(B)$ by a wf $cal(D)$,
  and every free variable of $cal(C)$ of $cal(D)$ that is also a bound variable
  of $cal(B)$ occurs in the list $y_1 , dots.h , y_k$, then:
  + $tack.r [(forall y_1) dots.h.c (forall y_k) (cal(C) arrow.l.r.double cal(D))] arrow.r.double.long (cal(B) arrow.l.r.double cal(B) prime)$
    \(Equivalence theorem)
  + If $tack.r cal(C) arrow.l.r.double cal(D)$, then
    $tack.r cal(B) arrow.l.r.double cal(B) prime$\(Replacement theorem)
  + If $tack.r cal(C) arrow.l.r.double cal(D)$ and $tack.r cal(B)$, then
    $tack.r cal(B) prime$.
]<proposition-equivalence-and-replacement-theorem>

#example()[
  $tack.r (forall x) (A_1^1 (x) arrow.l.r.double A_2^1 (x)) arrow.r.double.long [(exists x) A_1^1 (x) arrow.l.r.double (exists x) A_2^1 (x)]$
]

== Rule C

It is very common in mathematics to reason in the following way:
assume that we have proved a wf of the form $(exists x) cal(B) (x)$,
then we say, let $b$ be an object such that $cal(B) (b)$.
We continue the proof, finally arriving at a formula that does not involve the
arbitrary chosen element $b$.

#example()[
  We wish to show that
  $(exists x) (cal(B) (x) arrow.r.double.long cal(C) (x)) , (forall x) cal(B) (x) tack.r (exists x) cal(C) (x)$.
  + \(Hyp) $(exists x) (cal(B) (x) arrow.r.double.long cal(C) (x))$
  + \(Hyp) $(forall x) cal(B) (x)$
  + (1) $cal(B) (b) arrow.r.double.long cal(C) (b)$ for some $b$
  + \(2, rule A4) $cal(B) (b)$
  + \(3, 4, MP) $cal(C) (b)$
  + \(5, rule E4) $(exists x) cal(C) (x)$

  In fact, we can achieve the same result without making an arbitrary
  choice of an element $b$ as in step 3. This can be done as
  follows:

  + \(Hyp) $(forall x) cal(B) (x)$
  + \(Hyp) $(forall x) not cal(C) (x)$
  + \(1, rule A4) $cal(B) (x)$
  + \(2, rule A4) $not cal(C) (x)$
  + \(3, 4, conditional introduction)
    $not (cal(B) (x) arrow.r.double.long cal(C) (x))$
  + \(5, Gen) $(forall x) not (cal(B) (x) arrow.r.double.long cal(C) (x))$
  + \(1-6)
    $(forall x) cal(B) (x) , (forall x) not cal(C) (x) tack.r (forall x) not (cal(B) (x) arrow.r.double.long cal(C) (x))$
  + \(1-7, deduction theorem)
    $(forall x) cal(B) (x) tack.r (forall x) not cal(C) (x) arrow.r.double.long (forall x) not (cal(B) (x) arrow.r.double.long cal(C) (x))$
  + \(8, contrapositive)
    $(forall x) cal(B) (x) tack.r not (forall x) not (cal(B) (x) arrow.r.double.long cal(C) (x)) arrow.r.double.long not (forall x) not cal(C) (x)$
  + \(Abbreviation of 9)
    $(forall x) cal(B) (x) tack.r (exists x) (cal(B) (x) arrow.r.double.long cal(C) (x)) arrow.r.double.long (exists x) cal(C) (x)$
  + \(10, MP)
    $(exists x) (cal(B) (x) arrow.r.double.long cal(C) (x)) , (forall x) cal(B) (x) tack.r (exists x) cal(C) (x)$
]

In general, any wf that can be proved using a finite number of arbitrary
choices can also be proved without such acts of choice. We shall call
the rule that permits us to go from $(exists x) cal(B) (x)$ to
$cal(B) (b)$, _rule C_ \("C" for "choice").

#definition("Rule C deduction")[
  #index("Rule C deduction")
  More precisely, #emph[a rule C deduction] in a first order theory $K$ is
  defined in the following manners: $Gamma tack.r_C cal(B)$ if and only if
  there is a sequence of wfs $cal(D)_1 , dots.h , cal(D)_n$ such that
  $cal(D)_n$ is $cal(B)$ and the following four conditions hold:

  + For each $i < n$, either
    + $cal(D)_i$ is an axiom of $K$, or
    + $cal(D)_i$ is in $Gamma$, or
    + $cal(D)_i$ follows by MP or Gen from preceding wfs in the sequence,
      or
    + there is a preceding wf $(exists x) cal(C) (x)$ such that $cal(D)_i$
      is $cal(C) (d)$, where $d$ is a new individual constant \(rule C).
  + As axioms in condition 1.1, we also can use all logical axioms that
    involve the new individual constant already introduced in the sequence
    by application of rule C.
  + No application of Gen is made using a variable that is free in some
    $(exists x) cal(C) (x)$ to which rule C has been previously applied.
  + $cal(B)$ contains none of the new individual constant introduced in
    the sequence in any application of rule C.
]<rule-C-deduction>

#example()[
  Without clause 3 in @rule-C-deduction, we could proceed as follows:

  + \(Hyp) $(forall x) (exists y) A_1^2 (x , y)$
  + \(1, rule A4) $(exists y) A_1^2 (x , y)$
  + \(2, rule C) $A_1^2 (x , d)$
  + \(3, Gen) $(forall x) A_1^2 (x , d)$
  + \(4, rule E4) $(exists y) (forall x) A_1^2 (x , y)$

  However, there is an interpretation for which
  $(forall x) (exists y) A_1^2 (x , y)$ is true but
  $(exists y) (forall x) A_1^2 (x , y)$ is false. Take the domain to be
  the set of integers and let $A_1^2 (x , y)$ mean that $x < y$.
]

#proposition()[
  If $Gamma tack.r_C cal(B)$, then $Gamma tack.r cal(B)$.

  If there is an application of Gen in the new proof of $cal(B)$ from $Gamma$
  using a certain variable and applied to a wf depending upon a certain wf of
  $Gamma$, then there was such an application of Gen in the original proof.
]

#example()[
  $tack.r (forall x) (cal(B) (x) arrow.r.double.long cal(C) (x)) arrow.r.double.long ((exists x) cal(B) (x) arrow.r.double.long (exists x) cal(C) (x))$

  + \(Hyp) $(forall x) ((cal(B) x) arrow.r.double.long cal(C) (x))$
  + \(Hyp) $(exists x) cal(B) (x)$
  + \(2, rule C) $cal(B) (d)$
  + \(1, rule A4) $cal(B) (d) arrow.r.double.long cal(C) (d)$
  + \(3, 4, MP) $cal(C) (d)$
  + \(5, rule E4) $(exists x) cal(C) (x)$
  + \(1-6)
    $(forall x) (cal(B) (x) arrow.r.double.long cal(C) (x)) , (exists x) cal(B) (x) tack.r_C (exists x) cal(C) (x)$
  + #block[
    #set enum(numbering: "(1)", start: 7)
    + $(forall x) (cal(B) (x) arrow.r.double.long cal(C) (x)) , (exists x) cal(B) (x) tack.r (exists x) cal(C) (x)$
    ]
  + \(1-8, deduction theorem)
    $(forall x) (cal(B) (x) arrow.r.double.long cal(C) (x)) tack.r (exists x) cal(B) (x) arrow.r.double.long (exists x) cal(C) (x)$
  + \(1-9, deduction theorem)
    $tack.r (forall x) (cal(B) (x) arrow.r.double.long cal(C) (x)) arrow.r.double.long ((exists x) cal(B) (x) arrow.r.double.long (exists x) cal(C) (x))$
]

== Completeness Theorems

#definition("Similar")[
  #index("Similar")
  If $x_i$ and $x_j$ are distinct, then $cal(B) (x_i)$ and $cal(B) (x_j)$ are
  said to be #emph[similar] if and only if $x_j$ is free for $x_i$ in $cal(B)
  (x_i)$ and $cal(B) (x_i)$ has no free occurrences of $x_j$.
]

If $cal(B) (x_i)$ and $cal(B) (x_j)$ are similar, then
- $x_i$ is free for $x_j$ in $cal(B) (x_j)$, by the condition that $cal(B)
  (x_i)$ has no free occurrences of $x_j$; and
- $cal(B) (x_j)$ has no free occurrences of $x_i$, since $cal(B) (x_j)$
  substitutes the free occurrences of $x_i$ by $x_j$ in $cal(B) (x_i)$.
Thus, if $cal(B) (x_i)$ and $cal(B) (x_j)$ are similar, then $cal(B)
(x_j)$ and $cal(B) (x_i)$ are similar.
#remark[
  The condition "$x_j$ free for $x_i$" is used for substitution in some sense.
]
#example()[
  $(forall x_3) (A^2_1(x_1, x_3) or A^1_1(x_1))$ and $(forall x_3) (A^2_1(x_2, x_3) or A_1^1(x_2)$ are similar.
]

#lemma()[
  If $cal(B)(x_i)$ and $cal(B)(x_j)$ are similar, then $tack.r (forall x_i) cal(B)(x_i) <=> (forall x_j) cal(B)(x_j)$
]<lemma-similar-biconditional>
#proof[
  By axiom (A4), $tack.r (forall x_i) cal(B)(x_i) => cal(B)(x_j)$.
  By Gen, $tack.r (forall x_j) ((forall x_i) cal(B) (x_i) => cal(B) (x_j))$.
  By axiom (A5), rule of inference (MP) and the definition of "similar", $tack.r
  (forall x_i) cal(B) (x_i) => (forall x_j) cal(B) (x_j)$.
  Similarly, $tack.r (forall x_j) cal(B) (x_j) => (forall x_i) cal(B) (x_i)$.
  Hence, by biconditional introduction, $tack.r (forall x_i) cal(B) (x_i) <=>
  (forall x_j) cal(B) (x_j)$.
]

#lemma()[
  If a closed wf $not cal(B)$ of a theory $K$ is not provable in $K$, and if $K'$ is the theory obtained from $K$ by adding $cal(B)$ as a new axiom, then $K'$ is consistent.
]<lemma-adding-axiom-keep-consistent>
#proof[
  Assume $K prime$ is inconsistent.
  By hypothesis, for some wf $cal(C)$, $tack.r_(K') cal(C)$ and $tack.r_(K') not
  cal(C)$ hold.
  Since $C => (not C => not B)$ is a tautology, by
  @first-order-theory-tautology-is-theorem, $tack.r_(K') cal(C) => (not cal(C)
  => not cal(B))$.
  Applying MP twice, $tack.r_(K') not cal(B)$.
  Hence $cal(B) tack.r_(K) not cal(B)$.
  By @first-order-deduction-theorem, $tack.r_(K) cal(B) => not cal(B)$.
  Since $(B => not B) => not B$ is a tautology, by
  @first-order-theory-tautology-is-theorem again, $tack.r_(K) (cal(B) => not
  cal(B)) => not cal(B)$.
  Therefore, by rule of inference (MP), $tack.r not cal(B)$, contradicting the
  propositional hypothesis.
]

#corollary()[
  If a closed wf $cal(B)$ of a theory $K$ is not provable in $K$, and if $K
  prime$ is the theory obtained from $K$ by adding $not cal(B)$ as a new axiom,
  then $K prime$ is consistent.
]

#lemma()[
  The set of expressions of a language $cal(L)$ is denumerable.
  Hence, the same is true of the set of terms, the set of wfs and the set of
  closed wfs.
]<language-expressions-denumerable>
#proof[
  First assign a distinct prositive integer $g(u)$ to each symbol $u$ as
  follows:
  $ &g(\() = 3, g(\)) = 5, g(,) = 7, g(not) = 9, g(=>) = 11, g(forall) = 13,
  g(x_k) = 13 + 8k,\
    &g(a_k) = 7 + 8k, g(f^n_k) = 1 + 8(2^n 3^k) "and" g(A^n_k)
    = 3+ 8(2^n 3^k).
  $
  Then, to an expression $u_0 u_1 dots u_r$ associate the number $2^(g(u_0))
  3^(g(u_1)) dots.c p_r^(g(u_r))$, where $p_j$ is the $j$th prime number,
  starting with $p_0 = 2$.
  (Example: the number of $A^1_1(x_2)$ is $2^(51) 3^3 5^(29) 7^5$.)
  we can enumerate all expressions in the order of their associated numbers.
]

#definition("Completeness and Extension")[
  #index("Completeness")
  #index("Extension")
  + A theory $K$ is said to be #emph[complete] if, for every closed wf
    $cal(B)$ of $K$, either $tack.r_K cal(B)$ or $tack.r_K not cal(B)$
  + A theory $K prime$ is said to be an #emph[extension] of a theory $K$ if
    every theorem of $K$ is a theorem of $K prime$.
    We also say in such a case that $K$ is a #emph[subtheory] of $K prime$.
]

#proposition("Lindenbaum's Lemma")[
  If $K$ is a consistent theory, then there is a consistent, complete extension
  of $K$.
]<proposition-Lindenbaum-lemma>
#proof[
  We first construct a theory $J$.
  By @language-expressions-denumerable, let $cal(B)_1, cal(B)_2, dots$ be an
  enumeration of all closed wfs of the language of $K$.
  Define a sequence $J_0, J_1, dots$ of theories in the following say.
  $J_0$ is $K$.
  Assume $J_n$ is defined, with $n >= 0$.
  If it is not the case that $tack.r_(J_n) not cal(B)_(n + 1)$, then let $J_(n +
1)$ be obtained from $J_n$ by adding $cal(B)_(n + 1)$ as an addtional axiom.
  On the other hand, if $tack.r_(J_n) not cal(B)_(n + 1)$, let $J_(n + 1) =
  J_n$.
  Let $J$ be the theory obtained by taking as axioms all the axioms of all the
  $J_i$s.

  Clearly, $J_(i + 1)$ is an extension of $J_i$, and $J$ is an extension of all
  the axioms of all the $J_i$s including $J_0 = K$.

  To prove the completeness of $J$, let $cal(C)$ be any closed wf of $K$, then
  $cal(C) = cal(B)_(j + 1)$ for some $j >= 0$.
  It implies that either $tack.r_(J_j) not cal(B)_(j + 1)$ or $tack.r_(J_(j + 1))
  cal(B)_(j + 1)$.
  Hence $J$ is complete.

  To show that $J$ is consistent, it suffices to prove that every $J_i$ is
  consistent, which is ensured by @lemma-adding-axiom-keep-consistent.
]

#definition("Closed term and Scapegoat theory")[
  #index("Closed term")
  #index("Scapegoat theory")
  + A #emph[closed term] is a term without variables.
  + A theory $K$ is a #emph[scapegoat theory] if, for any wf $cal(B) (x)$ that
    has $x$ as its only free variable, there is a closed term $t$ such that $
    tack.r_K (exists x) not cal(B) (x) arrow.r.double.long not cal(B) (t) $
]

#lemma()[
  Every consistent theory $K$ has a consistent extension $K prime$ such that $K
  prime$ is a scapegoat theory and $K prime$ contains denumerably many closed
  terms.
]<lemma-consistent-theory-extend-to-consistent-scapegoat-theory>
#proof[
  Add to symbols of $K$ a denumerable set ${b_1, b_2, dots}$ of new individual
  constants.
  Call this new theory $K_0$.
  Its axioms are those of $K$ plus those logical axioms that involve the symbols
  of $K$ and the new constants.

  $K_0$ is consistent, or else, by conjunction introduction, there is a proof in
  $K_0$ of a wf $cal(B) and not cal(B)$.
  Replace each $b_i$ appearing in this proof by a variable that does not appear
  in the proof.
  The replacement transforms axioms to axioms without involving $b_i$, and hence
  $tack.r_K cal(B) and not cal(B)$, contradicting with the proposition
  assumption by conjunction elimination.

  By @language-expressions-denumerable, let $F_1 (x_(i_1)), F_2 (x_(i_2)), dots,
  F_k (x_(i_k)), dots$ be an enumeration of all wfs of $K_0$ that have one free
  variable.
  Choose a sequence $b_(j_1), b_(j_2), dots$ of some of the new individual
  constants such that each $b_(j_k)$ is not contained in any of the wfs $F_1
  (x_(i_1)), dots, F_k (x_(i_k))$ and such that $b_(j_k)$ is different from each
  of $b_(j_1), dots, b_(j_(k - 1))$.
  Consider the closed wf $(S_k)$
  $ (exists x_(i_k)) not F_k (x_(i_k)) => not F_k (b_(j_k)). $
  Let $K_n$ be the theory obtained by adding $(S_1), dots, (S_n)$ to the axioms
  of $K_0$, and let $K_(infinity)$ be the theory obtained by adding all the
  $(S_i)$s as axioms to $K_0$.

  It suffice to show that $K_(infinity)$ is consistent.
  Any proof in $K_(infinity)$ contains only a finite number of the $(S_i)$s and
  , therefore, will also be a proof in some $K_n$.
  Hence, if all the $K_n$s are consistent, so is $K_(infinity)$.
  It suffice to show that all the $K_n$s are consistent.
  Assume that, on the contrary, $K_(n - 1)$ is consistent but that $K_n$ is
  inconsistent, for some $n$. Since $not A => (A => B)$ is a tautology, by
  @first-order-theory-tautology-is-theorem and (MP), any wf is provable in
  $K_n$.
  In particular, $tack.r_(K_n) not (S_n)$.
  Hence $(S_n) tack.r_(K_(n - 1)) not (S_n)$.
  By @first-order-deduction-theorem[deduction theorem], $tack.r_(K_(n - 1))
  (S_n) => not (S_n)$.
  Since $(A => not A) => not A$, by @first-order-theory-tautology-is-theorem and
  (MP), $tack.r_(K_(n - 1)) not (S_n)$, that is, $tack.r_(K_(n - 1)) not ((exists
  x_(i_n)) not F_n (x_(i_n)) => not F_n (b_(j_n)) )$.
  By conditional elimination, $tack.r_(K_(n - 1)) (exists x_(i_n)) not
  F_n(x_(i_n))$ and $tack.r_(K_(n - 1)) not not F_n (b_(j_n))$ hold.
  Then, by negation elimination, $tack.r_(K_(n - 1)) F_n (b_(j_n))$.
  Since $b_(j_n)$ does not occur in $(S_0), dots, (S_(n - 1))$, $tack.r_(K_(n -
  1)) F_n (x_r)$ holds for some variable $x_r$ that does not occur in the proof
  of $F_n (b_(j_n))$.
  Combined with (Gen), $tack.r_(K_(n - 1)) (forall x_r) F_n (x_r)$, $F_n (x_r)$
  and $F_n (x_(i_n))$ are similar, @lemma-similar-biconditional and
  biconditional elimination, $tack.r_(K_(n - 1)) (forall x_(i_n)) F_n
  (x_(i_n))$.
  But $tack.r_(K_(n - 1)) (exists x_(i_n)) not F_n(x_(i_n))$, that is,
  $tack.r_(K_(n - 1)) not (forall x_(i_n)) not not F_n (x_(i_n))$, by
  @proposition-equivalence-and-replacement-theorem[replacement theorem],
  $tack.r_(K_(n - 1)) not (forall x_(i_n)) F_n (x_(i_n))$, contradicting the
  hypothesis that $K_(n - 1)$ is consistent.
  Hence, $K_n$ is consist, and the proof is completed by induction.
]

#lemma()[
  Let $J$ be a consistent, complete scapegoat theory, then $J$ has a
  model $M$ whose domain is the set $D$ of closed terms of $J$.
]<lemma-model-of-consistent-complete-scapegoat-theory>
#proof[
  For any individual constant $a_i$ of $J$, let $(a_i)^M = a_i$.
  For any function letter $f^n_k$ of $J$ and for any closed terms $t_1, dots,
  t_n$ of $J$, let $(f^n_k)^M (t_1, dots, t_n) = f^n_k (t_1, dots, t_n)$ be a
  closed term again, hence, $(f_k^n)^M$ is an $n$-ary operation on $D$.
  For any predicate letter $A^n_k$ of $J$, let $(A^n_k)^M$ consist of all
  $n$-tuples $angle.l t_1, dots, t_n angle.r$ of closed terms $t_1, dots, t_n$
  of $J$ such that $tack.r_J A^n_k (t_1, dots, t_n)$.
  It now suffices to show that, for any closed wf $cal(C)$ of $J$:
  $ (square) tack.double.r_M cal(C) "if and only if" tack.r_J cal(C). $
  The proof of $(square)$ is by induction on the number $r$ of connectives and
  quantifiers in $cal(C)$.
]

#definition("Denumerable model")[
  #index("Denumerable model")
  By a _denumerable model_ we mean a model in which the domian is denumerable.
]

#proposition()[
  Every consistent theory $K$ has a denumerable model.
]<proposition-consistent-theory-has-a-denumerable-model>
#proof[
  By @lemma-consistent-theory-extend-to-consistent-scapegoat-theory, $K$ has a
  consistent extension $K'$ such that $K'$ is a scapegoat theory and has
  denumerably many closed terms.
  By @proposition-Lindenbaum-lemma[Lindenbaum lemma], $K'$ has a consistent,
  complete extension $J$ that has the same symbols as $K'$.
  Hence, $J$ is also a scapegoat theory.
  By @lemma-model-of-consistent-complete-scapegoat-theory, $J$ has a model $M$
  whose domain is the denumerably set of closed terms of $J$.
  Since $J$ is an extension of $K$, $M$ is a denumerable model of $K$.
]

#corollary()[
  Let $K$ be any theory.
  If a wf $cal(B)$ is true in every denumerable model of $K$, then $tack.r_K
  cal(B)$.
  In particular, any logically valid wf $cal(B)$ of a theory $K$ is a theorem of
  $K$.
]<corollary-logically-valid-wf-is-theorem>
#proof[
  By the property (VI) in
  @properties-of-the-notions-of-truth-falsity-and-satisfaction, a wf $cal(D)$ is
  logically valid if and only if its closure is logically valid, and hence it
  suffices to consider only closed wfs $cal(B)$.
  And By (Gen) and @particularization-rule-A4[particularization rule A4],
  $cal(D)$ is provable if and only if its closure is provable.
  So, let $cal(B)$ be a logically valid closed wf of $K$.

  Assume that not $tack.r_K cal(B)$.
  By @lemma-adding-axiom-keep-consistent, if we add $not cal(B)$ as a new axiom
  ot $K$, the new theory $K'$ is consistent.
  Hence, by @proposition-consistent-theory-has-a-denumerable-model, $K'$ has a
  denumerable model $M$.
  By hypothesis, $cal(B)$ is true for $M$.
  But $not cal(B)$ is a axiom of $K'$, hence $not cal(B)$ is true for $M$, which
  contradicting the property (II) in
  @properties-of-the-notions-of-truth-falsity-and-satisfaction.
  Thus $cal(B)$ must be a theorem of $K$.
]

#corollary("Godel’s Completeness Theorem")[
  In any predicate calculus, the theorems are precisely the logically valid
  wfs.
]
#proof[
  @proposition-first-order-theorem-is-logical-valid and
  @corollary-logically-valid-wf-is-theorem.
]

#corollary()[
  Let $K$ be any theory
  #block[
    #set enum(numbering: "(1)")
  + If, in every model of $K$, every sequence that satisfies all wfs in a set
    $Gamma$ of wfs also satisfies a wf $cal(B)$, then $Gamma tack.r_K cal(B)$.
  + If a wf $cal(B)$ of $K$ is a logical consequence of a set $Gamma$ of wfs of
    $K$, then $Gamma tack.r_K cal(B)$.
  + If a wf $cal(B)$ of a $K$ is a logical consequence of a wf $cal(C)$ of $K$,
    then $cal(C) tack.r_K cal(B)$.
  ]
]
#proof[
  (1) follows from @corollary-logically-valid-wf-is-theorem.
  (2) follows from (1), and (3) is a special case of (2).
]

#corollary("Skolem-Lowenheim Theorem")[
  Any theory that has a model has denumerable model.
]
#proof[
  If $K$ has a model, then $K$ is consistent, since no wf can be both true and
  false for the same model.
  Hence by @proposition-consistent-theory-has-a-denumerable-model, $K$ has a
  denumerable model.
]

== First-Order Theories with Equality

#definition("First-order theory with equality")[
  Let $K$ be a theory that has one of its predicate letters $A^2_1$.
  Let us write $t = s$ as an abbreviation for $A^2_1(t, s)$, and $t = s$ as an
  abbreviation for $not A^2_1(t, s)$.
  Then $K$ is called a _first-order theory with equality_ if the following are
  theorems of $K$
  / (A6): (reflexivity of equality) $(forall x_1) x_1 = x_1$
  / (A7): (substitutivity of equality) $x = y => (cal(B)(x, x) => cal(B)(x, y))$
  where $x$ and $y$ are any variables.
]
= Axiomatic Set Theory

NBG is a first order theory, which is basically a system of the same type as one
originally proposed by
#link("https://en.wikipedia.org/wiki/John_von_Neumann")[J. von Neumann] (1925,
1928) and later
thoroughly revised and simplified by
#link("https://en.wikipedia.org/wiki/Raphael_M._Robinson")[R. Robinson],
#link("https://en.wikipedia.org/wiki/Paul_Bernays")[Bernays]
and simplified by, and
#link("https://en.wikipedia.org/wiki/Kurt_G%C3%B6del")[Godel].

== NBG as a first-order theory with equality

NBG has a single predicate letter $A^2_2$ but no function letter or individual
constants, using capital italic letters $X_1, X_2, X_3, dots$ (notation by
Bernays and Godel) as variables instead of $x_1, x_2, x_3, dots$.

#definition("Equality and Inclusion")[
  #index("equality")
  #index("inclusion")
  We shall abbreviate $A^2_2 (X, Y)$ by $X in Y$, $not A^2_2 (X, Y)$ by $X
  in.not Y$, and
  / Equality: $X = Y$ for $(forall Z)(Z in X <=> Z in Y)$
  / Inequality: $X eq.not Y$ for $not (forall Z) (Z in X <=> Z in Y)$
  / Inclusion: $X subset.eq Y$ for $(forall Z) (Z in X => Z in Y)$
  / Proper Inclusion: $X subset.neq Y$ for $X subset.neq Y and X eq.not Y$
]

#definition("Subclass and Proper Subclass")[
  #index("Subclass")
  #index("Proper Subclass")
  When $X subset.eq Y$, we say that $X$ is a _subclass_ of $Y$.
  When $X subset.neq Y$, we say that $X$ is a _proper subclass_ of $Y$.
]

#proposition()[
- $tack.r X = Y <=> (X subset.eq Y and Y subset.eq X)$
- $tack.r X = X$
- $tack.r X = Y => Y = X$
- $tack.r X = Y => (Y = Z => X = Z)$
]

#definition("Set, Proper class")[
  #index("Set")
  #index("Proper class")
  We shall define a class to be a _set_ if it is a member of some class.
  Those class that are not sets are called _proper classes_.
  And we use the following wfs

- $M(X)$ for $(exists Y)(X in Y)$, i.e. $X$ is a set.
- $op("Pr")(X)$ for $not M(X)$, i.e. $X$ is a proper class.
]
Let us introduce lower-case letters $x_1, x_2, dots$ as special restricted
variables for *sets*.
For examples,
- $(forall x_j B(x_j)$ stands for $(forall X) (M(X) => cal(B)(X))$, that is,
  $cal(B)$ holds for all sets;
- $(exists x_j) cal(B)(x_j)$ stands for $(exists X) (M(X) and cal(B)(X))$, that
  is, $cal(B)$ holds for some set.

#proposition("Extensionality Principle")[
  $ tack.r X = Y <=> (forall z)(z in X <=> z in Y). $
  In other words, two classes are equal when and only when they contain the same
  _sets_ as members.
]

#heading("Axiom T", level: 3, numbering: none)
$ X_1 = X_2 => (X_1 in X_3 <=> X_2 in X_3) $
That is, equal classes belong to the same classes.

#proposition()[
  NBG is a first-order theory with equality.
]

= History and Figures

#bibliography("references.bib")
