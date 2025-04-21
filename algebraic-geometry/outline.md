## 大纲

2. 层
    1. 环的素谱
    2. 预层和层
        1. 预层
           - 预层的详细描述
           - 预层范畴
           - 例子
        2. 层
            - 层的详细描述
            - 等化子描述
            $$
              \begin{split}
              \rho: \mathcal{F}(U) &\to \prod_{i \in I}\mathcal{F}(U_i),\quad s \mapsto (\left. s \right\vert_{U_i})_i,\\
              \sigma: \prod_{i \in I} \mathcal{F}(U_i) &\to \prod_{(i, j) \in I \times I} \mathcal{F}(U_i \cap U_j),\quad (s_i)_i \mapsto (\left.  s_i \right\vert_{U_i \cap U_j})_{(i, j)},\\
              \sigma': \prod_{i \in I} \mathcal{F}(U_i) &\to \prod_{(i, j) \in I \times I} \mathcal{F}(U_i \cap U_j),\quad (s_i)_i \mapsto (\left.  s_j \right\vert_{U_i \cap U_j})_{(i, j)}.
              \end{split}
            $$
            注: 这里的 等化子一般在 Abelian 范畴上, 从而 $\rho$ 是核映射, 单.
            - 基与层
            - 茎(单点局部?), 诱导的茎态射交换图(由定义)
            $$
              \mathcal{F}_x = \varinjlim\limits_{U \ni x} \mathcal{F}(U)
            $$
            - 预层态射诱导的茎态射(局部整体原理)
            <!-- https://q.uiver.app/#q=WzAsNCxbMCwwLCJcXG1hdGhzY3J7Rn0oVSkiXSxbMCwxLCJcXG1hdGhzY3J7R30oVSkiXSxbMSwxLCJcXHByb2Rfe3ggXFxpbiBVfVxcbWF0aHNjcntHfV94Il0sWzEsMCwiXFxwcm9kX3t4IFxcaW4gVX0gXFxtYXRoc2Nye0Z9X3giXSxbMSwyXSxbMCwxLCJcXHZhcnBoaV9VIiwyXSxbMCwzXSxbMywyLCJcXHByb2Rfe3ggXFxpbiBVfVxcdmFycGhpX3giXV0= -->
            <iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsNCxbMCwwLCJcXG1hdGhzY3J7Rn0oVSkiXSxbMCwxLCJcXG1hdGhzY3J7R30oVSkiXSxbMSwxLCJcXHByb2Rfe3ggXFxpbiBVfVxcbWF0aHNjcntHfV94Il0sWzEsMCwiXFxwcm9kX3t4IFxcaW4gVX0gXFxtYXRoc2Nye0Z9X3giXSxbMSwyXSxbMCwxLCJcXHZhcnBoaV9VIiwyXSxbMCwzXSxbMywyLCJcXHByb2Rfe3ggXFxpbiBVfVxcdmFycGhpX3giXV0=&embed" width="382" height="304" style="border-radius: 8px; border: none;"></iframe>
        3. 层化(从局部构造层)
        $$
          \widetilde{\mathcal{F}}(U) := \left\lbrace (s_x) \in \prod_{x \in U} \mathcal{F}_x: \text{对任意} x \in U, \text{存在} t \in \mathcal{F}(W) \text{满足对所有} w \in W \text{有} s_w = t_w, \text{其中}   W \subseteq U \text{是} x \text{的一个开集} \right\rbrace
        $$
        [预层不是层的例子](https://math.stackexchange.com/questions/3362833/examples-of-presheaves-which-are-not-sheaves)
        4. 层的推出(有向像), 拉回(逆像)
        $$
          f_* \mathcal{F},\quad f^{-1}\mathcal{G}
        $$
        拉回
        $$
          i^{-1}\mathcal{F} = \mathcal{F}_x
        $$
        以及
        $$
          (f^{-1}\mathcal{G})_x \simeq (f^+ \mathcal{G})_x = \varinjlim_{x \in U}(f^+ \mathcal{G})(U) = \varinjlim_{x \in U} \varinjlim_{f(U) \subseteq V} \mathcal{G}(V) = \varinjlim_{f(x) \in V} \mathcal{G}(V) = \mathcal{G}_{f(x)}.
        $$
        $$
          f^{-1}(g^{-1} \mathcal{H}) \simeq (g \circ f)^{-1} \mathcal{H}.
        $$
        5. 伴随函子
        $$
          \begin{split}
            \operatorname{Hom}_{\operatorname{Sh}(X)} (f^{-1} \mathcal{G}, \mathcal{F}) &\leftrightarrow \operatorname{Hom}_{\operatorname{PreSh}(Y)}(\mathcal{G}, f_* \mathcal{F}),\\
            \varphi & \mapsto \varphi^{\flat}\\
            \psi^{\sharp} &\mapsfrom \psi
          \end{split}
        $$
        $$
          \mathcal{G}(V) \to f^{+} \mathcal{G}(f^{-1}(V)) \to f^{-1}\mathcal{G}(f^{-1}(V)) \xrightarrow{\varphi_{f^{-1}(V)}} \mathcal{F}(f^{-1}(V)) = f_*\mathcal{F}(V).
        $$
        <!-- 假设 $U$ 是 $X$ 的一个开集, $s \in f^+ \mathcal{G}(U)$. -->
        <!-- 如果 $V$ 是 $f(U)$ 的一个开邻域, 那么 $U$ 包含在 $f^{-1}(V)$ -->
        6. 局部环
          是一个层  3.5
        7. 仿射概形
        $$
          \operatorname{Hom}_{\operatorname{Ring}} (A, B) \xleftrightarrow[\operatorname{Spec}]{\Gamma} \operatorname{Hom}_{(\operatorname{Aff})} (\operatorname{Spec} B, \operatorname{Spec} A)
        $$
        [概形不是仿射概形的例子](https://math.stackexchange.com/questions/4281800/example-of-scheme-which-is-not-an-affine-scheme)
    - 概形
        - 概形粘合数据
