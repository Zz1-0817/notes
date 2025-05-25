#import "@preview/ctheorems:1.1.3": *
#import "@preview/in-dexter:0.7.0": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge

#let theorem = thmbox("theorem", "定理", base_level: 1)
#let corollary = thmbox("theorem", "推论", base_level: 1)
#let lemma = thmbox("theorem", "引理", base_level: 1)
#let proposition = thmbox("theorem", "命题", base_level: 1)
#let definition = thmbox("definition", "定义", base_level: 1)
#let example = thmplain("example", "例").with(numbering: none)
#let remark = thmplain("remark", "注").with(numbering: none)
#let proof = thmproof("proof", "证明")

#set heading(numbering: "1.")
#show: thmrules

= 序

#definition([偏序与线性序])[
  集合 $P$ 上的一个二元关系 $<$ 称为 $P$ 上的#emph[偏序];, 如果
  + 对任意 $p in P$, $p lt.not p$.
  + 如果 $p < q , q < r$, 那么 $p < r$.

  此时 $(P , <)$ 称为一个#emph[偏序集];.
  $P$ 上的偏序 $<$ 称为#emph[线性序], 如果对所有$p , q in P$, 下面之一成立
  $ p < q , quad p = q , quad q < p . $ 如果 $<$ 是一个偏序\(线性序),
  那么关系 $lt.eq$ 也被称为#emph[偏序];\(#emph[线性序];)\(而 $<$
  有时被称为#emph[严格];序), 其中符号 $lt.eq$ 意指 $p lt.eq q$ 如果
  $p < q$ 或称 $q = p$ 成立.
]

#definition([偏序集中的元素])[
  假设 $(P , <)$ 是一个偏序集, $X$ 是 $P$ 的一个非空子集, $a in P$, 那么
  + $a$ 称为 $X$ 的一个#emph[极大元];, 如果 $a in X$ 且
    $(forall x in X) a lt.not x$. $a$ 称为 $X$ 的一个#emph[极小元];, 如果
    $a in X$ 且 $(forall x in X) x lt.not a$.
  + $a$ 称为 $X$ 的一个#emph[最大元];, 如果 $a in X$ 且
    $(forall x in X) x lt.eq a$. $a$ 称为 $X$ 的一个#emph[最小元];, 如果
    $a in X$ 且 $(forall x in X) a lt.eq x$.
  + $a$ 称为 $X$ 的一个#emph[上界];, 如果 $(forall x in X) x lt.eq a$. $a$
    称为 $X$ 的一个#emph[下界];, 如果 $(forall x in X) a lt.eq x$.
  + $a$ 称为 $X$ 的一个#emph[上确界];, 如果 $a$ 是 $X$ 的一个最小上界. $a$
  称为 $X$ 的一个#emph[下确界];, 如果 $a$ 是 $X$ 的一个最大下界.
]

#definition([保序映射与同构])[
假设 $(P , <) , (Q , <)$ 是偏序集, $f : P arrow.r Q$ 是一个函数. 称 $f$
是#emph[保序的];如果当 $x < y$ 时有 $f (x) < f (y)$. 如果
$(P , <) , (Q , <)$ 都是线性序的, 那么包含函数也被称为#emph[上升];函数.

一个 $P$ 到 $Q$ 的一一对应的满函数 $f$ 称为是 $P$ 和 $Q$的#emph[同构];,
如果 $f$ 和 $f^(- 1)$ 都是保序映射, 并且, 此时称 $(P , <)$ 同构于
$(Q , <)$. $(P , <)$ 到自身的同构称为 $(P , <)$ 的#emph[自同构];.
]

== 良序

#definition([良序])[
  集合 $P$ 上的线性序 $<$ 称为是#emph[良序];, 如果 $P$
  的每个非空子集都有一个极小元.
]

#lemma[
  如果 $(W , <)$ 是一个良序集, $f : W arrow.r W$ 是一个上升函数, 那么对每个 $x
  in W$ 有 $f (x) gt.eq x$.
]
#proof[
  由分离公理模式, 可以考虑集合 $X = {x in W : f (x) < x}$,
只需证明 $X = diameter$ 即可. 如果 $X eq.not diameter$, 怎么由良序集定义
$X$ 有一个极小元 $z$. 那么由 $f (x) < x$ 有 $f (f (x)) < f (x)$, 这与
$x$ 的极小性矛盾.
]

#corollary[
  良序集的自同构只有恒等映射.
]

#corollary[
  如果两个良序集 $W_1 , W_2$ 是同构的, 那么 $W_1$ 到 $W_2$ 的同构是唯一的.
]<corollary-well-ordering-unique-isomorphism>

#definition([前段])[
  如果 $W$ 是一个良序集, $u in W$, 那么 ${x in W : x < u}$ 称为由 $u$
  给出的 $W$ 的#emph[前段];.
]


#lemma[
  没有良序集同构于其自身的前段.
]<lemma-well-ordering-not-isomorphic-to-initial-segment>
#proof[
  假设不然, 存在 $(P , <)$ 是通过 $f$ 同构于其前段 ${x : x in u}$ 的良序集, 那么
  $f (u) < u$, 这与;矛盾.
]

#theorem[
  假设 $W_1$ 和 $W_2$ 为两个良序集, 那么以下条件中有且只有满足
  + $W_1$ 同构于 $W_2$.
  + $W_1$ 同构于 $W_2$ 的一个前段.
  + $W_2$ 同构于 $W_1$ 的一个前段.
]
#proof[
  如果 $u in W_i$, 以 $W_i (u)$ 记 $W_i$ 中 $u$ 给出的前段. 令函数 $f$ 为
  $ f = {(x , y) in W_1 times W_2 : W_1 (x) upright("同构于") W_2 (y)} . $

  $f$ 是一个一一对应, 即如果 $W_1 (x)$ 同构与 $W_2 (y_1) , W_2 (y_2)$, 那么 $y_1
  = y_2$. 如果 $y_1 < y_2$, 不仿设 $y_1 < y_2$, 那么 $W_2 (y_1)$ 是 $W_2 (y_2)$
  的一个前段, 而 $W_2 (y_2)$ 同构于 $W_1 (x)$, 因此同构于 $W_1 (y_1)$, 这与矛盾.

  $f$ 是一个保序映射: 如果 $h$ 是 $W_1 (x)$ 和 $W_2 (y)$ 间的同构, 且 $x prime <
  x$, 那么 $W_1 (x prime)$ 和 $W_2 (h (x prime))$ 是同构的, 于是 $f (x prime) =
  h (x prime)$. 换句话说, $x prime < x arrow.r.double.long f (x prime) = h (x
  prime) < y = f (x)$.

  如果 $"dom" f = W_1$ 且 $"ran" f = W_2$, 那么 \(1) 成立.

  如果 $"ran" f eq.not W_2$, 由 $W_2$ 是良序集, 可以取 $W_2 \\ "ran" f$ 的极小元
  $y_0$.
  实际上, $"ran" f = W_2 (y_0)$.
  $"ran" f supset W_2 (y_0)$ 由极小性保证; $"ran" f subset W_2 (y_0)$ 是因为,
  对任意 $y in "ran" f$, 如果存在 $y in "ran" f$ 使得 $y in.not W_2 (y_0)$, 即
  $y gt.eq y_0$, 那么总能得到 $y_0 in "ran" f$, 这与假设矛盾.
  这时, 还有 $"dom" f = W_1$.
  否则, 再由 $W_1$ 良序, 取 $W_1 \\ "dom" f$ 极小元 $x_0$.
  类似地, 可以知道 $"dom" f = W_1 (x_0)$.
  于是 $W_1 (x_0)$ 同构于 $W_2 (y_0)$, 换句话说 $(x_0 , y_0) in f$, 这与 $x_0 ,
  y_0$ 取法矛盾. 总结之, $"ran" f = W_2 (y_0) , "dom" f = W_1$, 这正是 \(2).

  类似于 \(2), 如果 $"ran" f eq.not W_1$, 那么可以知道这时满足 \(3).
]

= 序数

#definition([序数])[
  一个集合 $T$ 称为是#emph[传递的];, 如果每个 $T$ 的元素都是 $T$ 的子集.
]
#remark[
  $T$ 传递 $arrow.l.r.double union.big T subset T arrow.l.r.double T subset
  cal(P) (T)$.
]

#definition([序数])[
  一个集合称为一个#emph[序数];, 如果其传递且关于 $in$ 良序.
]
#remark[
  我们常用小写希腊字母 $alpha , beta , gamma , dots.h$ 来记序数,
  并将所有序数组成的类记作 $"Ord"$.
]

#lemma[
  + $0 = diameter$ 是一个序数.
  + 如果 $alpha$ 是一个序数, $beta in alpha$, 那么 $beta$ 是一个序数.
  + 如果 $alpha eq.not beta$ 为序数, $alpha subset beta$, 那么
    $alpha in beta$.
  + 如果 $alpha , beta$ 为序数, 那么要么 $alpha subset beta$ 或
    $beta subset alpha$.
]<lemma-ordinal-number-well-ordering>

#proof[
  3. 如果 $alpha subset.neq beta$, 由 $beta$ 良序, 可以取 $beta - alpha$
     中的极小元素 $gamma$.
     $alpha$ 即 $gamma$ 给出的前段: 对任意 $x in gamma$, 由极小性以及传递性知道
     $x in alpha$;
     对任意 $x in alpha$, $beta without alpha union {x}$ 的极小元素要么是
     $gamma$ 要么是 $x$.
     如果前者成立, 那么由传递性 $gamma in.not beta without alpha$ 这与 $gamma$
     的取法矛盾, 因此只能 $x in gamma$.
  4. 可以知道 $gamma = alpha inter beta$ 也是一个序数, 只需证明 $gamma = alpha$
     或 $gamma = beta$ 之一成立.
     假设不然, $gamma in alpha$ 和 $gamma in beta$ 同时成立, 则 $gamma in gamma$
     这与 $in$ 是严格序矛盾.
]

+ $<$ 是 $"Ord"$ 中的线性序.
+ 对每个 $alpha in "Ord"$, $alpha = {beta : beta < alpha}$.
+ 如果 $C$ 是一个序数的非空类, 那么 $inter.big C$ 也是一个序数, 且
  $inter.big C in C$, $inter.big C = inf C$.
+ 如果 $X$ 是序数组成的一个非空集合, 那么 $union.big X = union.big_(x in X) x$
  也是一个序数, 且 $union.big X = sup X$.
+ 对每个 $alpha in "Ord"$, $alpha union {alpha}$ 是一个序数, 且
  $alpha union {alpha} = inf {beta in "Ord" : beta > alpha}$\(一般来说,
  这个不一定是个集合). 于是, 可以定义 $alpha$ 的#emph[后继]
  $alpha + 1 = alpha union {alpha}$.

#theorem[
  每一个良序集都同构于一个唯一的序数.
]
#proof[
  唯一性由@corollary-well-ordering-unique-isomorphism,
  @lemma-well-ordering-not-isomorphic-to-initial-segment 和
  @lemma-ordinal-number-well-ordering 得到.

  给定一个良序集 $W$, 对任意 $x in W$,
  我们断言每个 $x$ 的前段都同构于一个序数: 否则, 前段不同构于序数的 $x$ 
  构成一个集合, 由良序性其有极小元 $gamma$.
  对任意 $x < gamma$, 由极小性可以设 $x$ 前段同构于序数 $alpha_x$,
  且由@corollary-well-ordering-unique-isomorphism 知道这个同构是唯一的.
  直接验证知道 $alpha_gamma={alpha_x | x < gamma}$ 是一个序数, 矛盾.

  于是我们可以定义 $F: W -> op("Ord")$, 其将 $W$ 中元素 $x$ 映到同构于 $x$
  前段的序数, 由替换公理知道 $F(W)$ 是一个集合.
  可以验证 $F(W)$ 是一个序数.
]
#remark[
  想法:
  $ W tilde.eq {w "的前段"} tilde.eq {alpha_w} quad < arrow subset arrow in
  $
]

= 待整理
#block[
假设 $B$ 是良序集 $(A , lt.eq)$ 的一个子集, 如果条件: 每个 $a in A$, $A$
的前段 ${c in A : c < a}$ 包含在 $B$ 中蕴含 $a in B$, 那么 $B = A$.
]
#block[
#emph[Proof.] 下面证明 $A \\ B = diameter$. 如果
$A \\ B eq.not diameter$, 那么由良序集定义, $A \\ B$ 存在一个极小元 $a$.
由极小性有 ${c in A : c < a} subset.eq B$, 结合 $B$ 性质知道 $a in B$,
这与 $a$ 的定义矛盾.~◻
]
#block[
假设 $C$ 是为一类序数, 且
+ $0 in C$;
+ 如果 $alpha in C$, 那么 $alpha + 1 in C$;
+ 如果 $alpha$ 是非零极限序数, 对所有 $beta < alpha$ 有 $beta in C$,
  那么 $alpha in C$;
那么 $C = "On"$.
]
#block[
每一个集合都能被赋予一个良序结构.
]
#block[
#emph[Proof.] 假设 $A$ 是一个集合, 由幂集公理 $cal(P) (A)$ 是一个集合.
由分离公理模式 $cal(A) = {x in cal(P) (A) : x in.not diameter}$
是一个集合. 由选择公理, 存在 $cal(A)$ 的一个选择函数 $f$.~◻

]
