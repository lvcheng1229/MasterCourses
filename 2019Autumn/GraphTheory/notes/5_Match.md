# 5. 匹配与独立集

## 5.1 匹配

设 $G$ 是无环非空图，$M$ 是 $E(G)$ 的**非空**子集。若 $M$ 中任何两条**边**在 $G$ 中均**不相邻**，则称 $M$ 为 $D$ 的**匹配** matching

$G$ 中与 $M$ 中边关联的顶点称为 $M$ **饱和点** saturated vertex。反之，称为 $M$ **非饱和点** unsaturated vertex

设 $X\subseteq V(D)$，若 $X$ 中每点都是 $M$ 饱和点，则称 $M$ **饱和** $X$ 

若 $M$ 饱和 $V(D)$，则称 $M$ 为 $D$ 的**完美匹配** perfect matching

从子图观点看，匹配是图 $G$ 的 1-正则子图 1-regular subgraph，完美匹配是图 $G$ 的支撑 1-正则子图 spanning 1-regular subgraph

若对 $D$ 的任何匹配 $M^\prime$ 均有 $|M^\prime|\le |M|$，则称 $M$ 为 $D$ 的**最大匹配** maximum matching

完美匹配 $\Rightarrow$ 最大匹配

> **示例** 
>
> 最大匹配
>
> ![image-20191124171343898](assets/image-20191124171343898.jpg)
>
> 完美匹配
>
> ![image-20191124171350284](assets/image-20191124171350284.jpg)

### 5.1.1 二部图有完美匹配条件 - Hall 定理

**定理 5.1.1**（Hall 定理）设 $G$ 是 $2$ 部划分为 $\{X,Y\}$ 的 $2$ 部分图，则：$G$ 有饱和 $X$ 的匹配 $\Leftrightarrow$ 
$$
|S|\le |N_G(S)|\quad \forall S\subseteq X
$$
称为 **Hall 条件** 

> **证明** 
>
> - 必要性
>
> > 设 $M$ 是 $G$ 中饱和 $X$ 的匹配，则该匹配自然给出一个从 $X$ 到 $Y$ 的单射，记为 $M(x)$，$x\in X$ 
> >
> > 设 $S\subseteq X$，则 $M(S)\subseteq N_G(S)$，所以 $|S|=|M(S)|\le |N_G(S)|$ 
>
> - 充分性
>
> > 令 $M$ 是 $G$ 中最大匹配，只需证明 $|M|\ge |X|$ 
> >
> > 令 $H$ 是由 $G$ 每条边给定从 $X$ 到 $Y$ 的方向后所得到的定向图
> >
> > 构作有向图 $D$ 
> > $$
> > \begin{aligned}
> > V(D)&=V(H)\cup \{x,y\}\\
> > E(D)&=E(H)\cup\{(x,x^\prime):x^\prime\in X\}\cup\{(y^\prime,y):y^\prime\in Y\}
> > \end{aligned}
> > $$
> > ![image-20191124175029129](assets/image-20191124175029129.jpg)
> >
> > 断言：$D$ 中内部点不交的 $(x,y)$ 路的最大条数为 $|M|$ 
> >
> > > 设 $\{P_1,\dots,P_l\}$ 为 $D$ 中连接 $x,y$ 的点不交的最大路集，则 $|E_D(P_i)\cap E_D(X,Y)|=1$。设 $\{e_i\}=E_D(P_i)\cap E_D(X,Y)$，则 $\{e_1,\dots,e_l\}$ 是 $D$ 的匹配，故 $l\le |M|$ 
> > >
> > > 设 $M=\{e_1,\dots,e_m\}$，则过每条边 $e_i$ 都可以构造一条 $(x,y)$ 路且两两内点不交，即 $|M|\le l$ 
> > >
> > > 综上 $l=|M|$ 
> >
> > 令 $T$ 是 $D$ 中最小 $(x,y)$ 分离集，由 Menger 定理，有
> > $$
> > |M|=\zeta_D(x,y)=\kappa_D(x,y)=|T|
> > $$
> > 令 $T_1=T\cap X$，$T_2=T\cap Y$，则 $N_D^+(X\backslash T_1)\subseteq T_2$，则
> > $$
> > \begin{aligned}
> > |M|&=|T|\\
> > &=|T_1|+|T_2|\\
> > &\ge |T_1|+|N_D^+(X\backslash T_1)|\\
> > &= |T_1|+|N_G(X\backslash T_1)|\\
> > &\ge |T_1|+|X\backslash T_1|\\
> > &= |X|
> > \end{aligned}
> > $$

**推论 5.1.1.1**（婚姻定理）$2$ 部划分为 $\{X,Y\}$ 的 $2$ 部图 $G$ 有完美匹配 $\Leftrightarrow$ $|X|=|Y|$，并且对 $X$（或 $Y$）满足 Hall 条件

**推论 5.1.1.2** 设 $G$ 是 $k(>0)$ 正则 $2$ 部图，则 $G$ 有完美匹配

> **证明** 
>
> 设 $G$ 是 $2$ 部划分为 $\{X,Y\}$ 的 $k$ 正则 $2$ 部图，则
> $$
> k|X|=|E(G)|=k|Y|
> $$
> 由于 $k\neq 0$，则 $|X|=|Y|$ 
>
> 任取 $S\subseteq X$，并用 $E_1$ 表示与 $S$ 关联的边集，$E_2$ 表示与 $N_G(S)$ 关联的边集，则 $E_1\subseteq E_2$ 
>
> 则
> $$
> k|N_G(S)|=|E_2|\ge |E_1|=k|S|
> $$
> 即 $|N_G(S)|\ge |S|$ 
>
> 由 Hall 定理知 $G$ 有饱和 $X$ 的匹配 $M$，由于 $|X|=|Y|$，所以 $M$ 是完美匹配

**推论 5.1.1.3** 设 $G$ 是 $2$ 部划分为 $\{X,Y\}$ 的简单 $2$ 部图，而且 $|X|=|Y|=n$。若 $\delta(G)\ge \frac{n}{2}$，则 $G$ 有完美匹配

> **证明** 
>
> 任取 $S\subseteq X$，有 $|N(S)|\ge\delta(G)\ge \frac{n}{2}$ 
>
> 若 $|S|>|N(S)|$，则 $|S|> \frac{n}{2}$ 且 $Y\backslash N(S)\neq \empty$ 
>
> 令 $u\in Y\backslash N(S)$，则 $N(u)\subseteq X\backslash S$，即
> $$
> \delta(G)\le d_G(u)=|N(u)|\le|X|-|S|< \frac{n}{2}
> $$
> 矛盾，故 $|S|\le |N(S)|$ 
>
> 由 Hall 定理知 $G$ 有饱和 $X$ 的匹配 $M$，由于 $|X|=|Y|$，所以 $M$ 是完美匹配

### 5.1.2 一般图有完美匹配条件 - Tutte 定理

**定理 5.1.2**（Tutte 定理）$G$ 有完美匹配 $\Leftrightarrow$ $o(G-S)\le |S|\quad \forall S \subset V(G)$，称为 Tutte 条件，其中 $o(G-S)$ 是 $G-S$ 的奇阶连通分支数目

> **证明** 
>
> - 必要性 $\Rightarrow$ 
>
> > 设 $M$ 是 $G$ 的完美匹配，$S\subset V(G)$，$G_1,\dots,G_t$ 是 $G-S$ 的奇阶连通分支
> >
> > 所以存在 $u_i\in V(G_i)$ 和 $w_i\in S$ 使 $\{u_iw_i:i=1,\dots,t\}\subseteq M$ 
> >
> > 则 $o(G-S)=t=|\{w_1,\dots,w_t\}|\le |S|$ 
>
> - 充分性 $\Leftarrow$ 
>
> > 令 $S=\empty$，则 $o(G-S)=0$，所以 $n=|V(G)|$ 为偶数
> >
> > （归纳法）
> >
> > - 当 $n=2$ 时，结论显然成立
> >
> > - 假设 $<n$ 偶阶成立
> >
> > > 设 $U$ 是 $V(G)$ 中使 Tutte 条件**等号**成立的最大非空子集，令 $|U|=m$，并令 $G_1,\dots,G_m$ 是 $G-U$ 的奇分支，则有下列三个结论成立
> > >
> > > - $G-U$ 无偶分支
> > >
> > > > **证明** 
> > > >
> > > > 设 $H$ 是 $G-U$ 的偶分支，$u\in V(H)$，则 $m+1\le o(G-(U\cup\{u\}))\le |U\cup\{u\}|=m+1$，即 $o(G-(U\cup\{u\}))=|U\cup\{u\}|$ 
> > >
> > > - $\forall x\in G_i$，则 $G_i-x$ 有完美匹配
> > >
> > > > **证明** 
> > > >
> > > > 若不然，由归纳假设，存在 $S\subset V(G_i-x)$ 使得 $o((G_i-x)-S)>|S|$。由于 $o((G_i-x)-S)$ 与 $|S|$ 有相同的奇偶性。所以 $o((G_i-x)-S))\ge |S|+2$，记 $U^+=U\cup S\cup \{x\}$，于是
> > > > $$
> > > > \begin{aligned}|U|+1+|S|&=|U^+|\\&=o(G-(U^+))\\&=o(G-U)-1+o((G_i-x)-S)\\&\ge |U|+1+|S|\end{aligned}
> > > > $$
> > > > 即 $o(G-U^+)=|U^+|>|U|$ 
> > > >
> > > > 矛盾于 $U$ 的选取
> > >
> > > - $G$ 含匹配 $M=\{s_it_i:s_i\in U,t_i\in V(G_i),i=1,\dots,m\}$ 
> > >
> > > > **证明** 
> > > >
> > > > ![image-20191203111417929](assets/image-20191203111417929.jpg)
> > > >
> > > > 考虑 2 部划分为 $\{V_1,V_2\}$ 的 2 部图 $H$ 
> > > >
> > > > - $V_1=\{G_1,\dots,G_m\}$，$V_2=U$ 
> > > > - $G_i$ 与 $U$ 中点 $s$ 在 $H$ 中相邻 $\Leftrightarrow$ $G$ 含从 $s$ 到 $G_i$ 中点的边
> > > >
> > > > 因此只需证 $H$ 有饱和 $V_1$ 的匹配
> > > >
> > > > （Hall 定理）
> > > >
> > > > 任取 $A\subseteq V_1$，并令 $B=N_H(A)\subseteq V_2$，则由于 $A$ 中元素都是 $G-B$ 的奇分支，则
> > > > $$
> > > > |A|\le o(G-B)\le |B|=|N_H(A)|
> > > > $$
> > > > 即 $A$ 满足 [Hall 定理](#5.1.1 二部图有完美匹配条件 - Hall 定理) 中的 Hall 条件，于是 $H$ 有饱和 $V_1$ 的匹配
> > >
> > > 综合三个结论知 $n$ 时成立
> >
> > 由归纳法知定理成立

**定理 5.1.2\***（Berge 公式）用 $\nu(G)$ 表示 $G$ 的最大匹配中边的数目，则
$$
\begin{aligned}
\nu(G)&=\frac{1}{2}\left\{|V(G)|-\max_\limits{S\subset V(G)}\{o(G-S)-|S|\}\right\}\\
&=\min_\limits{S\subset V(G)}\left\{\frac{V(G)+|S|-o(G-S)}{2}\right\}
\end{aligned}
$$
**推论 5.1.2.1** 偶阶 $(k-1)$ 边连通 $k(\ge 1)$ 正则图有完美匹配

> **证明** 
>
> - 当 $k=1$ 时，结论显然成立
>
> - 假定 $k\ge 2$ 
>
> > （Tutte 定理）
> >
> > - 若 $S=\empty$，$n(G)$ 是偶数，则 $o(G-S)=0=|\empty|=|S|$ 
> > - 设 $S\neq \empty$ 
> >
> > > 设 $G_1,\dots,G_t$ 是 $G-S$ 的奇分支，记 $m_i=|E_G(V(G_i),S)|$，$n_i=n(G_i)$ 
> > >
> > > 断言：$m_i\ge k$ 
> > >
> > > > 由 $\lambda(G)\ge k-1$，则 $m_i\ge k-1$ 
> > > >
> > > > 若存在某个 $i$ 使 $m_i=k-1$，则
> > > > $$
> > > > e(G_i)=\frac{1}{2}(kn_i-k+1)=\frac{1}{2}k(n_i-1)+\frac{1}{2}
> > > > $$
> > > > 上式右端不为整数，矛盾
> > > >
> > > > > 第一个等号：$kn_i-m_i=kn_i-k+1$ 是 $G_i$ 的点度数和
> > > > >
> > > > > $n_i$ 是奇数，所以右边的不是整数
> > > >
> > > > 则 $m_i\ge k$ 
> > >
> > > 则
> > > $$
> > > o(G-S)=t\le \frac{1}{k}\sum_{i=1}^t m_i\le \frac{1}{k}\sum_{u\in S}d_G(u)=|S|
> > > $$
> >
> > 故由 Tutte 定理知 $G$ 有完美匹配

**推论 5.1.2.2** $2$ 边连通 $3$ 正则图有完美匹配

> **证明** 
>
> 因为 $G$ 是 $3$ 正则图，所以由推论 1.3.2 知 $G$ 是偶阶
>
> 由推论 5.1.2.1 知该结论成立

**推论 5.1.2.3** 完全图 $K_{2n}$ 有 $(2n-1)$ 个互不相交的完美匹配

> **示例** 
>
> $K_6$ 的 $5$ 个互不相交的完美匹配
>
> ![image-20191203111348518](assets/image-20191203111348518.jpg)

### 5.1.3 Konig 定理

设 $G$ 是无环非空图，$S$ 是 $V(G)$ 的非空子集。若 $E(G)$ 中每条边都与 $S$ 中某点关联，则称 $S$ 为 $G$ 的**点覆盖** vertex covering

如果 $G$ 中任何异于 $S$ 的点覆盖 $S^\prime$ 均有 $|S^\prime|\ge |S|$，则称 $S$ 为**最小点覆盖** minimum vertex covering

点覆盖 $S$ 称为**极小的** minimal，若对任何 $x\in S$，$S\backslash\{x\}$ 都不是点覆盖

$G$ 中最小点覆盖中的顶点数称为**点覆盖数** vertex covering number，记为 $\beta(G)$ 

$G$ 中最大匹配中的边数称为**匹配数** matching number，记为 $\nu(G)$ 

显然 $\nu(G)\le \beta(G)$ 

**定理 5.1.3**（Konig 定理）对任何 2 部图 $G$ 有 $\nu(G)=\beta(G)$ 

> **证明** 
>
> （Hall 定理）
>
> 设 $G$ 是 $2$ 部划分为 $\{X,Y\}$ 的 $2$ 部图，$Z$ 是 $G$ 的最小点覆盖，并令
> $$
> S=Z\cap X,\quad T=Z\cap Y,\quad S^\prime=X\backslash S,\quad T^\prime=Y\backslash T
> $$
> 由点覆盖的定义知 $S^\prime$ 与 $T^\prime$ 之间无边相连
>
> 考虑 $G$ 的 $2$ 部子图 $H=G[S\cup T^\prime]$ 
>
> 因为 $Z$ 是 $G$ 的最小点覆盖，所以对 $S$ 的任何子集 $R$ 均有 $|N_H(R)|\ge |R|$（否则 $T\cup(S\backslash R)\cup N_H(R)$ 是一个更小的点覆盖集，和 $Z$ 的最小矛盾）
>
> 由 Hall 定理知 $H$ 有存在饱和 $S$ 的匹配，记为 $M_1$ 
>
> 同样，$G[S^\prime\cup T]$ 中存在饱和 $T$ 的匹配，设为 $M_2$ 
>
> 由于 $M_1\cup M_2$ 是 $G$ 的匹配，而且 $M_1\cap M_2=\empty$，所以 $\beta(G)=|Z|=|S|+|T|=|M_1|+|M_2|\le \nu(G)$ 
>
> 又 $\nu(G)\le \beta(G)$，则 $\nu(G) = \beta(G)$ 

**推论 5.1.3** 设 $G$ 是 $2$ 部划分为 $\{X,Y\}$ 的 $2$ 部简单图，$k\ge 1$。若 $|X|=|Y|=n$，且 $e(G)>(k-1)n$，则 $\nu(G)\ge k$ 

> **证明** 
>
> （反证法）
>
> 若 $\beta(G)\le k-1$，则 $e(G)\le \beta(G)\Delta(G)=\beta(G)n\le (k-1)n$，矛盾，则 $\beta(G)\ge k$ 
>
> 由 **Konig 定理** 知 $\nu(G)=\beta(G)\ge k$ 

## 5.2 独立集

设 $D$ 是无环图，$S$ 是 $V(D)$ 的非空子集，若 $S$ 中任何两顶点在 $D$ 中均不相邻，则称 $S$ 为 $D$ 的**独立集** independent set

$D$ 的独立集 $S$ 称为**最大的** maximum，如果对 $D$ 中任何异于 $S$ 的独立集 $S^\prime$ 均有 $|S^\prime|\le |S|$ 

独立集 $S$ 称为**极大的** maximal，如果对任何 $x\in V\backslash S$，$S\cup\{x\}$ 都不是独立集

> **示例** 
>
> ![image-20191203232110628](assets/image-20191203232110628.png)
>
> - 极大独立集 $S^\prime=\{x_0\}$ 
> - 最大独立集 $S=\{x_1,x_3\}$ 

$G$ 中最大独立集中的点数称为 $G$ 的**独立数** independent number，记为 $\alpha(G)$ 

对于一般的图，确定 $\alpha(G)$ 是 NPC 问题

设 $L$ 是 $E(G)$ 的非空子集。若 $G$ 的每个顶点都与 $L$ 中某条边关联，则称 $L$ 为 $G$ 的**边覆盖** edge covering

$G$ 有边覆盖 $\Leftrightarrow$ $\delta(G)>0$ 

最小边覆盖中的边数称为 $G$ 的**边覆盖数** edge covering number，记为 $\rho(G)$ 

由定义，边覆盖 $L$ 的导出子图必为 $G$ 的一个支撑子图且 $\delta(L)>0$；因为一条边至多饱和两个顶点，所以 $\rho(G)\ge \frac{n}{2}$ 

 匹配数 $\nu(G) \le \frac{\nu}{2}$，则
$$
\nu(G)\le \rho(G)
$$
等号成立 $\Leftrightarrow$ $G$ 中存在完美匹配

**定理 5.2.1** 设 $S\subseteq V(G)$。则 $S$ 是 $G$ 的独立集 $\Leftrightarrow$ $V(G)\backslash S$ 是 $G$ 的点覆盖

> **证明** 
>
> $S$ 是独立集 $\Leftrightarrow$ $G$ 中每条边在 $S$ 中至多有一个端点 $\Leftrightarrow$ $G$ 的每条边至少有一端点在 $V\backslash S$ 中 $\Leftrightarrow$ $V\backslash S$ 是 $G$ 的点覆盖

**推论 5.2.1.1** $S$ 是 $G$ 的极大独立集 $\Leftrightarrow$ $V(G)\backslash S$ 是 $G$ 的极小点覆盖

**推论 5.2.1.2** $\alpha(G)+\beta(G)=n(G)$ 

> **证明** 
>
> 由推论 5.2.1.1 立得

**定理 5.2.2** 设 $G$ 是任意图，且 $\delta(G)>0$。则 $\nu+\rho=n(G)$ 

> **证明** 
>
> 设 $M$ 是 $G$ 的最大匹配，$U$ 是 $M$ 非饱和点集，则 $G[U]$ 是空图
>
> 由于 $\delta(G)>0$，所以 $G$ 中存在 $|U|$ 条边的边集 $E^\prime$ 使得 $U\subseteq V(E^\prime)$ 
>
> 显然，$M\cup E^\prime$ 是 $G$ 的边覆盖，因而
> $$
> \rho\le |M\cup E^\prime| = \nu+(n-2\nu)=n-\nu
> $$
> 即得 $\nu+\rho\le n$ 
>
> 另一方面，设 $L$ 是 $G$ 的最小边覆盖
>
> 令 $H=G[L]$，则 $V(H)=V(G)$ 
>
> 设 $M$ 是 $H$ 的最大匹配，$U$ 为 $H$ 中 $M$ 非饱和点集
>
> 则 $H[U]$ 是空图，从而 $|L|-|M|=|L\backslash M|\ge U=n-2|M|$ ，即 $|L|+|M|\ge n$ 
>
> 又因为 $H$ 是 $G$ 的支撑子图，所以 $M$ 也是 $G$ 的匹配，故
> $$
> \nu+\rho=\nu+|L|\ge |M|+|L|\ge n
> $$

**定理 5.2.3**（Konig 定理）设 $G$ 是 $2$ 部图。若 $\delta(G)> 0$，则 $\alpha(G)=\rho(G)$ 

> **证明** 
>
> 由 推论 5.2.1.2 和定理 5.2.2 有
> $$
> \alpha+\beta=\nu+\rho
> $$
> 由 定理 5.1.3 知 $\beta = \nu$，则 $\alpha=\rho$ 

---

虽然独立集的概念类似于匹配的概念，但却不存在与匹配理论相仿的独立集理论，特别是目前还不知道求图最大独立集的有效算法

两个概念可以通过线图联系起来
$$
\nu(G)=\alpha(L(G))
$$
其中 $L(G)$ 是 $G$ 的线图

**定理 5.2.4** 设 $G$ 是 $n(\ge 2)$ 阶简单无向图，且对 $G$ 中任何不相邻顶点 $x$ 和 $y$，均有 $d_G(x)+d_G(y)\ge n$（Ore 条件），则 $\alpha(G)\le \kappa(G)$ 

**推论 5.2.4** 设 $G$ 是 $n(\ge 2)$ 阶简单无向图，$\delta(G)\ge \frac{n}{2}$，则 $\alpha(G)\le \kappa(G)$ 

**定理 5.2.5** 设 $G$ 是 $n(\ge 3)$ 阶简单图。若 $\kappa(G)\ge \alpha(G)$，则 $G$ 是 Hamilton 图
