---
author:
- Sergio Padilla
- Marina Estévez
- Ignacio Cordón

title: "Elipse"
lang: spanish
date: \today
fontsize: 12pt
---

## Hipercuádricas

Un polinomio de segundo grado en $\mathbb{R}$ se define como:

$$Q(x) = \sum_{i=1}^n a_{ii} x_i^2 + 2\sum_{i<j} a_{ij} x_i x_j + \sum_{i=1}^n b_i x_i + c$$

donde $a_{i,j}, b_i, c\in \mathbb{R}$ y algún $a_{ij} \neq 0, x=(x_1, \ldots x_n)^t \in \mathbb{R}^nx$

Se llama **hipercuádrica** asociada a $Q$ al conjunto:

$$\mathbb{C}_{Q} = \left\{x\in \mathbb{R}^n : Q(x) = 0\right\}$$

$\mathbb{C}_{Q}$ puede ser vacío, p.e. $Q(x,y) = x^2+y^2+1=0$


********************************


Hipercuádrica en $\mathbb{R}^2$ $\rightarrow$ **cónica**(intersecciones del cono $\left\{(x,y,z)\in \mathbb{R}^3: \frac{x^2}{a^2} + \frac{y^2}{b^2} - {z^2}{c^2} = 0\right\}$ con un plano afín)
Hipercuádrica en $\mathbb{R}^3$ $\rightarrow$ **cuádrica**.

Otra forma de escribirlas: $Q(x) = x^{t}\cdot M \cdot x + b^{t}\cdot x + c$

$$M = \begin{pmatrix}
    a_{11} & a_{21} & \cdots & a_{1n} \\
    a_{12} & a_{22} & \cdots & a_{2n} \\
    \vdots & \vdots & \ddots & \vdots \\
    a_{1n} & a_{2n} & \cdots & a_{nn}
\end{pmatrix}$$

y también de la forma $Q(x) = (1, x^{t})\cdot \widetilde{M} \cdot (1,x)$

Donde $\widetilde M = \begin{pmatrix}
    c & \frac{b}{2}\\
    \frac{b}{2} & M \\
\end{pmatrix}$

Decimos que $\mathbb{C}_{Q}$ es degenerada si $det(\widetilde{M}) \neq 0$


# Elipse

Dados dos puntos $F_1, F_2, a>0$ definimos una elipse como

$$E=\left\{p\in \mathbb{R}^2 : d(p,F_1) + d(p,F_2) = 2a\right\}$$

Sea $p=(x,y)\in E'$centrada en $(0,0)$ cuyos ejes mayor y menor coinciden con los ejes cartesianos, $F_1 = (-\lambda,0)$, $F_2 = (\lambda,0)$

\scriptsize
\begin{eqnarray*}
    d(p,F_1) = 2a - d(p,F_2) \Leftrightarrow  d(p,F_1)^2 = (2a - d(p,F_2))^2 \Leftrightarrow \\
    (x+\lambda)^2 + y^2 = 4a^2 + (x-\lambda)^2 + y^2 - 4a\cdot d(p,F_2) \Leftrightarrow\\
    x\lambda = a^2 - a\cdot d(p,F_2) \Leftrightarrow
    (a^2-x\lambda)^2 = (a\cdot d(p,F_2))^2 \Leftrightarrow \\
    a^4+\lambda^2x^2 = a^2 x^2+a^2 \lambda^2 +a^2y^2\Leftrightarrow \\
    (a^2-\lambda^2)x^2 + a^2\cdot y^2 = a^2(a^2-\lambda^2)
\end{eqnarray*}

\normalsize
Llamando $b^2 = a^2 - \lambda^2$:

\scriptsize
\begin{eqnarray*}
    b^2\cdot x^2+a^2\cdot y^2 = a^2\cdot b^2 \Leftrightarrow
    \frac{x^2}{a^2} + \frac{y^2}{b^2} = 1
\end{eqnarray*}
\normalsize

********************************

## Notación

Sea $Q \in \mathbb{P}_{2}[x]$. Denotamos:

- $\lambda_{i}$ a los valores propios de $M$ $\forall i = 1,\dots,n$
- $\widetilde{\lambda_{i}}$ a los valores propios de $\widetilde{M}$ $\forall i = 1,\dots,n$
- r = rg($M$) = nº de $\lambda_{i}$ no nulos
- $\widetilde{r}$ = rg($\widetilde{M}$) = nº de $\widetilde{\lambda_{i}}$ no nulos
- |$\Delta$| = | nº de $\lambda_{i}^{+}$ - nº de $\lambda_{i}^{-}$ |
- |$\widetilde{\Delta}$| = | nº de $\widetilde{\lambda}_{i}^{+}$ - nº de $\widetilde{\lambda}_{i}^{-}$ |
- \scriptsize $\Lambda_Q=\left\{x \in  \mathbb{R}^n / G_Q(x)=0, G_Q:\mathbb{R}^n \rightarrow \mathbb{R}^n \quad con\quad G_Q(x)=Mx+\frac{b}{2} \right\}$
\normalsize

********************************

## Definición de equivalencia euclídea
Sean $Q_1$ y $Q_2 \in \mathbb{P}_2[x]$. Diremos que $Q_1$ y $Q_2$ son euclídeamente equivalentes ($Q_1\approx Q_2$) si $\exists f:\mathbb{R}^n\longrightarrow\mathbb{R}^n$ movimiento rígido y $\exists\alpha \neq 0$ tal que $Q_2 = \alpha(Q_1\circ f)$. Así, $\mathbb{C}_{Q_2}=f^{-1}(\mathbb{C}_{Q_1})$.

## Lema
Sean $Q_1$, $Q_2\in \mathbb{P}_2[x]$. Si $Q_1\approx Q_2$ entonces se cumple:

- $r_1 = r_2$
- $\widetilde{r}_1 = \widetilde{r}_2$
- $|\Delta_1| = |\Delta_2|$
- $|\widetilde{\Delta}_1| = |\widetilde{\Delta}_2|$

********************************

## Teorema de las hipercuádricas reducidas

Sea $Q \in \mathbb{P}_2[x]$. Entonces existe $Q' \in \mathbb{P}_2[x]$ tal que $Q\approx Q'$. El polinomio $Q'$ es la expresión reducida euclídea para $Q$ y viene dada de la siguiente forma:

\scriptsize

* Si $\Lambda_Q \neq \emptyset $ y $\Lambda_Q \subseteq C_Q$, entonces:
$Q'(x)=x_1^2+...+\alpha_s x_s^2-\alpha_{s+1}x_{s+1}^2-...-\alpha_r x_r^2$ donde $r=rg(M)$, $\alpha_i >0$ $\forall i$ y $1\leq s \leq r$. Se cumple también que $s\geq r-s$, $1\leq \alpha_2 \leq ... \leq \alpha_s$ y $\alpha_{s+1} \leq ... \leq \alpha_r$. En este caso, $\widetilde{r}=r$, $|\widetilde{\Delta}|=|\Delta|=2s-r$.

* Si $\Lambda_Q \neq \emptyset $ y $\Lambda_Q \cap C_Q = \emptyset$, entonces:
$Q'(x)=\alpha_1 x_1^2+\dots+\alpha_s x_s^2-\alpha_{s+1}x_{s+1}^2-\dots-\alpha_r x_r^2 \pm 1$
donde $r=rg(M)$, $\alpha_i >0$ $\forall i \in{1,...,r}$ y $1\leq s \leq r$. Se cumple también que $s\geq r-s$, $\alpha_1\leq \alpha_2 \leq ... \leq \alpha_s$ y $\alpha_{s+1} \leq ... \leq \alpha_r$. En este caso, $\widetilde{r}=r+1$, $|\Delta|=2s-r$, $|\widetilde{\Delta}|=
\left\{
	\begin{array}{c}
	2s-r+1\\
	|2s-r-1|
	\end{array}
\right.$

* Si $\Lambda_Q = \emptyset $, entonces:
$Q'(x)=\alpha_1 x_1^2+...+\alpha_s x_s^2-\alpha_{s+1}x_{s+1}^2-...-\alpha_r x_r^2 - x_n$ donde $r=rg(M)$, $\alpha_i >0$ $\forall i \in{1,...,r}$ y $1\leq s \leq r$. Se cumple también que $s\geq r-s$, $\alpha_1\leq \alpha_2 \leq ... \leq \alpha_s$ y $\alpha_{s+1} \leq ... \leq \alpha_r$. En este caso, $\widetilde{r}=r+2$, $|\Delta|= |\widetilde{\Delta}|=2s-r$

\normalsize

********************************

## Tabla de cónicas reducidas

\scriptsize

| Ecuación Euclidea | r | $\widetilde{r}$ | \|$\Delta$\| | \|$\widetilde{\Delta}$\| | Tipo |
| ---- | ---- | ---- | ---- | ---- | ---- |
| $x^{2} = 0$ | 1 | 1 | 1 | 1 | Recta doble |
| $\lambda x^{2} + 1 = 0$ | 1 | 2 | 1 | 2 | $\emptyset$ o dos rectas paralelas |
| $\lambda x^{2} - 1 = 0$ | 1 | 2 | 1 | 0 | Dos rectas paralelas |
| $\lambda x^{2} - y = 0$ | 1 | 3 | 1 | 1 | Parábola |
| $x^{2} + \lambda y^{2} = 0$ | 2 | 2 | 2 | 2 | Punto |
| $x^{2} - \lambda y^{2} = 0$ | 2 | 2 | 0 | 0 | Dos rectas secantes |
| $\lambda x^{2} - \mu y^{2} + 1 = 0$ | 2 | 3 | 2 | 3 | $\emptyset$ |
| $\lambda x^{2} + \mu y^{2} - 1 = 0$ | 2 | 3 | 2 | 1 | Elipse |
| $\lambda x^{2} - \mu y^{2} \pm 1 = 0$ | 2 | 3 | 0 | 1 | Hipérbola |

## Corolario
Las elipses, parábolas e hipérbolas son las únicas cónicas no degeneradas.

\normalsize

# Ecuacion ejercicio

$$|z| + <z,e> = k, $$  
donde $z,e \in \mathbb{R}^2 $ y $k \in \mathbb{R}$, desarrollando la ecuación, tomando $x=(x,y)$ y $e=(e_{1}, e_{2})$ obtenemos:

\small

$$\sqrt{x^2+y^2} + <(x,y),(e_{1},e_{2})> = k $$
$$\sqrt{x^2+y^2} + xe_{1} + ye_{2} = k $$
$$\sqrt{x^2+y^2} = k - xe_{1} - ye_{2} $$
$$x^2+y^2 = (k - xe_{1} - ye_{2})^{2} $$
$$(1-e_{1}^{2})x^2+(1-e_{2}^{2})y^2 - 2e_{1}e_{2}xy + 2ke_{2}y + 2ke_{1}x - k^{2} = 0 $$


luego es una cónica, ya que sabemos que las cónicas nos quedan definidas por una matriz simétrica, $\widetilde{M}$

********************************


$$\widetilde{M} = \left( \begin{array}{ccc} -k^{2} & ke_{1} & ke_{2} \\ ke_{1} & (1-e_{1}^{2}) & -e_{1}e_{2} \\ ke_{2} & -e_{1}e_{2} & (1-e_{2}^{2}) \end{array} \right) $$


$$M = \left( \begin{array}{cc} (1-e_{1}^{2}) & -e_{1}e_{2} \\ -e_{1}e_{2} & (1-e_{2}^{2}) \end{array} \right) $$

Observando la tabla de cónicas, y en virtud del corolario posterior, para que la ecuación defina una elipse, necesitados que sea no degenerada (|$\widetilde{M}$|$\neq0$) y además como r=2 y $\Delta$=2, todos los $\lambda_{i}$ tienen el mismo signo ($|M| > 0$).

\begin{eqnarray*}
|M| = (1-e_{1}^{2})(1-e_{2}^{2}) - e_{1}^{2}e_{2}^{2} > 0 \Leftrightarrow\\
1-e_{2}^{2}-e_{1}^{2}+e_{1}^{2}e_{2}^{2} - e_{1}^{2}e_{2}^{2} > 0 \Leftrightarrow\\
1>e_{2}^{2}-e_{1}^{2} \Leftrightarrow 1>||e||^{2}
\end{eqnarray*}


********************************

$$|\widetilde{M}| = \left| \begin{array}{ccc} -k^{2} & ke_{1} & ke_{2} \\ ke_{1} & (1-e_{1}^{2}) & -e_{1}e_{2} \\ ke_{2} & -e_{1}e_{2} & (1-e_{2}^{2}) \end{array} \right| = -k^2$$

$$|\widetilde{M}| \neq 0 \Leftrightarrow k \neq 0$$

Veamos que la hipercuádrica no es vacía. Supongamos $y=0$ y veamos que $\exists x$ tal que $(x,y)$ cumple la ecuación:

Buscamos un $x$ tal que $(1-e_{1}^{2})x^2 + 2ke_{1}x - k^{2} = 0 $, estamos ante una ecuación de segundo grado, luego tenemos dos soluciones que son:
$$x_{1}=\frac{k}{e_{1}+1} \hspace{1cm} x_{2}=\frac{k}{e_{1}-1}$$

Luego, tanto $(x_{1},0)$ como $(x_{2},0)$ son soluciones de la ecuación.

Resumiendo, la ecuación define una elipse $\Leftrightarrow \left\{ \begin{array}{l}  ||e||<1 \\ k \neq 0 \end{array} \right. $
