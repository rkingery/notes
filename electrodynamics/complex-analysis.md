# Appendix II: Complex Analysis

In this appendix, we will present the basics of the mathematical field known as *complex analysis*. Complex analysis can be thought of as calculus applied to complex variables. We'll see that for complex variables we can define notions of differentiation and integration just as we can with real variables, with some new caveats that will turn out to be interesting and useful. We will show that complex analysis can even be used to solve real-variable calculus problems, for example using the method of residues. Finally, we will show how we can use complex analysis to solve problems in electrostatics through the idea of conformal mappings.

## Complex Functions

Recall from the first chapter that a *complex variable* is any variable $z$ of the form
$$
z = x + iy \ ,
$$
where $x$ and $y$ are real numbers and $i \equiv \sqrt{-1}$ is the imaginary number. We call $x = \text{Re} \ z$ the *real part* of $z$ and $y = \text{Im} \ z$ the *imaginary part* of $z$. Recall that we can think of $z$ geometrically as representing a point in the *complex plane* $\mathbb{C}$, where the $x$-axis is the real axis and the $y$-axis is the imaginary axis. We showed that any complex variable could also be written in the polar form
$$
z = r e^{i\varphi} \ ,
$$
where $r \equiv |z| = \sqrt{zz^*}$ is the *modulus* of $z$ and $\varphi \equiv \text{Arg} \ z$ is the *argument* or *phase* of $z$. In the complex plane, the modulus $|z|$ represents the radial distance of the point $z$ in the plane, while $\varphi$ represents its angle relative to the positive real axis.

We showed that when two complex variables are multiplied together that their phases add, with
$$
\text{Arg} \ z_1 z_2 = \text{Arg} \ z_1 + \text{Arg} \ z_2 \ .
$$
We also introduced the complex exponential $e^{i\varphi}$, and derived the Euler identity
$$
e^{i \varphi} = \cos\varphi + i\sin\varphi \ .
$$


### Complex Functions

We'll now introduce the notion of functions of a complex variable. Just as we can create functions $f(x)$ of a real variable $x$, we can just as well create functions $f(z)$ of a complex variable $z$. We define a complex function $f(z)$ as any function that can be expressed in the form
$$
f(z) = u(x,y) + iv(x,y) \ ,
$$
where $u(x,y)$ and $v(x,y)$ are both real bivariate functions of the real and imaginary parts of $z$.

As an example, consider the exponential function $f(z) = e^z$. If we substitute $z = x + iy$ into this function and use Euler's identity, we can write $f(z)$ in the form
$$
e^z = e^{x + iy} = e^x e^{iy} = e^x \cos y + i e^x \sin y \quad \Longrightarrow \quad \begin{cases}
u(x,y) = e^x \cos y \ ,\\
v(x,y) = e^x \sin y \ .
\end{cases}
$$
As another example, consider the sine function $f(z) = \sin z$. If we use Euler's identity and the hyperbolic trig functions to simplify terms, we can write
$$
\sin z = \frac{1}{2i} \big(e^{iz} - e^{-iz}\big) = \sin x \cosh y + i \cos x \sinh y \quad \Longrightarrow \quad \begin{cases}
u(x,y) = \sin x \cosh y \ , \\
v(x,y) = \sin x \sinh y \ .
\end{cases}
$$
As a final example, consider the function $f(z) = 1/z$. If we multiply the numerator and denominator by $z^*$ and simplify, we have
$$
\frac{1}{z} = \frac{z^*}{zz^*} = \frac{x}{x^2 + y^2} - i \frac{y}{x^2 + y^2} \quad \Longrightarrow \quad \begin{cases}
u(x,y) = \frac{x}{x^2 + y^2} \ , \\
v(x,y) = -\frac{y}{x^2 + y^2} \ .
\end{cases}
$$


### Continuous Functions

We'll now discuss the concept of the continuity of a complex function. We know from calculus that a real function $f(x)$ is continuous at a point $x=a$ provided the difference $f(x) - f(a)$ is infinitesimal whenever $x-a$ is infinitesimal, that is, whenever $x \approx a$ we have $f(x) \approx f(a)$. In terms of limits, this is equivalent to the statement that
$$
f(a) = f\bigg(\lim_{x \to a} x\bigg) = \lim_{x \to a} f(x) \ .
$$
We say $f(x)$ is continuous on some interval if $f(x)$ is continuous at all points $a$ in that interval.

We can define something analogous for complex functions. We say a complex function $f(z)$ is *continuous* at a point $z=a$ provided $f(z) - f(a)$ is infinitesimal whenever $z-a$ is infinitesimal, or equivalently
$$
f(a) = f\bigg(\lim_{z \to a} z\bigg) = \lim_{z \to a} f(z) \ .
$$
Note that in the complex plane limits can be more than two-sides. When we say the limit exists, we mean the limit from *all* directions must exist, a much stronger condition. Similarly, when we say $z-a$ is infinitesimal, we mean that $z-a$ is infinitesimal for *all* choice of $z$ near the point $a$. We say $f(z)$ is *continuous* in some region $R$ provided $f(z)$ is continuous at each point $a$ inside the region $R$.

An equivalent but more useful condition for a complex function $f(z)$ to be continuous is that both $u(x,y)$ and $v(x,y)$ are continuous in both $x$ and $y$. We can use this idea to quickly list off a bunch of continuous complex functions:

- The exponential function $e^z = e^x \cos y + i e^x \sin y$ is everywhere continuous.
- The sine function $\sin z = \sin x \cosh y + i \cos x \sinh y$ is everywhere continuous.
- The cosine function $\cos z = \cos x \cosh y - i \sin x \sinh y$ is everywhere continuous.
- The power function $z^n = |z|(\cos n\varphi + i\sin n\varphi)$ is everywhere continuous when $n$ is an integer.
- The reciprocal function $1/z = x/|z|^2 - i y/|z|^2$ is continuous at every point except the origin $z=0$.
- The sum or product of continuous functions is also continuous. For example, $f(z) = 3e^z - z^2 \sin z$ is continuous.
- The composition of continuous functions is also continuous. For example, $f(z) = e^{2 \cos z}$ is continuous.

### Multivalued Functions

We know though that not all real functions are single-valued everywhere. For example, the inverse of the real function $f(x) = x^2$ is the multivalued function $g(x) = \pm \sqrt{x}$. To deal with this issue we often restrict the range of $f(x)$ to $x \geq 0$ so that it has a well-defined inverse of $g(x) = +\sqrt{x}$. This is known as the *principle root* of $f(x) = x^2$.

The same kinds issues also arise when dealing with complex functions. For example, consider the complex log function $f(z) = \log z$. By expressing $z$ in polar form, we can write
$$
\log z = \log |z| e^{i\varphi} = \log |z| + i\varphi \ .
$$
Notice first that $\log z$ can't be defined at $z=0$ since $u(x,y) = \log |z|$ is undefined when $x=y=0$. More interesting though is what happens with $v(x,y) = \varphi$. Since $\varphi$ is an angle, if we add or subtract any multiple of $2\pi$ we must get back the same point in the complex plane. This means that in general we have $v(x,y) = \phi + 2\pi n$ for any integer $n$. That is, $v(x,y)$ is multivalued since it depends on $n$. This evidently implies that the complex logarithm must be a multivalued function as well. 

To force the complex logarithm to be single-valued, we have to thus choose a fixed value of $n$. By convention we usually choose $n=0$, which defines the *principle logarithm*. This is equivalent to requiring that the phase be bounded in some $2\pi$ interval, which by convention we choose to be $-\pi < \varphi < \pi$, which is called the *principal branch*. Along the negative real axis $\varphi = \pm \pi$, and there the principal logarithm is not defined. We call this ray a *branch cut*. At any point away from the branch cut, the principle logarithm is well-defined and single-valued.

FIGURE (show branch cut)

To differentiate the principle and multi-valued logarithms, people sometimes write $\text{Log} \ z$ to refer to the principle logarithm, and $\log z$ to exclusively refer to the multi-valued logarithm, with the two related by the formula
$$
\text{log} \ z = \text{Log} \ z + i2n\pi \ .
$$
Provided we restrict ourselves to the principle logarithm, we can define an inverse for the exponential function in the usual way,
$$
z = \text{Log} \ e^z = e^{\text{Log} \ z} \ .
$$
A similar issue arises with many other complex functions as well. Another common class of functions with branch cuts are polynomial functions with rational powers. For example, suppose $f(z) = z^{p/q}$. We can also write this function as
$$
z^{p/q} = e^{p/q \cdot \log z} = \big(e^{\text{Log} \ z + 2n\pi i}\big)^{p/q} = \big(e^{\text{Log} \ z})^{p/q} e^{i2\pi n p/q} \ .
$$
The first term $\big(e^{\text{Log} \ z})^{p/q}$ is just the ordinary single-valued part of $z^{p/q}$. The second term $e^{i2\pi n p/q}$ is a phase factor that depends on $n$. If $p/q$ is an integer then $e^{i2\pi n p/q} = 1$ for all $n$, and $f(z)$ is hence single-valued. If $p/q$ is not an integer this won't happen, which means the phase factor will depend on $n$, and so $f(z)$ becomes multi-valued. To force $f(z)$ to be single-valued we can again restrict the phase of $z$ to some $2\pi$ range, e.g. $-\pi < z < \pi$. This means any single-valued version of $f(z) = z^{p/q}$ will also have a branch cut along some ray from the origin in the complex plane, e.g. the negative real axis.

## Analytic Functions

Just as we could define the notion of a derivative for real functions, we can define it just as well for complex functions. We'll see though that complex differentiation turns out to be a much stronger restriction on a function's behavior than real differentiation.

### Definition

Recall how the derivative was defined for real functions $f(x)$. We say that a function $y=f(x)$ is differentiable at a point $x$ provided for *any* infinitesimal $-1 \gg dx \ll 1$ the difference
$$
dy \equiv f(x+dx) - f(x)
$$
is also infinitesimal. When this is the case, we can take their ratio and define the *derivative* of $f(x)$ at $x$ by $dy/dx$. This is equivalent to saying that the limit of the ratio $\Delta y / \Delta x$ becomes a finite number as $\Delta x \to 0$. In particular, this must be true for *both* the left-hand and right-hand limits, which must be equal to the same ratio $dy/dx$.

The same notion of derivative exists for complex functions $f(z)$ as well. We say $w = f(z)$ is differentiable at $z$ provided for *any* infinitesimal $0 < |dz| \ll 1$ the difference
$$
dw \equiv f(z + dz) - f(z)
$$
is also infinitesimal. When this is the case, we can take their ratio and define the *derivative* of $f(z)$ at $z$ by $dw/dz$. This is equivalent to saying that the limit of the ratio $\Delta w / \Delta z$ approaches the same finite ratio $dw/dz$ as $\Delta z \to 0$ for *any* choice of $\Delta z$. That is, this limit must approach the same ratio no matter which direction of approach for $\Delta z$ we choose.

Note that it's necessary that $f(z)$ be continuous at $z$ for its derivative to exist, for otherwise if it would be impossible for $dw$ to be infinitesimal. However, this is not a sufficient condition for the derivative to exist, since the ratio must be defined for *every* $dz$.

If $f(z)$ is differentiable at $z$ and some region around $z$, we say $f(z)$ is *analytic* (or *holomorphic*) at the point $z$. More generally, iif $f(z)$ is differentiable in some region $\mathcal{R}$ in the complex plane, we say that $f(z)$ is *analytic* inside $\mathcal{R}$. If that region is the whole complex plane, we say $f(z)$ is an *entire function*. In each case, we say $f(z)$ is an *analytic function*.

It's easy to see from the definition that analytic functions obey the usual differentiation rules:

- Linearity: $d(\alpha f + \beta g) = \alpha df + \beta dg$,
- Product Rule: $d(fg) = fdg + gdf$,
- Quotient Rule: $g^2 d(f/g) = gdf - fdg$.
- Chain Rule: $d\big[f(g(z))\big] = \frac{df}{dg} \frac{dg}{dz} dz$.

Another property of analytic functions is that the composition of analytic functions is also analytic. That is, if $w=f(z)$ is analytic at $z$, and $s=g(w)$ is analytic at the point $w$, then the composition $s = g(f(z))$ is analytic at $z$.

The final property of analytic functions we'll mention for now involves the inverses of analytic functions. Suppose $w=f(z)$ is analytic at $z$, and suppose at the point $z$ we can invert the function to get $z = f^{-1}(w)$. Then $f^{-1}(w)$ is analytic at $w$, with
$$
\frac{d}{dw} f^{-1}(w) = \frac{1}{dw/dz} \bigg|_{z=f^{-1}(w)} \ .
$$
In simpler terms, this says that the derivative of the inverse is just $dz/dw$, as we'd expect. Of course, we do have to be careful to ensure that the inverse function is single-valued, so that each $w$ maps to a distinct $z$. If the inverse function is multi-valued, we can achieve this by restricting the inverse to some branch, like we did with the logarithm before.

### Cauchy-Riemann Equations

Supposing that $w = f(z)$ is analytic, we can write
$$
dw = \frac{dw}{dz} dz \ .
$$
However, we also know that both $z$ and $w$ can be expressed in terms of real variables, with $w = u(x,y)+iv(x,y)$. This means it must *also* be the case that $f(z)$ is differentiable with respect to both $x$ and $y$ in a real-variable sense. This means we can also write $dw$ as a differential sum of the partial derivatives in $u$ and $v$, with
$$
dw = \frac{\partial w}{\partial x} dx + \frac{\partial w}{\partial y} dy = \bigg(\frac{\partial u}{\partial x} + i\frac{\partial v}{\partial x}\bigg) dx + \bigg(\frac{\partial u}{\partial y} + i\frac{\partial v}{\partial y}\bigg) dy \ .
$$
Now, both differential formulas for $dw$ must be equal. Writing $dz = dx + idy$, we must have
$$
dw = \frac{dw}{dz} (dx + idy) = \frac{dw}{dz} dx + i \frac{dw}{dz} dy \ .
$$
It follows then that we must have
$$
\frac{dw}{dz} = \frac{\partial u}{\partial x} + i\frac{\partial v}{\partial x} = -i \bigg(\frac{\partial u}{\partial y} + i\frac{\partial v}{\partial y}\bigg) \ .
$$
Notice that this is in fact a very strong condition. The partial derivatives $\frac{\partial w}{\partial x}$ and $\frac{\partial w}{\partial y}$ must be related in a very specific way. This is *not* something that is true for ordinary 2-dimensional functions $f(x,y)$. This strong condition makes complex differentiation a much stronger and interesting concept than real differentiation, as we'll soon see.

To see what conditions these partial derivatives must satisfy, notice if we move everything to one side, we get
$$
\bigg(\frac{\partial u}{\partial x} - \frac{\partial v}{\partial y}\bigg) + i\bigg(\frac{\partial u}{\partial y} + \frac{\partial v}{\partial x}\bigg) = 0 \ .
$$
Since both the real and imaginary parts must separately vanish, we end up with the following two conditions,
$$
\boxed{
\frac{\partial u}{\partial x} = \frac{\partial v}{\partial y} \quad , \quad
\frac{\partial u}{\partial y} = -\frac{\partial v}{\partial x}
} \ .
$$
We call these conditions the *Cauchy-Riemann equations*. These two equations are necessary conditions for a complex function to be analytic. In fact, if we further require that these partial derivatives be continuous at the point of interest, then they're necessary and sufficient conditions for the function to be analytic at that point.

Checking that the Cauchy-Riemann equations hold is usually the easiest way to verify whether a given complex function is analytic. As an easy example of this, consider again the exponential function $f(z) = e^z = e^x \cos y + e^x \sin y$. Let's check that this function satisfy the Cauchy-Riemann equations. It's easy to see we have
$$
\begin{align*}
\frac{\partial u}{\partial x} &= e^x \cos y = \frac{\partial v}{\partial y} \ , \\
\frac{\partial u}{\partial y} &= -e^x \sin y = -\frac{\partial v}{\partial x} \ .
\end{align*}
$$
This means the exponential function $f(z) = e^z$ is analytic. In fact, it's analytic on the whole complex plane, hence it's also entire.

As another example, consider again the reciprocal function
$$
f(z) = \frac{1}{z} = \frac{x}{x^2 + y^2} - i \frac{y}{x^2 + y^2} \ .
$$
If we apply the Cauchy-Riemann equations to this function, we get
$$
\begin{align*}
\frac{\partial u}{\partial x} &= -\frac{x^2 - y^2}{(x^2 + y^2)^2} = \frac{\partial v}{\partial y} \ , \\
\frac{\partial u}{\partial y} &= -\frac{2xy}{(x^2 + y^2)^2} = -\frac{\partial v}{\partial x} \ .
\end{align*}
$$
Evidently, the reciprocal function $f(z) = 1/z$ is also analytic, but only when $|z| \neq 0$. When $z = 0$ the denominator of both equations blow up and the equations are no longer well-defined. We call functions of this type that are analytic at all but a finite number of points *meromorphic functions*.

A few examples of complex functions that are continuous but not analytic are the real part $f(z) = \text{Re} \ z$, the imaginary part $f(z) = \text{Im} \ z$, and the complex conjugate $f(z) = z^*$. These are all easy to check by the Cauchy-Riemann equations.

It's easy to check that pretty much all of the usual differentiable functions from calculus are analytic functions in complex analysis if we replace $f(x)$ by $f(z)$. Here are some of the most common ones:

- The exponential function $e^z$ is everywhere analytic.
- The sine and cosine functions $\sin z$ and $\cos z$ are both everywhere analytic.
- Any power function $z^p$ is everywhere analytic when $\text{Re} \ p \geq 1$, and analytic everywhere but the point $z=0$ when $\text{Re} \ p < 1$.
- Any polynomial function of $z$ is everywhere analytic.
- Ratios of polynomial functions of $z$ are analytic at any point where the denominator isn't zero.
- The principal logarithm $\log z$ is analytic everywhere but the point $z = 0$.

### Harmonic Functions

Another important fact about analytic functions is that their real and imaginary parts each independently satisfy Laplace's equation in two dimensions. That is, if a function $f(z) = u(x,y) + i v(x,y)$ is analytic in some region, then we have
$$
\begin{align*}
&\nabla^2 u = \frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} = 0 \ , \\
&\nabla^2 v = \frac{\partial^2 v}{\partial x^2} + \frac{\partial^2 v}{\partial y^2} = 0 \ .
\end{align*}
$$
To see why this is true we again appeal to the Cauchy-Riemann equations. If we substitute these equations into $\nabla^2 u$, we have
$$
\begin{align*}
\frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} 
&= \frac{\partial}{\partial x} \frac{\partial u}{\partial x} + \frac{\partial}{\partial y} \frac{\partial u}{\partial y} \\
&= \frac{\partial}{\partial x} \frac{\partial v}{\partial y} - \frac{\partial}{\partial y} \frac{\partial v}{\partial x} \\
&= \frac{\partial^2 v}{\partial x \partial y} - \frac{\partial^2 v}{\partial y \partial x} \ .
\end{align*}
$$
Since mixed partial derivatives commute the last line must vanish, leaving $\nabla^2 u = 0$. Similarly, for $\nabla^2 v$ we have
$$
\begin{align*}
\frac{\partial^2 v}{\partial x^2} + \frac{\partial^2 v}{\partial y^2} 
&= \frac{\partial}{\partial x} \frac{\partial v}{\partial x} + \frac{\partial}{\partial y} \frac{\partial v}{\partial y} \\
&= -\frac{\partial}{\partial x} \frac{\partial u}{\partial y} + \frac{\partial}{\partial y} \frac{\partial u}{\partial x} \\
&= -\frac{\partial^2 u}{\partial x \partial y} + \frac{\partial^2 u}{\partial y \partial x} \ .
\end{align*}
$$
Again, since mixed partial derivatives commute, the last line vanishes, leaving $\nabla^2 v = 0$. Functions that satisfy Laplace's equation are called *harmonic functions*. We've thus shown that the real and imaginary parts of an analytic function must each be a harmonic function inside the region in the $xy$-plane where the function is analytic.

Moreover, it turns out that the level curves of $u(x,y)$ and $v(x,y)$ must always be orthogonal inside the analytic region, i.e.
$$
\nabla u(x,y) \cdot \nabla v(x,y) = 0 \ .
$$
This again follows immediately from the Cauchy-Riemann equations. Indeed, we have
$$
\nabla u \cdot \nabla v = \frac{\partial u}{\partial x} \frac{\partial v}{\partial x} + \frac{\partial u}{\partial y} \frac{\partial v}{\partial y} = \frac{\partial v}{\partial y} \frac{\partial v}{\partial x} - \frac{\partial v}{\partial x} \frac{\partial v}{\partial y} = 0 \ .
$$
The Cauchy-Riemann conditions imply something else as well. Given a harmonic function $u(x,y)$, we can determine the function $v(x,y)$, called the *harmonic conjugate* of $u(x,y)$, that makes $f(z) = u(x,y) + i v(x,y)$ analytic, up an to an additive constant. To see why this is true, we can write the total differential of $v(x,y)$ in the form
$$
dv = \frac{\partial v}{\partial x} dx + \frac{\partial v}{\partial y} dy \ .
$$
If we now use the Cauchy-Riemann conditions and integrate both sides, we get
$$
v(x,y) = -\int dx \ \frac{\partial u}{\partial y} + \int dy \ \frac{\partial u}{\partial x} \ .
$$
Thus, we've completely determined the form of $v(x,y)$ from the derivatives of $u(x,y)$, up to an additive constant.

As an example of finding a harmonic conjugate, consider the function
$$
u(x,y) = y^3 - 3x^2 y \ .
$$
It's easy to check that $\nabla^2 u = 0$, which means $u(x,y)$ is harmonic on the $xy$-plane. To find its conjugate $v(x,y)$, we can impose the Cauchy-Riemann conditions. We have
$$
\begin{align*}
\frac{\partial v}{\partial x} &= -\frac{\partial u}{\partial y} = -3y^2 + 3x^2 \ , \\
\frac{\partial v}{\partial y} &= \frac{\partial u}{\partial x} = -6xy \ .
\end{align*}
$$
Integrating each of these derivatives must then give the same function $v(x,y)$,
$$
\begin{align*}
v(x,y) &= \int dx \ \frac{\partial v}{\partial x} = -3xy^2 + x^3 + c_2(y) \ , \\
v(x,y) &= \int dy \ \frac{\partial v}{\partial y} = -3xy^2 + c_1(x) \ .
\end{align*}
$$
We can make these equations consistent by choosing $c_1(x) = x^3$ and $c_2(y) = \text{const}$. Choosing $c_2(y) = 0$, we have
$$
v(x,y) = -3xy^2 + x^3 \ .
$$
It's again easy to check that $\nabla^2 v = 0$, so $v(x,y)$ is harmonic in the $xy$-plane. We've thus found an analytic function of the form
$$
f(z) = (y^3 - 3x^3 y) - i \ (3xy^2 + x^3) \ .
$$
Indeed, it's not hard to check that the function $f(z)$ we created is in fact the function $f(z) = iz^3$, which is an entire function.

Evidently, the condition that a complex function be analytic is much stronger than the condition that a real function be differentiable. It implies a whole host of added properties we don't see in calculus. In the next section we'll show a few more.

## Complex Integration

Before discussing analytic functions further we need to introduce the concept of complex integration. The integration of complex functions is a good bit different from differentiation of real functions due to the fact that the integration is now being done in a plane instead of over a line. This means integration of complex numbers is much more akin to contour integration of a bivariate real function $f(x,y)$ than it is to integration of univariate real functions $f(x)$.

### Contour Integration

Suppose $f(z)$ is some complex function that's well-defined on some path $\mathcal{C}$ in the complex plane that starts at a point $z=a$ and ends at a point $z=b$. Suppose we can parametrize this path via some function $z(t)$, where $t_a \leq t \leq t_b$ is some parameter such that $z(t_a) = a$ and $z(t_b) = b$. Then we can define the *contour integral* of $f(z)$ over $\mathcal{C}$ by
$$
\int_\mathcal{C} dz \ f(z) \equiv \int_a^b dz \ f(z) \equiv \int_{t_a}^{t_b} dt \ f(z(t)) \frac{dz}{dt} \ .
$$
As with real path integrals, we often find ourselves dealing with contour integrals over *closed loops*, i.e. closed paths where $a=b$. In that case we often write the contour integral with the notations $\oint dz \ f(z)$ or $\oint_\mathcal{C} dz \ f(z)$.

As an example, let's find the integral of the reciprocal function $f(z) = 1/z$ along a counterclockwise circular closed loop $\mathcal{C}$ of unit radius centered at the origin. We can parametrize this path by defining a parameter $-\pi \leq t \leq \pi$ and letting $z = e^{it}$. Then
$$
\oint_\mathcal{C} \frac{dz}{z} = \int_{-\pi}^\pi dt \ e^{-it} \frac{d}{dt} e^{it} = i \int_{-\pi}^\pi dt = 2\pi i \ .
$$
It's easily checked that the contour integral satisfies all of the usual properties the path integral of real variables satisfies:

- Linearity: $\int_\mathcal{C} dz \ [af(z) + bg(z)] = a \int_\mathcal{C} dz \ f(z) + b \int_\mathcal{C} dz \ g(z)$,
- Change of Variables: If $w = g(z)$, then $\int_\mathcal{C} dw \ f(w) = \int_\mathcal{C} dz \ f(g(z)) \frac{dw}{dz}$,
- Path Decomposition: If $\mathcal{C}$ is decomposed into two paths $\mathcal{C}_1$ and $\mathcal{C}_2$, then $\int_\mathcal{C} dz \ f(z) = \int_\mathcal{C_1} dz \ f(z) + \int_\mathcal{C_2} dz \ f(z)$,
- Path Reversal: If the path $-\mathcal{C}$ is the reverse of the path $\mathcal{C}$, then $\int_{-\mathcal{C}} dz \ f(z) = -\int_\mathcal{C} dz \ f(z)$,
- Boundedness: If $M$ is the maximum of $|f(z)|$ along the path and $L$ the path length, then $\big| \int_\mathcal{C} dz \ f(z) \big| \leq ML$.

### Cauchy's Theorem

Analytic functions satisfy a property when it comes to contour integration that's akin to the property that conservative fields have in real Euclidean space, namely path independence. Suppose $f(z)$ is analytic inside some closed loop $\mathcal{C}$. Then
$$
\oint_{\mathcal{C}} dz \ f(z) = 0 \ .
$$
This result is known as *Cauchy's Theorem*. It says that any contour integral of an analytic function is independent of path, meaning its result depends only on the endpoints. Note that anytime we say $\mathcal{C}$ is a *closed loop*, we mean not only that the path closes back on itself, but also that it does not intersect at any other point. For example, a circle traversed once is a closed loop, while a figure eight is not. Mathematicians call a closed loop a *simple closed curve*, and the region inside the closed loop *simply connected*.

Let's verify Cauchy's Theorem real quick on a function we know to be analytic, $f(z) = e^z$. We'll again choose a path to be the unit circle traversed counterclockwise in a closed loop. We again parametrize this path with $z(t) = e^{it}$ where $-\pi \leq t \leq \pi$. Then
$$
\int_\mathcal{C} dz \ e^z = \int_{-\pi}^\pi dt \ e^{e^{it}} \frac{d}{dt} e^{it} = i \int_{-\pi}^\pi dt \ e^{e^{it} + it} \ .
$$
Now, if we substitute $u = e^{it}$ then $du = i e^{it} dt$ and $u(\pm \pi) = e^{\pm i\pi} = -1$, and so
$$
\int_\mathcal{C} dz \ e^z = \int_{-1}^{-1} du \ e^u = 0 \ .
$$
Of course, Cauchy's theorem says something stronger than this. The closed loop integral will vanish for *any* choice of path.

Cauchy's theorem isn't that difficult to prove. If we write $f(z) = u(x,y) + iv(x,y)$ and $dz = dx + idy$, then we can separate the integral into real and imaginary parts as
$$
\oint_{\mathcal{C}} dz \ f(z) = \oint_{\mathcal{C}} (dx + idy) \ \big(u(x,y) + iv(x,y)\big)
= \oint_{\mathcal{C}} (udx - vdy) + i \oint_{\mathcal{C}} (udy + vdx) \ .
$$
Now, notice that both of these integrals are just integrals of real bivariate functions $u(x,y)$ and $v(x,y)$. If we let
$$
\mathbf{F}(\mathbf{x}) = u(x,y) \mathbf{e}_x - v(x,y) \mathbf{e}_y \quad , \quad \mathbf{G}(\mathbf{x}) = v(x,y) \mathbf{e}_x + u(x,y) \mathbf{e}_y \ ,
$$
then we can write
$$
\oint_{\mathcal{C}} dz \ f(z) = \oint_{\mathcal{C}} \mathbf{F} \cdot d\mathbf{x} + \oint_{\mathcal{C}} \mathbf{G} \cdot d\mathbf{x} \ .
$$
If we now apply Stokes' theorem to these two contour integrals, we can convert them into surface integrals to get
$$
\oint_{\mathcal{C}} dz \ f(z) = \int_{\mathcal{S}} (\nabla \times \mathbf{F}) \cdot d\mathbf{a} + \int_{\mathcal{S}} (\nabla \times \mathbf{G}) \cdot d\mathbf{a} \ ,
$$
where $\mathcal{S}$ is any surface bounded by the closed loop $\mathcal{C}$. If we choose $\mathcal{S}$ to lie in the $xy$-plane then we can write $d\mathbf{a} = dxdy \mathbf{e}_z$, in which case $(\nabla \times \mathbf{F}) \cdot d\mathbf{a} = (\nabla \times \mathbf{F})_z$ and $(\nabla \times \mathbf{G}) \cdot d\mathbf{a} = (\nabla \times \mathbf{G})_z$, and so we have
$$
\begin{align*}
\int_{\mathcal{S}} (\nabla \times \mathbf{F}) \cdot d\mathbf{a} &= \int_\mathcal{S} dxdy \ \bigg(\frac{\partial u}{\partial x} - \frac{\partial v}{\partial y}\bigg) \ , \\
\int_{\mathcal{S}} (\nabla \times \mathbf{G}) \cdot d\mathbf{a} &= \int_\mathcal{S} dxdy \ \bigg(\frac{\partial v}{\partial y} + \frac{\partial u}{\partial x}\bigg) \ .
\end{align*}
$$
Now, if $f(z)$ is analytic in this region, then the Cauchy-Riemann equations must be satisfied. This means each integrand must vanish, which means the original closed loop integral must vanish, thus proving Cauchy's theorem.

Note that this proof implicitly assumes that the partial derivatives of both $u(x,y)$ and $v(x,y)$ are continuous so that Stokes' theorem could be applied. While this will almost always be the case in physics, it's not strictly speaking necessary. Cauchy's theorem holds even if the partial derivatives are not continuous, though that proof is a bit more technical.

### Cauchy's Integral Formula

Perhaps the most important consequence of Cauchy's theorem is the following integral formula. Suppose $f(z)$ is analytic in some region $\mathcal{R}$ and $\mathcal{C}$ is some arbitrary closed loop inside $\mathcal{R}$. Then for any point $z$ inside $\mathcal{R}$ we can write
$$
\boxed{
f(z) = \frac{1}{2\pi i} \oint_{\mathcal{C}} dw \ \frac{f(w)}{w-z}
}\ .
$$
This result is known as *Cauchy's Integral Formula*. Geometrically, this formula says that the value of an analytic function at a point $z$ is completely determined by the function's values along any closed loop around $z$. This is a powerful statement that's analogous to Gauss's Law in electrostatics, where the value of the electric field on any Gaussian surface enclosing a charge distribution must uniquely determine the charge distribution enclosed.

Let's now quickly prove this formula. First, notice that the integrand is analytic inside any region not containing the point $z_0$. According to Cauchy's theorem then, the integral will vanish for all closed loops that don't include $z$. It thus suffices for this proof to choose a closed loop containing $z$​. We can choose any closed loop we like. To keep things simple, let's choose the loop to be a counterclockwise circle centered at $z$ with radius $\varepsilon \ll 1$. We can parametrize this path by choosing $-\pi \leq t \leq \pi$ and letting
$$
w(t) = \varepsilon e^{it} + z \ .
$$
Now, if we add and subtract $f(z)$ to the numerator of the integrand and plug in this parametrization, we get
$$
\begin{align*}
\frac{1}{2\pi i} \oint_{\mathcal{C}} dw \ \frac{f(w)}{w-z} &= \frac{1}{2\pi i} \oint_{\mathcal{C}} dz \ \frac{f(z)}{w-z} + \frac{1}{2\pi i} \oint_{\mathcal{C}} dw \ \frac{f(w) - f(z)}{w-z} \\
&= \frac{1}{2\pi i} f(z)  \int_{-\pi}^\pi dt \ \frac{i\varepsilon e^{it}}{\varepsilon e^{it}} + \frac{1}{2\pi i} \int_{-\pi}^\pi dt \ \frac{f(\varepsilon e^{it} + z) - f(z)}{\varepsilon e^{it}} i\varepsilon e^{it} \\
&= f(z) + \frac{1}{2\pi} \int_{-\pi}^\pi dt \ \big[f(\varepsilon e^{it} + z) - f(z)\big] \ .
\end{align*}
$$
Now, observe that the remaining integral on the right-hand side is bounded by
$$
\bigg|\int_{-\pi}^\pi dt \ \big[f(\varepsilon e^{it} + z) - f(z)\big]\bigg| \leq 2\pi \varepsilon \cdot \max \big|f(\varepsilon e^{it} + z) - f(z)\big| \ .
$$
Since we assume $f(z)$ is analytic it must also be continuous. This means as $\varepsilon \to 0$ that $f(w) \to f(z)$, which means the right-hand side vanishes, which means the integral itself must vanish, thus proving Cauchy's integral formula.

Cauchy's integral formula turns out to imply something very powerful about analytic functions, namely that every analytic function is infinitely differentiable. This is *not* true for differentiable real functions. Just because a real function has a first derivative doesn't mean it has a second derivative or any higher derivatives.

To see why this is true, suppose we take the derivative of both sides with respect to $z$. We can then pull the derivative inside the integral sign to get
$$
\frac{d}{dz} f(z) = \frac{1}{2\pi i} \oint_{\mathcal{C}} dw \ \frac{f(w)}{(w-z)^2} \ .
$$
Now, the right-hand side is still an integral of an analytic function over a numerator of some power of $w-z$. This means we can apply the same logic as we did in the proof above to show that it must equal the left-hand side. Moreover, it implies that the derivative of $f(z)$ must be analytic as well at $z$. 

We can do this as many times as we like by continuing to differentiate both sides. Taking $n$ derivatives with respect to $z$, we get
$$
\frac{d^n}{dz^n} f(z) = \frac{n!}{2\pi i} \oint_{\mathcal{C}} dw \ \frac{f(w)}{(w-z)^{n+1}} \ .
$$
This implies that for all $n$, the $n$<sup>th</sup> derivative of $f(z)$ must exist at the point $z$, and must be analytic. That is, any function $f(z)$ that is analytic on some region $\mathcal{R}$ is also infinitely differentiable on that same region, and all its derivatives are analytic as well. Interestingly, this formula can also be used as a basis to define *fractional derivatives* where $n$ need no longer be an integer.

## Power Series

We'll now derive the two important types of power series we see in complex analysis, the complex Taylor series for analytic functions, and its meromorphic extension known as the Laurent series. We will also introduce an important concept in mathematical physics known as analytic continuation.

### Taylor Series

Suppose we have a complex-valued power series of the form
$$
\sum_{n=0}^\infty a_n (z - z_0)^n = a_0 + a_1 (z-z_0) + a_2 (z-z_0)^2 + \cdots \ .
$$
As with a real power series, these will converge to a valid function so long as the *root test* is satisfied,
$$
\lim_{n \to \infty} |a_n z^n|^{1/n} < 1 \ .
$$
If we solve for the value of $|z|$ such that $|a_n z^n|^{1/n} \to 1$ we get the *radius of convergence* $R$ of the power series,
$$
R = \lim_{n \to \infty} \frac{1}{|a_n z_n|^{1/n}} \ .
$$
A power series will converge to a valid function inside any region where $|z| < R$, called its *disk of convergence* $\mathcal{D}$.

Moreover, suppose we have two power series that equal each other in some region $\mathcal{R}$ containing the point $z_0$, where $\mathcal{R}$ lies inside the disk of convergence of both power series,
$$
\sum_{n=0}^\infty a_n (z - z_0)^n = \sum_{n=0}^\infty b_n (z - z_0)^n \ .
$$
If we move everything to the left-hand side, we get
$$
\sum_{n=0}^\infty (a_n-b_n) (z - z_0)^n = 0 \ .
$$
The only way this can be true for all $z$ in $\mathcal{R}$ is if $a_n = b_n$ for all $n$. That is, the two power series must be identical inside $\mathcal{R}$. In fact, the two series must be identical inside the overlapping region of their disks of convergence. This seemingly trivial fact is sometimes called the *identity theorem* for power series.

Now, suppose $f(z)$ is analytic inside some region $\mathcal{R}$ containing $z_0$. Suppose we can express $f(z)$ as a power series of the form
$$
f(z) = \sum_{n=0}^\infty a_n (z - z_0)^n \ ,
$$
where the power series is defined on some disk of convergence $\mathcal{D}$. In the region where $\mathcal{R}$ and $\mathcal{D}$ overlap, $f(z)$ must also be analytic, which according to Cauchy's integral formula means it will have infinitely many derivatives. If we differentiate both sides $n$ times at the point $z=z_0$, we can find the unique choice of coefficients $a_n$ that determine the power series,
$$
\frac{d^n}{dz^n} f(z_0) = a_n n! \quad \Longrightarrow \quad a_n = \frac{1}{n!} \frac{d^n}{dz^n} f(z_0) \ .
$$
Plugging these back into the power series representation, we have
$$
f(z) = \sum_{n=0}^\infty \frac{(z-z_0)^n}{n!} \frac{d^n}{dz^n} f(z_0) \ .
$$
This is called the *Taylor series* of $f(z)$ about the point $z=z_0$. According to Taylor's theorem, we know that this series will be well-defined and unique inside the overlapping region containing both $\mathcal{R}$ and $\mathcal{D}$.

In most respects, the complex Taylor series behaves pretty much identically to the real Taylor series. For instance, we have
$$
e^z = \sum_{n=0}^\infty \frac{z^n}{n!} \ .
$$
Like its real counterpart, the radius of convergence is infinite, which means this series is valid for all $z$ in the complex plane.

### Analytic Continuation

If a power series is analytic, we can often extend it to an analytic function that's well-defined even beyond the disk of convergence. This is known as analytic continuation. More formally, suppose we have a complex power series $P(z)$ with a disk of convergence $\mathcal{D}$, and $P'(z)$ is some other power series with a disk of convergence $\mathcal{D}'$. If $\mathcal{D}$ is a subregion of $\mathcal{D}'$, we say that the power series $P'(x)$ is an *analytic continuation* of $P(x)$ from the smaller disk $\mathcal{D}$ to the larger disk $\mathcal{D}'$.

It's a known fact that if $P'(x)$ is an analytic continuation of $P(x)$ from $\mathcal{D}$ to $\mathcal{D}'$, then $P'(x)$ is the *unique* analytic continuation of $P(x)$ to $\mathcal{D}'$. This means that $P'(x)$ is the only possible analytic function to $\mathcal{D}'$ such that $P'(x) = P(x)$ on $\mathcal{D}$. Of course, $P'(x)$ may have many functional representations, but when expanded as a power series it must equal the original power series on $\mathcal{D}$.

The canonical example of analytic continuation is the *geometric series*. Consider the power series
$$
P(z) = \sum_{n=0}^\infty z^n = 1 + z + z^2 + \cdots \ .
$$
It's easy to see that this power series has a radius of convergence $R=1$, and so its disk of convergence $\mathcal{D}$ will be the disk of all points $z$ where $|z| < 1$. However, we know that the geometric series can also be written in a closed form by the function
$$
f(z) = \frac{1}{1 - z} \ .
$$
This function $f(z)$ is analytic anywhere $z \neq 1$, which means we can Taylor expand it about any point $z_0 \neq 1$ we like. If we do that, we get a new power series $P'(x)$ of the form
$$
P'(x) = \sum_{n=0}^\infty \frac{(z-z_0)^n}{(1-z_0)^{n+1}} = \frac{1}{1-z_0} + \frac{z-z_0}{(1-z_0)^2} + \frac{(z-z_0)^2}{(1-z_0)^3} + \cdots \ .
$$
The radius of convergence of this power series is $R' = |1-z_0|$, and so its disk of convergence $\mathcal{D}'$ will be the disk of all points $z$ where $|z-z_0| < |1-z_0|$. Provided $|z_0| > 1$, $P'(x)$ will be an analytic continuation of $P(x)$ to this larger disk, and it must be the case that $P'(x) = P(x)$ in the region where the two disks overlap. In fact, we can repeat this as often as we like by expanding the function about different points, creating an ever larger analytic continuation. In the end we'll end up with a function $f(z)$ that's analytic everywhere except $z=1$, which is the closed form above.

There are many more interesting examples of analytic continuation than this. In fact, we can often analytically continue a function $f(z)$ to another function $g(z)$ whether $f(z)$ is a power series or not. If $f(z)$ is analytic on some region $\mathcal{R}$ and $g(z)$ is some other function that's analytic on a larger region $\mathcal{R}'$, we say $g(z)$ is an analytic continuation of $f(z)$ to the larger region $\mathcal{R}'$ provided $f(z) = g(z)$ on the smaller region $\mathcal{R}$.

For instance, consider the factorial function $n!$ defined for integers $n=1,2,3,\cdots$ by
$$
n! = n (n-1) (n-2) \cdots 1 \ .
$$
Now, observe that we can also express $n!$ by the following real integral,
$$
n! = \int_0^\infty dx \ x^n e^{-x} \ .
$$
This can easily be shown by using integration by parts $n$ times and noting the boundary terms always vanish. Now, we can extend the integral on the right into the complex plane by replacing $n$ with $z-1$ to get a function $\Gamma(z)$ defined by
$$
\Gamma(z) = \int_0^\infty dx \ x^{z-1} e^{-x} \ .
$$
This function is well-defined and analytic so long as $\text{Re} \ z \geq 0$. It's called the *gamma function*. When $z$ is an integer we have
$$
\Gamma(n) = (n+1)! \ .
$$
In fact, one can show that the gamma function satisfies the recursive relation
$$
\Gamma(z+1) = z \Gamma(z) \ .
$$
If we now solve for $\Gamma(z)$ and keep applying this recursive relation $n$ times, we get
$$
\Gamma(z) = \frac{\Gamma(z+n)}{z(z+1)(z+2) \cdots (z+n-1)} \ .
$$
As expressed in this form, $\Gamma(z)$ will be well-defined and analytic at any point where $z \neq 0,-1,-2,\cdots$. We can thus think of this relation as an analytic continuation of the Gamma function, and hence of the factorial function, to the whole complex plane.

### Laurent Series

Now that we've discussed analytic functions in some depth, we will now turn our attention to functions with *singularities*, or points where either the function isn't well-defined or the derivative doesn't exist.

Suppose a function $f(z)$ has a pole at a point $z=z_0$. If we tried to expand $f(z)$ into a Taylor series, we could only do so at non-singular points away from $z=z_0$. But what would happen if we insisted we wanted to expand $f(z)$ right at the pole $z=z_0$?

To address this question let's consider a more general setup. Suppose $f(z)$ is potentially non-analytic inside some region $\mathcal{S}$ containing a point $z_0$, which may or may not be singular, but $f(z)$ is analytic outside of $\mathcal{S}$ in some larger region $\mathcal{R}$. We now want to use Cauchy's integral formula, but to do that we need to make sure we do so on a region where $f(z)$ is analytic. We define a contour on the analytic region $\mathcal{S}$ as follows:

- Suppose the inner non-analytic region $\mathcal{R}$ has a maximum radius $d_1$ and the outer analytic region $\mathcal{S}$ a minimum radius of $d_2$.

- Let $\mathcal{C}_1$ be a circular path centered at $z_0$ of radius $r_1 > d_1$. This will be our *inner loop*.
- Let $\mathcal{C}_2$ be another circular path of a larger radius $d_2 > r_2 > r_1$. This will be our *outer loop*.
- Let $\mathcal{L}$ be a linear path connecting the inner and outer circles radially.

We now define a combined closed loop $\mathcal{C}$ from these paths as follows:

- We start at the intersection point of $\mathcal{L}$ and $\mathcal{C}_2$ and traverse $\mathcal{C}_2$ counterclockwise in a full rotation.
- Next, we traverse inward radially along $\mathcal{L}$ until we reach the inner circle $\mathcal{C}_1$.
- Next, we traverse $\mathcal{C}_1$ clockwise in a full rotation until we return to the intersection point of $\mathcal{L}$ and $\mathcal{C}_1$.
- Finally, we traverse $\mathcal{L}$ radially outward until we get back to the point on $\mathcal{C}_2$ where we started.

See the figure below for an illustration of this closed loop.

FIGURE

Now, $f(z)$ will be analytic anywhere where $d_1 < |z-z_0| < d_2$. Since $\mathcal{C}$ lies inside this region by construction, we can use Cauchy's integral formula to write
$$
f(z) = \frac{1}{2\pi i} \oint_{\mathcal{C}} dw \ \frac{f(w)}{w-z} \ .
$$
Next, we decompose the combined loop $\mathcal{C}$ into its constituent paths, but we have to make sure the signs are correct. Since we traverse the outer circle $\mathcal{C}_2$ counterclockwise, that integral will get a plus sign. Since we traverse the inner circle $\mathcal{C}_1$ clockwise, that integral will get a plus sign. The two integrals over the radial path $\mathcal{L}$ run in opposite direction, and so those will cancel each other out. We thus end up with
$$
f(z) = \frac{1}{2\pi i} \oint_{\mathcal{C}_2} dw \ \frac{f(w)}{w-z} - \frac{1}{2\pi i} \oint_{\mathcal{C}_1} dw \ \frac{f(w)}{w-z} \ .
$$
Notice that each integrand contains a factor $1/(w-z)$. We want to expand this in a power series, but we need to do so in a way such that the power series is well-defined in the annular region where $r_1 \leq |z-z_0| \leq r_2$. First, notice that along the outer circle $\mathcal{C}_2$ that $|z-z_0| < r_2$ but $|w-z_0| = r_2$ since $w$ is integrated along the circle. We can thus expand $1/(w-z)$ here as a geometric series of the form
$$
\text{on} \ \mathcal{C}_2: \ \frac{1}{w-z} = \frac{1}{w-z_0} \frac{1}{1-\frac{z-z_0}{w-z_0}} = \frac{1}{w-z_0} \sum_{n=0}^\infty \bigg(\frac{z-z_0}{w-z_0}\bigg)^n \ .
$$
This geometric series is guaranteed to converge along $\mathcal{C}_2$ by construction. Next, we want to do the same thing, but along the inner circle $\mathcal{C}_1$. Along this circle we have $|z-z_0| > r_1$, but $|w-z_0| = r_1$ since $w$ is integrated along the circle. We can thus expand $1/(w-z)$ here as a geometric series of the form
$$
\text{on} \ \mathcal{C}_1: \ \frac{1}{w-z} = -\frac{1}{z-z_0} \frac{1}{1-\frac{w-z_0}{z-z_0}} = -\frac{1}{z-z_0} \sum_{n=0}^\infty \bigg(\frac{w-z_0}{z-z_0}\bigg)^n \ .
$$
Again, this geometric series is guaranteed to converge along $\mathcal{C}_1$ by construction. Plugging these expressions back into Cauchy's integral formula for $f(z)$, we have
$$
\begin{align*}
f(z) &= \frac{1}{2\pi i} \oint_{\mathcal{C}_2} dw \ f(w) \bigg[\frac{1}{w-z_0} \sum_{n=0}^\infty \bigg(\frac{z-z_0}{w-z_0}\bigg)^n\bigg] - \frac{1}{2\pi i} \oint_{\mathcal{C}_1} dw \ f(w) \bigg[-\frac{1}{z-z_0} \sum_{n=0}^\infty \bigg(\frac{w-z_0}{z-z_0}\bigg)^n\bigg] \\
&= \frac{1}{2\pi i} \sum_{n=0}^\infty (z-z_0)^n \oint_{\mathcal{C}_2} dw \ \frac{f(w)}{(w-z_0)^{n+1}} + \frac{1}{2\pi i} \sum_{n=0}^\infty \frac{1}{(z-z_0)^{n+1}} \oint_{\mathcal{C}_1} dw \ f(w) (w-z_0)^n \ .
\end{align*}
$$
We now make a change of index on the second sum by letting $n \to -(n+1)$. Doing that means $n$ now runs from $n=-\infty$ to $n=-1$ in this sum and $z-z_0$ and $w-w_0$ swap places. We then end up with
$$
f(z) = \frac{1}{2\pi i} \sum_{n=0}^\infty (z-z_0)^n \oint_{\mathcal{C}_2} dw \ \frac{f(w)}{(w-z_0)^{n+1}} + \frac{1}{2\pi i} \sum_{n=-\infty}^{-1} (z-z_0)^n \oint_{\mathcal{C}_1} dw \ \frac{f(w)}{(w-z_0)^{n+1}} \ .
$$
Notice now that each integral is identical apart from the path they traverse. We can now join the two paths together by letting the inner circle $\mathcal{C}_2$ be traversed counterclockwise instead of clockwise. Then we can combine the sums together and write
$$
f(z) = \sum_{n=-\infty}^\infty \bigg(\frac{1}{2\pi i}\oint_{\mathcal{C}} dw \ \frac{f(w)}{(w-z_0)^{n+1}} \bigg) (z-z_0)^n \ ,
$$
where we've now redefined $\mathcal{C} \equiv \mathcal{C}_1 = \mathcal{C}_2$ for convenience. What remains is an infinite power series that runs over all positive and negative integer powers of $z-z_0$ with coefficients $a_n$ given by the integral
$$
\boxed{
a_n \equiv \frac{1}{2\pi i}\oint_{\mathcal{C}} dz \ \frac{f(z)}{(z-z_0)^{n+1}} 
} \ .
$$
Note that it's not too hard to see that the closed loop $\mathcal{C}$ we take to find the coefficients $a_n$ in this integral can be anything, so long as $\mathcal{C}$ lies in a region where $f(z)$ is analytic. Provided this is the case, we can expand $f(z)$ about the point $z=z_0$ as
$$
\boxed{
f(z) = \sum_{n=-\infty}^\infty a_n (z-z_0)^n = \cdots + \frac{a_{-2}}{(z-z_0)^2} + \frac{a_{-1}}{z-z_0} + a_0 + a_1 (z-z_0) + a_2 (z-z_0)^2 + \cdots 
} \ .
$$
This is called the *Laurent series* of $f(z)$ about the point $z=z_0$. By the identity theorem for power series, the Laurent series will be unique for any analytic path $\mathcal{C}$ and any point $z_0$.

It should be clear that the Laurent series will converge inside an annulus centered about $z_0$ provided there are no other singularities contained inside the annulus. If the closest singularity to $z_0$ is $z_1$, then the Laurent series will converge inside any annulus whose outer radius is less than $|z_1-z_0|$. If $z_0$ is itself singular, then the inner radius must be non-zero.

The Laurent series is perhaps best thought of as an extension of the Taylor series to non-analytic functions. To see why, suppose that $f(z)$ is analytic inside the region $\mathcal{R}$ where we initially assumed $f(z)$ might have singularities. Then the negative coefficients $a_{-n}$ in the Laurent series will all vanish since
$$
a_{-n} = \frac{1}{2\pi i} \oint_{\mathcal{C}} dz \ \frac{f(z)}{(z-z_0)^{-n+1}} = \oint_{\mathcal{C}} dz \ f(z) (z-z_0)^{n-1} \ ,
$$
whose integrand is evidently an analytic function when $n$ is positive, and so $a_{-n}$ will vanish by Cauchy's theorem. Moreover, the positive coefficients $a_n$ will be given by the Cauchy integral formula for derivatives, which says
$$
a_n = \frac{1}{2\pi i}\oint_{\mathcal{C}} dz \ \frac{f(z)}{(z-z_0)^{n+1}} = \frac{1}{n!} \frac{d^n}{dz^n} f(z_0) \ .
$$
Plugging these coefficients back into the Laurent series then gives a Taylor series for $f(z)$, provided $f(z)$ is analytic.

What if $f(z)$ is not analytic? How do we find its Laurent series then? One way would be to define a contour and calculate the coefficients $a_n$ via the integral defined above. But we often don't need to. If we can find an expansion of $f(z)$ in powers of $z$ about a point $z=z_0$, we know it must be unique inside its annulus of convergence by the identity theorem.

For example, consider the function $f(z) = e^{1/z}$. Clearly this function is non-analytic at the point $z=0$. Nevertheless we can Laurent expand it at $z=0$ by Taylor expanding the exponential in powers of $1/z$, in which case we get
$$
e^{1/z} = \sum_{n=0}^\infty \frac{(1/z)^n}{n!} = \sum_{n=-\infty}^0 \frac{z^n}{(-n)!} = 1 + \frac{1}{z} + \frac{1}{2z^2} + \cdots \ .
$$

This expansion is well-defined on any annulus with a positive inner radius $r > 0$. That is, its annulus of convergence is the complex plane with the origin $z=0$ removed. This function is interesting in that all the positive coefficients are zero, while all the negative coefficients are non-zero. This is an example of a function with an *essential singularity*.

It turns out that functions with essential singularities behave unusually. If $f(z)$ has an essential singularity at $z=z_0$, then for *any* region containing this point $f(z)$ takes on *all* possible complex values except possibly one, infinitely many times. For example, inside any disk centered at $z=0$, the function $f(z) = e^{1/z}$ takes on all values except $z=0$ infinitely many times. This strange result is known as *Picard's Great Theorem*. Its proof is well beyond the scope of this course.

As another example, consider the function
$$
f(z) = \frac{1}{z(z-1)} \ .
$$
This function is clearly singular at the points $z=0$ and $z=1$, and analytic everywhere else. We can easily Laurent expand this function about $z=0$ by noting that we can also write it as a partial fraction expansion involving a geometric series,
$$
\frac{1}{z(z-1)} =  -\frac{1}{z} - \frac{1}{1-z} = -\frac{1}{z} - \sum_{n=0}^\infty z^n = -\sum_{n=-1}^\infty z^n \ ,
$$
where in the last step we combined the fractions together by shifting the index $n$ down one. This expansion is evidently valid inside any annulus with an inner radius $r>0$ and an outer radius $R < 1$. Evidently, all negative coefficients except $a_{-1}$ vanish in this expansion. Functions with finitely many nonzero negative expansion coefficients like this are special. Such functions are called *meromorphic functions*. We'll study these in more detail in the next section.

## Residue Calculus

We will now study the behavior of the singularities of complex functions in more depth. This will lead us to a brief study of meromorphic functions, and then finally to the powerful residue theorem.

### Singularities

Suppose $f(z)$ is some complex function with a singularity at a point $z=z_0$, meaning $|f(z)| \to \infty$ as $z \to z_0$. If we Laurent expand $f(z)$ about some annulus centered at the point $z_0$ we get an infinite power series in both the positive and negative powers of $z-z_0$ of the form
$$
f(z) = \sum_{n=-\infty}^\infty a_n (z-z_0)^n = \cdots + \frac{a_{-2}}{(z-z_0)^2} + \frac{a_{-1}}{z-z_0} + a_0 + a_1 (z-z_0) + a_2 (z-z_0)^2 + \cdots \ .
$$
If all negative coefficients $a_{-n} = 0$ then $f(z)$ will be analytic at $z_0$, and hence $z_0$ won't be a singularity. If any of the negative coefficients are nonzero $z_0$ will be a singularity, and we can classify the nature of this singularity by counting how many nonzero negative coefficients the expansion has:

- If only $a_{-1} \neq 0$ and all other $a_{-n} = 0$, we say that $z_0$ is a *simple pole*, or *pole of order one*, of $f(z)$.
- If $a_{-1}, a_{-2}, \cdots, a_{-m} \neq 0$ and all other $a_{-n} = 0$, we say that $z_0$ is a *pole of order* $m$ of $f(z)$.
- If infinitely many $a_{-n} \neq 0$, we say that $z_0$ is an *essential singularity* of $f(z)$.

An example of a function with a simple pole is the function $f(z) = 1/z$, which has a simple pole at $z=0$. Its Laurent expansion about any annulus at $z=0$ is just the function itself, with $a_{-1} = 1$ and all other $a_{\pm n} = 0$.

An example of a function with a pole of order $m$ is $f(z) = 1/z^m$, which has a pole of order $m$ at $z=0$. Its Laurent expansion about any annulus at $z=0$ is also just the function itself, with $a_{-m} = 1$ and all other $a_{\pm n} = 0$.

An example of a function with an essential singularity is the function $f(z) = e^{1/z}$. We saw in the previous section that we could Laurent expand this function about any annulus at $z=0$ by
$$
e^{1/z} = \sum_{n=-\infty}^0 \frac{z^n}{(-n)!} = 1 + \frac{1}{z} + \frac{1}{2z^2} + \cdots \ .
$$
In this expansion the negative coefficients $a_{-n} = 1/(-n)!$ for all $n$, meaning they never vanish at a finite $n$.

Poles are special in that we can get rid of them with simple transformations. This contrasts heavily with essential singularities, which can't be removed, hence the term essential. A function $f(z)$ with a pole of order $m$ at $z_0$ will always be analytic in some region around $z_0$. We can simply multiply $f(z)$ by $(z-z_0)^m$ to remove the singularity. That is, the function
$$
g(z) \equiv (z-z_0)^m f(z)
$$
is analytic in some region around $z_0$. This can't be done for essential singularities.

If $z_0$ is a pole of some function $f(z)$, we also call $z_0$ an *isolated singularity*. This means that in some small region about $z_0$, the function $f(z)$ is analytic except at the point $z_0$. Poles aren't the only type of isolated singularity, but they're the most important. Another type of isolated singularity is a *removable singularity*. We say $z_0$ is a removable singularity if the function is just not defined at a given point, not if it blows up at that point. A trivial example is $f(z) = z/z$, which is one when $z \neq 0$ but undefined at the removable singularity $z=0$. Removable singularities aren't terribly interesting, since we could just define $f(z_0)$ by a limit.

A function that is analytic every except at a set of isolated poles is called a *meromorphic function*. Meromorphic functions are in a sense "almost analytic", in the sense that it's analytic except at a few poles, and those poles we can get rid of via simple transformations. Functions of this type often involve ratios of analytic functions, for example $f(z) = 1/z$ or $f(z) = \tan z$.

Functions that blow up at infinity are said to have a *singularity at infinity*. If $f(z)$ has a singularity at infinity, then we must have $f(z) \to \infty$ as $z \to \infty$ by definition. Observe that this is equivalent to the statement that $f(1/z) \to 0$ as $1/z \to 0$. This means we can study singularities at infinity by looking at $f(1/z)$ as $z \to 0$. For example, consider the analytic function
$$
f(z) = \sin z = \sin x \cosh y + i \cos x \sinh y \ .
$$
Since both $\cosh y$ and $\sinh y$ go to infinity as $y \to \infty$, we see that $f(z)$ must have a singularity at infinity. This is an interesting result, since it's *not* true for the real-valued sine function $f(x) = \sin x$, which stays bounded at infinity. To understand what kind, we can expand $f(z)$ into a Taylor series about $z=0$ and make the transformation $z \to 1/z$ to see that
$$
f(1/z) = \sin 1/z = \sum_{n=0}^\infty \frac{(-1)^n}{(2n+1)!} \frac{1}{z^{2n+1}} \ .
$$
Under this transformation, the Taylor series of $f(z)$ at $z=0$ becomes the Laurent series of $f(1/z)$ at $z=0$. Since this Laurent series contains infinitely many nonzero negative-power terms, the function $f(1/z)$ has an essential singularity at $1/z=0$, which means the original function $f(z) = \sin z$ has an essential singularity at $z=\infty$.

There is a final type of singularity briefly worth mentioning, namely *branch points*. Recall that many complex functions are multi-valued, for example the functions $f(z) = \log z$ or $f(z) = z^{p/q}$. These functions both diverge at $z=0$ and $z=\infty$. The multi-valued nature of these functions means it's impossible to classify these singularities into the groups defined above, since to make the functions single-valued we need to specify a branch cut to join the two singularities together, and along that entire branch cut the function is neither continuous nor analytic.

### Residue Theorem

Suppose $f(z)$ has an isolated singularity at $z_0$ and is analytic around $z_0$. We can do a Laurent expansion of $f(z)$ about $z_0$ to get
$$
f(z) = \sum_{n=-\infty}^\infty a_n (z-z_0)^n \ .
$$
Now, suppose we wanted to integrate $f(z)$ in some closed loop $\mathcal{C}$ about the singularity $z_0$. We'll assume the closed loop is a small counterclockwise circle centered at $z_0$ of some small radius $\varepsilon$. We can make $\varepsilon$ as small as we like to ensure that no other singularities are contained inside the closed loop. Inside this small loop we can integrate $f(z)$ by instead integrating its Laurent series term by term. Pulling the integral inside the summation sign, we have
$$
\oint_\mathcal{C} dz \ f(z) = \sum_{n=-\infty}^\infty a_n \oint_\mathcal{C} dz \ (z-z_0)^n \ .
$$
We now need to evaluate the integral of each power function $(z-z_0)^n$. We can do that by again parametrizing the circle in the usual way by letting $z(t) = z_0 + \varepsilon e^{it}$ and integrating from $t=-\pi$ to $t=\pi$ to get
$$
\oint_\mathcal{C} dz \ (z - z_0)^n = \int_{-\pi}^\pi dt \ (\varepsilon e^{it})^n (i\varepsilon e^{it}) = i\varepsilon^{n+1} \int_{-\pi}^\pi dt \ e^{i(n+1)t} \ .
$$
Now, since the function $e^{i(n+1)t}$ is periodic on the interval $-\pi \leq t \leq \pi$, the integral will vanish whenever $n \neq -1$. When $n=-1$ the integrand becomes one, in which case the integral is just $2\pi$. We thus have
$$
\oint_\mathcal{C} dz \ (z - z_0)^n = \begin{cases}
2\pi i & n = -1 \\
0 & n \neq -1
\end{cases} \ .
$$
Plugging this back into the integral for $f(z)$, we see that all but the $n=-1$ terms in the series vanish, leaving
$$
\oint_\mathcal{C} dz \ f(z) = 2\pi i a_{-1} \ .
$$
Evidently the $a_{-1}$ coefficient is special, in that it's the only one that remains when $f(z)$ is integrated. For this reason we call the coefficient $a_{-1}$ the *residue* of $f(z)$ at the point $z_0$. Residues turn out to be very important to the theory of complex integration.

But what we've shown is only true when integrating over a small loop about a single isolated singularity $z_0$. What if we want to integrate $f(z)$ over some more general closed loop of arbitrary size and shape? It turns out we get the same result, except now we need to sum over the residues of all the isolated singularities inside the closed loop.

To see why this is true, suppose $\mathcal{C}$ is some counterclockwise closed loop whose inner region contains some number of isolated singularities $z_1, z_2, \cdots, z_k$. We assume that no singularities lie directly on the closed loop itself, so that $f(z)$ is analytic on $\mathcal{C}$. For each singularity $z_j$, suppose $\mathcal{C}_j$ is a small counterclockwise circular path enclosing only the singularity $z_j$. We can traverse the outer closed loop $\mathcal{C}$ by joining it to each $\mathcal{C}_j$ via a cut as we did when proving Cauchy's integral formula.

FIGURE

By traversing the inner circular paths in the opposite direction of the outer closed loop, we end up with
$$
\oint_\mathcal{C} dz \ f(z) = \sum_{j=1}^k \oint_{\mathcal{C}_j} dz \ f(z) \ .
$$
Using the same argument applied before, the integral over each $\mathcal{C}_j$ will yield $2\pi i a_{-1}(z_j)$. We thus have
$$
\boxed{
\oint_C dz \ f(z) = 2\pi i \sum_{j=1}^k a_{-1}(z_k) 
} \ .
$$
This important result is known as the *Residue Theorem*. It says that so long as we have a function with isolated singularities, we can evaluate its complex contour integral over any path by finding all the residues inside the closed loop, summing them up, and multiplying by $2\pi i$.

Note that as stated, the residue theorem is only true for simple closed loops that loop around each singularity $z_j$ only once counterclockwise. In general, we can imagine a loop that loops around each singularity $w_j$ times, where $w_j$ is known as the *winding number* of $z_j$. Each counterclockwise traversal of $z_j$ adds one from $w_j$, while each clockwise traversal of $z_j$ subtracts one from $w_j$. Any singularities not looped over have a winding number $w_j = 0$. We can then write the residue theorem as
$$
\oint_C dz \ f(z) = 2\pi i \sum_{j=1}^k w_j a_{-1}(z_k) \ .
$$
We won't use this more general formula as much in practice. Most important is to note that if $\mathcal{C}$ is traversed clockwise exactly once, each winding number will be $w_j = -1$, and hence the right-hand side will acquire a minus sign.

### Residues

Of course, for the residue theorem to be useful, we need an easier way to find the residues than to do the integral the hard way. We can find residues in a few ways. The first way is to find the Laurent series of $f(z)$ at each singularity inside the closed loop and extract the $a_{-1}$ coefficients. Sometimes this can be helpful, but there's often an even easier way to find residues for lower order poles that lets us avoid having to calculate the entire Laurent series.

Suppose $z_0$ is a pole of order $m$ of $f(z)$. If we expand $f(z)$ in a Laurent series about $z_0$, we get
$$
f(z) = \frac{a_{-m}}{(z-z_0)^m} + \cdots + \frac{a_{-1}}{z-z_0} + a_0 + \cdots \ .
$$
If we now multiply both sides by $(z-z_0)^m$ we get a new function $g(z) = (z-z_0)^m f(z)$ with
$$
g(z) = (z-z_0)^m f(z) = a_{-m} + \cdots + a_{-1} (z-z_0)^{m-1} + a_0 (z-z_0)^m + \cdots \ .
$$
This new function $g(z)$ is evidently analytic at $z_0$. This means $g(z)$ also has a Taylor series expansion at $z_0$, with
$$
g(z) = g(z_0) + \cdots + \frac{(z-z_0)^{m-1}}{(m-1)!} \frac{d^{m-1}}{dz^{m-1}} g(z_0) + \frac{(z-z_0)^m}{m!} \frac{d^m}{dz^m} g(z_0) + \cdots \ .
$$
The two expansions of $g(z)$ must be equal term by term by the identity theorem, which means we must have
$$
a_{-1} = \frac{1}{(m-1)!} \frac{d^{m-1}}{dz^{m-1}} g(z_0) \ .
$$
This means if $z_0$ is a pole of order $m$ of $f(z)$, we have the following formula for the residue $a_{-1}(z_0)$,
$$
\boxed{
a_{-1}(z_0) = \frac{1}{(m-1)!} \frac{d^{m-1}}{dz^{m-1}} \bigg|_{z=z_0} (z-z_0)^m f(z)
} \ .
$$
In most cases, this is the quickest and simplest way to find the residues of a given function.

As an easy example, consider the function
$$
f(z) = \frac{e^z}{z - 1} \ ,
$$
This function has a single pole of order 1 at $z=1$, with a residue of
$$
a_{-1}(1) = (z - 1) f(z) \bigg |_{z=1} = e \ .
$$
As another example, consider the function
$$
f(z) = \frac{1 + z^2}{z^2} \ .
$$
This function has a single pole of order 2 at $z=0$, with residue
$$
a_{-1}(0) = \frac{d}{dz} \bigg|_{z=0} z^2 f(z) = \frac{d}{dz} \bigg|_{z=0} (1 + z^2) = 0 \ .
$$
As a final example let's consider a function with multiple distinct poles. Consider the function
$$
f(z) = \frac{\cos z}{z (z-\pi)(z+\pi)} \ .
$$
This function has three simple poles at $z=0$, $z= \pi$, and $z=-\pi$. The residues are given by
$$
\begin{align*}
&a_{-1}(0) = z f(z) \bigg |_{z=0} = -\frac{1}{\pi^2}  \ , \\
&a_{-1}(\pi) = (z-\pi) f(z) \bigg |_{z=\pi} = -\frac{1}{2\pi^2}  \ , \\
&a_{-1}(-\pi) = (z+\pi) f(z) \bigg |_{z=-\pi} = -\frac{1}{2\pi^2} \ .
\end{align*}
$$
Sometimes we'll find ourselves needing to integrate over a closed loop that goes to infinity, for example over the *upper half plane* where $\text{Im} \ z > 0$. When this is the case, we need to account for the fact that we can have poles at infinity, which means we can have residues at infinity as well. Provided $f(z)$ is a meromorphic function, its residue at infinity will just be minus the sum of all its finite residues. That is, if $f(z)$ is meromorphic with isolated finite singularities $z_1, z_2, \cdots, z_k$, then
$$
a_{-1}(\infty) = -\sum_{j=1}^k a_{-1}(z_j) \ .
$$
An immediate implication of this result is that the integral of a meromorphic function over the whole complex plane is zero.

With this knowledge in hand, let's now evaluate a few complex integrals using the residue theorem.

##### Example: Evaluate $\oint dz/z$ over a counterclockwise unit circular path centered at the origin

As a simple example we've seen before, suppose we want to evaluate the following integral over a counterclockwise circular path of unit radius centered at the origin $z=0$,
$$
\oint \frac{dz}{z} \ .
$$
We saw before that the answer should be $2\pi i$. Let's verify this with the residue theorem. 

The function $f(z) = 1/z$ has a single simple pole at $z=0$, with residue
$$
a_{-1}(0) = z f(z) \bigg |_{z=0} = 1 \ .
$$
By the residue theorem, we thus must have that
$$
\oint \frac{dz}{z} = 2\pi i \ a_{-1}(0) = 2\pi i \ .
$$
Notice that since the residue theorem only depends on the residues poles inside the closed loop, this answer will be the same for *any* counterclockwise closed loop we choose, so long as it contains the origin. If the loop doesn't contain the origin then there are no residues inside, hence the integral will vanish as we'd expect by Cauchy's theorem.

##### Example: Evaluate $\oint dz/(z^2 + 1)$ over a counterclockwise circular path of radius $R>1$ centered at the origin

Suppose we want to evaluate the following integral over a counterclockwise circular loop of radius $R > 1$ centered at the origin,
$$
\oint \frac{dz}{z^2 + 1} \ .
$$
Notice that we can factor the denominator of the integrand $f(z) = \frac{1}{z^2+1}$ as
$$
f(z) = \frac{1}{(z-i)(z+i)} \ .
$$
This function evidently has two simple poles at $z = \pm i$. The residues are evidently
$$
a_{-1}(i) = -\frac{i}{2} \quad , \quad a_{-1}(-i) = \frac{i}{2} \ .
$$
Since we need to integrate over a circular loop of radius $R > 1$, both poles will be contained inside the loop, since $|\pm i| = 1$. By the residue theorem, we thus have
$$
\oint \frac{dz}{z^2 + 1} = 2\pi i \bigg(\frac{i}{2} - \frac{i}{2}\bigg) = 0 \ .
$$
The integral thus vanishes over closed loops containing both poles. Note that if we only integrated over one of the two poles the integral would not vanish. For instance, if we only considered a circular loop of radius $R=1$ centered at $z=i$, we'd instead have
$$
\oint \frac{dz}{z^2 + 1} = 2\pi i \bigg(-\frac{i}{2}\bigg) = \pi \ .
$$
This is a good reminder that in complex analysis, the value of a complex integral depends not only on the function, but also on the path chosen.

### Definite Integrals

In physics, the residue theorem is most useful for evaluating certain types of real definite integrals that are difficult or impossible to evaluate in any other way. 

One class of definite integrals amenable to this method are integrals of the form
$$
\int_0^{2\pi} d\varphi \ f(\sin\varphi, \cos\varphi) \ .
$$
To convert this into a complex integral we let $z = e^{i\varphi}$. Then we have
$$
d\varphi = -i \frac{dz}{z} \quad , \quad \sin\varphi = \frac{z - 1/z}{2i} \quad , \quad \cos\varphi = \frac{z + 1/z}{2} \ .
$$
Under this transformation, the path of integration becomes a counterclockwise circular loop of unit radius. We thus have
$$
\int_0^{2\pi} d\varphi \ f(\sin\varphi, \cos\varphi) = -i \oint \frac{dz}{z} \ f\bigg(\frac{z - 1/z}{2i}, \frac{z + 1/z}{2}\bigg) \ .
$$
Provided we can evaluate the closed loop integral on the right-hand side using the residue theorem, we have an answer for the original definite integral as well.

##### Example: Evaluate $\int_0^{2\pi} d\varphi/(1 + \varepsilon \cos\varphi)$ where $|\varepsilon| < 1$

To evaluate this integral we again let $z = e^{i\varphi}$. Plugging this in, we end up with a closed loop integral of the form
$$
\oint \frac{dz}{z} \frac{1}{1 + \frac{\varepsilon}{2} (z + 1/z)} = \frac{2}{\varepsilon} \oint \frac{dz}{z^2 + (2/\varepsilon)z + 1} \ .
$$
The function $f(z)$ in the integrand has two simple poles when the denominator is zero. These are evidently
$$
z_\pm = \frac{1}{\varepsilon} \big(-1 \pm \sqrt{1 - \varepsilon^2}\big) \ .
$$
Since $|\varepsilon| < 1$, we have $|z_+| < 1$ and $|z_-| > 1$, so only the pole $z_+$ is inside of the circle of integration. Its residue is evidently
$$
a_{-1}(z_+) = (z-z_+) f(z) \bigg|_{z=z_+} = \frac{1}{z_+ - z_-} = \frac{\varepsilon}{2\sqrt{1 - \varepsilon^2}} \ .
$$
By the residue theorem, we thus have
$$
\frac{2}{\varepsilon} \oint \frac{dz}{z^2 + (2/\varepsilon)z + 1} = \frac{2}{\varepsilon} 2\pi i a_{-1}(z_+) = \frac{2\pi i}{\sqrt{1 - \varepsilon^2}} \ .
$$
Finally, multiplying both sides by $-i$ then gives the value of the definite integral we sought,
$$
\int_0^{2\pi} \frac{d\varphi}{1 + \varepsilon \cos\varphi} = \frac{2\pi}{\sqrt{1 - \varepsilon^2}} \ .
$$
Note if $|\varepsilon| > 1$ the exact same logic would apply, except we'd use the residue of $z_-$ instead, which would add a minus sign to the answer given.

---

Another class of definite integrals amenable to this method are integrals over the whole real line,
$$
\int_{-\infty}^\infty dx \ f(x) \ .
$$
For the method of residues to work on these integrals, we need $f(z)$ to be meromorphic in either the upper or lower half plane, and for $f(z)$ to vanish at infinity at least as fast as $1/z^2$. We will assume $f(z)$ has no poles on the real axis in this discussion. We'll see in the examples how to deal with situations where there are poles on the real axis.

We now define a closed loop integral over a semicircular loop $\mathcal{C}$ of radius $R \gg 1$ centered on the real axis. Letting $\mathcal{C}_R$ be the circular part of the path, we can decompose the closed loop integral into a real integral and the circular integral as
$$
\oint_\mathcal{C} dz \ f(z) = \int_{-R}^R dx \ f(x) + \int_{\mathcal{C}_R} dz \ f(z) \ .
$$
The circular integral we can parametrize by letting $z(t) = R e^{it}$ with $0 \leq t \leq \pi$, giving
$$
\oint_\mathcal{C} dz \ f(z) = \int_{-R}^R dx \ f(x) + \int_0^\pi dt \ f(Re^{it}) i Re^{it} \ .
$$
Sending $R \to \infty$ and requiring that $f(z)$ vanish at infinity faster than $1/z^2$, the circular part vanishes, leaving us with
$$
\oint_\mathcal{C} dz \ f(z) = \int_{-\infty}^\infty dx \ f(x) \ .
$$
To evaluate the closed loop integral on the left-hand side we can use the residue theorem, being sure to include all residues inside the semicircle, which will be all residues in either the upper or lower half plane as $R \to \infty$. Once we've done that, we have the answer for the original definite integral as well.

##### Example: Evaluate $\int_{-\infty}^\infty dx/(1+x^2)$

This definite integral is of the form specified above. We thus consider the closed loop integral
$$
\oint \frac{dz}{1 + z^2} \ ,
$$
where the closed loop is taken as a counterclockwise semicircular path of radius $R \gg 1$ in the upper half plane.

The denominator of the integrand $f(z)$ can be factored, giving
$$
f(z) = \frac{1}{(z + i)(z - i)} \ .
$$
This means $f(z)$ has two simple poles at the points $z = \pm i$. Since only $z = i$ lies inside the closed loop, we need only find its residue, which is evidently
$$
a_{-1}(i) = (z-i) f(z) \bigg|_{z=i} = \frac{1}{2i} \ .
$$
By the residue theorem, we thus have
$$
\oint \frac{dz}{1 + z^2} = 2\pi i a_{-1}(i) = \pi \ .
$$
Now, as we send $R \to \infty$, the circular component of the integral vanishes since $f(z) \to 0$ as fast as $1/z^2$. What remains is the definite integral we seek. Thus, we have
$$
\int_{-\infty}^\infty \frac{dx}{1 + x^2} = \pi \ .
$$
Note the result would be the same if we used a clockwise semicircular loop in the lower half plane. In that case, the residue $a_{-1}(-i) = -1/2i$ would have an opposite sign, which would compensate for the sign from traversing in the opposite direction.

---

Another, closely related, class of definite integrals amenable to the method of residues are those of the form
$$
\int_{-\infty}^\infty dx \ f(x) e^{iax} \ .
$$
Integrals of this type usually show up as Fourier transforms, and thus occur quite often in physics. We can solve integrals of this type in a similar was as the previous class of integrals, except with some slight modifications. We again extend $f(x)$ to a complex function $f(z)$, and require $f(z)$ be meromorphic. We also require that $f(z)$ vanish at infinity, but place no restriction on how fast $f(z)$ decays at infinity.

As before, we consider a semicircular loop $\mathcal{C}$ of radius $R$ whose diameter lies on the real axis, and whose circular part $\mathcal{C}_R$ is traversed counterclockwise if in the upper half plane, and clockwise if in the lower half plane. Then we can write
$$
\oint_\mathcal{C} dz \ f(z) = \int_{-R}^R dx \ f(x) e^{iax} + \int_{\mathcal{C}_R} dz \ f(z) e^{iaz} \ .
$$
Now, before we took $R \to \infty$ and argued ad hoc that the circular part of the integral vanishes, leaving the original definite integral. This time though we can't easily follow the same argument. Instead we appeal to *Jordan's Lemma*, which says that so long as $f(z)$ is continuous along a circular path and goes to zero at infinity, then the circular part vanishes, leaving
$$
\oint_\mathcal{C} dz \ f(z) = \int_{-\infty}^\infty dx \ f(x) e^{iax} \ .
$$
Provided this is the case, we can again use the residue theorem to evaluate the definite integral as before.

### Principal Value Integrals

Suppose we were tasked with evaluating the following real integral,
$$
\int_{-1}^1 \frac{dx}{x} \ .
$$
Notice this integrand $f(x) = 1/x$ has a singularity at $x=0$, making this integral improper. If we tried to account for this singularity by splitting the integral up into positive and negative parts and adding them together, we'd get
$$
\int_{-1}^1 \frac{dx}{x} = \int_{-1}^{0^-} \frac{dx}{x} + \int_{0^+}^1 \frac{dx}{x} = \infty - \infty \ ,
$$
which is undefined. However, $f(x)$ is an odd function, meaning any symmetric integral about $x=0$ *should* be zero in some sense. Indeed, if we "skipped" the singularity by removing the infinitesimal interval $-\varepsilon \leq x \leq \varepsilon$ around $x=0$, we'd find
$$
\int_{-1}^1 \frac{dx}{x} \approx \int_{-1}^{-\varepsilon} \frac{dx}{x} + \int_{\varepsilon}^1 \frac{dx}{x} = \log\varepsilon - \log\varepsilon = 0 \ .
$$
So which is correct? Is this integral undefined, or is it zero? It turns out it's both in some sense. The value of this integral depends on the particular method one uses to evaluate it.

We'd like to be able to assign values to improper integrals like this in some systematic way. The standard way to do so is known as the *Cauchy principal value* method. Suppose a real-valued function $f(x)$ has a singularity $s$ inside some interval $a \leq x \leq b$, so that the standard integral
$$
F(x) \equiv \int_{a}^b dx \ f(x)
$$
is undefined in the sense that $F(b) - F(a) = \infty - \infty$. We define the *Cauchy principal value* of $f(x)$ on this interval to then be
$$
PV \int_{a}^b dx \ f(x) \equiv \lim_{\varepsilon \to 0} \bigg(\int_{a}^{\varepsilon-s} \frac{dx}{x} + \int_{s+\varepsilon}^b \frac{dx}{x}\bigg) \ .
$$
The principal value is prescription described here just formalizes what we did above for $f(x)=1/x$, where we removed the infinitesimal interval around $x=0$ and computed the integral over the remaining interval. We'd thus write
$$
PV \int_{-1}^1 \frac{dx}{x} = 0 \ .
$$
If instead $f(x)$ has a singularity is at $\pm \infty$, we define its Cauchy principal value over the real line by
$$
PV \int_{-\infty}^\infty dx \ f(x) \equiv \lim_{M \to \infty} \int_{-M}^M \frac{dx}{x} \ .
$$
Note that the principal value integral reduces to the usual standard integral when the standard integral is well-defined on the interval. We thus encounter no ambiguity in definitions at all for well-behaved integrals.

So why do we bring this topic up in a section on complex analysis? The reason is because it turns out many of the integrals we'll need to use the residue theorem to evaluate in electromagnetism are ones whose integrands have poles on the real line. This occurs, for example, when trying to evaluate the integral of the *sinc function* $f(x) = \sin(x)/x$ over the real line,
$$
\int_{-\infty}^\infty dx \ \frac{\sin x}{x} \ .
$$
If we extend this function into the complex plane we find ourselves needing to integrate $f(z) = e^{iz}/z$ over a semicircular closed loop containing the real line. But $f(z)$ has a simple pole at $z=0$, which lies directly on the contour of integration. We can resolve this problem using the principle value method.

Suppose a complex function $f(z)$ has an isolated singularity at some point $z=a$ lying directly on an integration contour $\mathcal{C}$, causing the contour integral to become undefined. Then we define the principle value integral of $f(z)$ along this contour by
$$
PV \int_\mathcal{C} dz \ f(z) \equiv \lim_{\varepsilon \to 0} \int_{\mathcal{C}-\mathcal{C}_\varepsilon(z_0)} dz \ f(z) \ ,
$$
where $\mathcal{C}-\mathcal{C}_\varepsilon(z_0)$ is the same integration contour $\mathcal{C}$ except with the disk $\mathcal{C}_\varepsilon(z_0)$ of radius $\varepsilon$ centered at $z=z_0$ removed.

Suppose now that we wish to integrate $f(z)$ a meromorphic function over a closed loop. For instance, suppose $f(z)$ has the form
$$
f(z) = \frac{g(z)}{z - z_0} \ ,
$$
where $g(z)$ is analytic on the closed loop. If $z_0$ lies on the contour of integration the integral will be undefined, in which case we can use the principle value method above to break the closed loop integral up into two pieces, one the principal value portion that ignores the pole, and another the integrates around the pole in a semicircular arc of radius $\varepsilon$ to close the loop,
$$
\oint_{\mathcal{C}'} dz \ f(z) = PV \oint_\mathcal{C} dz \ f(z) + \lim_{\varepsilon \to 0} \int_{\mathcal{C}_\varepsilon(z_0)} dz \ f(z) \ .
$$
This modified closed loop now removes the pole from the contour, which means we can apply the residue theorem. Assuming the semicircular arc $\mathcal{C}_\varepsilon(z_0)$ is chosen to run on the inside of the pole, there won't be any poles remaining inside the closed loop, which means by the residue theorem the left-hand side is zero,
$$
\oint_{\mathcal{C}'} dz \ f(z) = 0 \ .
$$
We now need to deal with the semicircular arc. To do so we parametrize $z(\varphi) = z_0 + \varepsilon e^{i\varphi}$ and integrate *clockwise* to get
$$
\int_{\mathcal{C}_\varepsilon(z_0)} dz \ f(z) = \int_{\varphi_0}^{\varphi_0-\pi} d\varphi \ f(z_0 + \varepsilon e^{i\varphi}) i\varepsilon e^{i\varphi} = i \int_0^{-\pi} d\varphi \ \frac{g(z_0 + \varepsilon e^{i\varphi})}{(z_0 + \varepsilon e^{i\varphi}) - z_0} \varepsilon e^{i\varphi} = -i \int_0^\pi d\varphi \ g(z_0 + \varepsilon e^{i\varphi}) \ .
$$
As $\varepsilon \to 0$ the integral on the right-hand side then becomes just $-\pi i g(z_0)$. We thus have
$$
PV \oint_\mathcal{C} dz \ \frac{g(z)}{z - z_0} = \pi i g(z_0) \ .
$$
Notice that $g(z_0)$ is just the residue of $f(z)$ at the pole $z=z_0$. We could thus also write
$$
PV \oint_\mathcal{C} dz \ \frac{g(z)}{z - z_0} = \pi i a_{-1}(z_0) \ .
$$
Evidently then, the principle value method is equivalent to counting residues that lie along a closed loop as contributing *half* their value when using the residue theorem. In a way this makes sense. When a pole lies along the closed loop, in some sense half of it lies *inside* the loop and should count in the sum of residues, and the other half lies *outside* the loop and should be ignored. We thus have two ways to deal with poles that lie on the closed loop of integration: We could use the principal value method directly, or we could just count the residues of those poles as half their value and directly use the residue theorem.

##### Example: Evaluate $PV \int_0^\infty dx \ \sin x / x$

Let's revisit the sinc integral mentioned above,
$$
\int_{-\infty}^\infty dx \ \frac{\sin x}{x} \ .
$$
Consider instead the complex function
$$
f(z) = \frac{e^{iz}}{z} = \frac{\cos z}{z} + i \frac{\sin z}{z} \ .
$$
Evidently, the original real function $f(x)$ is the imaginary part of the complex function $f(z)$. The function $f(z)$ has a single simple pole at the origin $z=0$, with residue
$$
a_{-1}(0) = z f(z) \bigg|_{z=0} = 1 \ .
$$
Now, as mentioned before, this pole lies directly on the real line, which means if we choose the usual semicircular closed loop we have to contend with a pole lying directly along the integration path.

Decomposing the closed loop into its usual real and semicircular arc portions, we have
$$
\oint_{\mathcal{C}'} dz \ f(z) = PV \int_{-R}^{-R} dx \ f(x) + \lim_{\varepsilon \to 0} \int_{\mathcal{C}_\varepsilon(0)} dz \ f(z) + \int_{\mathcal{C}_R} dz \ f(z) \ .
$$
Since there are no residues inside the closed loop once we integrate around the pole at $x=0$, we have
$$
\oint_{\mathcal{C}'} dz \ f(z) = 0 \ .
$$
By the discussion above, the integral around the pole is just minus half the residue of the pole $z=0$, or
$$
\lim_{\varepsilon \to 0} \int_{\mathcal{C}_\varepsilon(0)} dz \ f(z) = -\pi i \ .
$$
Now, notice along the semicircular arc $\mathcal{C}_R$ we can parametrize $z(\varphi) = Re^{i\varphi}$ to write
$$
f(z(\varphi)) = \frac{e^{iRe^{i\varphi}}}{Re^{i\varphi}} = e^{iR\cos\varphi} \frac{e^{-R\sin\varphi}}{Re^{i\varphi}} \ .
$$
 As $R \to \infty$, $|f(z)|$ will thus go to zero only when $\sin\varphi > 0$, or equivalently when $0 \leq \varphi < \pi$. Provided we choose the semicircular arc to lie in the upper half plane, this integral will then vanish as $R \to \infty$ by Jordan's lemma,
$$
\lim_{R \to \infty} \int_{\mathcal{C}_R} dz \ f(z) = 0 \ .
$$
Putting this all together, we thus get
$$
PV \int_{-\infty}^\infty dx \ f(x) = \pi i \ .
$$
Finally, taking the imaginary part of both sides to recover the original real integral we have
$$
PV \int_{-\infty}^\infty dx \ \frac{\sin x}{x} = \pi \ .
$$
Integrals of this type show up all over physics and engineering. They're known as *Dirichlet integrals*.

Notice that since this function is odd we immediately also have that
$$
PV \int_0^\infty dx \ \frac{\sin x}{x} = \frac{\pi}{2} \ .
$$
We'll see this exact integral show up again when trying to calculate the Green's function for Poisson's equation.

##### Example: Evaluate $PV \int_{-\infty}^\infty dx \ e^{-itx}/(x^2 - a^2)$

Suppose we wish to integrate the following real function over the real line,
$$
f(x) = \frac{e^{-itx}}{x^2 - a^2} = \frac{e^{-itx}}{(x - a)(x + a)} \ ,
$$
where $a > 0$ and $t$ is a real parameter. To do so, we'll consider instead the complex function
$$
f(z) = \frac{e^{-itz}}{(z - a)(z + a)} \ .
$$
This function has two simple poles $\pm a$ that both lie on the real-axis, with residues
$$
a_{-1}(\pm a) = \pm \frac{1}{2a} e^{\mp iat} \ .
$$
As usual, we want to evaluate the closed loop integral of $f(z)$ over a semicircular arc of radius $R$ centered at the origin. Eventually, we'll send $R \to \infty$ to recover the original real integral. However, we need to be careful about two things. First, the sign of $t$ will affect the choice of closed loop. Second, both poles lie on the real axis, which means we need to use the principal value method to evaluate the integral, or equivalently count their residues as half their value when using the residue theorem.

We first need to contend with the sign of $t$ when decomposing the closed loop. For Jordan's theorem to apply so we can drop the semicircular arc part of the integral, we require that $|f(z)| \to 0$ as $R \to \infty$. If we parametrize the arc by $z(\varphi) = Re^{i\varphi}$, we find
$$
f(z(\varphi)) = \frac{e^{-itRe^{i\varphi}}}{(Re^{i\varphi} - a)(Re^{i\varphi} + a)} = e^{-itR\cos\varphi} \frac{e^{tR\sin\varphi}}{(Re^{i\varphi} - a)(Re^{i\varphi} + a)} \ .
$$
To ensure that $|f(z)| \to 0$ at infinity, we require that $|e^{-it z(\varphi)}| \to 0$, which can only happen if $t\sin\varphi < 0$. If $t < 0$, this can only be true if we choose an arc in the *lower* half plane. Similarly, if $t > 0$, this can only be true if we choose an arc in the *upper* half plane.

Suppose first that $t < 0$. In this case we can again choose a counterclockwise semicircular closed loop in the upper half plane. Decomposing the closed loop, we have
$$
\oint_{\mathcal{C}'} dz \ f(z) = PV\int_{-R}^R dx \ f(x) + \int_{\mathcal{C}_R} dz \ f(z) \ .
$$
To deal with the poles on the closed loop this time we'll use the "half-residue trick" mentioned above to write
$$
\oint_{\mathcal{C}'} dz \ f(z) = \pi i [a_{-1}(-a) + i a_{-1}(a)] = \frac{\pi i}{2a} (e^{iat} - e^{-iat}) = \frac{\pi}{a} \sin at \ .
$$
Plugging in the results above and ending $R \to \infty$, we thus get
$$
PV \int_{-\infty}^\infty dx \ f(x) = \frac{\pi}{a} \sin at \quad , \quad t < 0 \ .
$$
Similarly, when $t > 0$ we choose a *clockwise* semicircular closed loop in the *lower* half plane and decompose as
$$
\oint_{\mathcal{C}'} dz \ f(z) = -PV\int_{-R}^R dx \ f(x) + \int_{\mathcal{C}_R} dz \ f(z) \ .
$$
Here we use the convention that the closed loop integral is taken counterclockwise and add a minus sign to the principal value integral to account for the reverse in direction. As $R \to \infty$ we thus get
$$
PV \int_{-\infty}^\infty dx \ f(x) = -\frac{\pi}{a} \sin at \quad , \quad t > 0 \ .
$$
Since the sine function is odd we can combine these results together into a single expression to finally get
$$
PV \int_{-\infty}^\infty dx \ \frac{e^{-itx}}{x^2 - a^2} = -\frac{\pi}{a} \sin a|t| \ \ .
$$
We'll see an integral of this form arise when trying to compute the Green's function for the inhomogeneous wave equation.
## Transformations

Thus far we've said little about the *geometry* of complex functions, that is, how complex functions change the geometry of the complex plane under transformations. We will now introduce the idea of complex transformations, and show how they can be used to visualize complex functions. We will also introduce the important idea of conformal mappings. We'll find these ideas quite useful to electromagnetism, since they allow us to transform many boundary value problems into simpler boundary value problems that are much more easily solved in a different space.

### Affine Transformations

Suppose $w = f(z)$ is some complex function that maps each point $z$ in the complex $z$-plane to some point $w$ in the complex $w$-plane. When thinking of a function this way, we call it a *transformation* or a *mapping*. 

To see how this whole idea works, let's consider first the simple transformation $w = z$. This function maps each point $z$ in the $z$-plane to the *same* point $w=z$ in the $w$-plane. Interpreting this geometrically, we can thus think of this transformation as mapping the complex plane to itself, leaving all points fixed. Nothing is happening. This is the *identity transformation*.

Now let's consider a slightly more interesting example. Consider the transformation $w = z + 1$. For each point $z$ in the $z$-plane, this transformation sends $z$ to the point $w = z+1$ in the $w$-plane. Interpreted geometrically, this means each point is being *translated* to the right one unit. This is thus an example of a *pure translation*. Every point just gets translated right by one.

Another example of a pure translation is the transformation $w = z + i$. Instead of translating each point to the right by one, it instead translates each point up by one along the imaginary axis. In general, a pure translation of a complex variable is any transformation of the form $z = z + z_0$ for some fixed $z_0$. This translates each $z$ by a distance $|z_0|$ in the $z_0$-direction.

Let's now consider a different kind of transformation. Consider the transformation $w = i z$. Evidently this transformation maps each $z$ in the $z$-plane to the point $w = iz$ in the $w$-plane. To see what this represents geometrically we can rewrite it in polar notation. If we let $z = re^{i\varphi}$ and observe that $i = e^{i\pi/2}$, we then have
$$
w = i z = r e^{i(\varphi + \pi/2)} \ .
$$
This is just a rotation. Each point $z$ simply gets rotated counterclockwise by $\pi/2$ under this transformation. That is, the transformation $w = iz$ is a *pure rotation* counterclockwise by $90^\circ$. More generally, any transformation of the form $w = e^{i\alpha} z$ defines a pure rotation, rotating each $z$ in the $z$-plane by an angle $\alpha$ in the $w$-plane. Equivalently, it's a pure rotation of the entire complex plane by an angle $\alpha$.

Next, let's consider the transformation $w = 2 z$. In this case, each $z$ gets mapped to a point $w = 2z$. Interpreted geometrically, this says that each $z$ gets *scaled* by a factor of two. This is an example of a *pure scaling* transformation, where each point just gets rescaled by some constant factor. More generally, any transformation of the form $w = az$ where $a > 0$ is a positive real number is an example of a scaling transformation, which scales each point $z$ in the $z$-plane by a factor of $a$ in the $w$-plane. Equivalently, we can think of transformations like this as scaling the whole complex plane by a factor of $a$.

By combining these different types of pure transformations together we can build more interesting transformations. For example, consider the transformation $w = -z/2 + i$. To interpret this geometrically we break the transformation into pieces. Consider the sequence of intermediate transformations $z \to -z \to -z/2 \to -z/2 + i$. On the left we have $z$, and on the right we have $w = -z/2 + i$. Since $-z = e^{i\pi} z$, the first step $z \to -z$ as a pure rotation counterclockwise by $180^\circ$. The next step in the transformation is then $-z \to -z/2$, which is a pure scaling of $-z$ by a factor of $1/2$. Finally, the last step $-z/2 \to -z/2 + i$ is just a pure translation of $-z/2$ up by one. All together then, this transformation takes the complex $z$-plane and performs a pure rotation by $180^\circ$, followed be a pure scaling by $1/2$, followed by a translation up by one.

Transformations give us a nice way to visualize the behavior of complex functions. For real functions $y = f(x)$ we could visualize the function using its *graph*. Since the graph of such a function is just a curve, we can plot it in a 2-dimensional plane and easily visualize the function's behavior. Unfortunately, we cannot do this for complex functions $w = f(z)$ since the graph would lie in a 4-dimensional space, which we can't easily visualize.

Instead what we can do is draw two plots, one of the $z$-plane and another of the $w$-plane. Each mapping of a point $z \to w$ can be visualized by drawing an arrow connecting $z$ in the $z$-plane to $w$ in the $w$-plane. More usefully though, we often see how curves or regions of the $z$-plane get mapped under the transformation $w = f(z)$. As an example, let's visualize the transformation in the previous example, $w = -z/2 + i$. To do so, we'll focus on looking at how the four points $z = 0, 1, i, 1+i$ transform. Notice that these points define the unit square in the $z$-plane. We can thus see what the unit square maps to in the $w$-plane. It's easy to see that these four points map, in order, to the points $w = i, -1/2 + i, i/2, -1/2 + i/2$, as shown below.

FIGURE (visualize this unit square under the mapping)

We can see visually here what's going on. We see that each point is being rotated, scaled, and translated as describe above. This is easy to see since we can just visualize how the unit square gets distorted under the transformation. Notice that the area of the transformed unit square is now evidently $1/2$, which is the same scaling factor we see in the transformation.

The simple transformations we've covered so far are examples of the more general class of *affine transformations*
$$
w = a z + z_0 \ .
$$
Any affine transformation can be thought of as a combination of a rotation by the phase $\text{Arg} \ a$, a scaling by $|a|$, and a translation by $z_0$. For what it's worth, the special case where $z_0 = 0$ is called a *linear transformation*. These only involve rotation and scaling.

An important property of affine transformations is that they always map lines to lines, and parallelograms to parallelograms. Both of these facts can be easily seen by looking at the definition of an affine transformation.

##### Example: Analyze the affine transformation $w = i + z e^{i\pi / 4}$

We can again break this transformation up into the intermediate transformations $z \to z e^{i\pi/4} \to z e^{i\pi/4} + i$. The first transformation is evidently a counterclockwise rotation by $45^\circ$. The second transformation is a translation by $i$, or equivalently a translation up by one. Clearly then, this transformation is just a rotation followed by a translation.

But let's try to be a bit more precise. Observe if we substitute $z = x+iy$ into $w = u+iv$, we have
$$
w = i + (x+iy) e^{i\pi / 4} = \frac{x-y}{\sqrt{2}} + i \bigg(1 + \frac{x+y}{\sqrt{2}}\bigg)  \quad \Longrightarrow \quad \begin{cases}
u = \frac{x-y}{\sqrt{2}} \ ,\\
v = \frac{x+y}{\sqrt{2}} \ .
\end{cases}
$$
This relation gives the exact point $w = u+iv$ in the $w$-plane that each point $z = x+iy$ in the $z$-plane gets mapped to. Let's now try to use this information to see how various curves in the $z$-plane get transformed under this mapping. Notice that we can eliminate either $x$ or $y$ from the equations for $u$ and $v$ by adding and subtracting them together. We end up with
$$
v = u + (1 + \sqrt{2}y) \quad , \quad v = -u + (1 + \sqrt{2}x) \ .
$$
Now, consider first the horizontal lines $y=\text{const}$ in the $z$-plane. If we treat $y$ as a parameter in the equations above, we see that in the $w$-plane these horizontal lines get transformed to lines of the form $v = u + (1 + \sqrt{2}y)$, which are $45^\circ$ lines passing through the point $v = 1 + \sqrt{2}y$. Thus, horizontal lines get mapped to a family of $45^\circ$ lines under this transformation.

Next, let's consider the vertical lines $x = \text{const}$ in the $z$-plane. Again treating $x$ as a parameter, we see that these lines get transformed to lines of the form $v = -u + (1+\sqrt{2} x)$ in the $w$-plane, which are $135^\circ$ lines passing through the point $v=1+\sqrt{2}x$. Thus, vertical lines get mapped to a family of $135^\circ$ lines under this transformation.

Last, let's look at how the unit square gets mapped under this transformation. Consider again the points $z = 0, 1, i, 1+i$. Under the mapping, these respectively transform to the points $w = i, e^{i\pi/4} + i, (-1 + i\sqrt{3+2\sqrt{2}})/\sqrt{2}, i\sqrt{3 + 2\sqrt{2}}$. The area of the transformed rectangle is evidently one, indicating no scaling took place under this transformation.

FIGURE (visualize the above transformation)



### Non-Affine Transformations

So far we've considered only affine transformations, which are especially simple. But most transformations we could write down aren't affine. For example, the transformations $w = 1/z$, $w = e^z$, or $w = z^2$ are all non-affine transformations. How then should we interpret more complicated translations like these geometrically?

Let's first consider the transformation $w = 1/z$. Evidently, each point $z$ in the $z$-plane gets mapped to the point $w = 1/z$ in the $w$-plane. By convention, we agree that $\infty = 1/0$ and $0 = 1/\infty$, so that $z=0$ gets mapped to $w=\infty$ and $z=\infty$ gets mapped to $w=0$. To see what's going on, we can re-express this transformation in polar form. If $z = re^{i\varphi}$, then
$$
w = \frac{1}{z} = \frac{1}{r} e^{-i\varphi} \ .
$$
Geometrically, this means each $z = re^{i\varphi}$ in the $z$-plane is getting scaled by a $z$-dependent factor of $1/r$, and then reflected across the real axis from the angle  $\varphi$ to the angle $-\varphi$. We call a transformation of this kind an *inversion*. Notice that the inverse transformation $z = 1/w$ is also an inversion transformation.

An inversion maps points inside the unit disk $|z| < 1$ to points outside the unit disk $|z| > 1$, and points outside the unit disk to points inside the unit disk. Evidently, points on the unit circle $|z| = 1$ remain on the unit circle $|w| = 1$ under an inversion, except reflected across the real axis.

Inversion transformations have a useful but interesting property that we won't prove. Namely, they map circles in the $z$-plane to lines in the $w$-plane, and lines in the $z$-plane to circles in the $w$-plane. For example, the counterclockwise unit circle $z(\varphi) = e^{i\varphi}$ gets mapped to the horizontal line $w=1$, and the horizontal line $z=1$ gets mapped to the clockwise circle $w(\varphi) = e^{-i\varphi}$. The loan exception are lines or circles that pass through the origin $z=0$, which always map to lines in the $w$-plane.

FIGURE (draw the inversion of a few lines and circles)

It turns out we can combine affine transformations and inversion transformations together into a single class of transformations known as *bilinear transformations* (or *linear fractional transformations*, or *Möbius transformations*). These have the form
$$
w = \frac{az + b}{cz + d} \quad , \ ad-bc \neq 0 \ .
$$
We can recover affine transformations by setting $c=0$, and inversion transformations by setting $a=d=0$ and $b=c=1$. Geometrically, bilinear transformations can be thought of as an affine transformation, followed by an inversion transformation, followed by another affine transformation. It's easily seen that the inverse of a bilinear transformation is also a bilinear transformation.

Bilinear transformations inherit the properties of both of these kinds of transformations. For example, circles still map to lines, and lines still map to circles. They also have the property that a bilinear transformation can always be found to map any three distinct points in the $z$-plane to any three distinct points in the $w$-plane. One useful example of a bilinear transformation is
$$
w = \frac{i - z}{i + z} \ .
$$
This transformation is useful because it maps the upper half of the $z$-plane to the interior of the unit disk $|w| < 1$ in the $w$-plane, and the real axis $x = 0$ gets mapped precisely to the boundary of the unit disk $|w| = 1$. By inverting this transformation we can do the opposite, map the unit disk to the upper half plane. We'll occasionally find this fact useful for solving 2-dimensional boundary value problems in cylindrical coordinates.

Next, consider the quadratic transformation $w = z^2$. It makes most sense to analyze this transformation in polar coordinates. If we again let $z = r e^{i\varphi}$, then we see that $w = r^2 e^{i 2\varphi}$.

- Consider first a circle in the $z$-plane, or curves $z(\varphi) = re^{i\varphi}$, where $r=\text{const}$ and $0 \leq \varphi < 2\pi$. Under this transformation, this circle evidently maps to $w(\varphi) = r^2 e^{i 2\varphi}$. This is a circle in the $w$-plane of radius $r^2$, but a circle with twice the phase, meaning it does two full rotations instead of one. This geometrically reflects the fact that $w=z^2$ is a two-to-one mapping, meaning each point in the $w$-plane is the mapping of exactly two points $z$-plane.
- Evidently then, circles in the $z$-plane map to *two* circles in the $w$-plane. Equivalently, a semi-circle maps to a full circle, and a quarter circle maps to a semi-circle.
- In fact, this transformation preserves all quadratic surfaces, not just circles. For example, hyperbolas map to hyperbolas.
- The inverse transformation $z = \sqrt{w}$ does these actions all in reverse. Note that this transformation will generally be multivalued unless we restrict ourselves to a particular branch in the $w$-plane.

FIGURE (draw quadratic map of circles and hyperbolas)

Next, consider the exponential transformation $w = e^z$. By writing $z = x+iy$, we see that $w = e^x e^{iy}$. This means we can interpret this transformation as a $z$-dependent scaling by $e^x$ followed by a $z$-dependent rotation by a angle $y$. Evidently then, the exponential transformation has the following properties:

- By setting $x=\text{const}$ in the $z$-plane, we see that vertical lines get mapped to circles of radius $e^x$ in the $w$-plane. Since the phase $y = \text{Arg} \ w$ can take on any real value, these circles loop around counterclockwise infinitely many times. This reflects the fact that the inverse transformation $z = \log w$ has infinitely many branches.
- By setting $y=\text{const}$ in the $z$-plane, we see that horizontal lines get mapped to rays emanating out from the origin. The angle of these rays are determined by the phase $y$.
- Non axis lines of the form $y = kx$ in the $z$-plane map to curves of the form $w = e^{x(1+ik)}$ in the $w$-plane. If we write $w = \varrho e^{i\theta}$ in polar coordinates, we can eliminate $x$ to get $\varrho(\theta) = e^{\theta/k}$. These curves evidently then represent exponentially growing spirals in the $w$-plane. Such curves are called *logarithmic spirals*.
- The unit square gets mapped to an annular segment bounded by circles of radius $e^0 = 1$ and $e^1 = e$. The segment is bounded between the angles $y=0$ and $y=1$ radians in the $w$-plane. Indeed, all rectangles map to annular regions.
- The inverse transformation $z = \log w$ does these actions in reverse. Note that this inverse transformation is multivalued unless we restrict ourselves to a particular branch in the $w$-plane.

FIGURE (draw exponential map)

Last, we'll mention the sine transformation $w = \sin z$. This transformation is best analyzed in rectangular coordinates. If we write $z = x + iy$, it's not hard to see that $w = \sin x \cosh y + i \cos x \sinh y$.

- Setting $x=\text{const}$, it's not too hard to show that vertical lines get mapped to hyperbolas in the $w$-plane of the form $(u/\sin x)^2 - (v/\cos x)^2 = 1$.
- Similarly, setting $y=\text{const}$, it's not hard to show that horizontal lines get mapped to ellipses in the $w$-plane of the form $(u/\cosh y)^2 + (v/\sinh y)^2 = 1$.
- Rectangular regions in the $z$-plane get mapped to regions bounded by orthogonal ellipses and hyperbolas, each having the same focal point.
- The related transformation $w = \cos z$ has exactly the same behavior, except compared to the sine transformation the hyperbolas get reflected across the real axis, and the ellipses get reflected across the imaginary axis.

### Conformal Mappings

Analytic functions possess yet another very special property, namely analytic function are *conformal mappings*. That is, analytic functions preserve the angles between curves. To see why this is the case, suppose $w=f(z)$ is analytic at $z$, and suppose $\mathcal{C}_1$ and $\mathcal{C}_2$ are two curves in the $z$-plane that intersect at the point $z$.

At the point $z$ we can create a tangent line $dz_1$ to $\mathcal{C}_1$ and a tangent line $dz_2$ to $\mathcal{C}_2$, with these tangent lines intersecting at $z$ at some angle $\alpha$. Under the transformation $w = f(z)$, these tangent lines get mapped to tangent lines $dw_1$ and $dw_2$ in the $w$-plane that intersect at the point $w = f(z)$ at some other angle $\alpha'$.

FIGURE

Now, since $w=f(z)$ is analytic at $z$, we can relate the tangent lines in the two planes via
$$
dw_1 = \frac{dw}{dz} dz_1 \quad , \quad dw_2 = \frac{dw}{dz} dz_2 \ .
$$
So long as $dw/dz \neq 0$, we can take the ratio of these tangent lines to get
$$
\frac{dw_1}{dw_2} = \frac{dw/dz \ dz_1}{dw/dz \ dz_2} = \frac{dz_1}{dz_2} \ .
$$
This means that the ratios of the two sets of tangent lines are identical. But this in fact implies the angles must be identical as well. To see why this is true, notice at the point $z$ we can write $dz_1 = |z| e^{i \varphi_1}$ and $dz_2 = |z| e^{i \varphi_2}$. Since $\alpha = \varphi_1 - \varphi_2$, we have
$$
\frac{dz_1}{dz_2} = e^{i (\varphi_1 - \varphi_2)} = e^{i\alpha} \ .
$$
Similarly, at the point $w = f(z)$ we can write $dw_1 = |w| e^{i \theta_1}$ and $dw_2 = |w| e^{i \theta_2}$. Since $\alpha' = \theta_1 - \theta_2$, we have
$$
\frac{dw_1}{dw_2} = e^{i (\theta_1 - \theta_2)} = e^{i\alpha'} \ .
$$
Thus, since the two ratios must equal, the angles must be the same, i.e. $\alpha' = \alpha$. That is, the transformation $w=f(z)$ is *conformal*, meaning it preserves the angle between curves at points where the function is analytic with non-vanishing derivative.

What if the derivative is zero at $z$? In that case, it's possible to show that under the transformation the angle between curves gets multiplied by $n$, where $d^n w / dz^n$ is the first non-vanishing derivative of $f(z)$ at $z$. This can be shown by expanding $f(z)$ as a Taylor series at $z$ and applying the same logic as above on the first non-vanishing derivative.

While angles stay invariant under conformal mappings, areas do not. They scale in a very particular way. To see this, consider an area element $dxdy$ in the $xy$-plane, and its transformed area element $dudv$ in the $uv$-plane. According to the change of variables theorem, these two area elements can be related by the formula $dxdy = |J| dudv$, where $|J|$ is the absolute Jacobian determinant given by
$$
|J| = \bigg|\frac{\partial u}{\partial x} \frac{\partial v}{\partial y} - \frac{\partial u}{\partial y} \frac{\partial v}{\partial x}\bigg| \ .
$$
If we now insist the Cauchy-Riemann conditions be satisfied, we can rewrite this determinant factor as
$$
|J| = \bigg|\bigg(\frac{\partial u}{\partial x}\bigg)^2 + \bigg(\frac{\partial u}{\partial y}\bigg)^2\bigg| = \bigg|\frac{dw}{dz}\bigg|^2 \ .
$$
Thus, the area element transforms under a conformal mapping $w = f(z)$ as
$$
dudv = \bigg|\frac{dw}{dz}\bigg|^2 dxdy \ .
$$
Evidently, an infinitesimal patch of area in the $z$-plane gets transformed to an infinitesimal patch of area in the $w$-plane that's rescaled by a factor of $|dw/dz|^2$. Evidently, when $|dw/dz|^2 < 1$ this scaling is contracts the area element, and when $|dw/dz|^2 > 1$ it dilates the area element. Only in the special situation where $|dw/dz|^2 = 1$ does the area element stay the same, hence in general a conformal mapping is not area preserving (and hence not an orthogonal transformation).

Note that as with all area elements, this scale factor only says how infinitesimal patches of areas change under transformation, not how larger patches of areas change. One needs to integrate the area element over a region to see how its area changes.


