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

则称 V 为 F 上的一个**线性空间**（向量空间），V 中元素称为**向量**，V 的零元称为**零向量**，F 为线性空间的**基域**。

# 泛函

泛函是线性空间到基域的映射 $f:V\to F$ 

# 范数

$V$ 是一个线性空间，泛函 $\|\cdot\|:V\to F$ 称为**范数**需满足

- 正定性：$\|x\|\ge 0$，且 $\|x\|=0\Leftrightarrow x=0$ 
- 正齐次性：$\|cx\|=|c|\|x\|$ 
- 次可加性：$\|x+y\|\le \|x\|+\|y\|$ 

如果线性空间上定义了范数，则称为**赋范线性空间** 

# 对偶空间

## 定义

设 V 为定义在数域 F 上的向量空间，定义 V 上的线性函数是从 V 到 F 的映射 $f:V\mapsto F$，且 $\forall x,y \in V, \forall k \in F$，有

- $f(x+y) = f(x)+f(y)$ 
- $f(kx)=kf(x)$ 

现考虑 V 上所有线性函数的集合 $V^*$，$\forall f,g \in V^*,\forall x\in V,\forall k \in F$，可以在 $V^*$ 定义如下标量乘法和加法

- $f(kx)=kf(x)$ 
- $(f+g)(x)=f(x)+g(x)$ 

易得 $V^*$ 是域 F 上的向量空间，称为 V 的对偶空间，其中元素称为协向量 covector。

## 对偶范数

$\forall f\in V^*,\|f\|=\sup\{|f(x)|:\|x\|\le 1\}=\sup \left\{\frac{|f(x)|}{\|x\|}:x\neq 0\right\}$ 

# 度量

集合 $X\neq \empty$，映射 $d:X\times X\mapsto R$。$\forall x,y,z \in X$，满足

- 正定性：$d(x,y)\ge 0,d(x,y)=0\Leftrightarrow x=y$ 
- 对称性：$d(x,y)=d(y,x)$ 
- 三角不等式：$d(x,z)\le d(x,y)+d(y,z)$ 

则 $d$ 是 $X$ 得到一个度量（距离），$(X,d)$ 是度量空间

> 度量空间只要求 X 是一个集合，不要求其为线性空间

# 致密 / 列紧

> [百度文库 | 紧集与有限维赋范线性空间](https://wenku.baidu.com/view/fb5b41dbce2f0066f5332259.html) 
>
> [百度百科 | 列紧集](https://baike.baidu.com/item/列紧集/18937173?fr=aladdin) 

设 $(X,\rho)$ 是度量空间，$A\subseteq X$，若 A 中的**任何点列**必有在 A 中收敛的子点列，则称 A 是（X 中的）**致密集**。若 X 自身是致密集，则称 X 是**致密空间**。

> $\forall \{a_n\},\exist\{a_{n_k}\}$，使得
> $$
> \lim_{k\to \infty}a_{n_k}=a\in A
> $$

# 紧集

度量空间中的致密**闭**集为**紧集** compact set

# 稠密

如果一个集合与**一个元素属于的任意一个开集**的交集都非空，那么我们称这个集合对于该元素稠密。

如果一个集合是一个空间的子集且对于该空间的任意元素都稠密，那么我们称这个集合在这个空间中稠密。

>  比如有理数集在实数空间中稠密

# 基本点列

> [百度百科：基本列](https://baike.baidu.com/item/基本列/10762752?fr=aladdin) 

设 ${x_n}$ 是度量空间 $(R,\rho)$ 中的点列，如果对任意 $\epsilon>0$，存在 $N(\epsilon)>0$，使得当 $n,m>N(\epsilon)$ 时，恒有 $ρ(x_n,x_m)<\epsilon$，则 ${x_n}$ 称为 $R$ 中的**基本点列**或**柯西点列** 

极限存在，有界

# 极限点

度量空间中，极限点是点列的收敛子列的极限，a 是 A 中的点列 $\{a_n\}$ 的极限点的充分必要条件是 a 的任何邻域内有 $\{a_n\}$ 的无穷多项

点列可以有一个或多个极限点，也可以没有极限点。当且仅当只有一个极限点时点列收敛，每个有界点列至少有一个极限点

# 完备空间

度量空间 $R$ 中每个**基本点列**都**收敛**于 $R$ 中一点，称 $R$ 为**完备空间** 

# 完全有界集



# 切比雪夫多项式

$$
\begin{aligned}
T_0(x)&=1\\
T_1(x)&=\cos\theta=x\\
T_2(x)&=\cos2\theta\\
\dots&\\
T_n(x)&=\cos n\theta
\end{aligned}
$$

## 递推公式

由 $\cos (n+1)\theta=2\cos\theta\cos(n\theta)-\cos(n-1)\theta$ 得
$$
T_{n+1}(x)=2xT_n(x)-T_{n-1}(x)\quad(n\ge1)
$$
则 $T_0(x)=1$，$T_1(x)=x$，$T_2(x)=2x^2-1$，$T_3(x)=4x^3-3x$，$T_4(x)=8x^4-8x^2+1$ 

![image-20191024114926766](assets/image-20191024114926766.jpg)

## 展开式

$$
T_n(x)=2^{n-1}\prod_{i=1}^n(x-\xi_i)
$$

## 正交性

已知
$$
\int_0^\pi\cos(m\theta)\cos(n\theta)\mathbb{d}\theta=0\quad(m\neq n)
$$
则
$$
\begin{aligned}
(T_m,T_n)=&\int_{-1}^1\frac{1}{\sqrt{1-x^2}}T_m(x)T_n(x)\mathbb{d}x\\
\xlongequal{x=\cos\theta}&\int_0^\pi\cos m\theta\cos n\theta \mathbb{d}\theta\\
=& 0
\end{aligned}
$$

则切比雪夫多项式在 $[-1,1]$ 上带权 $\rho(x)=\frac{1}{\sqrt{1-x^2}}$ 正交

## 导数

$$
\begin{aligned}
T_n^\prime(x)&=\frac{n\sin (n\arccos x)}{\sqrt{1-x^2}}
=\frac{n\sin (n\theta)}{\sin\theta}\\
&=2^{n-1}\sum_{i=1}^n\prod_{j=1,j\neq i}^n (t-\xi_j)
=\sum_{i=1}^n\frac{T_n(x)}{(x-\xi_i)}=n2^{n-1}\prod_{i=1}^{n-1}\left(x-\cos\frac{i}{n}\pi\right)\\
T_n^\prime(\xi_i)&=\frac{(-1)^{i-1}n}{\sqrt{1-\xi_i^2}}
=\prod_{j=1,j\neq i}^n (\xi_i-\xi_j)\\
\end{aligned}
$$

> $$
> \begin{aligned}
> 2^{n-1}\sin \theta\prod_{i-1}^{n-1}\left(\cos\theta-\cos\frac{i}{n}\pi\right)
> &=(-1)^{n-1}2^{2n-2}\sin\theta\prod_{i=1}^{n-1}\sin\left(\frac{\theta}{2}-\frac{i\pi}{2n}\right)\sin\left(\frac{\theta}{2}+\frac{i\pi}{2n}\right)\\
> &=(-1)^{n-1}2^{2n-2}\sin\theta\prod_{i=1}^{n-1}\cos\left(\frac{\theta}{2}+\frac{i\pi}{2n}\right)\sin\left(\frac{\theta}{2}+\frac{i\pi}{2n}\right)\\
> &=2^{n-1}\prod_{i=0}^{n-1}\sin\left(\theta+\frac{i\pi}{n}\right)\\
> &=\sin(n\theta)
> \end{aligned}
> $$
>
> 第一个等号：和差化积公式
>
> 第二个等号：总共 2n-2 个项相乘，小的 $n-1$ 个项与后 $n-1$ 个项刚好逐项相差 $\frac{\pi}{2}$，然后用诱导公式
>
> 第三个等号：二倍角公式，并且把 $\sin\theta$ 放到 $\prod$ 中
>
> 第四个等号：参考 [n倍角公式的证明和应用](https://jingyan.baidu.com/article/a3f121e4b28373fc9052bb1c.html) 

此外
$$
|T^\prime_n(x)|= n \left|\frac{\sin (n\theta)}{\sin\theta}\right|\le n^2
$$
且
$$
T_n^\prime(1)=n\lim_\limits{\theta\to0}\frac{\sin (n\theta)}{\sin\theta}=n^2
$$

$T_n^\prime(x)$ 零点为 $\cos\frac{\pi i}{m}$ 

## 最值

$$
\|T_n\|_{[-1,1]}=1
$$



最值点为
$$
x_i=\cos\frac{i \pi}{n} (i=0,1,\dots,n)
$$

## 零点

$$
T_n(x)=\cos(n\theta)=\cos (n\arccos x)
$$

取
$$
n\arccos \xi_i=\frac{(2i-1)\pi}{2}\quad(i=1,\dots,n)
$$
即
$$
\begin{aligned}
\xi_i&=\cos\frac{(2i-1)\pi}{2n}\quad(i=1,\dots,n)\\
&=\cos\frac{\pi}{2n},\cos\frac{3\pi}{2n},\dots,\cos\frac{(2n-1)\pi}{2n}
\end{aligned}
$$

> $x_0>x_1>\dots>x_{n-1}$ 
>
> 在 $[-1,1]$ 上共 n 个零点

## 极性

$T_n(x)$ 的最高次项 $x^n$ 的系数为 $2^{n-1}$，$[-1,1]$ 上与 0 的偏差最小且首项系数为 1 的 n 次多项式是
$$
P_n(x)=\frac{T_n(x)}{2^{n-1}}
$$

> 函数 $f(t)$ 在 $[-1,1]$ 上与 0 的偏差指的是
> $$
> \max_\limits{-1\le t\le1}|f(t)|=\|f\|_{[-1,1]}
> $$
>
> ---
>
> **证明** 
>
> 记 $[-1,1]$ 上与 0 的偏差最小且首项系数为 1 的 n 次多项式集合为 $\mathcal{P}_n^0$，$C_n=\frac{1}{2^{n-1}}$， $T_n^0=C_n T_n(x)$ 
>
> 由于 $T_n(x)$ 首项系数为 $C_n$，则 $T_n^0 \in \mathcal{P}^0$ 
>
> $\|T_n^0\|_{[1,1]}=C_n$，且 $T_n^0(x)$ 交替最大值 $C_n$ 和最小值 $-C_n$ 共 $n+1$ 次
>
> 若 $\exist p\in \mathcal{P}_n^0$ 满足 $\|p\|_{[-1,1]}<\|T_n^0\|_{[-1,1]}=C_n$，则 $T_n^0-p$ 在 $[-1,1]$ 上正负号交替 $n+1$ 次，则有 n 个零点，但 $T_n^0-p\in \mathcal{P}_{n-1}$ 不能有 n 个零点，矛盾。

# 全纯函数[^holomorphic] 

设 $U\subset \overset{\circ}{C}$ 是开子集且 $f:U\to \overset{\circ}{C}$ 是一个单复变函数，称 $f$ 在 $z_0\in U$ （复）可微（[complex] differentiable）或全纯，如果极限 $f^\prime(z_0)=\lim_\limits{z \to z_0}\frac{f(z)-f(z_0)}{z-z_0}$ 存在。

若 $f$ 在 $U$ 中处处可微，则称 $f$ 在 $U$ 上全纯（holomorphic over $U$）

# 最大模原理[^maxmod] 

$|f|$ 在复分析中，最大模原理说明如果单变量复变函数 $f$ 是一个[全纯函数](#全纯函数[^holomorphic])，那么它的模的局部最大值不可能在其定义域的内部取到。

# 函数 r 阶差分

$\Delta_hf(t)=f(t+h)-f(t)$ 是函数 $f$ 在点 $t$ 的步长为 $h$ 的**一阶向前差分**，那么
$$
\Delta_h^r f(t) \triangleq \Delta(\Delta_h^{r-1}f(t)) =\sum_{i=0}^r(-1)^{r-i}C^i_rf(t+ih)=\sum_{i=0}^r(-1)^iC^i_rf(t+(r-i)h)
$$
称为 $f$ 在 $t$ 点步长为 $h$ 的 $r$ 阶向前差分

若 $f(x)$ 在 $[t,t+rh]$ 上有 $r-1$ 阶导数，则
$$
\Delta_h^r f(t)=h^r f^{(r-1)}(\xi_n) \le h^r\|f^{(r-1)}\|_\infty
$$

# 其他空间

1. **线性完备内积**空间称作**希尔伯特空间** 
2. **线性完备赋范**空间称作**巴拿赫空间** 
3. **有限维线性内积**空间称作**欧几里得空间** 

# 参考

[^holomorphic]: 百度百科. [全纯函数](https://baike.baidu.com/item/%E5%85%A8%E7%BA%AF%E5%87%BD%E6%95%B0).
[^maxmod]: 百度百科. [最大模原理](https://baike.baidu.com/item/%E6%9C%80%E5%A4%A7%E6%A8%A1%E5%8E%9F%E7%90%86).

