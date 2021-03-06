# 2. 一致逼近

> 第一章讲了逼近问题，第二章将逼近问题初步具体为函数的逼近问题（因为范数是一致范数，所以也叫一致逼近问题）

$I$ 是一个紧的距离空间，$X=C(I)$ 表示定义在 $I$ 上的连续函数的全体，范数定义为
$$
\|f\|\triangleq\|f\|_\infty\triangleq\sup_\limits{t\in I}|f(t)|
$$

> $\|\cdot\|_\infty$ 是一致范数，$\|f-g\|=\sup_\limits{t\in I}|f(t)-g(t)|$，差值的上确界

## 2.1 Weierstrass-Stone 定理

> 问题：子代数 $\overline{M}(I)=C(I)$？
>
> 多项式全体 $\mathcal{P}$ 在 $C[a,b]$ 中是稠密的
>
> 如何判断一个子代数是稠密的？

**Weierstrass 定理** $\forall f\in C[a,b],\forall \epsilon > 0, \exist p \in \mathcal{P}, \|f-p\| < \epsilon$ 

> $f(t)\in C[a,b]$ 当且仅当 $f(t)$ 可表示为在 $[a,b]$ 上一致收敛的函数项级数，其各项都是多项式
>
> 连续函数可以用多项式函数级数表示

**代数** 就是一个线性空间，其上定义了乘法 $(f\cdot g)(t)\triangleq f(t)\cdot g(t)$，且 $\forall f,g,h\in C(I),\forall \alpha \in \mathbb{R}$，满足

- 左分配律：$f\cdot(g+h)=f\cdot g+f\cdot h$ 
- 右分配律：$(f+g)\cdot h=f\cdot h + g\cdot h$ 
- 结合律：$f\cdot (g \cdot h) = (f\cdot g)\cdot h$ 
- 数乘：$\alpha(f\cdot g)=(\alpha f)\cdot g = f \cdot (\alpha g)$ 

多项式全体 $\mathcal{P}$ 构成 $C[a,b]$ 的一个**子代数**。Weierstrass 定理说的就是，$\mathcal{P}$ 按一致范数在 $C[a,b]$ 中是稠密的，即
$$
\overline{\mathcal{P}}=C[a,b]
$$

> P 本身不是完备的，可以逼近任意闭区间上连续函数，$\exist f\in C[a,b],f\notin \mathcal{P},f\in \overline{\mathcal{P}} \backslash P$ 

---

> M. H. Stone: $C[a,b]$ 中子代数具备什么性质能保证其在 $C[a,b]$ 中稠密呢？

**定理 2.1** （Weierstrass-Stone 定理）$M(I)\subset C(I)$ 是 $C(I)$ 中子代数，若

- $1 \in M$ 
- $M$ 分离 $I$ 中的点，即 $\forall t,s\in I,t\neq s,\exist f\in M(I),f(t)\neq f(s)$ 

则 $\overline{M}(I)=C(I)$ 

> $f = 1 \Leftrightarrow f(x)=1$ 
>
> Wererstrass 定理是 Weierstrass-Stone 的特例

**推论 2.1** $I^n \subset R^n$ 为有界闭集，$\mathcal{P}(I^n)$ 是 $n$ 个变元 $t_1,t_2,\dots,t_n$ 的多项式的全体，则 $\overline{P}(I^n)=C(I^n)$ 

**推论 2.2** $I=[a,b]$，$\varphi(t)$ 是 $[a,b]$ 上的严格单调连续函数，若 $M(I)$ 为包含 $1$，$\varphi(t)$ 的子代数，则 $\overline{M}(I)=C(I)$ 

## 2.2 正线性算子理论

> $M(I)$ 是 $C(I)$ 的无限维真子空间
>
> 如何找在稠密的子代数中找一个函数来一致逼近所需函数？
>
> 即寻找一个算子 $L:C(I) \mapsto M(I)$，用 $Lf$ 来逼近 $f$ 
>
> 对于 $f \notin M(I)$，则需要通过算子序列 $L_n$ 来逼近 $f$，即 $\lim_\limits{n\to\infty} L_nf=f$ 
>
> 怎样的算子序列呢？正线性算子理论给出了答案
>
> Bernstein 算子是特例，一般的算子只要满足 Bohman-Lorovkin 定理即可，具体地可从其推论（$f(t)=1,t,t^2$）入手

**Bernstein**（Weierstrass 定理构造性证明）设
$$
B_n(f;x)\triangleq\sum_{i=0}^n f\left(\frac{i}{n}\right)\binom{n}{i}x^i(1-x)^{n-i}
$$
为 $[0,1]$ 上与函数 $f$ 相联系的 $n$ 次 Bernstein 多项式，可证 $\forall f\in C[0,1]$，有
$$
\lim_\limits{n\to\infty}\ B_nf = f
$$

> $\lim_\limits{n\to\infty}L_nf=f$ 即为 $\lim_\limits{n\to\infty}\|L_nf-f\|=0$ 

---

在连续函数空间 $X=C(I)$ 中，函数 $f\ge 0$ 是指 $\forall t \in I,f(t)\ge 0$，称 $f$ 为 $X$ 的**正元素** 

**定义 2.1** 设 $L:X \to X$，若 $\forall f \ge 0,Lf\ge 0$，则称 $L$ 为**正算子**。若 $L$ 又是线性算子，则称 $L$ 为**正线性算子** 

**定理 2.2**（Bohman-Korovkin 定理）设函数 $\{f_i\}_{i=1}^m\subset C(I)$，$\exist a_i(s)\in C(I),i=1,2,\dots,m$ 使得
$$
P_s(t)=\sum_{i=1}^m a_i(s)f_i(t)\ge 0
$$
当且仅当 $t=s$ 时等号成立

设 $L_n:C(I) \to C(I)$ 是正线性算子序列，且满足
$$
\lim_\limits{n\to\infty}L_nf_i=f_i,i=1,2,\dots,m
$$
则 $\forall f \in C(I), \lim_\limits{n\to\infty}L_nf=f$ 

**推论 2.3** $L_n$ 是定义在 $C[a,b]$ 上的正线性算子序列，下列命题等价

- $\forall f\in C[a,b]$，有 $\lim_\limits{n\to\infty}L_nf=f$ 
  
- 当 $f(t)=1,t,t^2$ 时，有 $\lim_\limits{n\to\infty} L_nf=f$ 
  
- $\lim_\limits{n\to\infty}L_n 1= 1$，且对 $s\in [a,b],\lim_\limits{n\to\infty} L_n(P_s,s)=0$，其中 $P_s(t)=(s-t)^2$ 

**推论 2.4** Bernstein 算子
$$
B_n(f,t)\triangleq\sum_{i=1}^nf\left(\frac{i}{n}\right)B_i^n(t)
$$
其中 $B_i^n(t)=\binom{n}{i}t^i(1-t)^{n-i}$，则 $\forall f\in C[0,1]$，有
$$
\lim_\limits{n\to\infty} B_nf=f
$$

## 2.3 广义多项式的一致逼近

> [2.2 正线性算子理论](##2.2 正线性算子理论) 讲的是 $M$ 是无限维子空间的情形
>
> 对于有限维子空间的 $M$，不再能一致逼近了
>
> 这时考虑的问题就是最佳逼近

本节中 $M\triangleq\text{span}\{m_i(t)\}_{i=1}^n\subset C(I)$ 是 $C(I)$ 的线性子空间，$\dim (M) = n$，其中 $\{m_i(t)\}_{i=1}^n$ 线性无关，称为**广义多项式**或一般线性形式。$M$ 是存在性集。

$\forall t_i \in I$，用 $[t_i]:C(I)\to \mathbb{R}$ 表示在 $t_i$ 点取值的泛函，即 $\forall f \in C(I), [t_i]f=f(t_i)$，$[t_i]$ 称为**点泛函** 

> $C(I)$ 是赋范线性空间，其中的向量是函数，数值是实数，所以相应的协向量 / 泛函 functional 就是从函数到实数的映射。

矩阵和行列式的简化记号
$$
\begin{align}
A\begin{pmatrix}
t_1 & t_2 & \dots & t_n \\
m_1 & m_2 & \dots & m_n
\end{pmatrix}

&\triangleq

\left(m_j(t_i)\right)_{i,j=1}^n\\

D\begin{pmatrix}
t_1 & t_2 & \dots & t_n \\
m_1 & m_2 & \dots & m_n
\end{pmatrix}

&\triangleq

\det\left(m_j(t_i)\right)_{i,j=1}^n
\end{align}
$$

### 2.3.1 最佳逼近的表征定理

**引理 2.2** $\exist \tau=(t_1,t_2,\dots,t_n)\in I^n,M^*=\text{span}\{[t_i]\}_{i=1}^n$，则 $\forall \lambda \in M^*,\exist \alpha\in \mathbb{R}^n$，有
$$
\lambda=\sum_{i=1}^n\alpha_i[t_i],\quad \|\lambda\|_{C(I)}=\sum_{i=1}^n|\alpha_i|
$$

**定理 2.3**（$C(I)$ 中的表征定理）$\forall x \in X\backslash M,m^*\in M$，则 $m^*\in B_M(x)$ 当且仅当 $\exist \tau\in I^{n+1},\alpha\in \mathbb{R}^{n+1}$ 使得 $\lambda=\sum_{i=1}^{n+1}\alpha_i[t_i]$ 满足 $\|\lambda\|=1，\lambda\perp M,\lambda(x-m^*)=\|x-m^*\|$ 

> 定理 1.7，只要求后边三点，事实上 $\lambda^*=N^*\backslash\{0\}$，其中 $N\triangleq M\oplus \text{span}\{x\}$，结合引理 2.2即可得 $\lambda=\sum_{i=1}^{n+1}\alpha_i[t_i]$ 

**推论 2.5** $0\neq x(t)\in C(I)$，则下列命题等价，令 $e(t)=x(t)-m^*(t)$ 

(1) $m^* \in \mathcal{B}_M(x)$ 

(2) $0_n\triangleq(0,0,\dots,0)\in \text{Co}\left(e(t)(m_1(t),m_2(t),\dots,m_n(t)),t\in E\right)$，其中 $E$ 为 $e$ 的极点集，即 $\forall t \in E,|e(t)|=\|e\|$ 

(3) $\exist t_1,t_2,\dots,t_r\in E \ (1\le r\le n+1),\exist \alpha_1,\alpha_2,\dots,\alpha_r \in \mathbb{R}$，使得 $\text{sgn} \alpha_j=\text{sgn}e(t_j)(j=1,2,\dots,r)$，且 $\forall m \in M, \sum_{j=1}^r\alpha_j m(t_j)=0$（即泛函 $\sum_{j=1}^r\alpha_j[t_j] \perp M$）

> **证明** 
>
> (1) $\Rightarrow$ (2)，由 **定理 2.3** 知，$\exist (t_i)_{i=1}^{n+1}\in I^{n+1},(\alpha_i)_{i=1}^n\in \mathbb{R}^n$，使得 $\lambda\triangleq \sum_{i=1}^{n+1}\alpha_i[t_i]$ 满足 $\|\lambda\|=1,\lambda\perp M,\lambda e=\|e\|$，则
> $$
> \sum_{i=1}^{n+1}|\alpha_i|=1\\
> \lambda m_j=\sum_{i=1}^{n+1}\alpha_im_j(t_i)=0
> $$
> 由于
> $$
> \lambda e=\sum_{i=1}^{n+1}\alpha_ie(t_i)\le \|e\|\sum_{i=1}^{n+1}|\alpha_i|=1
> $$
> 上式取等号时有 $\alpha_ie(t_i)=|\alpha_i|\|e\|$，则
> $$
> \sum_{i=1}^{n+1}|\alpha_i|e(t_i)(m_1(t_i),\dots,m_n(t_i))=0_n
> $$
> 故 $0_n\in \text{Co}\left(e(t)(m_1(t),m_2(t),\dots,m_n(t)),t\in E\right)$ 
>
> (2) $\Rightarrow$ (3)，由 **定理 2.4** 知 $\exist r\in \{1,\dots,n+1\}$ 和 $r$ 个正数 $c_1,\dots,c_r$ 及 $t_1,\dots,t_r\in E$，使得
> $$
> \sum_{i=1}^rc_ie(t_i)m_k(t_i)=0\quad(k=1,\dots,n)
> $$
> 令 $\alpha_i=c_i\text{sgn} e(t_i)$，则上式为
> $$
> \|e\|\sum_{i=1}^r \alpha_im_k(t_i)=0\quad(k=1,\dots,n)
> $$
> 即 $\forall m\in M,\sum_{i=1}^r\alpha_i[t_i]m=0$ 
>
> (3) $\Rightarrow$ (1)，$\alpha_j[t_j]e=\alpha_j e(t_j)=|\alpha_j||e(t_j)|=|\alpha_j|\|e\|$，取
> $$
> \lambda=\sum_{j=1}^r\frac{\alpha_j}{\sum_{k}|\alpha_k|}[t_j]
> $$
> 则 $\|\lambda\|=1,\lambda\perp M,\|e\|=\lambda e$，由表征定理知 $m^*\in \mathcal{B}_M(x)$ 

**推论 2.6**（削皮定理）
$$
\inf_{m\in M}\|x-m\|=\max_{\tau \in I^{n+1}}\min_{m\in M}\|x-m\|_\tau
$$
其中 $\tau=(t_1,t_2,\dots,t_{n+1})\in I^{n+1}$，$\|x-m\|_\tau\triangleq\max_\limits{i}|(x-m)(t_i)|$ 

### 2.3.2 Haar 空间

> 对广义多项式 $\{m_i(t)\}_{i=1}^n$ 附加 Haar 条件，则表征定理有更为简单的形式
>
> 本节先来介绍 Harr 空间的定义、充要条件和充分条件

**定义 2.3** 若 $\forall \tau \in I_0^n \triangleq \{\tau\in I^n:t_i\neq t_j,i\neq j\}$，有
$$
D\begin{pmatrix}
t_1 & t_2 & \dots & t_n \\
m_1 & m_2 & \dots & m_n
\end{pmatrix}
\neq 0
$$
则称 $\{m_i(t)\}_{i=1}^n$ 满足 **Haar 条件**，并称其为 **Haar 系统**，也称为 **Tchebycheff 系统**或 **T 系统**。若 $M$ 有一组基构成 T 系统，则称 M 为 **Haar 空间**或 **T 空间** 

> $\mathcal{P}_n$ （$1,x,\dots,x^{n-1}$）是一个 Haar 空间
>
> n - 1 次多项式用 n 个点唯一确定，那对一般 Haar 空间这个性质成立么？

**定义 2.4** 称 $\tau\in I_0^n$ 对 $M$ 是完全的 total for M 指，若 $m \in M$，且 $m(t_i)=0(i=1,2,\dots,n)$，则有 $m=0$ 

**定理 2.6** 下列命题等价

- $M$ 是 Harr 空间
- $\forall \tau \in I_0^n$，$\tau$ 对 $M$ 是完全的
- $\forall m \in M,Z_I(m)\le n-1,I=[a,b]$，其中 $Z_I(m)$ 表示 $m$ 在 $I$ 上的零点数
- $\forall \tau \in I_0^n, M^* = \text{span}\{[t_i]\}_{i=1}^n$ 

> Haar 系统示例
>
> - $\{t^{i-1}\}_{i=1}^n$ 是 $(-\infty,+\infty)$ 上的 Haar 系统
> - $\{1,\cos t, \sin t, \dots, \cos rt, \sin rt\}$ 是 $(0,2\pi)$ 上的 Haar 系统
> - $\{e^{\lambda_i t}\}_{i=1}^n$ 是 $(-\infty,+\infty)$ 上的 Haar 系统，其中 $\lambda_1<\lambda_2<\dots<\lambda_n$ 

**定理 2.7** 设 $\{\varphi_i\}_{i=1}^n\subset C^{(n-1)}(I),I=[a,b]$，若 $\forall t \in I, r = 1,2,\dots,n$，都有
$$
w(\varphi_1,\varphi_2,\dots,\varphi_r)=\det\left(\varphi_j^{(i-1)}\right)_{i,j=1}^r\neq 0
$$
则 $\text{span}\{\varphi_i\}_{i=1}^r$ 是 Haar 空间

> 定理 2.7 与定义 2.3 区别在于不考虑 $\tau$ 

Haar 系统有很多良好的性质，但例子都是 $I=[a,b]$ 的情况。一般地，当 $I^n\subset \mathbb{R}^n(n\ge 2)$ 的时候，在 $I^n$ 上没有 Haar 系统

### 2.3.3 最佳逼近的交错定理

> 本节中 $M$ 是 $n$ 维 Haar 空间，表征条件变成了简单直观的交错定理

设 $I=[a,b]$，令 $I_{0,0}^n\triangleq\{\tau \in I^n:t_1<t_2<\cdots<t_n\}$ 

**定理 2.8** 

- $\forall \tau \in I_0^{n+1}$，存在唯一的 $\alpha\in\mathbb{R}^{n+1},\alpha_{n+1}=1$，满足 $\lambda\triangleq\sum_{i=1}^{n+1}\alpha_i[t_i]\perp M$ 

- 若
  $$
  0\neq \sum_{i=1}^{n+1}\alpha_i[t_i]\perp M\quad(t_1\le t_2\le \cdots\le t_{n+1})
  $$
  则必有 $t_1<t_2<\cdots<t_{n+1}$，而且 $\alpha_i\alpha_{i+1}<0(i=1,2,\cdots,n)$

**定理 2.9**（交错定理）$m^*\in \mathcal{B}_M(x)$ 的充要条件是 $\exist \tau \in I_{0,0}^{n+1},\exist \sigma\in\{-1,1\}$，使得 $\sigma(-1)^ie(t_i)=\|e\|(i=1,2,\cdots,n+1)$，其中 $e=x-m^*$ 

> 简化的表征定理

**推论 2.7**（Tchebycheff 定理）设 $M=\mathcal{P}_n=\text{span}\{t^{i-1}\}_{i=1}^n$，则 $m^* \in \mathcal{B}_M(x)$ 的充要条件是 $\exist \tau \in I_{0,0}^{n+1},\exist \sigma\in\{-1,1\}$，使得
$$
\sigma(-1)^i(x-m^*)(t_i)=\|x-m^*\|(i=1,2,\cdots,n+1)
$$

> M 是 n 维 Haar 空间，所以满足交错定理。
>
> Tchebycheff 定理的几何意义相当直观。m 是从 $\mathcal{P}_n$ 对 $x\in C(I)$ 的最佳逼近的充要条件是：误差函数 $(x-m)(t)$ 在 $n+1$ 个不同的点处的值交替等于它的正负范数

**定理 2.10** 若 $\forall x \in X = C(I),\forall m \in M,\exist \tau \in I_{0,0}^{n+1}$，使得 $e(t_i)e(t_{i+1}) < 0$，其中 $e(t_i)\triangleq(x-m)(t_i)$，则
$$
d(x,M)\ge \min_{1\le i \le n+1}|e(t_i)|
$$

### 2.3.4 唯一性问题

**定理 2.11** $M$ 是 T 集 $\Leftrightarrow$ $M$ 是 Haar 空间

**定义 2.5** 设 $X$ 是赋范线性空间，$M\subset X$ 为子空间，称 $m\in \mathcal{B}_M(x)$ 为强唯一的，是指 $\exist r_x>0$，对 $\forall m'\in M$，有 $\|x-m'\|\ge\|x-m\|+r_x\|m'-m\|$ 

强唯一性包含唯一性

**定理 2.12**（Haar 空间的强唯一性）$M$ 是 $C(I)$ 的 $n$ 维 Haar 子空间，则 $\forall x \in C(I),\forall m \in \mathcal{B}_M(x)$，$m$ 是强唯一的。

**推论 2.8** $M$ 是 $n$ 维 Haar 子空间，则 $\exist\alpha >0$，使得
$$
\|P_Mx-P_My\| \le \alpha\|x-y\|
$$

### 2.3.5 最佳逼近函数的计算

本节 M 是 n 维 Haar 空间

求在 $I$ 中的 $n + 1$ 个点上的最佳逼近元，不断改变 $n + 1$ 个点，以逐步逼近 $I$ 上的最佳逼近

拟范数

$$
\|x\|_\tau\triangleq\max_i|x(t_i)|
$$

> 算法数学语言描述为
> $$
> \begin{align}
> m^{(k)}
> &=\mathop{\arg\min}_\limits{m\in M} \|x-m\|_\tau\\
> &=\mathop{\arg\min}_\limits{\pmb{\alpha} \in \mathbb{R}^n} \|x-\pmb{\alpha}\cdot\pmb{m}\|_\tau\\
> \end{align}\\
> x,\tau^{(k)},m^{(k)}\to\tau^{(k+1)}\\
> \lim_\limits{k\to\infty} m^{(k)}=P_Mx\\
> $$

**引理 2.3** $\forall \tau \in I_{0,0}^{n+1}$，若 $e\triangleq x-m$，满足 $e(t_i)e(t_i+1)<0$，则
$$
\min_i|e(t_i)|\le d_\tau(x,M) \le\max_i|e(t_i)|
$$
其中 $d_\tau(x,M)=\inf_\limits{m\in M}\|x-m\|_\tau$ 

> 可知 $d_\tau(x,M)\le d(x,M)$，理由如下
> $$
> d_\tau(x,M)=\inf_\limits{m\in M}\|x-m\|_\tau\le\inf_\limits{m\in M}\|x-m\|=d(x,M)
> $$

#### 2.3.5.1 Remes 第一算法

**步骤 1** 

对于给定的 $\tau\in I_{0,0}^n$，基于 $\|\cdot\|_\tau$ 计算从 M 对 x 的最佳逼近元 $m_\tau=\pmb{\alpha}\cdot\pmb{m}$，令 $e_\tau=x-m_\tau$，满足交错定理
$$
\sigma(-1)^ie_\tau(t_i)=d_\tau(x,M)\triangleq d_\tau
$$

> 这个交错定理是个变式，也不知道怎么来的
>
> 此外 $\|e_\tau\|\ge\|e_\tau\|_\tau=d_\tau$ 

两边同时乘以 $\sigma(-1)^i$，移项可得
$$
m_\tau(t_i)+(-1)^id=x(t_i),i=1,2,\dots,n+1
$$
这是一个关于 $\pmb{\alpha}$ 和 $d=\sigma d_\tau$ 的线性方程组，解得 $d_\tau=|d|$。

> $$
> \begin{align}
> d_\tau&\ge0\\
> d&=\sigma d_\tau\\
> d_\tau&=\sigma d=|d|
> \end{align}
> $$

**步骤 2** 

若 $d_\tau=\|e_\tau\|$，则 $m_\tau = P_M x$ 

>$\|x-m_\tau\|=d_\tau=d_\tau(x,M)\le d(x,M)$，又 $d(x,M)\ge\|x-m\|$，则 $\|x-m_\tau\|=d(x,M)$，即 $m_\tau=P_M x$ 

一般
$$
d_\tau=\|e_\tau\|_\tau<\|e_\tau\|
$$
则 $\exist \xi \in I,|e_\tau(\xi)|>d_\tau$，取 $\xi$ 使 $|e_\tau(\xi)|$ 尽量大（如 $|e_\tau(\xi)|=\|e_\tau\|$），用 $\xi$ 代替某个 $t_i$，这样就从 $\tau$ 得到 $s\in I_{0,0}^{n+1}$，满足 $e_\tau(s_i)e_\tau(s_{i+1})<0$ 

> $e_\tau(t_i)e_\tau(t_{i+1})<0$，说明 $m_\tau$ 和 $x$ 是交错的， $\xi$ 会与某个 $t_i$ 处于同一个交错波瓣中
>
> ![1570861182394](assets/1570861182394.jpg)
> $$
> \begin{align}
> s_i &= \xi\\
> s_j &= t_j,j\neq i\\
> \end{align}
> $$

重复步骤 1 和步骤 2 即可

**分析** 

对于 $s\in I_{0,0}^{n+1}$，可按步骤 1 计算 $d_s=d_s(x,M)$，由于
$$
\bar{d}\triangleq\max_i|e_\tau(s_i)|> d_\tau = \min_i|e_\tau(s_i)|
$$

> 这里的记号很有迷惑性，这么写其实是为了适用于 Remes 第二算法
>
> 其实 $\max_\limits{i}|e_\tau(s_i)|=e_\tau(\xi)$，$\min_\limits{i}|e_\tau(s_i)|=|e_\tau(t_i)|,t_i\neq \xi$。

由引理 2.3 得
$$
\bar{d}=\max_i|e_\tau(s_i)|>d_s=d_s(x,M)>\min_i|e_\tau(s_i)| = d_\tau
$$

> 我们看到 $d_s > d_\tau$，这样一步步迭代后 $d_s$ 会越来越大，从而逼近 $P_Mx$，证明参见定理 2.13

#### 2.3.5.2 Remes 第二算法

将 Remes 第一算法的更新点的操作对所有 $t_i$ 进行，这样
$$
\|e_\tau\|=\max_i|e_r(s_i)|,\min_i|e_\tau(s_i)|\ge d_\tau
$$

#### 2.3.5.3 Remes 算法收敛性

**定理 2.13** 设 $x\in X\backslash M,m^{(k)}\in M,e^{(k)}=x-m^{(k)},\tau^{(k)}\in I_{0,0}^{n+1}(k=0,1,\dots)$，满足
$$
d_{\tau^{(k)}}(x,M)=d^{(k)}=\|x-m^{(k)}\|_{\tau^{(k)}}\\
e^{(k)}(t_i^{(k+1)})e^{(k)}(t_{i+1}^{(k+1)})<0(i=1,\dots,n)\\
\|e^{(k)}\|_{\tau^{(k)}}=d^{(k)}\le\min_i\left|e^{(k)}(t_i^{(k+1)})\right|,\|e^{(k)}\|=\max_i\left|e_r(t_i^{(k+1)})\right|
$$
则
$$
\lim_\limits{r\to\infty}m^{(k)}=P_Mx
$$
**推论 2.9** 
$$
\left\|P_Mx-m^{(k)}\right\|\le\frac{(1-\beta)^k}{\beta r_x}(d(x,M)-d^{(0)})
$$

