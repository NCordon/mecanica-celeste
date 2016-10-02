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


Cuando tenemos una hipercuádrica en $\mathbb{R}^2$, recibe el nombre de **cónica**.

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
