= 基础知识
<基础知识>
== 代数扩张与超越扩张初步
<代数扩张与超越扩张初步>
== 分裂域
<分裂域>
假设 $f in F [X]$. 那么一个包含 $F$ 的域 $E$ 称为#emph[分裂] $f$ 如果
$f$ 在 $E [X]$ 中分裂, 也就是
$ f (X) = a product_(i = 1)^m (X - alpha_i) , quad a in F , quad alpha_i in E . $
如果 $E$ 分裂 $f$ 且由 $f$ 的根生成, 那么称 $E$ 为 $f$ 的#emph[分裂域]
或者#emph[根域];.

#block[
#strong[命题 1.1];. #emph[每个多项式 $f in F [X]$ 都有一个分裂域 $E_f$,
并且 $ [E_f , F] lt.eq (deg f) ! $]

] <proposition-polynomial-splitting-field-degree>
#block[
#emph[Proof.] 假设 $f$ 有根 $alpha_1 , dots.h , alpha_n$, 对 $n$
做归纳假设. $n = 1$ 时, $alpha_1 in F$ 结论显然. 对 $n > 1$, 设
$alpha_1$ 在 $F$ 的极小多项式为 $f_1$, 于是 $f_1 divides f$. 由归纳假设
$tilde(f) = f \/ (X - alpha_1)$ 在 $F [alpha_1]$ 的分裂域 $E_(tilde(f))$
存在且满足 $[E_(tilde(f)) : F [alpha_1]] lt.eq (deg tilde(f)) !$. 而
$E_(tilde(f)) = F [alpha_1] [alpha_2 , dots.h , alpha_n] = F [alpha_1 , alpha_2 , dots.h , alpha_n]$,
因此 $E_(tilde(f))$ 为 $f$ 在 $F$ 中的分裂域, 且
$ [E_(tilde(f)) : F] = [E_(tilde(f)) : F [alpha_1]] [F [alpha_1] : F] lt.eq (deg tilde(f)) ! deg f_1 lt.eq (deg f) ! . $~◻

]
=== 单扩张的域同态
<单扩张的域同态>
#block[
#strong[命题 1.2];. #emph[假设 $F (alpha)$ 是域 $F$ 的单扩张, $Omega$ 是
$F$ 的第二个扩张.]

+ #emph[假设 $alpha$ 在 $F$ 上超越. 那么对每个 $F$-同态
  $phi : F (alpha) arrow.r Omega , phi (alpha)$ 在 $F$ 上超越, 且映射
  $phi arrow.r.bar phi (alpha)$ 给出了一一对应
  $ {F upright("-同态") F (alpha) arrow.r Omega} arrow.l.r {Omega upright("在") F upright("上的超越元")} . $]

+ #emph[假设 $alpha$ 在 $F$ 上代数, 令 $f (X)$ 为其极小多项式. 对每个
  $F$-同态 $phi : F [alpha] arrow.r Omega$, $phi (alpha)$ 是 $f (X)$ 在
  $Omega$ 中的根, 并且映射 $phi arrow.r.bar phi (alpha)$ 定义了一一映射
  $ {F upright("-同态") phi : F [alpha] arrow.r Omega} arrow.l.r {f upright("在") Omega upright("中的根")} . $
  特别地, 这样的映射数即 $f$ 在 $Omega$ 的不同根数.]

] <proposition-simple-extension-and-field-homomorphism>
#block[
#emph[Proof.] $(1)$ 应用反证法, 如果 $phi (alpha)$ 在 $F$ 上代数,
那么存在多项式 $f (X) in F [X]$, 使得 $f (phi (alpha)) = 0$. 于是
$phi (f (alpha)) = 0$, 这只能 $f (alpha) = 0$, 与 $alpha$ 超越矛盾.
取定一个超越元 $f (alpha)$, 双射的另一边由 $alpha arrow.r.bar f (alpha)$
给出. $(2)$ 与 $(1)$ 是完全类似的.~◻

]
我们能将上面结果推广如下, 证明是完全一致的.

#block[
#strong[命题 1.3];. #emph[假设 $F (alpha)$ 是 $F$ 的单扩张,
$phi_0 : F arrow.r Omega$ 是一个由 $F$ 到第二个域 $Omega$ 的同态.]

+ #emph[如果 $alpha$ 在 $F$ 上超越, 那么映射
  $phi arrow.r.bar phi (alpha)$ 定义了一个一一映射
  $ {phi_0 upright("的扩张") phi : F (alpha) arrow.r Omega} arrow.l.r {Omega upright("在") phi_0 (F) upright("的超越元")} $]

+ #emph[如果 $alpha$ 在 $F$ 上代数且其极小多项式为 $f (X)$, 那么映射
  $phi arrow.r.bar phi (alpha)$ 定义了一个一一映射
  $ {phi_0 upright("的扩张") phi : F [alpha] arrow.r Omega} arrow.l.r {phi_0 f upright("在") Omega upright("的根")} . $
  特别地, 这样的映射数即 $phi_0 f$ 在 $Omega$ 的不同根数.]

] <proposition-extended-simple-extension-and-field-homomorphism>
#block[
#strong[命题 1.4];. #emph[假设 $sigma : F_1 arrow.r F_2$ 为域同构,
$f in F [X]$, $E$ 为 $F_2$ 的一个由 $sigma f$ 的根生成的扩张, $Omega$
为一个分裂 $sigma f$ 的 $F_2$ 扩域. 那么存在一个 $sigma$ 扩张
$phi : E arrow.r Omega$, 且这样的同态个数至多有 $[E : F_2]$; 个数恰为
$[E : F_2]$ 的一个充分条件是 $sigma f$ 在 $Omega$ 的根不同.]

] <proposition-single-polynomial-extension-number>
#block[
#emph[Proof.] 通过给 $f$ 乘一个常数, 可以假设 $f$ 首一系数, 从而
$sigma f$ 首一系数. 由 $sigma f$ 在 $Omega$ 上分裂, 可以假设
$sigma f = product_i (X - beta_i) in Omega [X]$. 于是, $E$ 由一些
$beta_i$ 生成, 不妨设 $E = F_2 [beta_1 , dots.h , beta_r]$.

假设 $beta_1$ 在 $F_2$ 的极小多项式为 $g_1$, 那么 $g_1 divides sigma f$.
由#link(<proposition-extended-simple-extension-and-field-homomorphism>)[1.3];,
$sigma$ 的扩张 $F_2 [beta_1] arrow.r Omega$ 个数至多为
$deg g_1 = [F_2 [beta_1] : F_2]$, 相等当且仅当 $g_1$ 的根两两不同. 如果
$sigma f$ 的根两两不同, 那么 $g_1$ 的根亦两两不同. 重复此过程, 得到
$F_2 [beta_1 , dots.h , beta_i] arrow.r Omega$ 的扩张
$F_2 [beta_1 , dots.h , beta_(i + 1)] arrow.r Omega$ 个数至多为
$[F_2 [beta_1 , dots.h , beta_(i + 1)] : F_2 [beta_1 , dots.h , beta_i]]$,
并且相等如果 $sigma f$ 根两两不同.

通过限制到 $F_2 [beta_1 , dots.h , beta_i]$, 每个 $sigma$ 扩张
$E arrow.r Omega$ 都可以视为逐步扩张
$ F_2 [beta_1] arrow.r Omega , dots.h , F_2 [beta_1 , dots.h , beta_r] = E arrow.r Omega , $
于是其个数至多为
$[F_2 [beta_1] : F_2] [F_2 [beta_1 , beta_2] : F_2 [beta_1]] dots.h.c [E : F_2 [beta_1 , dots.h , beta_(r - 1)]] = [E : F_2]$,
且取等如果 $sigma f$ 根两两不同.~◻

]
#block[
#strong[推论 1.5];. #emph[假设 $sigma : F_1 arrow.r F_2$ 是域同构. 如果
$E_1$ 和 $E_2$ 分别是 $f$ 和 $sigma f$ 的分裂域, 那么 $sigma$
的扩张$E_1 arrow.r E_2$ 是同构. 特别地, $f$ 的不同分裂域是 $F$-同构的.]

] <corollary-splitting-fields-isomorphic>
#block[
#strong[推论 1.6];. #emph[假设 $sigma : F_1 arrow.r F_2$ 为域同构, $E$
和 $L$ 为 $F_2$ 的域扩张, 其中 $E$ 在 $F_2$ 上有限. 那么 $sigma$ 的扩张
$E arrow.r L$ 个数至多有 $[E : F_2]$ 个.]

] <corollary-finite-extension-homomorphisms-numbers>
#block[
#emph[Proof.] 设 $E = F_2 [beta_1 , dots.h , beta_r]$, $beta_i$ 在 $F_2$
上的极小多项式为 $f_i$. 记 $f$ 为不同 $f_i$ 的乘积, $f$ 在 $L$
上的分裂域为 $Omega$.
由#link(<proposition-single-polynomial-extension-number>)[1.4];, $sigma$
扩张 $E arrow.r Omega$ 个数至多有 $[E : F_2]$ 个. 而 $sigma$ 扩张
$E arrow.r L$ 复合包含映射 $L arrow.r Omega$ 也是扩张 $E arrow.r Omega$,
故扩张 $E arrow.r L$ 个数至多有 $[E : F_2]$ 个.~◻

]
== 代数闭域初步
<代数闭域初步>
===== 代数闭域
<代数闭域>
$f in F [X]$ 称为在 $F [X]$ 中#emph[分裂];, 如果 $f$ 是 $F [X]$ 中次数为
$1$ 的多项式的积.

#block[
#strong[命题 1.7];. #emph[给定一个域 $Omega$, 那么以下条件等价:]

+ #emph[每个 $Omega [X]$ 的非常多项式都在 $Omega [X]$ 中分裂.]

+ #emph[每个 $Omega [X]$ 的非常多项式都在 $Omega$ 中至少有一根.]

+ #emph[每个 $Omega [X]$ 的不可约多项式次数都为 $1$.]

+ #emph[$Omega$ 的有限扩张都是 $Omega$.]

#emph[如果 $Omega$ 满足上面任一条件, 那么称 $Omega$ 是#emph[代数闭的];.]

]
===== 代数闭包
<代数闭包>
域 $Omega$ 称为是 $F$ 的#emph[代数闭包];, 如果 $Omega$ 代数闭并且在 $F$
上代数.

#block[
#strong[命题 1.8];. #emph[如果 $Omega$ 在 $F$ 上代数, 每个 $f in F [X]$
都在 $Omega [X]$ 上分裂, 那么 $Omega$ 代数闭.]

] <proposition-algebraic-closure-as-a-splitting-field>
#block[
#emph[Proof.] 假设 $alpha$ 为
$f = a_0 X^n + a_1 X^(n - 1) + dots.h.c + a_n in Omega [X]$ 的根. 因为
$F [a_0 , dots.h , a_n , alpha] = F [a_0 , dots.h , a_n] [alpha]$,
$alpha$ 在 $F$ 上有限, 因此 $alpha in Omega$.~◻

]
#block[
#strong[命题 1.9];. #emph[假设 $F$ 是一个域, $Omega$ 是一个包含 $F$
的整环, 那么
$ overline(F) := {alpha in Omega : alpha upright("在") F upright("上代数")} $
为一个域, 称为#emph[$F$ 在 $Omega$ 上的代数闭包];.]

]
#block[
#strong[推论 1.10];. #emph[假设 $Omega$ 是一个代数闭包. 对每个 $Omega$
的子域 $F$, $F$ 在 $Omega$ 的代数闭包 $E$, 是 $F$ 的代数闭包.]

]
#block[
#emph[Proof.] 每个 $F [X]$ 的多项式在 $Omega [X]$ 中分裂, 自然在 $E [X]$
分裂.
由#link(<proposition-algebraic-closure-as-a-splitting-field>)[1.8];立刻得到结论.~◻

]
===== 代数闭包同构
<代数闭包同构>
#block[
#strong[定理 1.11];. #emph[假设 $sigma : F_1 tilde.eq F_2$ 为域同构.
假设 $Omega$ 是域 $F_2$ 的一个代数闭包, $E$ 是 $F_1$ 的代数扩张.
那么存在 $sigma_1$ 的扩张 $E arrow.r Omega$, 并且如果 $E$ 是 $F_1$
的代数闭包, 那么每个这样的同态都是同构.]

] <theorem-algebraic-closure-isomorphic>
#block[
#emph[Proof.] $cal(S)$ 为所有二元组 $(N , tau)$ 组成的集合, 其中 $N$ 为
$E \/ F_1$ 的子扩张, $tau : N arrow.r Omega$ 为 $sigma_1$ 的扩张. 定义
$cal(S)$ 上的一个偏序关系 $(N_1 , tau_1) lt.eq (N_2 , tau_2)$ 当且仅当
$N_1 subset.eq N_2 , tau_2\|_(N_1) = tau_1$. 由此定义, 每个 $cal(S)$
的上链都有上界, 于是由 Zorn 引理, $cal(S)$ 有一个极大元 $(E_0 , tau_0)$,
下面证明 $E_0 = E$.

假设不然, 有 $E_0 subset.neq E$. 那么存在 $alpha in E \\ E_0$.
由#link(<proposition-simple-extension-and-field-homomorphism>)[1.2];知道存在
$tau_0$ 的扩张 $E_0 [alpha] arrow.r Omega$, 这与极大性矛盾.

假设 $E$ 是 $F_1$ 的代数闭包, 对任意 $alpha in Omega$, 设 $alpha$ 在
$F_2$ 上的极小多项式为 $f$. 结合 $sigma_1$ 单, $sigma_1$ 将
$sigma^(- 1) f$ 的所有根映到 $f$ 的所有根, 因此$alpha in "Im" E$.~◻

]
== 分裂域与正规扩张
<分裂域与正规扩张>
#block[
#strong[命题 1.12];. #emph[假设 $sigma : K arrow.r L$ 是一个域同构,
$S subset.eq K [X]$ 是一个多项式集,
$S prime = {sigma f : f in S} subset.eq L [X]$. 如果 $F$ 是 $S$ 在 $K$
的分裂域, $M$ 是 $S prime$ 在 $L$ 的分裂域, 那么 $sigma$ 能扩张为同构
$F tilde.eq M$.]

] <proposition-isomorphism-extend-to-splitting-fields>
#block[
#emph[Proof.] $S$
只有一个元素的情况由#link(<corollary-splitting-fields-isomorphic>)[1.5];保证.

假设 $S$ 任意, 令 $cal(S)$ 为所有三元组 $(E , N , tau)$ 组成的集合, 其中
$E$ 是 $F \/ S$ 的中间域, $N$ 是 $M \/ L$ 的中间域, $tau : E tilde.eq N$
为域同构. 定义 $cal(S)$ 的一个偏序关系
$(E_1 , N_1 , tau_1) lt.eq (E_2 , N_2 , tau_2)$ 当且仅当
$E_1 subset.eq E_2 , N_1 subset.eq N_2$ 且 $tau_2\|_(E_1) = tau_1$.
由此定义 $cal(S)$ 的任意上升链都有上界,
进而通过#link("https://en.wikipedia.org/wiki/Zorn's_lemma")[Zorn 引理];可以得到
$cal(S)$ 的一个极大元 $(F_0 , M_0 , tau_0)$. 下面说明
$F_0 = F , M_0 = M$ 以完成证明.

假设不然, $F_0 subset.neq F$, 那么存在 $f in S$ 在 $F_0$ 上不分裂.
又由#link(<corollary-splitting-fields-isomorphic>)[1.5];, 可以找到
$F \/ K$ 包含 $F_0$ 分裂 $f$ 的子域 $F_1$ 通过 $tau_0$ 的一个扩张同构于
$M_0$ 的一个包含于 $M$ 的扩域. 这与 $(F_0 , M_0 , tau_0)$ 极大性矛盾.
类似地, $M_0 = M$.~◻

]
#block[
#strong[定理 1.13];. #emph[假设 $F$ 是 $K$ 的代数扩张,
那么下面条件等价:]

+ #emph[$F$ 在 $K$ 上正规.]

+ #emph[$F$ 是 $K$ 上某个多项式集合 $S subset.eq K [X]$ 的分裂域.]

+ #emph[如果 $overline(K)$ 是 $K$ 的包含 $F$ 的代数闭包, 那么对任意
  $K$-单同态 $sigma : F arrow.r overline(K)$, 有 $"Im" sigma = F$.]

] <theorem-normal-extension-TFAE-conditions>
#block[
#emph[Proof.] $(1) arrow.r.double.long (2)$
因为每个线性空间都由一组基\(譬如:
#link("https://en.wikipedia.org/wiki/Basis_(linear_algebra)#Proof_that_every_vector_space_has_a_basis")[wikipeida];),
可以设 ${u_i : i in I}$ 为 $F$ 的一组 $K$-基, 其中 $I$ 是某个指标集. 设
$u_i , i in I$ 在 $K [X]$ 的极小多项式为 $f_i$ 那么 $F$ 是
${f_i : i in I}$ 的分裂域.

$(2) arrow.r.double.long (3)$ 假设 $F$ 是 $K$ 关于
${f_i : i in I} subset.eq F [X]$ 的分裂域. 假设 $alpha_i$ 为 $f_i$
的一个根, 那么 $sigma (alpha_i)$ 也是 $f_i$ 的一个根. 由于 $sigma$ 单,
其将 $f_i$ 的根映到 $f_i$ 的所有根, . 而 $F$ 由 ${f_i : i in I}$
的根生成, 于是 $sigma (F) = F$.

$(3) arrow.r.double.long (1)$ 假设 $alpha in F$, 那么对 $alpha$ 在
$K [X]$ 的任一根 $alpha prime$,
有域同构$tau : K [alpha] tilde.eq K [alpha prime]$.
由#link(<theorem-algebraic-closure-isomorphic>)[1.11] 有 $tau$ 的扩张
$tau prime : Omega arrow.r Omega$. 结合假设并考虑限制 $tau prime\|_F$,
知道 $alpha prime in F$.~◻

]
== 可分扩张
<可分扩张>
=== 重根
<重根>
#block[
#strong[命题 1.14];. #emph[假设 $f$ 和 $g$ 为 $F [X]$ 上的多项式,
$Omega$ 为 $F$ 的扩张. 那么 $gcd_F (f , g) = gcd_Omega (f , g)$. 特别地,
$F [X]$ 中不同的不可约多项式在 $Omega [X]$ 中亦没有公共根.]

]
#block[
#strong[引理 1.15];. #emph[$f$ 有重根当且仅当 $f prime$ 有重根.]

]
#block[
#strong[命题 1.16];. #emph[假设 $f in F [X]$ 是一个不可约多项式,
那么以下等价:]

+ #emph[$f$ 有重根.]

+ #emph[$gcd (f , f prime) eq.not 1$.]

+ #emph[存在 $p eq.not 0$ 使得 $"char" F = p$ 并且 $f$ 为 $X^p$
  的多项式.]

+ #emph[$f$ 的所有根都是重根.]

]
<proposition-irreducible-polynomial-with-multiple-roots-TFAE-condition>
#block[
#strong[命题 1.17];. #emph[假设 $f in F [X]$ 是一个非零多项式,
那么以下等价:]

+ #emph[$gcd (f , f prime) = 1$.]

+ #emph[$f$ 只有单根.]

#emph[我们称这样的 $f$ 为#emph[可分多项式];.]

]
=== 完美域
<完美域>
一个域称为是#emph[完美的];, 如果其特征为零或其特征为 $p eq.not 0$,
且每个 $F$ 的元素都是 $F$ 中某个元素的 $p$ 次幂.

#block[
#strong[命题 1.18];. #emph[一个域 $F$ 是完美的当且仅当 $F [X]$
的每个不可约多项式都可分.]

]
#block[
#emph[Proof.] 只需证明 $"char" F = p eq.not 0$ 的情况.

$arrow.r.double.long$ 假设不然, 存在不可约多项式 $f in F [X]$ 不可分,
那么 $(f , f prime) eq.not 1$.
由#link(<proposition-irreducible-polynomial-with-multiple-roots-TFAE-condition>)[1.16]
$f$ 具有形式 $a_0 (X^p)^r + a_1 (X^p)^(r - 1) + dots.h.c + a_r$. $F$
是完美域, 可以设 $a_i = b_i^p$, 于是
$ f = (b_0 X^r + b_1 X^(r - 1) + dots.h.c + b_r)^p $ 与 $f$ 不可约矛盾.

$arrow.l.double.long$ 假设不然, $a in F$ 不为 $F$ 中元素的 $p$ 次幂. 设
$f = X^p - a$ 的一个根为 $alpha in.not F$, 那么
$X^p - a = (X - alpha)^p$; 换句话说, $f$ 不可分. $f$ 的因子具有形式
$(X - alpha)^i , 1 lt.eq i lt.eq p$, 考察 $X$ 项系数知道 $i alpha in F$,
只能 $i = p$, 因此 $X^p - a$ 在 $F$ 中不可约. $f$
不可分不可约与假设矛盾.~◻

]
= Galois扩张
<galois扩张>
== 有限 Galois 扩张
<有限-galois-扩张>
=== Artin引理
<artin引理>
假设子群 $G subset.eq "Aut" E$, 那么
$ E^G := "Inv" (G) = {alpha in E : sigma alpha = alpha , forall sigma in G} $
是 $E$ 的一个子域, 称为 $G$ 的#emph[固定子域];.

#block[
#strong[引理 2.1] \(Artin). #emph[假设 $G subset.eq "Aut" E$
为一个有限子群, 那么 $ [E : E^G] lt.eq (G : 1) . $]

] <lemma-Artin>
#block[
#emph[Proof.] 假设 $G = {sigma_1 , dots.h , sigma_n}$, 其中
$sigma_1 = "id"_E$, 记 $F = E^G$. 假设 $alpha_1 , dots.h , alpha_m$ 为
$E$ 的任意一组 $F$-线性无关元, 下面证明 $m lt.eq n$. 假设不然, 存在
$alpha_1 , dots.h , alpha_m$ 使得 $m > n$, 那么下面线性方程组有非零解
$ sigma_1 (alpha_1) X_1 + sigma_1 (alpha_2) X_2 + dots.h.c + alpha_1 (alpha_m) X_m = 0\
sigma_2 (alpha_1) X_1 + sigma_2 (alpha_2) X_2 + dots.h.c + alpha_2 (alpha_m) X_m = 0\
dots.v\
sigma_1 (alpha_1) X_1 + sigma_n (alpha_2) X_2 + dots.h.c + alpha_n (alpha_m) X_m = 0 $
假设 $bold(c) = (c_1 , dots.h , c_m)$ 为
#link(<equation-Artin-lemma>)[\[equation-Artin-lemma\]]
非零分量最少的非零解. 通过对 $alpha_1 , dots.h , alpha_m$ 做一个置换,
并对 $bold(c)$乘上一个 $E$ 中系数, 不妨设 $c_1 in F \\ 0$.

由于 $alpha_1 , dots.h , alpha_m$ $F$-线性无关, 考察
#link(<equation-Artin-lemma>)[\[equation-Artin-lemma\]]
第一个方程知道必有某个 $c_i in E \\ F$, 于是存在某个 $sigma_j$ 使得
$sigma_j (c_i) eq.not c_i$. 观察到
$bold(c) prime = (sigma_j (c_1) , dots.h , sigma_j (c_m))$ 为
#link(<equation-Artin-lemma>)[\[equation-Artin-lemma\]] 非零解, 从而
$bold(c) - bold(c) prime$ 是非零分量小于 $bold(c)$ 的
#link(<equation-Artin-lemma>)[\[equation-Artin-lemma\]] 非零解, 与
$bold(c)$ 构造矛盾.~◻

]
#block[
#strong[定理 2.2];. #emph[假设 $G subset.eq "Aut" E$ 是一个有限子群,
那么 $ G = "Aut" (E \/ E^G) . $]

] <theorem-automorphism-finite-subgroup>
#block[
#emph[Proof.] 结论由下面不等式立刻得到
$ "Aut" (E \/ E^G) lt.eq [E : E^G] lt.eq (G : 1) lt.eq "Aut" (E \/ E^G) $
其中第一个$lt.eq$由#link(<corollary-finite-extension-homomorphisms-numbers>)[1.6];得到,
第二个由#link(<lemma-Artin>)[2.1];得到.~◻

]
=== 有限Galois扩张的等价定义
<有限galois扩张的等价定义>
如果域扩张 $E \/ F$ 有限, 正规并且可分, 那么称其是#emph[有限Galois];的.
如果域扩张 $E \/ F$ 是有限 Galois 的, 那么 $"Aut" (E \/ F)$ 称为 $E$ 在
$F$ 上的#emph[Galois群];, 并且记作 $"Gal" (E \/ F)$.

#block[
#strong[定理 2.3];. #emph[下面论断对于域扩张 $E \/ F$ 来说是等价的.]

+ #emph[$E$ 是某个可分多项式 $f in F [X]$ 的分裂域.]

+ #emph[$E$ 在 $F$ 上有限并且 $F = E^("Aut" (E \/ F))$.]

+ #emph[存在有限子群 $G subset.eq "Aut" E$ 使得 $F = E^G$.]

+ #emph[$E$ 在 $F$ 上有限 Galois.]

] <theorem-finite-Galois-TFAE-conditions>
#block[
#emph[Proof.] $(1) arrow.r.double.long (2)$
由#link(<proposition-polynomial-splitting-field-degree>)[1.1] $E$ 在 $F$
上有限. $F = E^("Aut" (E \/ F))$ 是因为下面等式
$ [E : E^("Aut" (E \/ F))] = ("Aut" (E \/ E^("Aut" (E \/ F))) : 1) = ("Aut" (E \/ F) : 1) = [E : F] , $
其中, 第一\($E$可视为 $f in E^("Aut" (E \/ F)) [X]$的分裂域),
三个等号由#link(<proposition-single-polynomial-extension-number>)[1.4];得到,
第二个等号由#link(<theorem-automorphism-finite-subgroup>)[2.2];得到.

$(2) arrow.r.double.long (3)$ 显然.

$(3) arrow.r.double.long (4)$ 有限性由#link(<lemma-Artin>)[2.1];保证.
对任意 $alpha in E$, 假设 $f in F [X]$ 为 $alpha$ 极小多项式,
$G . alpha = {alpha_1 , dots.h , alpha_n}$ 为 $G$-轨道. 考虑
$g (X) = (X - alpha_1) dots.h.c (X - alpha_n)$.

由于 $sigma g = g , forall sigma in G$, $g in F [X]$. 又
$g (alpha) = 0$, 所以 $f divides g$. 但对每个 $i$, 存在 $sigma_i in G$
使得 $sigma_i (alpha) = alpha_i$ 因此
$f (alpha_i) = sigma_i f (alpha) = 0$, 换句话说
$(X - alpha_i) divides f$. $(X - alpha_i)$ 两两不同, 故 $g divides f$.
因此 $f = g$, 遂 $f$ 可分且在 $E$ 上分裂.

$(4) arrow.r.double.long (1)$ 假设 $E = F [alpha_1 , dots.h , alpha_n]$,
记 $alpha_i$ 在 $F [X]$ 的极小多项式为 $f_i$, 不同 $f_i$ 的乘积为 $f$.
于是 $E$ 是 $f$ 的分裂域.~◻

]
#block[
#strong[推论 2.4] \(Artin定理). #emph[假设 $G subset.eq "Aut" E$
为一个有限子群, $F = E^G$. 那么 $E$ 是 $F$ 的 Galois 群为 $G$ 的 Galois
扩张, 并且 $ [E : F] = (G : 1) . $]

] <corollary-Artin-theorem>
#block[
#emph[Proof.] 由#link(<theorem-finite-Galois-TFAE-conditions>)[2.3] $E$
是 $F$ 的 Galois 扩张且是某个可分多项式 $f in F [X]$ 的分裂域.
由#link(<proposition-single-polynomial-extension-number>)[1.4]
$("Aut" (E \/ F) : 1) = [E : F]$.
由#link(<theorem-automorphism-finite-subgroup>)[2.2]
$G = "Aut" (E \/ F)$. 因此 $[E : F] = (G : 1)$.~◻

]
#block[
#strong[推论 2.5];. #emph[每个 $F$ 的有限可分扩张 $E$ 都包含在 $F$
的一个 Galois 扩张中.]

] <corollary-finite-separable-extension-contained-in-a-Galois-extension>
#block[
#strong[推论 2.6];. #emph[假设 $E supset.eq M supset.eq F$ 为域扩张.
如果 $E$ 在 $F$ 上 Galois, 那么 $E$ 在 $M$ 上 Galois.]

]
=== 有限Galois基本定理
<有限galois基本定理>
#block[
#strong[定理 2.7] \(有限Galois基本定理). #emph[假设 $E \/ F$ 是一个
Galois 群为 $G$ 的有限 Galois 扩张. 那么存在下面双射
$ {G upright("的子群") H} & arrow.l.r {E \/ F upright("间的子扩张") M}\
H & arrow.r.bar E^H\
"Gal" (E \/ M) & arrow.l.bar M $ 此外,]

+ #emph[$H_1 subset.eq H_2 arrow.l.r.double E^(H_1) supset.eq E^(H_2)$.]

+ #emph[$(H_2 : H_1) = [E^(H_1) : E^(H_2)]$.]

+ #emph[$sigma (E^H) = E^(sigma H sigma^(- 1)) , "Gal" (E \/ sigma M) = sigma "Gal" (E \/ M) sigma^(- 1)$.]

+ #emph[$H$ 是 $G$ 的正规子群 $arrow.l.r.double E^H \/ F$ 是 Galois
  扩张. 满足此等价条件时, $ "Gal" (E^H \/ F) tilde.eq G \/ H . $]

] <theorem-finite-Galois-fundamental-theorem>
#block[
#emph[Proof.] 双射: 由#link(<theorem-automorphism-finite-subgroup>)[2.2]
$"Gal" (E \/ E^H) = H$;
由#link(<theorem-finite-Galois-TFAE-conditions>)[2.3]
$E^("Gal" (E \/ M)) = M$.

$(1)$ 是按定义的. $(2)$ 由#link(<corollary-Artin-theorem>)[2.4];,
$(H_i : 1) = [E : E^(H_i)]$, 于是
$ (H_2 : H_1) = (H_2 : 1) / (H_1 : 1) = [E : E^(H_2)] / [E : E^(H_1)] = [E^(H_1) : E^(H_2)] . $

$(3)$ 直接验证. $(4)$ $arrow.r.double.long$ 由 $(3)$
$sigma (E^H) = E^H$, 于是
$ tilde(G) = {sigma\|_(E^H) : sigma in G} subset.eq "Aut" (E^H) $
为一个子群且 $(E^H)^(tilde(G)) = F$. 因此,
由#link(<theorem-finite-Galois-TFAE-conditions>)[2.3] $E^H \/ F$ 是一个
Galois 扩张. 又由#link(<corollary-Artin-theorem>)[2.4]
$tilde(G) = "Gal" (E^H \/ F)$, 所以
$ G arrow.r tilde(G) = "Gal" (E^H \/ F) , quad sigma arrow.r.bar sigma\|_(E^H) $
核为 $H$.

$arrow.l.double.long$
由#link(<theorem-finite-Galois-TFAE-conditions>)[2.3];, 可以假设 $E^H$
为某个可分多项式 $f in F [X]$ 的分裂域. $G$ 中元素将 $f$ 根映到 $f$ 根,
而 $E^H$ 由 $f$ 根生成, 因此对任意 $sigma in G$ 有, $sigma (E^H) = E^H$.
由 $(3)$ $E^(sigma H sigma^(- 1)) = E^H$, 结合 $E \/ F$ 子扩张与 $G$
子群的双射知道 $H = sigma H sigma^(- 1)$.~◻

]
#block[
#strong[命题 2.8];. #emph[假设 $E$ 和 $L$ 为 $F$ 包含某个公共域的扩张.
如果 $E \/ F$ 有限 Galois, 那么 $E L \/ L$ 和 $E \/ E sect L$ 都是有限
Galois 的, 且映射
$ "Gal" (E L \/ L) arrow.r "Gal" (E \/ E sect L) , quad sigma arrow.r.bar sigma\|_E $
是同构.]

] <proposition-composite-field-Galois-over-middle-field>
#block[
#emph[Proof.] 由#link(<theorem-finite-Galois-TFAE-conditions>)[2.3];,
$E$ 是某个可分多项式 $f in F [X]$ 的分裂域, 于是 $E L$ 和 $E$ 都是 $f$
的分裂域\(分别看成 $L [X]$ 和 $E sect L [X]$ 上的多项式).
进而再由#link(<theorem-finite-Galois-TFAE-conditions>)[2.3];, $E L \/ L$
和 $E \/ E sect L$ 都是有限 Galois 扩张.

设 $alpha_1 , dots.h , alpha_n$ 为 $f$ 的根, 那么
$E = F [alpha_1 , dots.h , alpha_n]$. 如果 $sigma in "Gal" (E L \/ L)$,
那么 $sigma (alpha_i)$ 仍是 $f$ 的根, 因此对任意 $x in E$,
$sigma (x) in E$. 换句话说, 映射定义是良好的.

单射. 假设 $sigma , sigma prime in "Gal" (E L \/ L)$ 对所有 $e in E$
都有 $sigma (e) = sigma prime (e)$. 因为 $E L$ 中的任意元素 $x$
均具有形式 $sum_i e_i l_i$, 其中 $e_i in E , l_i in L$, 所以
$sigma (x) = sigma prime (x)$.

满射. 由#link(<corollary-Artin-theorem>)[2.4] 及
$E^("Im" "Gal" (E L \/ L)) = E sect L$ 得到
$ "Im" "Gal" (E L \/ L) = "Gal" (E \/ E sect L) $~◻

]
#block[
#strong[推论 2.9];. #emph[假设 $E$ 和 $L$ 为 $F$ 包含某个公共域的扩张.
如果 $E \/ F$ 有限 Galois, $L \/ F$ 有限, 那么
$ [E L : F] = frac([E : F] [L : F], [E sect L : F]) . $]

] <corollary-composite-field-Galois-over-middle-field>
#block[
#emph[Proof.]
$ [E L : F] = [E L : L] [L : F] = [E : L sect F] [L : F] = frac([E : F] [L : F], [E sect L : F]) . $~◻

]
#block[
#strong[命题 2.10];. #emph[假设 $E_1 , E_2$ 都是 $F$
的包含某个公共域的扩张. 如果 $E_1$ 和 $E_2$ 都是 $F$ 的 Galois 扩张,
那么 $E_1 E_2$ 和 $E_1 sect E_2$ 都在 $F$ 上 Galois, 且映射
$ "Gal" (E_1 E_2 \/ F) arrow.r "Gal" (E_1 \/ F) times "Gal" (E_2 \/ F) , quad sigma arrow.r.bar (sigma\|_(E_1) , sigma\|_(E_2)) $
是一个到 $"Gal" (E_1 \/ F) times "Gal" (E_2 \/ F)$ 子群
$ "Gal" (E_1 \/ F) times_("Gal" (E_1 sect E_2) \/ F) "Gal" (E_2 \/ F) = {(sigma_1 , sigma_2) : sigma_1\|_(E_1 sect E_2) = sigma_2\|_(E_1 sect E_2)} $
的同构.]

]
#block[
#emph[Proof.] $E_1 E_2 \/ F$ 和 $E_1 sect E_2 \/ F$ 的 Galois
性证明类似于#link(<proposition-composite-field-Galois-over-middle-field>)[2.8];.

映射的良定性和单性是显然的. 下面通过计数的方式得到欲证结论.

设 $sigma_1 in "Gal" (E_1 \/ F)$, 结合 $E_1 sect E_2 \/ F$
及#link(<theorem-finite-Galois-fundamental-theorem>)[2.7] 知道
$sigma_1\|_(E_1 sect E_2) in "Gal" (E_1 sect E_2 \/ F)$.
结合#link(<theorem-finite-Galois-TFAE-conditions>)[2.3];及#link(<proposition-single-polynomial-extension-number>)[1.4];,
$sigma_1\|_(E_1 sect E_2)$ 能扩张为 $[E_2 : E_1 sect E_2]$ 个
$"Gal" (E_2 \/ F)$ 中的元素. 因此
$ ("Gal" (E_1 \/ F) times_("Gal" (E_1 sect E_2) \/ F) "Gal" (E_2 \/ F) : 1) = [E_2 : E_1 sect E_2] [E_1 : F] $
由#link(<theorem-finite-Galois-fundamental-theorem>)[2.7];有
$ "Gal" (E_1 sect E_2 \/ F) tilde.eq "Gal" (E_1 E_2 \/ F) \/ "Gal" (E_1 E_2 \/ E_1 sect E_2) . $
结合#link(<corollary-composite-field-Galois-over-middle-field>)[2.9];得到
$ [E_1 E_2 : F] & = [E_1 sect E_2 : F] [E_1 E_2 \/ E_1 sect E_2]\
 & = frac([E_1 : F] [E_2 : F], [E_1 E_2 : F]) [E_1 E_2 : E_2] [E_2 : E_1 sect E_2]\
 & = [E_1 : F] [E_2 : E_1 sect E_2] . $~◻

]
=== 一个多项式的 Galois 群
<一个多项式的-galois-群>
如果 $f in F [X]$ 可分,
那么由#link(<theorem-finite-Galois-TFAE-conditions>)[2.3];其分裂域 $F_f$
在 $F$ 上 Galois, 称 $"Gal" (F_f \/ F)$ 为 $f$ 的#emph[Galois 群];, 记作
$G_f .$

== 一般 Galois 扩张
<一般-galois-扩张>
=== Galois 扩张的一般定义
<galois-扩张的一般定义>
称域扩张 $Omega \/ F$ 是一个 #emph[Galois 扩张];如果 $Omega$ 在 $F$
上可分且正规.

#block[
#strong[命题 2.11];. #emph[如果 $Omega$ 在 $F$ 上 Galois, 那么 $Omega$
在每个 $Omega \/ F$ 的中间域 $M$ 上 Galois.]

] <proposition-Galois-over-middle-field>
#block[
#strong[命题 2.12];. #emph[假设 $Omega$ 是 $F$ 的一个 Galois 扩张, $E$
是 $Omega$ 包含 $F$ 的子域. 那么每个 $F$-同态 $sigma : E arrow.r Omega$
可以扩张为 $F$-同构 $Omega arrow.r Omega$.]

] <proposition-homomorphism-extend-to-Galois-isomorphism>
#block[
#emph[Proof.] 假设 $cal(S)$ 由所有形如 $(N , tau)$ 的二元组组成, 其中
$N$ 是 $Omega$ 包含 $E$ 的子域, $tau : N arrow.r Omega$ 为
$sigma : E arrow.r Omega$ 的扩张. 赋予 $cal(S)$ 一个偏序关系, 记
$(N_1 , tau_1) lt.eq (N_2 , tau_2)$ 当且仅当 $N_1 subset.eq N_2$ 且
$tau_2\|_(N_1) = tau_1$. 根据 $cal(S)$ 的构造, $cal(S)$
的每个上升链都有上界, 因此由 Zorn 引理, $cal(S)$ 有极大元
$(Omega_0 , sigma_0)$. 下面我们证明 $Omega_0 = Omega$, $sigma_0$ 是同构.

如果 $Omega_0 subset.neq Omega$, 那么存在 $alpha in Omega \\ Omega_0$.
而由#link(<proposition-simple-extension-and-field-homomorphism>)[1.2];,
$sigma_0$ 有扩张 $Omega_0 [alpha] arrow.r Omega$, 这与极大性矛盾. 于是
$Omega_0 = Omega$. 对任意 $alpha in Omega$, 设 $alpha$ 在 $F [X]$
的极小多项式为 $f$. 结合 $sigma_0$ 单性 $f$ 所有根映到 $f$ 所有根, 自然
$alpha in "Im" sigma_0$.~◻

]
#block[
#strong[推论 2.13];. #emph[假设 $E$ 是 Galois 扩张 $Omega \/ F$
的中间域. 如果 $E$ 在 $"Aut" (Omega \/ F)$ 下稳定, 即对任意
$sigma in "Aut" (Omega \/ F) , sigma (E) = E$. 那么 $E$ 在 $F$ 上
Galois, 且其 Galois 群等于 $"Aut" (Omega \/ F)$ 在 $E$ 的限制.]

] <corollary-Galois-extension-stable-middle-field-Galois>
#block[
#emph[Proof.] 假设 $alpha in E$ 在 $F [X]$ 为极小多项式为 $f$. 因为
$Omega$ 在 $F$ 上 Galois, 可以设 $f$ 在 $Omega$ 有
$alpha_1 , dots.h , alpha_(deg f)$ 个根. 于是存在 $F$-同构
$sigma : F [alpha] arrow.r F [alpha_i]$ 将 $alpha$ 映到 $alpha_i$,
考虑复合 $F [alpha] arrow.r F [alpha_i] arrow.r.hook Omega$,
由#link(<proposition-homomorphism-extend-to-Galois-isomorphism>)[2.12]
$sigma$ 可以扩张为 $F$-同构 $Omega arrow.r Omega$. 因为 $E$ 在
$"Aut" (Omega \/ F)$ 下稳定, $alpha_i in E$.~◻

]
=== Galois 群的 Krull 拓扑
<galois-群的-krull-拓扑>
下面命题证明可以参考#cite(<milne_fields_2022>) 命题 7.2
或#cite(<2014-zv>) 命题 1.3.1和命题1.3.2.

#block[
#strong[命题 2.14];. #emph[假设 $G$ 是一个拓扑群, $cal(N)$ 为 $G$ 单位元
$e$ 的一个邻域基, 那么]

+ #emph[对任意 $N_1 , N_2 in cal(N)$, 存在 $N prime in cal(N)$ 使得
  $N prime subset.eq N_1 sect N_2$.]

+ #emph[对任意 $N in cal(N)$, 存在 $N prime in cal(N)$ 使得
  $N prime N prime subset.eq N$.]

+ #emph[对任意 $N in cal(N)$, 存在 $N prime in cal(N)$ 使得
  $N prime subset.eq N^(- 1)$.]

+ #emph[对任意 $N in cal(N)$ 以及 $g in G$, 存在 $N prime in cal(N)$
  使得 $N prime subset.eq g N g^(- 1)$.]

+ #emph[对任意 $g in G$, 存在 $g$ 的一个邻域基 ${g N : N in cal(N)}$.]

#emph[反过来, 如果 $G$ 是一个群, $cal(N)$ 是 $G$ 的一个满足上面
$(1) upright("-") (4)$ 的非空子集族, 那么存在 $G$ 的唯一拓扑使得上面
$(5)$ 成立.]

] <proposition-topological-group-iff-condition>
#block[
#strong[命题 2.15];. #emph[假设 $Omega \/ F$ 是一个 Galois 扩张,
$G = "Aut" (Omega \/ F)$. 对 $Omega$ 的任意有限子集 $S$, 记
$ G (S) = {sigma in G : sigma s = s , forall s in S} . $
$cal(N) = {G (S) : S subset.eq Omega upright("有限")}$ 是 $G$
的一个拓扑的 $"id"$ 附近的邻域基. 在这个拓扑中, 所有由 $G$-稳定的有限集
$S$ 得到的 $G (S)$ 构成了 $"id"$ 附近的由所有开正规子群组成邻域基.]

#emph[我们称这样定义的 $"Aut" (Omega \/ F)$ 拓扑为#emph[Krull 拓扑];.
如果 $"Aut" (Omega \/ F)$ 赋予了 Krull 拓扑, 那么称其为 $Omega \/ F$ 的
#emph[Galois 群];, 并记作 $"Gal" (Omega \/ F)$.]

] <proposition-Galois-group-definition>
#block[
#emph[Proof.] 考虑证明 $cal(N)$ 满足
#link(<proposition-topological-group-iff-condition>)[2.14] 的
$(1) upright("-") (4)$.

$(1)$ 由观察 $G (S_1) sect G (S_2) = G (S_1 union S_2)$ 得到;

$(2) , (3)$ 成立是因为 $G (S)$ 具有 $"Aut" (Omega \/ F)$ 子群结构;

$(4)$ 以及第二个断言. 假设 $S subset.eq Omega$ 有限, 那么域扩张
$F (S) \/ F$ 有限.
由#link(<corollary-finite-extension-homomorphisms-numbers>)[1.6]
$F$-同态 $F (S) arrow.r Omega$ 有限. 对
$sigma , tau in "Aut" (Omega \/ F)$, 如果
$sigma\|_(F (S)) = tau\|_(F (S))$, 那么 $sigma S = tau S$, 因此
$union.big_(sigma in G) sigma S$ 有限. 而
$sigma union.big_(sigma in G) sigma S = union.big_(sigma in G) sigma S$,
结合观察 $G (sigma S) = sigma G (S) sigma^(- 1)$ 知道
$G (union.big_(sigma in G) sigma S)$ 是 $G$ 的正规子群.~◻

]
#block[
#emph[注 2.16];.

+ 如果 $E \/ F$ 是有限 Galois 扩张, 那么 $"Gal" (E \/ F)$ 的 Krull
  拓扑即离散拓扑: 因为如果设 $E = F [S]$, 其中 $S$ 是一个有限集, 那么
  $G (S) = {"id"}$.

+ 由#link(<corollary-Galois-extension-stable-middle-field-Galois>)[2.13];,
  #link(<proposition-Galois-group-definition>)[2.15] 中所说的
  $G$-稳定有限集 $S$ 生成的扩张 $F (S)$ 即 $F$ 的有限 Galois 扩张, 且
  $"Gal" (Omega \/ F)$ 有一个 $"id"$ 附近开正规子群邻域基
  $ {"Gal" (Omega \/ E) : E upright("在") F upright("上有限 Galois")} . $

+ #link(<proposition-Galois-group-definition>)[2.15] 中还证明了,
  有限子集 $S subset.eq Omega$ 包含在 $G$-稳定有限集
  $union.big_(sigma in G) sigma S$ 中.

] <remark-Galois-group-definition>
#block[
#strong[命题 2.17];. #emph[假设 $Omega \/ F$ 是一个 Galois 扩张, 那么对
$Omega \/ F$ 任意有限 Galois 子扩张 $E$, 映射
$ "Gal" (Omega \/ F) arrow.r "Gal" (E \/ F) , quad sigma arrow.r.bar sigma\|_E $
是一个连续满射, 并且有
$ "Gal" (Omega \/ F) \/ "Gal" (Omega \/ E) arrow.r "Gal" (E \/ F) . $]

] <proposition-Galois-epimorphism-to-finite-Galois>
#block[
#emph[Proof.]
映射的满射和良定性由#link(<corollary-Galois-extension-stable-middle-field-Galois>)[2.13];保证.
而 $1_("Gal" (E \/ F))$ 在 $"Gal" (Omega \/ F)$ 的逆像 $"Gal" (G \/ E)$
开. 任意 $sigma in "Gal" (E \/ F)$ 的逆像是 $"Gal" (G \/ E)$ 的陪集,
因此开.~◻

]
#block[
#strong[命题 2.18];. #emph[Galois 扩张 $Omega \/ F$ 的 Galois 群
$"Gal" (Omega \/ F)$ Hausdorff, 紧且完全不连通.]

] <proposition-Galois-group-topological-properties>
#block[
#emph[Proof.] \(Hausdorff) 如果 $sigma , tau in "Gal" (Omega \/ F)$ 满足
$sigma eq.not tau$, 那么 $sigma^(- 1) tau eq.not 1_G$, 于是存在
$alpha in Omega$ 使得 $sigma^(- 1) tau (alpha) eq.not alpha$. 换句话说
$sigma (alpha) eq.not tau (alpha)$. 取 $S in.rev alpha$ 有限, 那么
$sigma G (S)$ 和 $tau G (S)$ 不交, 且分别是 $sigma$ 和 $tau$ 的开邻域,
所以 $G$ 是 Hausdorff 的.

\(紧)特别地, 取 $S subset.eq Omega$ 为一个包含 $alpha$ 的
$G$-有限稳定子集\(存在性见#link(<remark-Galois-group-definition>)[2.16];),
由#link(<proposition-Galois-group-definition>)[2.15];, $G (S)$ 是 $G$
的正规子群, 那么 $sigma$ 和 $tau$ 在 $G \/ G (S)$ 中的像不等. 所以赋予
$G \/ G (S)$ 商拓扑结构, 映射
$ G arrow.r product_(S upright("在") G upright("下有限稳定")) G \/ G (S) , quad sigma arrow.r.bar ([sigma]) $
连续单. 又因为 $G (S)$ 是映射
$ G arrow.r "Sym" (S) , quad sigma arrow.r.bar sigma\|_S $ 的像, 指数
$(G : G (S))$ 有限, 因此 $G \/ G (S)$ 紧.

由 Tychonoff 定理, $product G \/ G (S)$ 紧, 只需知道 $G$ 的像闭即可.

首先 $G \/ G (S)$ 拓扑实际上是离散拓扑, 这是因为 $[sigma]$ 在
$G arrow.r.bar G \/ G (S)$ 的逆像为 $sigma G (S)$ 开.

对 $S_1 subset.eq S_2$, 投影映射
$p_i : product G \/ G (S) arrow.r G \/ G (S_i)$, 以及商映射
$pi : G \/ G (S_2) arrow.r G \/ G (S_1)$ 都连续. 设$E (S_1 , S_2)$ 为
$product G \/ G (S)$ 中 $p_1 = pi circle.stroked.tiny p_2$ 的点,
其作为闭集
$p_1^(- 1) (sigma) sect (pi circle.stroked.tiny p_2)^(- 1) (sigma)$
的有限并是闭的. 因此 $G = sect.big_(S_1 subset.eq S_2) E (S_1 , S_2)$
是闭的.

\(完全不连通性) 对任意 $G$-稳定有限集 $S subset.eq Omega$, $G (S)$
既开又闭. 既开又闭集是连通分支的并#footnote[考虑拓扑空间的连通分支分解.
注意到包含既开又闭集的连通分支并与其补不交, 而其补也是既开又闭集.];, 而
$sect.big G (S) = {1_G}$, 这说明包含 $1_G$ 的连通分支只有 ${1_G}$.
其余元素的不连通性由拓扑群的其次性保证.~◻

]
#block[
#strong[命题 2.19];. #emph[对任意 Galois 扩张 $Omega \/ F$,
$Omega^("Gal" (Omega \/ F)) = F$.]

] <proposition-Galois-stable-field>
#block[
#emph[Proof.] 每个 $Omega \/ F$ 中的元素都落在 $F$ 的一个有限 Galois
扩张中,
结合#link(<proposition-Galois-epimorphism-to-finite-Galois>)[2.17];和#link(<theorem-finite-Galois-TFAE-conditions>)[2.3];即得.~◻

]
===== Artin 定理
<artin-定理>
#block[
#strong[命题 2.20] \(Artin). #emph[假设 $G subset.eq "Aut" E$
是一个拓扑群, $F = E^G$. 如果 $G$ 紧, 且 $E$ 每个元素的稳定化子都在 $G$
中开, 那么 $E$ 是 $F$ 的 Galois 扩张且其 Galois 群为 $G$.]

]
#block[
#emph[Proof.] 假设 $x_1 , dots.h , x_n$ 为 $E \\ F$ 的有限个元素,
由条件可以设 $H_i$ 为 $G$ 的开子群固定 $x_i$. 因为 $G$ 紧 $H_i$ 陪集构成
$G$ 的一个开覆盖且陪集基数即轨道 $G x_i$ 基数, 故 $G x_i$ 有限. 固定
$G x_i$ 某个元素的 $G$ 子群是 $H_i$ 的共轭, 并且所有 $H_i$
都是这样得到的, 于是由有限性 $H_i$ 所有共轭交 $N_i$ 是 $G$ 的开正规子群.
同理 $N = sect.big N_i$ 也是 $G$ 的开正规子群, 其固定
$S = union.big G x_i$ 的所有元素. 考虑
$ f_1 : G arrow.r "Aut" (F [S] \/ F) , quad sigma arrow.r.bar sigma\|_(F [S]) , $
前面讨论说明这个态射定义是良好的, 而且其核为 $N$. $G \/ N$ 有限, 因为
$ f_2 : "Aut" (F [S] \/ F) arrow.r "Sym" (G x_i) , quad tau arrow.r.bar tau\|_S $
是一个单射, 复合 $f_2 circle.stroked.tiny f_1$ 核也是 $N$, 而
$"Sym" (S)$ 是一个有限群. 于是 $G \/ N$ 是 $E \/ F$ 中间域 $M = F [S]$
的自同构群, 且由定义 $F [S]^(G \/ N) = F$,
由#link(<corollary-Artin-theorem>)[2.4];, $F [S] \/ F$ 是有限 Galois
扩张, 且其 Galois 群为 $G \/ N$. 因为 $E$ 是所有形如这样的 $M$ 的并,
因此 $E$ 在 $F$ 上 Galois.

稳定化子都是开的, 于是 $G arrow.r.hook "Gal" (E \/ F)$ 连续单. 又 $G$
紧且 $"Gal" (E \/ F)$ Hausdorff, 故 $G arrow.r.hook "Gal" (E \/ F)$ 闭.
现在只剩证明 $"Im" G = "Gal" (E \/ F)$ 而这只需证明 $"Im" G$ 是稠密的.
由前面所说, $"Im" G$ 到 $"Gal" (M \/ F)$ 的映射满, 其中 $M$ 是 $E \/ F$
的有限 Galois 子扩张. 而 $sigma in "Gal" (E \/ F)$
的任意开邻域总包含一个开邻域 $sigma "Gal" (E \/ M)$, 因此其等于某个
$sigma prime "Gal" (E \/ M)$, 其中 $sigma prime in "Im" G$.~◻

]
=== Galois 基本定理
<galois-基本定理>
#block[
#strong[命题 2.21];. #emph[假设 $Omega \/ F$ 是一个 Galois 扩张, 其
Galois 群为 $G$.]

+ #emph[假设 $M$ 为 $Omega \/ F$ 的子扩张, 那么 $Omega$ 在 $M$ 上
  Galois, $"Gal" (Omega \/ M)$ 在 $G$ 中闭, 并且
  $Omega^("Gal" (Omega \/ M)) = M$.]

+ #emph[假设 $H subset.eq G$ 为任意子群, 那么 $"Gal" (Omega \/ Omega^H)$
  为 $H$ 的闭包.]

]
#block[
#emph[Proof.] $(1)$ $Omega$ 在 $M$ 上 Galois
由#link(<proposition-Galois-over-middle-field>)[2.11];保证. 闭:
对任意有限 $S subset.eq M$, $G (S)$ 是 $G$ 的开子群, 因此闭. 而
$"Gal" (Omega \/ M) = sect.big_(S subset.eq M) G (S)$.
$Omega^("Gal" (Omega \/ M)) = M$
由#link(<proposition-Galois-stable-field>)[2.19];得到.

$(2)$ 由 $(1)$ $Omega$ 在中间域 $Omega^H$ 上 Galois, 且闭子群
$"Gal" (Omega \/ Omega^H)$ 包含 $H$. 另一方面, 如果
$sigma in G \\ overline(H)$, 可以找到 $F$ 上的有限 Galois 扩张 $E$ 使得
$ sigma "Gal" (Omega \/ E) sect overline(H) = diameter . $ 限制映射
$phi.alt : "Gal" (Omega \/ F) arrow.r "Gal" (E \/ F)$ 其核即
$"Gal" (Omega \/ E)$. 于是 $H$ 不交 $sigma "Gal" (Omega \/ E)$ 蕴含着
$sigma in.not overline(H) = phi.alt^(- 1) phi.alt H$, $sigma$ 不固定
$Omega^H$ 的子域 $E^(phi.alt H)$, 换句话说,
$sigma in.not "Gal" (Omega \/ Omega^H)$.~◻

]
#block[
#strong[定理 2.22] \(Galois 基本定理). #emph[假设 $Omega$ 是 $F$ 的
Galois 扩张, 其 Galois 群为 $G$. 那么下面给出了双射
$ {G upright("的闭子群")} & arrow.l.r {Omega \/ F upright("的中间域")}\
H & arrow.r.bar Omega^H\
"Gal" (G \/ M) & arrow.l.bar M $ 此外,]

+ #emph[$H_1 supset.eq H_2 arrow.l.r.double Omega^(H_1) subset.eq Omega^(H_2)$.]

+ #emph[$G$ 的闭子群 $H$ 开当且仅当 $[Omega^H : F] < oo$. 并且,
  若此等价条件成立, 那么 $(G : H) = [Omega^H : F]$.]

+ #emph[$Omega^(sigma H sigma^(- 1)) = sigma (Omega^H) , quad "Gal" (Omega \/ sigma H) = sigma "Gal" (Omega \/ M) sigma^(- 1)$.]

+ #emph[$G$ 的闭子群 $H$ 正规当且仅当 $Omega^H$ 在 $F$ 上 Galois.
  若此等价条件满足, 那么 $ "Gal" (Omega^H \/ F) tilde.eq G \/ H . $]

]
#block[
#emph[Proof.] $(2)$ 注意到, 映射
$ G \/ H arrow.r "Hom"_F (Omega^H , Omega) , quad sigma arrow.r.bar sigma\|_(Omega^H) $
是一个双射.
结合#link(<proposition-Galois-group-topological-properties>)[2.18] $G$
紧, $Omega^H \/ F$ 作为 $Omega \/ F$
子扩张可分以及#link(<proposition-single-polynomial-extension-number>)[1.4];即可.~◻

]
#block[
#strong[命题 2.23];. #emph[假设 $E , L$ 为 $F$ 的域扩张. 如果 $E \/ F$
Galois, 那么 $E L \/ L$ 和 $E \/ E sect L$ Galois, 且映射
$ "Gal" (E L \/ L) arrow.r "Gal" (E \/ E sect L) , quad sigma arrow.r.bar sigma\|_E $
是拓扑群同构.]

] <propostion-Galois-group-of-field-composite-isomorphism>
#block[
#strong[推论 2.24];. #emph[假设 $E , L$ 为 $F$ 的域扩张, $E \/ F$ 是
Galois 扩张, $Omega$ 是 $F$ 的代数闭包. 如果 $rho : E arrow.r Omega$ 和
$sigma : L arrow.r Omega$ 是 $F$-同态使得
$rho\|_(E sect L) = sigma\|_(E sect L)$, 那么存在 $F$-同态
$tau : E L arrow.r Omega$ 使得 $tau\|_E = rho$ 以及 $tau\|_L = sigma$.]

]
#block[
#emph[Proof.]
由#link(<proposition-homomorphism-extend-to-Galois-isomorphism>)[2.12]
$sigma$ 可以扩张为 $F$-同态 $s : E L arrow.r Omega$. 因为
$rho\|_(E sect L) = sigma\|_(E sect L)$ 可以找到
$epsilon in "Gal" (E \/ E sect L)$ 使得
$s\|_E = rho circle.stroked.tiny epsilon$.
由#link(<propostion-Galois-group-of-field-composite-isomorphism>)[2.23];,
存在 $e in "Gal" (E L \/ L)$ 使得 $e\|_E = epsilon$. 取
$tau = s circle.stroked.tiny e^(- 1)$.~◻

]
= 域扩张性质
<域扩张性质>
== 可分性
<可分性>
=== 纯不可分扩张
<纯不可分扩张>
假设 $F \/ K$ 是一个域扩张. 一个元素 $u in F$ 称为在 $K$
上#emph[纯不可分];, 如果 $u$ 在 $K [X]$ 上的极小多项式具有形式
$f = (X - u)^m$. $F$ 称为 $K$ 的#emph[纯不可分扩张];, 如果$F$
的每个元素都在 $K$ 上纯不可分.

#block[
#strong[命题 3.1];. #emph[假设 $F \/ K$ 是一个域扩张. 那么 $u in F$ 在
$K$ 上同时可分及纯不可分当且仅当 $u in K$.]

] <proposition-both-separable-purely-inseparable>
===== 纯不可分扩张的等价条件
<纯不可分扩张的等价条件>
#block[
#strong[引理 3.2];. #emph[假设 $F \/ K$ 是一个域扩张, 其中
$"char" K = p eq.not 0$. 如果 $u in F$ 在 $K$ 上代数, 那么存在某个
$n in bb(N)$ 使得 $u^(p^n)$ 在 $K$ 上可分.]

] <lemma-power-of-element-separable>
#block[
#emph[Proof.] 假设 $u$ 的极小多项式为 $(X - u)^m$, 对 $m$ 进行归纳.
$m = 1$ 时结果显然. 设 $m > 1$,
由#link(<proposition-irreducible-polynomial-with-multiple-roots-TFAE-condition>)[1.16];,
$(X - u)^m$ 可以视为 $X^p$ 的多项式. 于是可以设 $m = p^r n$ 其中
$gcd (p , n) = 1 , r > 1$. 因此 $(X - u)^m = (X^(p^r) - u^(p^r))^n$,
换句话说 $u^(p^r)$ 纯不可分, 由归纳假设知道存在 $n in bb(N)$ 使得
$(u^(p^r))^(p^n) = u^(p^(r + n))$ 在 $K$ 上可分.~◻

]
#block[
#strong[定理 3.3];. #emph[假设 $F \/ K$ 为代数扩张, $"char" K eq.not 0$,
那么以下条件等价:]

+ #emph[$F$ 在 $K$ 上纯不可分.]

+ #emph[$F$ 的任意元素 $u$ 在 $K$ 上极小多项式具有形式
  $x^(p^n) - a in K [X]$.]

+ #emph[如果 $u in F$, 那么存在 $n in bb(N)$ 使得 $u^(p^n) in K$.]

+ #emph[$F$ 在 $K$ 上的所有可分元由 $K$ 本身组成.]

+ #emph[$F$ 由 $K$ 上一个纯不可分元集合生成.]

] <theorem-purely-inseparable-extension-TFAE-conditions>
#block[
#emph[Proof.] $(1) arrow.r.double.long (2)$ 如果 $u in F$ 纯不可分,
由#link(<proposition-irreducible-polynomial-with-multiple-roots-TFAE-condition>)[1.16];,
$u in F$ 在 $K$ 上的极小多项式 $(X - u)^m$ 可视为 $X^p$ 的多项式.
于是可设 $m = p^r n$ 其中 $gcd (p , n) = 1 , r > 1$. 考察
$(X - u)^m = (X^(p^r) - u^(p^r))^n$ 的 $X^(p^r (n - 1))$ 项系数知道
$u^(p^r) in K$, 只能 $n = 1$.

$(2) arrow.r.double.long (3) arrow.r.double.long (1) , (2) arrow.r.double.long (5) , (3) arrow.r.double.long (4)$
是直接的. $(4) arrow.r.double.long (3)$
由#link(<lemma-power-of-element-separable>)[3.2];得到.

$(5) arrow.r.double.long (3)$ 显然对任意非零 $k in K$, $k u$
的亦纯不可分. 假设 $u_1 , u_2 in F$ 在 $K$ 上纯不可分, 那么由
$(1) arrow.r.double.long (2)$ $u_i$ 的极小多项式形如
$x^(p^(n_i)) - a_i in K [X]$. 于是 $(u_1 + u_2)^(p^(n_1 + n_2)) in K$.~◻

]
#block[
#strong[推论 3.4];. #emph[假设 $F$ 是 $E$ 的纯可分扩张, $E$ 是 $K$
的纯可分扩张, 那么 $F$ 是 $K$ 的纯可分扩张.]

]
#block[
#strong[推论 3.5];. #emph[假设 $F \/ K$ 为一个域扩张. 如果 $u in F$ 在
$K$ 上纯不可分, 那么 $u$ 在 $F \/ K$ 的任意中间域 $M$ 上纯不可分. 因此,
如果 $F$ 在 $K$ 上纯不可分, 那么 $F$ 在 $F \/ K$ 任意中间域 $M$
上纯不可分.]

] <corollary-purely-inseparable-over-middle-extension>
#block[
#emph[Proof.]
由#link(<theorem-purely-inseparable-extension-TFAE-conditions>)[3.3];,
如果 $u in F$ 那么存在 $n in bb(N)$ 使得 $u^(p^n) in K subset.eq M$.
再由#link(<theorem-purely-inseparable-extension-TFAE-conditions>)[3.3];,
$M [u]$ 是 $M$ 的纯不可分扩张, 于是 $u$ 在 $M$ 上纯不可分.~◻

]
#block[
#strong[推论 3.6];. #emph[假设 $F \/ K$ 为有限纯不可分扩张, 其中
$"char" K = p eq.not 0$, 那么存在 $n gt.eq 0$ 使得 $[F : K] = p^n$.]

] <corollary-finite-purely-inseparable-degree>
#block[
#emph[Proof.] 假设 $F = K [alpha_1 , dots.h , alpha_r]$,
那么由#link(<corollary-purely-inseparable-over-middle-extension>)[3.5];,
$F [alpha_1 , dots.h , alpha_(i + 1)] \/ F [alpha_1 , dots.h , alpha_i]$
纯不可分.
再由#link(<theorem-purely-inseparable-extension-TFAE-conditions>)[3.3];,
$F [alpha_1 , dots.h , alpha_(i + 1)] \/ F [alpha_1 , dots.h , alpha_i]$
的次数具有形式 $p^(n_i)$. 注意到 $F$ 是 $K$ 的逐步扩张即可.~◻

]
===== 可分扩张
<可分扩张-1>
#block[
#strong[命题 3.7];. #emph[假设 $F \/ K$ 是一个域扩张, $F$ 由 $K$
上一个可分元素集 $S$ 生成, 那么 $F$ 在 $K$ 上可分.]

] <proposition-separate-elements-generate-separable-extension>
#block[
#emph[Proof.] 对任意 $u in F$, 那么存在 $v_1 , dots.h , v_n in S$ 使得
$u in K (v_1 , dots.h , v_n)$. 假设 $v_i$ 在 $F$ 上的极小多项式为 $f_i$,
考虑不同 $f_i$ 的乘积 $f$.
由#link(<theorem-finite-Galois-TFAE-conditions>)[2.3];, $f$ 在 $K$
的分裂域是 $K$ 的 Galois 扩张且包含 $K (v_1 , dots.h , v_n)$. 于是 $v$
在 $K$ 上可分.~◻

]
=== 可分子扩张与纯不可分子扩张
<可分子扩张与纯不可分子扩张>
#block[
#strong[定理 3.8];. #emph[假设 $F \/ K$ 是一个代数扩张, $S$ 是 $F$
中所有在 $K$ 可分元素构成的集合, $P$ 是 $F$ 中所有在 $K$
纯不可分元素构成的集合. 那么]

+ #emph[$S$ 是 $K$ 的可分扩张域.]

+ #emph[$F$ 在 $S$ 上纯不可分.]

+ #emph[$P$ 是 $K$ 的纯不可分扩张域.]

+ #emph[$P sect S = K$.]

+ #emph[$F$ 在 $P$ 上可分 $arrow.l.r.double F = S P$.]

] <theorem-separable-and-purely-inseparable-subextension>
#block[
#emph[Proof.] $(1)$
由#link(<proposition-separate-elements-generate-separable-extension>)[3.7];得到.
$(2)$
由#link(<lemma-power-of-element-separable>)[3.2];和#link(<theorem-purely-inseparable-extension-TFAE-conditions>)[3.3];得到.
$(3)$
由#link(<theorem-purely-inseparable-extension-TFAE-conditions>)[3.3];得到.
$(4)$ 由#link(<proposition-both-separable-purely-inseparable>)[3.1];得到.

$(5)$ $arrow.r.double.long$ $F$ 在 $P$ 上可分, 从而在中间域 $S P$
上可分. 而由 $(2)$, $F$ 在 $S$ 上纯不可分, 所以在 $S P$ 上纯不可分.
因此由#link(<proposition-both-separable-purely-inseparable>)[3.1];知道
$F = S P$. $arrow.l.double.long$
由#link(<proposition-separate-elements-generate-separable-extension>)[3.7];直接得到.~◻

]
#block[
#strong[推论 3.9];. #emph[假设 $F$ 是 $E$ 的可分扩张, $E$ 是 $K$
的可分扩张, 那么 $F$ 是 $K$ 的可分扩张.]

]
#block[
#emph[Proof.] 假设 $S$ 为 $F$ 为 $K$ 中所有可分元构成的子域. 显然
$S supset.eq E$, 故 $F$ 在 $S$ 上可分.
由#link(<theorem-separable-and-purely-inseparable-subextension>)[3.8];,
$F$ 在 $S$ 上纯不可分.
由#link(<proposition-both-separable-purely-inseparable>)[3.1];,
$F = S$.~◻

]
#block[
#strong[推论 3.10];. #emph[假设 $F \/ K$ 是一个代数扩张, 且
$"char" K = p eq.not 0$. 如果 $F$ 在 $K$ 上可分, 那么对每个 $n gt.eq 1$,
$F = K F^(p^n)$. 反过来, 如果 $[F : K]$ 有限且 $F = K F^p$, 那么 $F$ 在
$K$ 上可分. 特别地, $u in F$ 在 $K$ 上可分当且仅当 $K (u^p) = K (u)$.]

]
#block[
#emph[Proof.] 如果 $F$ 在 $K$ 上可分, 那么 $F$ 在 $K F^(p^n)$
中可分且由#link(<theorem-purely-inseparable-extension-TFAE-conditions>)[3.3];在
$K F^(p^n)$ 中纯不可分.
于是由#link(<proposition-both-separable-purely-inseparable>)[3.1];,
$F = K F^(p^n)$

下面假设 $F \/ K$ 有限, $S$ 为 $F$ 在 $K$ 中可分元构成的域且 $K F^p$,
$F = K (u_1 , dots.h , u_m)$ 那么 $F = S (u_1 , dots.h , u_m)$.
由#link(<theorem-separable-and-purely-inseparable-subextension>)[3.8]
每个 $u_i$ 都在 $S$ 上纯不可分,
于是由#link(<theorem-purely-inseparable-extension-TFAE-conditions>)[3.3];,
对所有 $i$ 存在 $n in bb(N)$ 使得 $u_i^(p^n) in S$, 故
$F^(p^n) subset.eq S$. 由
#link(<theorem-purely-inseparable-extension-TFAE-conditions>)[3.3];, $S$
在 $F^(p^n)$ 上纯不可分, 故在 $K F^(p^n)$ 上纯不可分. $S$ 当然在
$K F^(p^n)$ 上可分,
因此由#link(<proposition-both-separable-purely-inseparable>)[3.1];,
$S = K F^(p^n)$. 注意到
$F^(p^t) = (K (u_1 , dots.h , u_m))^(p^t) = K^(p^t) (u_1^(p^t) , dots.h , u_m^(p^t))$,
因此
$ K F^(p^t) = K (K^(p^t) (u_1^(p^t) , dots.h , u_m^(p^t))) = K (u_1^(p^t) , dots.h , u_m^(p^t)) . $
假设 $F = K F^p$ 即
$K (u_1 , dots.h , u_m) = K (u_1^p , dots.h , u_m^p)$, 由此可以得到
$K (u_1 , dots.h , u_m) = K (u_1^(p^n) , dots.h , u_m^(p^n))$, 换句话说
$F = S$.~◻

]
=== 可分次数
<可分次数>
假设 $F \/ K$ 是一个代数扩张, $S$ 由 $F$ 中所有在 $K$ 可分的元素组成.
维数 $[S : K]$ 称为 $F$ 在 $K$ 上的#emph[可分次数];, 记作 $[F : K]_s$.
维数 $[F : S]$ 称为 $F$ 在 $K$ 上的#emph[不可分次数];, 记作 $[F : S]_i$.

#block[
#strong[引理 3.11];. #emph[假设 $F \/ E , E \/ K$ 为域扩张, $N$ 为 $K$
的一个包含 $F$ 的正规扩张. 记 $r$ 是不同 $E$-单同态 $F arrow.r N$
的基数, $t$ 是不同 $K$-单同态 $E arrow.r N$ 的基数, 那么 $r t$ 是不同
$K$-单同态 $F arrow.r N$ 的基数.]

] <lemma-composite-monomoprhism-to-normal-extension>
#block[
#emph[Proof.] 假设 $r , t < oo$, $tau_1 , dots.h , tau_r$ 为不同的
$E$-单同态 $F arrow.r N$, $sigma_1 , dots.h , sigma_t$ 为不同 $E$-单同态
$E arrow.r N$.
由#link(<proposition-isomorphism-extend-to-splitting-fields>)[1.12];以及#link(<theorem-normal-extension-TFAE-conditions>)[1.13];,
$sigma_i$ 能扩张为 $N$ 的 $K$-自同构, 记其一个这样的扩张为
$tilde(sigma_i)$. 于是复合 $tilde(sigma_i) tau_j$ 是一个 $K$-单同态
$F arrow.r N$. 如果 $tilde(sigma_i) tau_j = tilde(sigma_a) tau_b$ 那么
$tilde(sigma_a)^(- 1) tilde(sigma_i) tau_j = tau_b$, 也就是
$tilde(sigma_a)^(- 1) tilde(sigma_i)\|_E = "id"_E$, 因此
$sigma_i = sigma_a$. 从而 $tau_j = tau_b$. 所以 $tilde(sigma_i) tau_j$
两两不同.

假设 $sigma : F arrow.r N$ 是某个 $K$-单同态, 存在某个 $sigma_i$ 使得
$sigma_i = sigma\|_E$. 于是 $tilde(sigma_i)^(- 1) sigma\|_E = "id"_E$
存在 $tau_j = sigma_i^(- 1) sigma$.~◻

]
#block[
#strong[命题 3.12];. #emph[假设 $F \/ K$ 是有限域扩张, $N$ 是域 $K$ 包含
$F$ 的正规扩张. 那么不同的 $K$-单同态 $F arrow.r N$ 个数恰为
$[F : K]_s$.]

] <proposition-separable-degree>
#block[
#emph[Proof.] 假设 $S$ 为 $F$ 在 $K$ 上所有可分元组成的域. 假设
$sigma , tau$ 是两个 $S$-单同态 $F arrow.r N$, 那么对任意 $u in F$,
由#link(<lemma-power-of-element-separable>)[3.2] 存在 $n in bb(N)$ 使得
$u^(p^n) in S$, 于是
$ sigma (u)^(p^n) = sigma (u^(p^n)) = tau (u^(p^n)) = tau (u)^(p^n) . $
所以 $sigma (u) = tau (u)$, 换句话说 $sigma = tau$.

由#link(<lemma-composite-monomoprhism-to-normal-extension>)[3.11];,
只需要考虑 $F$ 可分的情况. 对 $n = [F : K]$ 进行归纳, 取 $u in F \\ K$,
设 $[K (u) : K] = r > 1$. 如果 $r < n$, 那么对$F \/ K (u)$ 和
$K (u) \/ K$
应用归纳假设及应用#link(<lemma-composite-monomoprhism-to-normal-extension>)[3.11];完成归纳.
如果 $r = n$,
那么#link(<proposition-simple-extension-and-field-homomorphism>)[1.2];完成证明.~◻

]
#block[
#strong[推论 3.13];. #emph[如果 $F \/ E , E \/ K$ 是域扩张, 那么
$ [F : E]_s [E : K]_s = [F : K]_s upright(" 且 ") [F : E]_i [E : K]_i = [F : K]_i . $]

]
#block[
#strong[推论 3.14];. #emph[假设 $f in K [X]$ 不可约多项式, $F$ 为 $f$ 在
$K$ 上的分裂域, $u_1$ 为 $f$ 在 $F$ 的一个根, 那么]

+ #emph[每个 $f$ 的根都有重数 $[K (u_1) : K]_i$, 因此在 $F [X]$ 中
  $ f = ((X - u_1) dots.h.c (X - u_n))^([K (u_1) : K]_i) , $ 其中
  $u_1 , dots.h , u_n$ 为 $f$ 的不同根且 $n in [K (u_1) : K]_s$.]

+ #emph[$u_i^([K (u_1) : K]_i)$ 在 $K$ 上可分.]

] <corollary-minimal-polynomial-of-algebraic-element>
#block[
#emph[Proof.] $(1)$ 存在 $K$-同构
$sigma : K [u_1] tilde.eq K [u_i] , quad u_1 arrow.r.bar u_i$.
由#link(<proposition-isomorphism-extend-to-splitting-fields>)[1.12];,
$sigma$ 可以扩张为同构 $tilde(sigma) : F tilde.eq F$. $F [X]$
是一个唯一因子分解整环, 而 $tilde(sigma) f = f$, 因此 $u_i$ 的重数相等.
由#link(<proposition-single-polynomial-extension-number>)[1.4];,
这样的扩张个数为 $n$, 而由#link(<proposition-separable-degree>)[3.12]
$n = [F : K]_s$.~◻

]
#block[
#strong[推论 3.15];. #emph[假设 $F \/ K$ 是一个代数扩张, $S$ 为 $F$ 在
$K$ 中所有可分元构成的子域, $P$ 为 $F$ 在 $K$
中所有纯不可分元构成的子域. 如果 $F$ 在 $K$ 上正规, 那么 $S$ 在 $K$ 上
Galois, $F$ 在 $P$ 上 Galois, 且
$ "Gal" (S \/ K) tilde.eq "Gal" (F \/ P) = "Aut" (F \/ K) . $]

]
#block[
#emph[Proof.] $S$ 在 $K$ 上 Galois. $u in S$ 在$K [X]$ 上极小多项式 $f$
可分, 故 $f$ 的所有根可分且都落在 $F$ 中, 自然落在 $S$ 中. 因此 $S$ 在
$K$ 上正规.
而可分性由#link(<theorem-separable-and-purely-inseparable-subextension>)[3.8];保证

$F$ 在 $P$ 上 Galois. 假设 $u in F$ 在 $K$ 的极小多项式为 $f$,
那么由#link(<corollary-minimal-polynomial-of-algebraic-element>)[3.14];知道
$f$ 在 $F [X]$ 中形如
$ f = ((X - u_1) dots.h.c (X - u_n))^([K (u_1) : K]_i) , $ 其中 $u_i$
两两不同. 于是 $(X - u_1) dots.h.c (X - u_n)$ 的系数的 $[K (u_1) : K]_i$
次幂落于 $K$ 中,
结合#link(<theorem-purely-inseparable-extension-TFAE-conditions>)[3.3];以及#link(<corollary-finite-purely-inseparable-degree>)[3.6];知道这些系数落在
$P$ 中, 也就是说 $u$ 在 $P$ 的不可约多项式可分. 而正规性是已知的.

$"Gal" (F \/ P) subset.eq "Aut" (F \/ K)$ 是明显的, 反过来, 假设
$sigma in "Aut" (F \/ K) , u in P$
那么又由#link(<theorem-purely-inseparable-extension-TFAE-conditions>)[3.3];,
存在 $n in bb(N)$ 使得 $u^(p^n) in K$ 于是
$ sigma (u)^(p^n) = sigma (u^(p^n)) = u^(p^n) , $ 故 $sigma (u) = u$.
同构由限制
$ "Gal" (F \/ P) arrow.r "Gal" (S \/ P sect S) , quad sigma arrow.r.bar sigma\|_S $
给出.~◻

]
== 不变量
<不变量>
=== 迹与行列式
<迹与行列式>
回顾在线性代数中, 给定一个 $n$ 维线性空间的线性变换 $alpha$,
记其在一组基下的矩阵为 $A = (a_(i j))$,
$ "Tr" (A) = sum_i a_(i i) , quad det (A) = sum_(sigma in S_n) "sgn" (sigma) a_(1 sigma (1)) dots.h.c a_(n sigma (n)) , quad c_A (X) = det (X I_n - A) $
分别为 $A$ 的迹, 行列式, 特征多项式. 它们与基选取无关, 即可以定义
$alpha$ 的迹, 行列式, 特征多项式
$ "Tr" (alpha) = "Tr" (A) , quad det (alpha) = A det (A) , quad c_alpha (X) = C_A (X) . $

假设 $E \/ F$ 为 $n$ 次域扩张, 那么 $alpha in E$ 定义了 $F$-线性映射
$ alpha_L : E arrow.r E , quad x arrow.r.bar alpha x . $ 称
$"Tr"_(E \/ F) (alpha) := "Tr" (alpha_L)$ 为 $alpha$ 的#emph[迹];,
$"Norm"_(E \/ F) (alpha) = det (alpha_L)$ 为 $alpha$ 的#emph[范数];,
$c_(alpha , E \/ F) (X) := c_(alpha_L) (X)$ 为 $alpha$
的#emph[特征多项式];.

#block[
#strong[命题 3.16];. #emph[假设 $E \/ F$ 为有限域扩张, $alpha in E$ ,
$f in F [X]$ 为 $alpha$ 在 $F$ 的极小多项式. 那么
$ c_(alpha , E \/ F) (X) = f^([E : F [alpha]]) . $]

]
#block[
#emph[Proof.] 首先假设 $E = F [alpha]$, 这时由 Cayley-Hamilton
定理可以知道 $c_(alpha_L) (alpha_L) = 0$ 结合
$E arrow.r "Aut" (E) , alpha arrow.r.bar alpha_L$ 是一个单态射知道
$c_(alpha_L) (alpha) = 0$. 而 $c_(alpha_L)$ 和 $f$ 次数相等且都首一,
于是 $c_(alpha , E \/ F) (X) = c_(alpha_L) (X) = f (X)$.

一般地, 假设 $beta_1 , dots.h , beta_n$ 为 $F [alpha]$ 的一组 $F$-基,
$gamma_1 , dots.h , gamma_m$ 为一组 $E$ 的 $F [alpha]$-基. 那么
$beta_i gamma_j$ 为一组 $E$ 的 $F$-基. 于是 $alpha_L$
在这组基下矩阵为主对角元全是 $n times n$ 块的准对角阵, 结合
$E = F [alpha]$ 的情况即可.~◻

]
#block[
#strong[推论 3.17];. #emph[假设 $alpha$ 极小多项式 $f$ 的所有不同的根为
$alpha_1 , dots.h , alpha_n$, 且 $[E : F [alpha]] = m$, 那么
$ "Tr" (alpha) = m [F [alpha] : F]_i sum_(i = 1)^n alpha_i , quad "Norm"_(E \/ F) (alpha) = (product_(i = 1)^n alpha_i)^(m [F [alpha] : F]_i) . $
特别地, 如果 $alpha$ 在 $F$ 上不可分, 那么 $"Tr" (alpha) = 0$.]

] <corollary-trace-and-norm-and-roots>
#block[
#strong[推论 3.18];. #emph[假设 $E$ 是 $F$ 的有限扩张, $Omega$ 是 $F$
的包含 $E$ 的代数闭包, 令 $Sigma$ 为所有 $F$-同态 $E arrow.r Omega$,
那么对任意 $alpha in E$, 有
$ "Tr" (alpha) = [E : F [alpha]] sum_(sigma in Sigma) sigma alpha , quad "Norm"_(E \/ F) (alpha) = product_(sigma in Sigma) (sigma alpha)^([E : F [alpha]]) . $]

] <corollary-generalized-trace-and-norm-and-roots>
#block[
#strong[命题 3.19];. #emph[假设 $E \/ M , M \/ F$ 为有限扩张, 那么
$ "Tr"_(M \/ F) circle.stroked.tiny "Tr"_(E \/ M) = "Tr"_(E \/ F) , quad "Norm"_(M \/ F) circle.stroked.tiny "Norm"_(E \/ M) = "Norm"_(E \/ F) $]

]
#block[
#emph[Proof.] 分别考虑极小多项式知道, 如果 $alpha in E$ 在 $M$ 上不可分,
那么 $alpha$ 在 $F$ 上不可分,
于是这时由#link(<corollary-trace-and-norm-and-roots>)[3.17]
$"Tr"_(M \/ F) circle.stroked.tiny "Tr"_(E \/ M) (alpha) = "Tr"_(E \/ F) (alpha) = 0$.
假设 $alpha in E$ 在 $M$ 上可分, $alpha_1 , dots.h , alpha_n$ 为 $alpha$
在 $M$ 上极小多项式的所有不同根,
那么再由#link(<corollary-trace-and-norm-and-roots>)[3.17]
$ "Tr"_(M \/ F) circle.stroked.tiny "Tr"_(E \/ M) (alpha) & = [E : M [alpha]] "Tr"_(M \/ F) (sum_i alpha_i)\
 & = [E : M [alpha]] frac("Tr"_(E \/ F) (sum_i alpha_i), [E : M])\
 & = [E : M [alpha]] frac([M [alpha] : M] "Tr"_(E \/ F) (alpha), [E : M])\
 & = "Tr"_(E \/ F) (alpha) . $ 范数等式的证明是类似的.~◻

]
=== 判别式
<判别式>
考虑一个域上的首一多项式
$ f (X) = X^n + a_1 X^(n - 1) + dots.h.c + a_n , $ 设在 $f$
的某个分裂域上 $f (X) = product_(i = 1)^n (X - alpha_i)$. 置
$ Delta (f) = product_(1 lt.eq i lt.eq j lt.eq n) (alpha_i - alpha_j) , quad "Disc" (f) = Delta (f)^2 = product_(1 lt.eq i lt.eq j lt.eq n) (alpha_i - alpha_j)^2 . $
称 $"Disc" (f)$ 的判别式为 $"Disc" (f)$.

#block[
#strong[命题 3.20];. #emph[设 $f in F [X]$ 为首一不可约多项式, $alpha$
为 $f$ 的某个分裂域的一个根, 那么
$ "Disc" f = (- 1)^(m (m - 1) \/ 2) upright(N o r m_(F [alpha] \/ F)) f prime (alpha) . $]

]
#block[
#emph[Proof.] $f$ 不可分的情况是明显的, 下面考虑 $f$ 可分的情况.
由#link(<corollary-generalized-trace-and-norm-and-roots>)[3.18]
$ "Disc" f & = product_(i < j) (alpha_i - alpha_j)^2\
 & = (- 1)^(m (m - 1) \/ 2) dot.op product_i (product_(j eq.not i) (alpha_i - alpha_j))\
 & = (- 1)^(m (m - 1) \/ 2) dot.op product_i f prime (alpha_i)\
 & = (- 1)^(m (m - 1) \/ 2) "Norm"_(F [alpha] \/ F) (f prime (alpha)) $~◻

]
== 超越扩张
<超越扩张>
=== 代数相关与代数无关
<代数相关与代数无关>
假设给定域 $Omega supset.eq F$, 称
$alpha_1 , dots.h.c , alpha_n subset.eq Omega$ 是#emph[$F$-代数无关的];,
如果 $F$-态射
$ F [X_1 , dots.h.c , X_n] arrow.r Omega , quad f arrow.r.bar f (alpha_1 , dots.h.c , alpha_n) $
的核为 $0$, 否则称 $alpha_1 , dots.h.c , alpha_n$
是#emph[$F$-代数相关的];. 一般地, 称任意集合 $A subset.eq Omega$
是#emph[$F$-代数无关的];, 如果 $A$ 的任意有限集是代数无关的; 否则, 称
$A$ 是#emph[$F$-代数相关的];.

如果 $alpha_1 , dots.h.c , alpha_n$ 为 $F$ 上的代数无关元, 那么映射
$ F [X_1 , dots.h.c , X_n] arrow.r F [alpha_1 , dots.h.c , alpha_n] , quad f (X_1 , dots.h.c , X_n) arrow.r.bar f (alpha_1 , dots.h.c , alpha_n) $
为同构, 从而诱导同构
$F (X_1 , dots.h.c , X_n) tilde.eq F (alpha_1 , dots.h.c , alpha_n)$.
$F (alpha_1 , dots.h.c , alpha_n)$ 称为 #emph[$F$的纯超越扩张];.

#block[
#strong[例 3.21];. 特别地, 一个元素 $alpha in Omega$
$F$-代数无关当且仅当 $alpha$ 在 $F$ 上超越.

]
#block[
#strong[引理 3.22];. #emph[假设 $gamma in Omega , A subset.eq Omega$,
那么下面条件等价:]

+ #emph[$gamma$ 在 $F (A)$ 上代数.]

+ #emph[存在 $beta_1 , dots.h , beta_n in F (A)$ 使得
  $gamma^n + beta_1 gamma^(n - 1) + dots.h.c + beta_n = 0$.]

+ #emph[存在不全为零的 $beta_0 , beta_1 , dots.h , beta_n in F (A)$ 使得
  $beta_0 gamma^n + beta_1 gamma^(n - 1) + dots.h.c + beta_n = 0$.]

+ #emph[存在某个 $f in F [X_1 , dots.h , X_m , Y]$ 和
  $alpha_1 , dots.h , alpha_m in A$ 使得
  $f (alpha_1 , dots.h , alpha_m , Y) eq.not 0$ 但
  $f (alpha_1 , dots.h , alpha_m , gamma) = 0$.]

#emph[称满足上面的等价条件的 $gamma$ 是#emph[$A$-代数相关的];. 如果集合
$B subset.eq Omega$ 中元素都是 $A$-代数相关的, 那么称 $B$
是#emph[$A$-代数相关的];.]

] <lemma-algebraic-dependent-TFAE-conditions>
#block[
#emph[Proof.] 考虑
$(1) arrow.r.double.long (2) arrow.r.double.long (3) arrow.r.double.long (1) , (4) arrow.l.r.double (3)$
即可.~◻

]
=== 超越基
<超越基>
#block[
#strong[引理 3.23] \(交换性质). #emph[假设
${alpha_1 , dots.h.c , alpha_m} subset.eq Omega$. 如果 $beta$ 在
${alpha_1 , dots.h , alpha_m}$ 上代数相关, 但在
${alpha_1 , dots.h , alpha_(m - 1)}$ 上代数无关, 那么 $alpha_m$ 在
${alpha_1 , dots.h , alpha_(m - 1) , beta}$ 上代数相关.]

] <lemma-exchange-algebraically-denpent>
#block[
#emph[Proof.]
由#link(<lemma-algebraic-dependent-TFAE-conditions>)[3.22];, 存在
$f in F [X_1 , dots.h , X_m , Y]$ 使得
$ f (alpha_1 , dots.h , alpha_m , Y) eq.not 0 , quad f (alpha_1 , dots.h , alpha_m , beta) = 0 . $
将 $f$ 写作 $X_m$ 的多项式
$ f (X_1 , dots.h , X_m , Y) = sum_i a_i (X_1 , dots.h , X_(m - 1) , Y) X_m^(n - i) , $
由于 $f (alpha_1 , dots.h , alpha_m , Y) eq.not 0$, 存在某个
$a_i (alpha_1 , dots.h , alpha_(m - 1) , Y) eq.not 0$. 因为 $beta$ 不在
${alpha_1 , dots.h , alpha_(m - 1)}$ 上代数相关,
由#link(<lemma-algebraic-dependent-TFAE-conditions>)[3.22];,
$a_i (alpha_1 , dots.h , alpha_(m - 1) , beta) eq.not 0$. 换句话说,
$f (alpha_1 , dots.h , alpha_(m - 1) , X_m , beta) eq.not 0$. 但
$f (alpha_1 , dots.h , alpha_m , beta) = 0$,
再由#link(<lemma-algebraic-dependent-TFAE-conditions>)[3.22];即得.~◻

]
#block[
#strong[引理 3.24] \(代数相关的传递性). #emph[如果 $C$ 是一个 $B$
上的代数相关集, $B$ 为 $A$ 上的代数相关集, 那么 $C$ 在 $A$
为代数相关集.]

] <lemma-transitivity-of-algebraic-dependence>
#block[
#strong[定理 3.25] \(基本结果). #emph[令
$A = {alpha_1 , dots.h.c , alpha_m}$ 和
$B = {beta_1 , dots.h.c , beta_n}$ 为 $Omega$ 的两个子集. 假设]

+ #emph[$A$ 在 $F$ 上代数无关,]

+ #emph[$A$ 在 $B$ 上代数相关,]

#emph[那么, $m lt.eq n$.]

] <theorem-algebraic-dependent-fundamental-result>
#block[
#emph[Proof.] 考虑 $A \\ (A sect B)$ 的个数 $k$. 如果 $k = 0$,
那么结论已经得到.

如果 $k > 0$, 记
$B = {alpha_1 , dots.h.c , alpha_(m - k) , beta_(m - k + 1) , dots.h.c , beta_n}$.
设 $m - k + 1 lt.eq j lt.eq n$ 是满足 $alpha_(m - k + 1)$ 在
${alpha_1 , dots.h.c , alpha_(m - k) , beta_(m - k + 1) , dots.h.c , beta_j}$
代数相关的最小元. 由#link(<lemma-exchange-algebraically-denpent>)[3.23];,
$beta_j$ 在$B_1 = B union {alpha_(m - k + 1)} \\ {beta_j}$ 上代数相关.
由 $B_1$ 构造, $B$ 在 $B_1$ 上代数相关,
又由#link(<lemma-transitivity-of-algebraic-dependence>)[3.24];, $A$ 在
$B_1$ 上代数相关. 而 $A \\ (B_1 sect A) = k - 1$, 应用归纳假设即得.~◻

]
===== 超越基
<超越基-1>
$Omega$ 在 $F$ 上的#emph[超越基];为 $F$ 上的代数无关集 $A$ 使得 $Omega$
在 $F (A)$ 上代数.

#block[
#strong[引理 3.26];. #emph[如果 $A$ 为 $Omega$ 的满足 $Omega$ 在 $F (A)$
代数的最小子集, 那么 $A$ 为 $Omega$ 在 $F$ 上的超越基.]

] <lemma-making-algebraic-minimal-set-as-transcendence-basis>
#block[
#emph[Proof.] 如果 $A$ 代数相关, 那么可以找到 $beta in A$ 使得 $beta$ 在
$A \\ {beta}$ 中代数相关, 因此 $A$ 在 $A \\ {beta}$ 中代数相关.
由#link(<lemma-transitivity-of-algebraic-dependence>)[3.24];, $Omega$ 在
$F (A without {beta})$ 上代数, 这与 $A$ 极小性矛盾.~◻

]
#block[
#strong[定理 3.27];. #emph[如果存在有限子集 $A subset.eq Omega$ 使得
$Omega$ 在 $F (A)$ 上代数, 那么 $Omega$ 有一个$F$上的有限超越基. 另外,
每个超越基是有限的, 且它们有相同的元素个数.]

] <theorem-finite-transcendence-basis>
#block[
#emph[Proof.]
有限超越基的存在性由#link(<lemma-making-algebraic-minimal-set-as-transcendence-basis>)[3.26];保证,
个数相等由#link(<theorem-algebraic-dependent-fundamental-result>)[3.25];保证.~◻

]
#block[
#strong[引理 3.28];. #emph[设 $A$ 是代数无关的, 但 $A union {beta}$
是代数相关的. 那么 $beta$ 在 $F (A)$ 上代数.]

] <lemma-maximal-algebraic-independent-set-as-transcendence-basis>
#block[
#emph[Proof.] 由假设存在$alpha_1 , dots.h , alpha_n in A$ 和非零
$f in F [X_1 , dots.h , X_n , Y]$ 使得
$ f (alpha_1 , dots.h , alpha_n , beta) = 0 . $ 将 $f$ 写为 $Y$ 的多项式
$ f = g_0 Y^m + g_1 Y^(m - 1) + dots.h.c + g_m , quad g_i in F [X_1 , dots.h , X_n] , quad g_0 eq.not 0 , quad m gt.eq 1 . $
由于 $g_0 eq.not 0$ 且 $alpha_i$ 代数独立, 所以
$g_0 (alpha_1 , dots.h , alpha_n) eq.not 0$. 于是
$f (alpha_1 , dots.h , alpha_n , Y) eq.not 0$,
由#link(<lemma-algebraic-dependent-TFAE-conditions>)[3.22];, $beta$ 在
$A$ 上代数.~◻

]
#block[
#strong[命题 3.29];. #emph[$Omega$ 的任意最大代数无关子集 $A$ 都是
$Omega$ 在 $F$ 上的超越基.]

] <proposition-maximal-algebraic-independent-set-as-transcendence-basis>
#block[
#emph[Proof.] 对每个 $beta in Omega \\ A$, 由极大性 $A union {beta}$
代数独立,
因此由#link(<lemma-maximal-algebraic-independent-set-as-transcendence-basis>)[3.28]
$beta$ 在 $A$ 上代数.~◻

]
#block[
#strong[定理 3.30];. #emph[每个代数无关子集 $S subset.eq Omega$ 都包含于
$Omega$ 的一个超越基. 特别地, 超越基存在.]

]
#block[
#emph[Proof.] 假设 $cal(S)$ 为包含 $S$ 的代数无关集, 由包含赋予偏序关系.
设 $S_1 subset.eq S_2 subset.eq dots.h.c$ 为 $cal(S)$ 的一个上链,
下面证明 $union.big S_i$ 为此链在 $cal(S)$ 中的一个上界. 假设不然,
存在一个有限集 $B prime subset.eq union.big S_i$ 代数相关, 而 $B prime$
包含于某个 $S_i$ 这是不可能的. 于是由 Zorn 引理可以得到 $cal(S)$
的一个极大元 $S prime$.
于是由#link(<proposition-maximal-algebraic-independent-set-as-transcendence-basis>)[3.29];,
$S prime$ 是一个超越基.~◻

]
===== 超越次数
<超越次数>
#block[
#strong[命题 3.31];. #emph[$Omega \/ F$ 的超越基基数相等, 称此基数为
$Omega \/ F$ 的#emph[超越次数];, 记作 $"trdeg"_F (Omega)$.]

]
#block[
#emph[Proof.]
有限情况由#link(<theorem-finite-transcendence-basis>)[3.27];保证. 假设
$B , B prime$ 是两个基数都是无穷的超越基. 由选择公理, 可以假设
$lr(|B prime|) < lr(|B|)$. 对任意 $alpha in B prime$, 存在有限集
$B_alpha subset.eq B$ 使得 $alpha$ 在 $B_alpha$ 上代数. 设
$B^(\*) = union.big_(alpha in B prime) B_alpha$, 于是
$B^(\*) subset.eq B$. 下面证明 $B^(\*) = B$. 假设不然, 那么存在
$beta in B \\ B^(\*)$. $beta$ 在 $B prime$ 上代数, $B prime$ 在 $B^(\*)$
上代数, 由#link(<lemma-transitivity-of-algebraic-dependence>)[3.24];,
$beta$ 在 $B^(\*)$ 上代数. 也就是 $beta$ 在 $B^(\*)$ 上代数代数,
这与超越基定义矛盾. 于是
$lr(|B|) = lr(|B^(\*)|) lt.eq ℵ_0 lr(|B prime|) = lr(|B prime|)$.~◻

]
#block[
#strong[命题 3.32];. #emph[假设 $F \/ K , E \/ F$ 为域扩张, 那么
$ "trdeg"_K E = "trdeg"_K F + "trdeg"_F E . $]

]
#block[
#emph[Proof.] 取 $B , C$ 分别为 $F \/ K , E \/ F$ 的超越基, 可以知道
$B union C$ 是 $E \/ K$ 的超越基.~◻

]
#block[
#strong[命题 3.33];. #emph[任意两个有相同超越次数的 $F$ 上的代数闭域是
$F$-同构的.]

]
===== Lüroth 定理
<lüroth-定理>
#block[
#strong[定理 3.34] \(Lüroth). #emph[令 $L = F (x)$ 其中 $x$ 在 $F$
上超越. 每个 $L$ 的真包含 $F$ 的子域 $E$ 具有形式 $E = F (u)$, 其中
$u in L$ 在 $F$ 上超越.]

]
