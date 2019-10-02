# 群

## 群

集合 $G\neq \empty$ 和二元运算 $\cdot:G\times G\mapsto G$ 构成代数结构 $(G,\cdot)$，满足

- 封闭性：$\forall a,b \in G, a\cdot b\in G$ 
- 结合律：$\forall a,b,c \in G,(a\cdot b)\cdot c=a\cdot(b\cdot c)$ 
- 单位元：$\exist e \in G,\forall a \in G,e\cdot a=a\cdot e=a$ 
- 逆元：$\forall a \in G,\exist b \in G, a\cdot b=b\cdot a=e$，称 b 为 a 的逆元，记为 $a^{-1}$ 

则 $(G,\cdot)$ 称为**群** group，只满足封闭性和结合律的称为**半群**，满足封闭性、结合律和单位元的称为**幺半群**。

## 阿贝尔群

群 $(G,\cdot)$ 满足交换律：$\forall a,b \in G,a\cdot b=b\cdot a$，则称该群为阿贝尔群（加法群、交换群）

# 环

集合 $R\neq \empty$，定义了两种运算 $+$ 和 $\times$，满足

- $(R,+)$ 是阿贝尔群

- $(R,\times)$ 是半群

- 分配律：$\forall a,b,c \in R$，有
  $$
  a\times(b+c)=a\times b+a\times c\\
  (a+b)\times c=a\times c+ b\times c
  $$

称 $(R,+,\times)$ 是环 ring，加法的单位元记为 0。

# 域

 集合 $R\neq \empty$，定义了两种运算 $+$ 和 $\times$，满足

- $(R,+,\times)$ 是环
- $(R-0,\times)$ 是阿贝尔群，单位元记为 1

则 $(R,+,\times)$ 是域

# 线性空间

非空集合 V 和 F，运算 $\cdot:F \times V \mapsto V$（称为数乘），$\forall k,l\in F,\alpha, \beta \in V$，满足

- $(V, +)$ 是阿贝尔群
- $(F,+,\cdot)$ 是域
- 单位元：$1\alpha=\alpha$ 
- 结合律：$(kl)\alpha=k(l\alpha)$ 
- 分配律1：$(k+l)\alpha=k\alpha+l\alpha$ 
- 分配律2：$k(\alpha+\beta)=k\alpha + k\beta$ 

> 封闭性：$k\alpha\in V$ 
>
> 上述总共涉及 4 中运算：V 上的加法、F 上的加法和乘法，V 与 F 间的数乘，记号复用了，根据上下文判断即可。

则称 V 为 F 上的一个线性空间（向量空间），V 中元素称为向量，V 的零元称为零向量，F 为线性空间的基域。

# 度量

集合 $X\neq \empty$，映射 $d:X\times X\mapsto R$。$\forall x,y,z \in X$，满足

- 正定性：$d(x,y)\ge 0,d(x,y)=0\Leftrightarrow x=y$ 
- 对称性：$d(x,y)=d(y,x)$ 
- 三角不等式：$d(x,z)\le d(x,y)+d(y,z)$ 

则 d 是 X 得到一个度量（距离），$(X,d)$ 是度量空间。

> 度量空间只要求 X 是一个集合，不要求其为线性空间

# 致密

> [百度文库 | 紧集与有限维赋范线性空间](https://wenku.baidu.com/view/fb5b41dbce2f0066f5332259.html)

设 $(X,\rho)$ 是度量空间，$A\subset X$，若 A 中的任何点列必有在 X 中收敛的子点列，则称 A 是（X 中的）致密集。若 X 自身是致密集，则称 X 是致密空间。

> $\forall \{x_n\},\exist\{x_{n_k}\}$，使得
> $$
> \lim_{k\to \infty}x_{n_k}=x\in X
> $$

# 紧集

度量空间中的致密闭集为紧集 compact set
