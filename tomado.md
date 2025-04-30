# 待办事项

## 练习

1. [(题源)](https://math.stackexchange.com/questions/541541/what-is-the-kernel-of-the-tensor-product-of-two-maps)$f_i: W_i \to V_i$ 满, $i = 1, 2$, 证明
    $$
      \operatorname{ker} f_1 \otimes V_2 \oplus V_1 \otimes \operatorname{ker} f_2 \xrightarrow{\iota_1 \otimes 1 \oplus 1 \otimes \iota_2} V_1 \otimes V_2 \xrightarrow{f_1 \otimes f_2} W_1 \otimes W_2 \to 0
    $$
    假设

    由张量积右正合形 $\operatorname{ker} f \xrightarrow{\iota} A \xrightarrow{f} B \to 0 \leadsto P \otimes \operatorname{ker} f \xrightarrow{1 \otimes \iota}  P \otimes A \xrightarrow{1 \otimes f} P \otimes B \to 0$, 是否有 $\operatorname{ker} 1 \otimes f \simeq P \otimes \operatorname{ker} f$?
