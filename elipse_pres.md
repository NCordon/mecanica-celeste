---
author:
- Sergio Padilla
- Marina Estévez
- Ignacio Cordón

title: "Elipse"
lang: spanish
date: \today
fontsize: 12pt

# Paquetes a usar en la compilación de latex
header-includes:
  - \usepackage{graphicx}
---
      
# Definición

Dados dos puntos $F_1, F_2, a>0$ definimos una elipse como

$$E=\left\{p\in \mathbb{R}^2 : d(p,F_1) + d(p,F_2) = 2a\right\}$$
    
\begin{center}
    \includegraphics{./imgs/elipse.png}
\end{center}


# Elipse con un foco en el 0

$d(x,y) = |x-y|$, un foco está en el $0$, otro en $A\in \mathbb{R}^2$:

\begin{eqnarray*}
    & \vert x \vert + \vert A-x\vert = c \Leftrightarrow \\
    \\
    & \vert A-x\vert = c - \vert x \vert \Leftrightarrow \\
    \\
    & {\vert A-x\vert}^2 = {(c - \vert x \vert)}^2 \Leftrightarrow \\
    \\
    & {\vert A \vert}^2 + {\vert x \vert}^2 - 2<A,x> = c^2 + {\vert x\vert}^2 - 2c\vert x \vert
\end{eqnarray*}    

\begin{equation}
    \vert x\vert + \left< -\frac{1}{c} A,x \right> = \frac{ c^2 - {\vert A \vert}^2 }{ 2c }
    \tag{$*$}
    \label{eq1}
\end{equation}

*********

Llamando:

\begin{equation}
    e:=-\frac{1}{c}A, \hspace{1cm} k:=\frac{c^2 - {\vert A \vert}^2}{2c}
    \label{condicion}
    \tag{$**$}
\end{equation}

Por la desigualdad triangular, $\vert A\vert < \vert x\vert + \vert A-x\vert = c$, y deducimos:

$$ \vert e\vert < 1, \hspace{1cm} k>0,$$

y (\ref{eq1}) se reescribe como:

$$ \vert x\vert + <e,x> = k $$


\flushright  $\blacksquare$

*********

Vamos a ver ahora que:

$$ \vert x\vert + <e,x> = k, \qquad e\in\mathbb{R}^2, |e|<1, \quad k>0 $$

representa una elipse, con un foco centrado en el $(0,0)$. 

Es decir, veamos que $\exists A\in \mathbb{R}^2, c>0$ verificando $d(x,0) + d(x,A) = c$. En el proceso inverso teníamos (\ref{condicion}). Intentamos buscar $A\in \mathbb{R}^2$ y $c>0$ que verifiquen:

\begin{eqnarray*}
    &    A = -ce \\
    &   c^2-2ck-|A|^2=0
\end{eqnarray*}

Suponiendo que existiera dicho $c$, de la primera ecuación podemos deducir que $|A| = c|e| < c$.

*********

Sustituyendo el valor de $A$ en la segunda ecuación deducimos que:

\begin{eqnarray*}
    & c^2-2ck-c^2|e|^2=0 \Leftrightarrow\\
    & \\
    & c\cdot \Big[c(1-|e|^2)-2k\Big]=0 \Leftrightarrow\\
    & \\
    & \left\{ \begin{array}{l}  c=0 \\ ó \\ c = \frac{2k}{1-|e|^2}\end{array} \right.
\end{eqnarray*}


El valor $c=0$ no nos vale, ya que en en este caso no se trataría de una elipse. Por tanto nos quedamos con $c = \frac{2k}{1-|e|^2}$. Además podemos asegurar que, en este caso, $c= \frac{2k}{1-|e|^2}>0$, ya que $k>0$. 

*********

Por tanto podemos expresar:

$$ e=\frac{-1}{c}A \hspace{4em} k=\frac{c^2-|A|^2}{2c}$$

y así:

\begin{eqnarray*}
    & |x|+<-\frac{1}{c}A,x>=\frac{c^2-|A|^2}{2c} \Leftrightarrow\\
    & \\
    & 2c|x|-2<A,x>=c^2-|A|^2 \Leftrightarrow\\
    & \\
    & |x|^2-2<A,x>+|A|^2 = c^2-2cx+|x|^2\Leftrightarrow \\
    & |A-x|^2 = (c-|x|)^2\Leftrightarrow 
    |A-x| = \left\{ \begin{array}{l}  c-|x| \\ ó \\|x|-c\end{array} \right.
\end{eqnarray*}    

*********

Descartamos que  $|A-x| = |x| -c$ ya que, en dicho caso:

$$|x|-c<x-|A|\leqslant |x-A| = |x|-c$$

Lo cual es una contradicción. Luego:

$$|A-x| = c-|x| \Leftrightarrow |x|+|A-x| \Leftrightarrow d(x,0)+d(x,A)=x$$ 

donde $$A=\frac{2k}{|e|^2-1}e$$  $$c=\frac{2k}{1-|e|^2}$$

\flushright $\blacksquare$


*********

## Casos particulares
### Caso $e=0$

En este caso tendríamos que $|x|+<x,e>=k \Leftrightarrow |x|=k$ con $k>0$. Luego resultaría una circunferencia centrada en el origen.

### Caso gravitacional

Sabemos que en este caso $k=\frac{|m|^2}{\mu}$ con $\mu$ constante positiva, y $m$ el momento angular ($m=x\wedge \dot{x}$), constante, se tiene que el eje de excentricidad toma el valor:

$$e=\frac{1}{\mu}\dot{x}\wedge m -\frac{x}{|x|}$$

Un foco sería $(0,0)$ y el otro $A=\frac{2|m|^2}
    {\mu \left(
            1-\left|\frac{1}{\mu}\dot{x}\wedge m -\frac{x}{|x|}
        \right|^2 \right) 
    }$


