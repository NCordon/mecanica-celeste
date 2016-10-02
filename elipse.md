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

Un polinomio de segundo grado en $\mathbb{R}$ se define como:

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

y también de la forma $Q(x) = (1, x^{t})\cdot \widetilde{M} \cdot (1,x)$

Donde $\widetilde M = \begin{pmatrix} 
    c & \frac{b}{2}\\
    \frac{b}{2} & M \\
\end{pmatrix}$

Decimos que $\mathbb{C}_{Q}$ es degenerada si $det(\widetilde{M}) \neq 0$


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
