---
author:
- Sergio Padilla López
- Marina Estévez Almenzar
- Ignacio Cordón Castillo

title: "Elipse"
lang: spanish
date: \today
papersize: A4
geometry: margin=3.5cm

# Especifica que queremos un índice
toc-title: "Índice de contenidos"
toc: false
toc-depth: 3

indent: 2cm

# Especifica que queremos español
lang: spanish

# Paquetes a usar en la compilación de latex
header-includes:
  - \usepackage{graphicx}
...

\nocite{*}

\newcommand{\imgn}[2]{
  \begin{center}
    \includegraphics[width=#1\textwidth]{#2}
  \end{center}
}

\newpage

# Hipercuádricas

Un polinomio de segundo grado en $\mathbb{R}^{n}$ se define como:

$$Q(x) = \sum_{i=1}^n a_{ii} x_i^2 + 2\sum_{i<j} a_{ij} x_i x_j + \sum_{i=1}^n b_i x_i + c$$

donde $a_{i,j}, b_i, c\in \mathbb{R}$ y algún $a_{ij} \neq 0, x=(x_1, \ldots x_n)^t \in \mathbb{R}^n$

Se llama **hipercuádrica** asociada a $Q$ al conjunto:

$$\mathbb{C}_{Q} = \left\{x\in \mathbb{R}^n : Q(x) = 0\right\}$$

$\mathbb{C}_{Q}$ puede ser vacío, por ejemplo en el caso $Q(x,y) = x^2+y^2+1=0$


Cuando tenemos una hipercuádrica en $\mathbb{R}^2$, recibe el nombre de **cónica**. Las distintas cónicas que existen se pueden obtener intersecando el cono $\left\{(x,y,z)\in \mathbb{R}^3: \frac{x^2}{a^2} + \frac{y^2}{b^2} - {z^2}{c^2} = 0\right\}$ con un plano afín.

Cuando tenemos una hipercuádrica en $\mathbb{R}^3$, recibe el nombre de **cuádrica**.

Equivalentemente, podemos escribir una hipercuádrica de la forma $Q(x) = x^{t}\cdot M \cdot x + b^{t}\cdot x + c$

Donde $M = \begin{pmatrix}
    a_{11} & a_{21} & \cdots & a_{1n} \\
    a_{12} & a_{22} & \cdots & a_{2n} \\
    \vdots & \vdots & \ddots & \vdots \\
    a_{1n} & a_{2n} & \cdots & a_{nn}
\end{pmatrix}$, \qquad $b=(b_1, \ldots b_n)^t$, \qquad $x=(x_1, \ldots x_n)^t$

y también de la forma $Q(x) = (1, x^{t})\cdot \widetilde{M} \cdot \left(\begin{array}{l} 1\\ x \end{array}\right)$

Donde $\widetilde M = \begin{pmatrix}
    c & \frac{b}{2}\\
    \frac{b}{2} & M \\
\end{pmatrix}$

Decimos que $\mathbb{C}_{Q}$ es degenerada si $det(\widetilde{M}) = 0$


# Elipse

Dados dos puntos $F_1, F_2, a>0$ definimos una elipse como

$$E=\left\{p\in \mathbb{R}^2 : d(p,F_1) + d(p,F_2) = 2a\right\}$$

Cuando tenemos una elipse $E'$centrada en $(0,0)$ cuyos ejes mayor y menor coinciden con los ejes cartesianos, tendremos que los focos se encuentran en 2 puntos sobre el eje $Y$, a saber $(-\lambda,0)$, $(\lambda,0)$

Así, sea $p=(x,y)\in E'$


\begin{eqnarray*}
    d(p,F_1) = 2a - d(p,F_2) \Leftrightarrow \\
    d(p,F_1)^2 = (2a - d(p,F_2))^2 \Leftrightarrow \\
    (x+\lambda)^2 + y^2 = 4a^2 + (x-\lambda)^2 + y^2 - 4a\cdot d(p,F_2) \Leftrightarrow\\
    4x\lambda = 4a^2 - 4a\cdot d(p,F_2) \Leftrightarrow\\
    x\lambda = a^2 - a\cdot d(p,F_2) \Leftrightarrow\\
    (a^2-x\lambda)^2 = (a\cdot d(p,F_2))^2 \Leftrightarrow \\
    a^4-2a^2\lambda x+\lambda^2x^2 = a^2((x-\lambda)^2+y^2) \Leftrightarrow \\
    a^4+\lambda^2x^2 = a^2 x^2+a^2 \lambda^2 +a^2y^2\Leftrightarrow \\
    (a^2-\lambda^2)x^2 + a^2\cdot y^2 = a^2(a^2-\lambda^2)
\end{eqnarray*}

Llamando $b^2 = a^2 - \lambda^2$:

\begin{eqnarray*}
    b^2\cdot x^2+a^2\cdot y^2 = a^2\cdot b^2 \Leftrightarrow
    \frac{x^2}{a^2} + \frac{y^2}{b^2} = 1
\end{eqnarray*}

## Notación
Sea $Q \in \mathbb{P}_{2}[x]$. Denotamos:

- $\lambda_{i}$ a los valores propios de $M$ $\forall i = 1,\dots,n$
- $\widetilde{\lambda_{i}}$ a los valores propios de $\widetilde{M}$ $\forall i = 1,\dots,n$
- r = rg($M$) = nº de $\lambda_{i}$ no nulos
- $\widetilde{r}$ = rg($\widetilde{M}$) = nº de $\widetilde{\lambda_{i}}$ no nulos
- |$\Delta$| = | nº de $\lambda_{i}^{+}$ - nº de $\lambda_{i}^{-}$ |
- |$\widetilde{\Delta}$| = | nº de $\widetilde{\lambda}_{i}^{+}$ - nº de $\widetilde{\lambda}_{i}^{-}$ |
- $\Lambda_Q=\left\{x \in  \mathbb{R}^n / G_Q(x)=0, G_Q:\mathbb{R}^n \rightarrow \mathbb{R}^n con G_Q(x)=Mx+\frac{b}{2} \right\}$

## Definición de equivalencia euclídea
Sean $Q_1$ y $Q_2 \in \mathbb{P}_2[x]$. Diremos que $Q_1$ y $Q_2$ son euclídeamente equivalentes ($Q_1\approx Q_2$) si $\exists f:\mathbb{R}^n\longrightarrow\mathbb{R}^n$ movimiento rígido y $\exists\alpha \neq 0$ tal que $Q_2 = \alpha(Q_1\circ f)$. Así, $\mathbb{C}_{Q_2}=f^{-1}(\mathbb{C}_{Q_1})$.

## Lema
Sean $Q_1$, $Q_2\in \mathbb{P}_2[x]$. Si $Q_1\approx Q_2$ entonces se cumple:

- $r_1 = r_2$
- $\widetilde{r}_1 = \widetilde{r}_2$
- $|\Delta_1| = |\Delta_2|$
- $|\widetilde{\Delta}_1| = |\widetilde{\Delta}_2|$

## Teorema de las hipercuádricas reducidas
Sea $Q \in \mathbb{P}_2[x]$. Entonces existe $Q' \in \mathbb{P}_2[x]$ tal que $Q\approx Q'$. El polinomio $Q'$ es la expresión reducida euclídea para $Q$ y viene dada de la siguiente forma:

1. Si $\Lambda_Q \neq \emptyset $ y $\Lambda_Q \subseteq C_Q$, entonces:
$Q'(x)=x_1^2+...+\alpha_s x_s^2-\alpha_{s+1}x_{s+1}^2-...-\alpha_r x_r^2$ donde $r=rg(M)$, $\alpha_i >0$ $\forall i$ y $1\leq s \leq r$. Se cumple también que $s\geq r-s$, $1\leq \alpha_2 \leq ... \leq \alpha_s$ y $\alpha_{s+1} \leq ... \leq \alpha_r$. En este caso, $\widetilde{r}=r$, $|\widetilde{\Delta}|=|\Delta|=2s-r$.

2. Si $\Lambda_Q \neq \emptyset $ y $\Lambda_Q \cap C_Q = \emptyset$, entonces:
$Q'(x)=\alpha_1 x_1^2+\dots+\alpha_s x_s^2-\alpha_{s+1}x_{s+1}^2-\dots-\alpha_r x_r^2 \pm 1$
donde $r=rg(M)$, $\alpha_i >0$ $\forall i \in{1,...,r}$ y $1\leq s \leq r$. Se cumple también que $s\geq r-s$, $\alpha_1\leq \alpha_2 \leq ... \leq \alpha_s$ y $\alpha_{s+1} \leq ... \leq \alpha_r$. En este caso, $\widetilde{r}=r+1$, $|\Delta|=2s-r$, $|\widetilde{\Delta}|=
\left\{
	\begin{array}{c}
	2s-r+1\\
	|2s-r-1|
	\end{array}
\right.$

3. Si $\Lambda_Q = \emptyset $, entonces:
$Q'(x)=\alpha_1 x_1^2+...+\alpha_s x_s^2-\alpha_{s+1}x_{s+1}^2-...-\alpha_r x_r^2 - x_n$ donde $r=rg(M)$, $\alpha_i >0$ $\forall i \in{1,...,r}$ y $1\leq s \leq r$. Se cumple también que $s\geq r-s$, $\alpha_1\leq \alpha_2 \leq ... \leq \alpha_s$ y $\alpha_{s+1} \leq ... \leq \alpha_r$. En este caso, $\widetilde{r}=r+2$, $|\Delta|= |\widetilde{\Delta}|=2s-r$

## Tabla de cónicas reducidas

| Ecuación Euclidea | r | $\widetilde{r}$ | $\vert\Delta\vert$ | $\vert\widetilde{\Delta}\vert$ | Tipo |
| ---- | ---- | ---- | ---- | ---- | ---- |
| $x^{2} = 0$ | 1 | 1 | 1 | 1 | Recta doble |
| $\lambda x^{2} + 1 = 0$ | 1 | 2 | 1 | 2 | $\emptyset$ , o bien, dos rectas paralelas |
| $\lambda x^{2} - 1 = 0$ | 1 | 2 | 1 | 0 | Dos rectas paralelas |
| $\lambda x^{2} - y = 0$ | 1 | 3 | 1 | 1 | Parábola |
| $x^{2} + \lambda y^{2} = 0$ | 2 | 2 | 2 | 2 | Punto |
| $x^{2} - \lambda y^{2} = 0$ | 2 | 2 | 0 | 0 | Dos rectas secantes |
| $\lambda x^{2} - \mu y^{2} + 1 = 0$ | 2 | 3 | 2 | 3 | $\emptyset$ (Elipse imaginaria) |
| $\lambda x^{2} + \mu y^{2} - 1 = 0$ | 2 | 3 | 2 | 1 | Elipse |
| $\lambda x^{2} - \mu y^{2} \pm 1 = 0$ | 2 | 3 | 0 | 1 | Hipérbola |

## Corolario
Las elipses, parábolas e hipérbolas son las únicas cónicas no degeneradas.

# Ecuación ejercicio
Sea
$$|z| + <z,e> = k, $$  
donde $z,e \in \mathbb{R}^2 $ y $k \in \mathbb{R}$, desarrollando la ecuación, tomando $z=(x,y)$ y $e=(e_{1}, e_{2})$ obtenemos:
$$\sqrt{x^2+y^2} + <(x,y),(e_{1},e_{2})> = k $$
$$\sqrt{x^2+y^2} + xe_{1} + ye_{2} = k $$
$$\sqrt{x^2+y^2} = k - xe_{1} - ye_{2} $$
$$x^2+y^2 = (k - xe_{1} - ye_{2})^{2} $$
$$(1-e_{1}^{2})x^2+(1-e_{2}^{2})y^2 - 2e_{1}e_{2}xy + 2ke_{2}y + 2ke_{1}x - k^{2} = 0 $$

luego, estamos ante la ecuación de una cónica. Sabemos que las cónicas nos quedan definidas por una matriz simétrica, $\widetilde{M}$, que queda definida como:

$$\widetilde{M} = \left( \begin{array}{ccc} -k^{2} & ke_{1} & ke_{2} \\ ke_{1} & (1-e_{1}^{2}) & -e_{1}e_{2} \\ ke_{2} & -e_{1}e_{2} & (1-e_{2}^{2}) \end{array} \right) $$

Además tenemos la matriz M definida como:

$$M = \left( \begin{array}{cc} (1-e_{1}^{2}) & -e_{1}e_{2} \\ -e_{1}e_{2} & (1-e_{2}^{2}) \end{array} \right) $$

Observando la tabla de cónicas, y en virtud del corolario posterior, para que la ecuación defina una elipse, necesitados que sea no degenerada (|$\widetilde{M}$|$\neq0$) y además como r=2 y $\Delta$=2, todos los $\lambda_{i}$ tienen el mismo signo (|$M$| > 0).

Veamos que condiciones tiene que cumplir la ecuación para que |$M$| > 0:

$$|M| = (1-e_{1}^{2})(1-e_{2}^{2}) - e_{1}^{2}e_{2}^{2} > 0 \Leftrightarrow$$
$$\Leftrightarrow 1-e_{2}^{2}-e_{1}^{2}+e_{1}^{2}e_{2}^{2} - e_{1}^{2}e_{2}^{2} > 0 \Leftrightarrow$$
$$\Leftrightarrow 1>e_{2}^{2}-e_{1}^{2} \Leftrightarrow$$
$$\Leftrightarrow 1>||e||^{2} $$

Por tanto, para que la ecuación sea de tipo elipse, e tiene que cumplir $||e||<1$, veamos que condiciones tiene que cumplir la ecuación para que |$\widetilde{M}$|$\neq0$:

$$|\widetilde{M}| = \left| \begin{array}{ccc} -k^{2} & ke_{1} & ke_{2} \\ ke_{1} & (1-e_{1}^{2}) & -e_{1}e_{2} \\ ke_{2} & -e_{1}e_{2} & (1-e_{2}^{2}) \end{array} \right| = -k^2$$

entonces,

$$|\widetilde{M}| \neq 0 \Leftrightarrow k \neq 0$$

Por tanto, veamos ahora que suponiendo $y=0$ y veamos que $\exists x$ tal que $(x,y)$ cumple la ecuación (luego no sería vacía):
Buscamos un $x$ tal que $(1-e_{1}^{2})x^2 + 2ke_{1}x - k^{2} = 0 $, estamos ante una ecuación de segundo grado, luego tenemos dos soluciones que son:

$$x_{1}=\frac{k}{e_{1}+1} \hspace{1cm} x_{2}=\frac{k}{e_{1}-1}$$

Luego, tanto ($x_{1}$,0) como ($x_{2}$,0) son soluciones de la ecuación.

Resumiendo, la ecuación define una elipse $\Leftrightarrow \left\{ \begin{array}{l}  ||e||<1 \\ k \neq 0 \end{array} \right. $


# Libro
$$\vert x \vert + \vert A-x\vert = c $$
$$\vert A-x\vert = c - \vert x \vert, $$
$${\vert A-x\vert}^2 = {(c - \vert x \vert)}^2 $$
$${\vert A \vert}^2 + {\vert x \vert}^2 - 2<A,x> = c^2 + {\vert x\vert}^2 - 2c\vert x \vert,$$
$$\begin{equation} 
\vert x\vert + \left< -\frac{1}{c} A,x \right> = \frac{ c^2 - {\vert A \vert}^2 }{ 2c }
\end{equation} $$

Definimos:

$$e:=-\frac{1}{c}A, \hspace{1cm} k=\frac{c^2 - {\vert A \vert}^2}{2c} $$

Por la desigualdad triangular, $ \vert A\vert < \vert x\vert + \vert A-x\vert = c$, y deducimos que

$$ \vert e\vert < 1, \hspace{1cm} k>0,$$

y (1) se reescribe como

$$ \vert x\vert + <e,x> = k $$

Este proceso es reversible, hay un paso delicado:

$${\vert A-x\vert}^2 = (c-\vert x\vert)^2 \rightsquigarrow \vert A -x\vert = c - \vert x\vert. $$

# Hacia el otro lado
Partimos de  $ |x| + <x,e>=k$,  donde $e\in \mathbb{R}^2$ con $|e|<1$ y $k>0$. Veamos que esta ecuación representa una elipse con unos de sus focos en $(0,0)$. Es decir, veamos que $\exists A\in \mathbb{R}^2,c>0$ verificando $d(x,0)+d(x,A) = c$.
Buscamos $A\in \mathbb{R}^2$ y $c>0$ que verifiquen:
$$A = -ce$$$$c^2-2ck-|A|^2=0$$
Suponiendo que existe dicho $c$, de la primera ecuación podemos deducir que $|A|=c|e|<c$. Sustituyendo el valor de $A$ en la segunda ecuación deducimos que:
$c^2-2ck-c^2|e|^2=0 \Leftrightarrow c[c(1-|e|^2)-2k]=0 \Leftrightarrow \left\{ \begin{array}{l}  c=0 \\ ó \\ c = \frac{2k}{1-|e|^2}\end{array} \right.$
Descartamos la posibilidad $c=0$, ya que en en este caso no se trataría de una elipse. Por tanto nos quedamos con $c = \frac{2k}{1-|e|^2}$. Además podemos asegurar que, en este caso, $c= \frac{2k}{1-|e|^2}>0$, ya que $k>0$. Por tanto podemos expresar:
$$e=\frac{-1}{c}A$$$$k=\frac{c^2-|A|^2}{2c}$$
Sustituimos estas expresiones en nuestra ecuación inicial $ |x| + <x,e>=k$, que queda expresada en función de $A$ y $c$:
$$|x|+<\frac{-1}{c}A,x>=\frac{c^2-|A|^2}{2c} \Leftrightarrow$$$$
 \Leftrightarrow 2c|x|-2<A,x>=c^2-|A|^2 \Leftrightarrow$$$$ \Leftrightarrow 2c|x|-2<A,x>+|x|^2 =c^2-|A|^2+|x|^2 \Leftrightarrow $$$$ \Leftrightarrow |x|^2-2<A,x>+|A|^2 = c^2-2cx+|x|^2\Leftrightarrow $$$$ \Leftrightarrow |A-x|^2 = (c-|x|)^2\Leftrightarrow $$$$\Leftrightarrow |A-x| = \left\{ \begin{array}{l}  c-|x| \\ ó \\|x|-c\end{array} \right.$$
Descartamos que  $|A-x| = |x| -c$ ya que, en dicho caso:
$$|x|-c<x-|A|\leqslant |x-A| = |x|-c$$
Lo cual es una contradicción. Luego $$|A-x| = c-|x| \Leftrightarrow |x|+|A-x| \Leftrightarrow d(x,0)+d(x,A)=x$$ 
donde $$A=\frac{2k}{|e|^2-1}e$$  $$c=\frac{2k}{1-|e|^2}$$

#Casos particulares
##Caso $e=0$
En este caso tendríamos que $|x|+<x,e>=k \Leftrightarrow |x|=k$ con $k>0$. Luego resultaría una circunferencia centrada en el origen.

##Caso gravitacional
Sabemos que en este caso $k=\frac{|m|^2}{\mu}$ con $\mu$ constante, y sea $m$ el momento angular ($m=x\wedge \dot{x}$), se tiene que el eje de excentricidad toma el valor $$e=\frac{1}{\mu}\dot{x}\wedge m -\frac{x}{|x|}$$
Puesto que $m$ es constante, bastaría con conocer el valor de $x$ y $\dot{x}$ en un mismo punto para conocer los valores $e$ y $k$.
En este caso, según lo explicado, la elipse tendría uno de sus focos en $(0,0)$ y el otro en $$A=\frac{2|m|^2}{\mu (1-|\frac{1}{\mu}\dot{x}\wedge m -\frac{x}{|x|}|^2)}$$