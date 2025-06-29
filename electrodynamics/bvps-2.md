# Boundary Value Problems II

In this chapter, we continue on with our discussion of boundary value problems in electrostatics. In the previous chapter we examined solution methods to the inhomogeneous Poisson equation subject to boundary conditions, particularly through the use of Green's functions and the method of images. In this chapter we will focus on solution methods to the homogeneous Laplace equation, which is used for boundary value problems where no charges lie inside the boundary surface. The primary solution method we will examine to solve these problems is the powerful separation of variables method.

## Laplace Equation

In general, the potential for some arbitrary charge distribution $\rho(\mathbf{x})$ inside a boundary region $\mathcal{V}$ is given by the Poisson equation
$$
\nabla^2 \phi(\mathbf{x}) = -4\pi\rho(\mathbf{x}) \ .
$$
We saw in the previous chapter that the formal, general solution to a Poisson BVP is given by the integral
$$
\phi(\mathbf{x}) = \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') \mathcal{G}(\mathbf{x}, \mathbf{x}') + \frac{1}{4\pi} \oint_\mathcal{S} da' \ \bigg[\mathcal{G}(\mathbf{x}, \mathbf{x}') \frac{\partial}{\partial n'} \phi(\mathbf{x}') - \phi \frac{\partial}{\partial n'} \mathcal{G}(\mathbf{x}, \mathbf{x}') \bigg] \ ,
$$
where $\mathcal{G}(\mathbf{x}, \mathbf{x}')$ is the generalized Green's function satisfying the Green's function PDE
$$
\nabla^2 \mathcal{G}(\mathbf{x}, \mathbf{x}') = -4\pi\delta(\mathbf{x} - \mathbf{x}')
$$
inside $\mathcal{V}$, and on the boundary surface $\mathcal{S}$ satisfies $\mathcal{G}(\mathbf{x}, \mathbf{x}') = 0$ for Dirichlet boundary conditions, or $\mathcal{G}(\mathbf{x}, \mathbf{x}') = -4\pi/S$ for Neumann boundary conditions, where $S$ is the surface area of the boundary surface $\mathcal{S}$.

If there are no charges inside the boundary region, the Poisson equation reduces to the simpler *Laplace equation* inside $\mathcal{V}$,
$$
\nabla^2 \phi(\mathbf{x}) = 0 \ .
$$
In this special case, the volume integral term vanishes in the formal solution, leaving only the surface integral terms
$$
\phi(\mathbf{x}) = \frac{1}{4\pi} \oint_\mathcal{S} da' \ \bigg[\mathcal{G}(\mathbf{x}, \mathbf{x}') \frac{\partial}{\partial n'} \phi(\mathbf{x}') - \phi(\mathbf{x}') \frac{\partial}{\partial n'} \mathcal{G}(\mathbf{x}, \mathbf{x}') \bigg] \ .
$$
We will now analyze some of the properties of solutions to Laplace's equation, and later look at ways to find them.

### Harmonic Functions

Solutions to Laplace's equation are known as *harmonic functions*. We say a function $\phi(\mathbf{x})$ is *harmonic* inside some region $\mathcal{V}$ provided it satisfies Laplace's equation $\nabla^2 \phi(\mathbf{x}) = 0$ everywhere inside $\mathcal{V}$. Harmonic functions turn out to have several interesting properties, some of which we will now briefly describe.

We can think of harmonic functions as generalizations of 1-dimensional *affine functions*, i.e. functions of the form $f(x) = a x + b$. Geometrically, affine functions represent lines in the plane, reducing to linear functions $f(x) = a x$ when $b = 0$. It's easy to see that affine functions trivially satisfy the following properties:

- *Maximum Principle*: The maximum of $f(x)$ inside any closed interval will always occur at one of the endpoints of the interval. When $a < 0$ the maximum will occur at the left endpoint, and when $a > 0$ it will occur at the right endpoint. The minimum will similarly occur at the opposite endpoint. In the special case where $a = 0$, all points in the closed interval are both maxima and minima, including the endpoints.

- *Mean Value Property*: At any point $x$, the value of $f(x)$ at that point is the average of the value of the endpoints of any closed interval centered at $x$. That is, for any $d \geq 0$ we have
  $$
  f(x) = \frac{f(x - d) + f(x + d)}{2} \ .
  $$

- *Liouville Property*: The only *bounded* affine function on the real line is the constant function $f(x) = b$. If $a \neq 0$, an affine function will always satisfy $|f(x)| \to \infty$ as $|x| \to \infty$, resulting in an unbounded function.
- *Geodesic Property*: An affine function between any two points in the plane is the minimal curve connecting the two points. That is, the shortest distance between any two points in the plane is a straight line.

Harmonic functions are a higher-dimensional generalization of affine functions in this sense. Suppose $\phi(\mathbf{x})$ is harmonic inside some region $\mathcal{V}$, where $\mathcal{V}$ is bounded by some closed surface $\mathcal{S}$. Then one can show that $\phi(\mathbf{x})$ satisfies the following properties:

- *Maximum Principle*: The maximum (and minimum) of $\phi(\mathbf{x})$ must always occur on $\mathcal{S}$. That is, the maximum (and minimum) of a harmonic function will always occur on the boundary surface. Only when $\phi(\mathbf{x})$ is constant will the maximum also occur inside the region $\mathcal{V}$, in which case it will trivially occur at every point inside $\mathcal{V}$ and on $\mathcal{S}$.

- *Mean Value Property*: At any point $\mathbf{x}$ inside $\mathcal{V}$, the value of $\phi(\mathbf{x})$ at that point will always be the average value of $\phi(\mathbf{x})$ along any spherical surface centered at $\mathbf{x}$. That is, for any sphere of radius $R$ centered at $\mathbf{x}$, $\phi(\mathbf{x})$ must satisfy
  $$
  \phi(\mathbf{x}) = \frac{1}{4\pi} \oint d\Omega' \ \phi(\mathbf{x}') \ .
  $$
  



Harmonic Functions

Any function $\phi(\mathbf{x})$ satisfying Laplace's equation $\nabla^2 \phi(\mathbf{x}) = 0$ is called a *harmonic function*. We can think of harmonic functions as a kind of higher-dimensional generalization of affine functions $f(x) = a x + b$. In one dimension, the Laplacian $\nabla^2$ reduces to the ordinary second derivative $d^2/dx^2$, and only affine functions satisfy Laplace's equation $d^2 /dx^2 f(x) = 0$ in one dimension.



All of these properties turn out to hold for higher-dimensional harmonic functions as well. We'll focus on three dimensions here. In three dimensions we state the above properties as follows:

- Maximum Principle: Inside any closed region, the maximum (and minimum) value of any harmonic function $\phi(\mathbf{x})$ will always occur along the boundary of that region.

- Mean Value Property: At any point $\mathbf{x}$, the value of a harmonic function $\phi(\mathbf{x})$ at that point is equal to the average value of $\phi(\mathbf{x})$ on any sphere centered at that point. That is, for any sphere of radius $R$ centered at $\mathbf{x}$ we have

- Liouville's Property: The only bounded harmonic function in 3-dimensional space is a constant function. That is, either $|\phi(\mathbf{x})| \to \infty$ as $r \to \infty$ or $\phi(\mathbf{x})$ is constant.

Let's quickly prove these. Suppose $\phi(\mathbf{x})$ is harmonic inside some region $\mathcal{V}$ bounded by a surface $\mathcal{S}$, so $\nabla^2 \phi(\mathbf{x}) = 0$ in $\mathcal{V}$.



- Prove: The "soap film" fact about harmonic functions: A harmonic function that's constant on a boundary curve is the surface of minimum surface area connecting the curve. See ChatGPT. Minimizing the electrostatic energy as a functional results in an Euler-Lagrange equation that's just Laplace's equation subject to the boundary conditions. Correct statement is thus that the solution to Laplace's equation is the "minimum energy potential" that fits the boundary conditions.

- Prove: Given two points, choose two balls with the given points as centers and of equal radius. If the radius is large enough, the two balls will coincide except for an arbitrarily small proportion of their volume. Since *f* is bounded, the averages of it over the two balls are arbitrarily close, and so *f* assumes the same value at any two points.
- The descriptor "harmonic" in the name "harmonic function" originates from a point on a taut string which is undergoing [harmonic motion](https://en.wikipedia.org/wiki/Simple_harmonic_motion). The solution to the differential equation for this type of motion can be written in terms of sines and cosines, functions which are thus referred to as "harmonics." [Fourier analysis](https://en.wikipedia.org/wiki/Fourier_analysis) involves expanding functions on the unit circle in terms of a series of these harmonics. Considering higher dimensional analogues of the harmonics on the unit [*n*-sphere](https://en.wikipedia.org/wiki/N-sphere), one arrives at the [spherical harmonics](https://en.wikipedia.org/wiki/Spherical_harmonics). These functions satisfy Laplace's equation and, over time, "harmonic" was [used to refer to all](https://en.wikipedia.org/wiki/Synecdoche) functions satisfying Laplace's equation.
- You may need to abandon this or move it, since some of the proofs assume things we haven't yet covered (multipole expansion or Green's third identity, i.e. the "surface term" of the formal solution).



### General Problem

Another way we can proceed is to solve Poisson's equation directly using standard PDE methods. Suppose we have a linear PDE of the form
$$
\mathcal{L} \phi(\mathbf{x}) = f(\mathbf{x}) \ ,
$$
where $\mathcal{L}$ is a linear partial differential operator and $f(\mathbf{x})$ is some source term, e.g. the charge density $\rho(\mathbf{x})$. We assume that some set of boundary conditions may be given implicitly.

When we say $\mathcal{L}$ is a linear operator, we mean that for any two functions $\phi_1(\mathbf{x})$ and $\phi_2(\mathbf{x})$ and constants $\alpha$ and $\beta$, we have 
$$
\mathcal{L} \big(\alpha\phi_1(\mathbf{x}) + \beta\phi_2(\mathbf{x})\big) = \alpha\mathcal{L} \phi_1(\mathbf{x}) + \beta\mathcal{L} \phi_2(\mathbf{x}) \ .
$$
Linearity means we can compose solutions to a linear PDE using the principle of superposition. In fact we can say more than this. The theory of linear PDEs guarantees that we can solve *any* linear PDE by finding two solutions of a particular kind and summing them together:

- A general *homogeneous solution* $\phi_h(\mathbf{x})$ that solves the homogeneous PDE $\mathcal{L} \phi_h(\mathbf{x}) = 0$ subject to the boundary conditions.
- A *particular solution* $\phi_p(\mathbf{x})$ that solves the inhomogeneous PDE $\mathcal{L} \phi_p(\mathbf{x}) = f(\mathbf{x})$ in the absence of boundary conditions.

Provided we can find these two solutions, the most general solution to $\mathcal{L} \phi(\mathbf{x}) = f(\mathbf{x})$ can be written in the form
$$
\phi(\mathbf{x}) = \phi_h(\mathbf{x}) + \phi_p(\mathbf{x}) \ .
$$
All of the PDEs we'll see in electromagnetism, and indeed in most of physics, turn out to be linear second-order PDEs. The most general spatial second-order linear partial differential operator we can write down is a linear superposition of first and second partial derivatives, plus an ordinary function. We can write this with summation notation in the form
$$
\mathcal{L} = a_{ij}(\mathbf{x}) \frac{\partial^2}{\partial x_i \partial x_j} + b_i(\mathbf{x}) \frac{\partial}{\partial x_i} + c(\mathbf{x}) \ .
$$
In particular, we can see that the Laplacian $\nabla^2$ is a linear operator if we take $a_{ij} = \delta_{ij}$ and $b_i = c = 0$. This means we can solve Poisson's equation in the way specified before, by finding a homogeneous solution that solves Laplace's equation subject to the boundary conditions, and a particular solution that solves Poisson's equation with a given charge density $\rho(\mathbf{x})$.

For a localized charge distribution, we already know how to find the particular solution via the integral
$$
\phi_p(\mathbf{x}) = \int d^3 \mathbf{x}' \ \frac{\rho(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
This means to solve the general PDE we only need to find the homogeneous solution $\phi_h(\mathbf{x})$ that solves Laplace's equation $\nabla^2 \phi_h = 0$ subject to the given boundary conditions, and we'll have a general solution to Poisson's equation subject to those boundary conditions.

Notice how similar this looks to the formal solution approach we took before using Green's functions. In fact the two approaches are completely equivalent, as they should be. Recall the formal solution could be written
$$
\phi(\mathbf{x}) = \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') G(\mathbf{x} - \mathbf{x}') + \frac{1}{4\pi} \oint_\mathcal{S} da' \ \bigg[G \frac{\partial \phi}{\partial n'} - \phi \frac{\partial G}{\partial n'} \bigg] \ ,
$$
where the Green's function is given by
$$
G(\mathbf{x} - \mathbf{x}') = \frac{1}{|\mathbf{x} - \mathbf{x}'|} + F(\mathbf{x} - \mathbf{x}') \ .
$$
The first integral is just the particular solution $\phi_p(\mathbf{x})$. The second integral is in fact the homogeneous solution $\phi_h(\mathbf{x})$, which is evidently closely related to the homogeneous part of the Green's function, $F(\mathbf{x} - \mathbf{x}')$.

Since we know how to find the particular solution, what remains is finding the homogeneous solution. This involves solving Laplace's equation subject to the given boundary conditions. This is what the rest of this chapter will focus on.

## Separation of Variables

The most popular technique for solving linear PDEs analytically is the *separation of variables* method. Suppose we have an arbitrary homogeneous linear PDE of the form
$$
\mathcal{L} \phi(\mathbf{x}) = 0 \ .
$$
The separation of variables of variable method works exactly as the name suggests. We first assume that in some coordinate system $(u,v,w)$ that $\phi(\mathbf{x})$ can be written as a trial solution that's a product of univariate functions of only those coordinates,
$$
\phi(\mathbf{x}) = U(u) V(v) W(w) \ .
$$
Provided the linear operator $\mathcal{L}$ in this coordinate system can be separated into linear operators acting only on these variables alone, i.e. $\mathcal{L} = \mathcal{L}_u + \mathcal{L}_v + \mathcal{L}_w \ $, we can plug this trial solution in and divide by $UVW$ and write
$$
\frac{1}{U(u)}\mathcal{L}_u U(u) + \frac{1}{V(v)}\mathcal{L}_v V(v) + \frac{1}{W(w)}\mathcal{L}_v W(w) = 0 \ .
$$
Now, notice we have an equation of the form
$$
f(u) + g(v) + h(w) = 0 \ .
$$
Since each of these functions is an independent function of its own coordinate, the only way their sum can be zero for all possible $u,v,w$ is if each of these functions is constant and those constants all sum to zero, i.e.
$$
f(u) = \alpha \ , \ g(v) = \beta \ , \ h(w) = \gamma \ , \ \alpha + \beta + \gamma = 0 \ .
$$
That is, we must have three coupled ordinary differential equations of the form
$$
\begin{align*}
&\mathcal{L}_u U(u) = \alpha U(u) \ , \\
&\mathcal{L}_v V(v) = \beta V(v) \ , \\
&\mathcal{L}_w W(w) = \gamma W(w) \ , \\
&\alpha + \beta + \gamma = 0 \ .
\end{align*}
$$
All that remains now is to solve each of these ODEs and impose the boundary conditions. Provided we can find a set of three functions $U,V,W$ that solve these ODEs as well as the boundary conditions, we can reassemble them to get the full solution.

Those that have read the appendix will notice that each of these differential equations is an eigenvalue problem with eigenvalues $\alpha$, $\beta$, and $\gamma$ respectively. Typically one or more of the separation constants will end up being quantized in terms of an integer whose eigenfunctions form a complete orthonormal set inside the boundary region. For example, we may end up with a set of three quantized differential equations of the form
$$
\begin{align*}
&\mathcal{L}_u U_n(u) = \alpha_n U_n(u) \ , \\
&\mathcal{L}_v V_m(v) = \beta_m V_m(v) \ , \\
&\mathcal{L}_w W_k(w) = \gamma_k W_k(w) \ , \\
&\alpha_n + \beta_m + \gamma_k = 0 \ ,
\end{align*}
$$
where $n,m,k$ are integers. The product of $U_n, V_m, W_k$ will then give rise to a basis solution of the form
$$
\phi_{nmk}(u,v,w) = U_n(u) V_m(v) W_k(w) \ .
$$
Since $U_n(u)$, $V_m(v)$, and $W_k(w)$ are each complete sets of orthogonal functions on their own intervals, $\phi_{nmk}$ will also form a complete set of orthogonal functions in 3-dimensional space. To get the most general solution that solves the boundary value problem, we can use the principle of superposition to sum over a weighted combination of these basis functions to get
$$
\phi(\mathbf{x}) = \sum_{n,m,k} c_{nmk} \phi_{nmk}(u,v,w) \ .
$$
At this point there will be one more boundary condition left that we still need to satisfy, usually that the potential needs to equal some known function $f$ on one of the boundaries. We can use this last boundary condition along with the orthogonality of the basis functions to determine the coefficients $c_{nmk}$. Once we find these coefficients we'll have the general solution to the boundary value problem. 

In this chapter we'll only be concerned with solving Laplace's equation, where $\mathcal{L} = \nabla^2$. In this case, we can guarantee by the uniqueness theorem that once we find the general solution that fits the boundary conditions that it will be unique, provided the boundary conditions are Dirichlet, Neumann, or mixed, which in practice they always will be.

This process will be much easier to illustrate by looking at specific problems. We'll do that first by considering Laplace's equation in Cartesian coordinates, before looking at Laplace's equation in spherical and cylindrical coordinates as well. By the end, the process of how to use separation of variables to find the general solution should hopefully be quite clear.

### Separation of Variables in Cartesian Coordinates

We'll now turn our focus to solving Laplace's equation $\nabla^2 \phi(\mathbf{x}) = 0$ using separation of variables, subject to either Dirichlet, Neumann, or mixed boundary conditions. Since the Laplacian looks different in different coordinate systems, we'll need separate variables and solve this PDE in different coordinate systems of interest, i.e. Cartesian, spherical, and cylindrical coordinates.

We start with the simplest case of solving Laplace's equation in Cartesian coordinates $(x,y,z)$. In this coordinate system the Laplacian has an especially simple form, with
$$
\nabla^2 \phi = \frac{\partial^2 \phi}{\partial x^2} + \frac{\partial^2 \phi}{\partial y^2} + \frac{\partial^2 \phi}{\partial z^2} \ .
$$
To match with the general setup from before, we can take $\mathcal{L} = \nabla^2$, $\mathcal{L}_x = \partial_x^2$, $\mathcal{L}_y = \partial_y^2$, and $\mathcal{L}_z = \partial_z^2$.

We now apply the separation of variables by supposing a trial solution exists of the form
$$
\phi(\mathbf{x}) = X(x) Y(y) Z(z) \ .
$$
Plugging this into Laplace's equation and dividing by $\phi = XYZ$, we get
$$
0 = \frac{1}{X} \frac{d^2 X}{dx^2} + \frac{1}{Y} \frac{d^2 Y}{dy^2} + \frac{1}{Z} \frac{d^2 Z}{dz^2} \ .
$$
Again, since each term is a function of its own variable, the only way this equation can be satisfied for all coordinate values is if each term is constant, and those constants sum to zero. This gives us three coupled ordinary differential equations of the form
$$
\begin{align*}
&\frac{d^2 X}{dx^2} = \alpha_x X \ , \\
&\frac{d^2 Y}{dy^2} = \alpha_y Y \ , \\
&\frac{d^2 Z}{dz^2} = \alpha_z Z \ , \\
&\alpha_x + \alpha_y + \alpha_z = 0 \ .
\end{align*}
$$
Notice that we now have three uncoupled linear ordinary second differential equations to solve, which can be easily done once we know the boundary conditions. Once we've solved these equations, we can stitch them back together to get the general solution for the potential $\phi(\mathbf{x})$.

At this point it will be easiest to proceed by illustrating this technique with a simple example, since to go any further we need to impose some boundary conditions. We'll consider a simple 2-dimensional problem involving only $x$ and $y$. Suppose we have two grounded parallel conducting sheets separated by a distance $L$. On one end, the two sheets are separated with insulating material from a perpendicular third conducting sheet held at a constant potential $V$, while on the other end the two parallel sheets extend infinitely far.

FIGURE

We'll assume the sheets are oriented parallel to the $xz$-plane and separated along the $y$-axis from $y=0$ to $y=L$. This means the sheet is held at constant potential $\phi = V$ at $x=0$, and at $\phi = 0$ when $y=0$ or $y=L$. We will require that the potential not blow up at infinity as well. Assuming there are no other source charges present, this means we have the following Dirichlet boundary value problem to solve,
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi = 0 \ , \\
\text{where} \ \phi(0,y) = V \ , \\
\phi(x,0) = \phi(x,L) = 0 \ .
\end{cases}
\end{align*}
$$
We will also require that the potential stay finite inside the boundary region. We will always assume this finiteness condition implicitly unless specified otherwise. Now we can employ separation of variables. Suppose a trial solution of the form
$$
\phi(x,y) = X(x) Y(y) Z(z) \ . 
$$
We neglect the $z$ coordinate since it isn't contributing anything to the problem, so we can just set $Z(z) = 1$ and focus on the remaining functions $X(x)$ and $Y(y)$.

Now, if we plug this trial solution into Laplace's equation, we find the problem reduces to solving two coupled ODEs,
$$
\frac{1}{X} \frac{d^2 X}{dx^2} = \alpha \quad , \quad \frac{1}{Y} \frac{d^2 Y}{dy^2} = \beta \quad , \quad \alpha + \beta = 0 \ .
$$
Now, since we only have two separation constants $\alpha$ and $\beta$, and those constants must add to zero, we immediately have that $\beta = -\alpha$. This means we can work in terms of a single separation constant $\alpha$. We'll suppose that $\alpha = k^2$ for some $k > 0$. This then gives us the following two ODEs to solve subject to the boundary conditions,

$$
\frac{d^2 X}{dx^2} = k^2 X \quad , \quad \frac{d^2 Y}{dy^2} = -k^2 Y \ .
$$
The first equation must satisfy the boundary conditions that $X(x)$ is finite at infinity, and $X(0) = V$. The second equation must satisfy the boundary conditions $Y(0) = Y(L) = 0$.

The general solution for the first equation is given by
$$
X(x) = A e^{kx} + B e^{-kx} \ .
$$
If we impose the condition that $X(x)$ not blow up at infinity, then we must choose $A=0$ so that the first term vanishes. Then
$$
X(x) = B e^{-kx} \ .
$$
We still need to impose the boundary condition $X(0) = V$. We'll come back to this at the end.

For the second equation, we know we can express its general solution in the form
$$
Y(y) = C \cos ky + D \sin ky \ .
$$
This solution has to satisfy the boundary conditions $Y(0) = Y(L) = 0$. Plugging in the first condition requires $C=0$. Plugging in the second condition, we're left with
$$
Y(y) = D \sin kL = 0 \ .
$$
The only way this can be true is if either $D=0$ or $kL$ is an integer multiple of $\pi$. If $D=0$ we get nowhere, since that would give the trivial solution $Y(y) = 0$. We're thus left to impose the second condition. Suppose $kL = \pi n$ for some positive integer $n$. This implies that $k$ must be *quantized* as a function of $n$, with
$$
k_n = \frac{n\pi}{L} \quad , \quad n=1,2,3,\cdots \ .
$$
Now, each choice of $k_n$ will give rise to its own solution $Y_n(y) = D_n \sin k_n y$ that solves the differential equation
$$
\frac{d^2 Y_n}{dy^2} = -k_n^2 Y_n
$$
So which $Y_n(y)$ do we choose? In fact we'll want to keep all of them, since *any* choice of these functions will satisfy Laplace's equation, albeit with different separation constants. We don't care about the separation constants. We care about the general solution to Laplace's equation. To get the general solution, we use the fact that each $Y_n(y)$ are just the Fourier sine functions. This means they will be orthogonal, and we can represent any general solution $Y(y)$ as a linear superposition of $Y_n(y)$. This means the general solution $Y(y)$ will be a real *Fourier series*. 

Instead of applying superposition now though, we typically want to do it to the full potential. Notice that if we quantize $k$ that $X(x)$ now also becomes an infinitely family of solutions as well, with $X_n(x) = B_n e^{-k_n x}$. If we now multiply $X_n(x)$ and $Y_n(y)$ back together, we get a *basis solution* $\phi_n(x,y,z)$ that solves Laplace's equation subject to these boundary conditions. We'll ignore the integration constants, which we'll put back in a moment, and define the basis functions by
$$
\phi_n(x,y,z) \equiv e^{-k_n x} \sin k_n y \ .
$$
By construction $\phi_n(x,y,z)$ will solve Laplace's equation subject to all boundary conditions except one, that $\phi_n(0,y,z) = V$. The only way we can *also* satisfy this boundary condition is to use the principle of superposition to take a weighted sum over all of these basis functions to get the most general possible expression for the potential,
$$
\phi(x,y,z) = \sum_{n=1}^\infty b_n \phi_n(x,y,z) \ .
$$
Now, at this point we have one boundary condition to satisfy, and an infinite set of coefficients $b_n$ to determine. Here we appeal to the property of orthogonality. Observe that when $x=0$ we must have
$$
V = \phi(0,y,z) = \sum_{n=1}^\infty b_n \sin k_n y \ .
$$
We know from the appendix that the functions $\sin k_n y$ will be orthogonal on the interval $0 \leq y \leq L$. That is, we know that when $m \neq n$ we must have
$$
\langle \sin k_m y | \sin k_n y \rangle = \int_0^L dy \ \sin k_m y \sin k_n y = 0 \ .
$$
This is called an *inner product*. Similar to how we can define a dot product between two vectors, we can define an inner product between two functions. We say two functions $f$ and $g$ are orthogonal provided $\langle f | g \rangle = 0$.

To see what this implies, let's multiply both expressions for $\phi(0,y,z)$ by $\sin k_m y$ and integrate from $y=0$ to $y=L$. That is, we want to take the inner product of both sides and solve $\langle \sin k_m y | V \rangle = \langle \sin k_m | \sin k_n y \rangle$. Plugging in $k_m = \frac{2\pi}{L}$, we see that
$$
\langle \sin k_m y | V \rangle = \int_0^L dy \ V \sin \frac{m\pi y}{L} = \frac{VL}{m\pi}(1-\cos m\pi) \ .
$$
Evaluating the second inner product, we get
$$
\begin{align*}
\bigg\langle \sin k_m \bigg| \sum_{n=1}^\infty b_n \sin k_n y \bigg\rangle &= \sum_{n=1}^\infty b_n \int_0^L dy \ \sin\frac{m\pi y}{L} \sin\frac{n\pi y}{L} \\
&= \sum_{n=1}^\infty b_n \frac{L}{2} \delta_{nm} \\
&= \frac{L}{2} b_m \ .
\end{align*}
$$
Notice that we in fact didn't need to take $m$ different from $n$ in these inner products. We already knew the sine functions would be orthogonal. We could have just taken the inner products with $\sin k_n y$ directly. In fact, we could've calculate the coefficients $b_n$ directly by using the formula
$$
b_n = \frac{\langle \sin k_n y | V \rangle}{\langle \sin k_n y | \sin k_n y \rangle} \ .
$$
At any rate, these two inner product expressions together give us an equation for each $b_n$. We evidently have

$$
b_n = \frac{2V}{n\pi} (1 - \cos n\pi) \ .
$$
Before plugging this back into the general solution we can simplify it a little bit. Notice that $\cos n\pi$ will be $+1$ when $n$ is an even number, and $-1$ when $n$ is an odd number. In the even case we get $b_n = 0$ since each term cancels, while in the odd case we get
$$
b_n = \frac{4V}{n\pi} \quad , \quad n=1,3,5,\cdots \ .
$$
This means the series expansion for the potential will contain only odd terms, with
$$
\phi(\mathbf{x}) = \frac{4V}{\pi} \sum_{n=1,3,5,\cdots}^\infty \frac{1}{n} e^{-k_n x} \sin k_n y \ .
$$
This expression is the most general form we can write down to the potential for this boundary value problem. By construction it satisfies all of the boundary conditions, which means by the uniqueness theorem it will be the only such solution that does.

If we like, we can further simplify this expression further by noting that the sum on the right-hand side has a closed form given by
$$
\phi(\mathbf{x}) = \frac{2V}{\pi} \tan^{-1} \bigg(\frac{\sin k_n y}{\sinh k_n x}\bigg) \ .
$$
Since this potential is only a function of two variables, we can plot its equipotentials with a contour plot in the $xy$-plane. In the $x$-direction, the potential is highest at $x=0$, where $\phi(0,y)=V$ before dying off exponentially as $x \rightarrow \infty$. In the $y$-direction, the potential goes to zero at the endpoints $y=0$ and $y=L$, and hits its maximum at the midpoint $y=\frac{L}{2}$.

FIGURE

This in essence is how separation of variables works in Cartesian coordinates. We will always end up with a potential that's a linear superposition of exponentials and sinusoid functions, where the expansion coefficients are determined by imposing a final boundary condition of some type. Let's work a few more complex examples to solidify the idea.

##### Example: Infinite conducting rectangular pipe held at a given potential on one end

Let's now consider a slight generalization of the previous problem. Suppose we have a rectangular infinitely long conducting pipe. One end of the pipe is held at some potential $V(y,z)$, while the other end extends infinitely far. Suppose the pipe has a finite width $a$ and a finite depth $b$, and the sides of the pipe are grounded. We want to find the potential inside the pipe.

We'll orient the pipe exactly like we did in the previous problem, with the length along the $x$-axis, and the width and depth along the $y$ and $z$ axes. At $x=0$ the potential is held constant, with $\phi(0,y,z)=V(y,z)$. At $y=0$ and $y=a$, and at $z=0$ and $z=b$, the pipe is grounded, with $\phi(x,0,z) = \phi(x,b,z) = \phi(x,y,0) = \phi(x,y,b) = 0$. We'll also require that $\phi$ not blow up at infinity.

FIGURE

This means we end up with a Dirichlet boundary value problem to solve of the form
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi = 0 \ , \\
\text{where} \ \phi(0,y,z) = V(y,z) \ , \\
\phi(x,0,z) = \phi(x,a,z) = 0 \ , \\
\phi(x,y,0) = \phi(x,y,b) = 0 \ .
\end{cases}
\end{align*}
$$
We again employ separation of variables by assuming a trial solution of the form

$$
\phi(x,y,z) = X(x) Y(y) Z(z) \ .
$$
This time we can't set $Z(z) = 1$, meaning we'll end up with three ODEs to solve instead of two. We end up with
$$
\frac{1}{X} \frac{d^2 X}{dx^2} = \alpha \quad , \quad \frac{1}{Y} \frac{d^2 Y}{dy^2} = \beta \quad , \quad \quad \frac{1}{Y} \frac{d^2 Z}{dz^2} = \gamma \quad , \quad \alpha + \beta + \gamma = 0 \ .
$$
At this point it's not obvious what signs to choose for these constants. As a general rule of thumb though, if there's an unbounded coordinate in the problem (in this case $x$) we want that coordinate to have a positive constant. Any coordinates that have fixed boundary conditions on both ends (in this case $y$ and $z$) we'll want to have negative constants. To that end, we'll assume that $\beta = -k^2$ and $\gamma = -\ell^2$ are both negative, which luckily forces $\alpha = \sqrt{k^2 + \ell^2}$ to be positive.

This then leaves us with three differential equations to solve of the form
$$
\frac{d^2 X}{dx^2} = (k^2+\ell^2) X \quad , \quad \frac{d^2 Y}{dy^2} = -k^2 Y \quad , \quad \frac{d^2 Z}{dz^2} = -\ell^2 Z \ .
$$
The equation for $X(x)$ must satisfy the boundary conditions that $X(x)$ is finite at infinity, and $X(0) = V(y,z)$. The first condition will force $X(x)$ be given by a negative exponential, and the second condition we'll have to come back to at the end. We have
$$
X(x) = C e^{-\sqrt{k^2+\ell^2}x} \ .
$$
The equations for $Y(y)$ and $Z(z)$ are identical apart for their separation constants and their endpoints. Requiring that $Y(y)$ vanish at $y=0$ and $y=a$ forces $k$ to be quantized in terms of an integer $n$, with $k_n = \frac{n\pi}{a}$. Similarly, requiring that $Z(z)$ vanish at $z=0$ and $z=b$ forces $\ell$ to be quantized in terms of another integer $m$, with $\ell_m = \frac{m\pi}{b}$. In each case, we'll have a basis of sinusoid solutions of the form
$$
Y_n(y) = A_n \sin k_n y \quad , \quad Z_m(z) = B_n \sin \ell_m z \ .
$$
As in the previous example, each of these functions forms a set of complete orthogonal functions on their respective intervals. Now, since $X(x)$ depends on both $k$ and $\ell$, its set of solutions will now depend on both $n$ and $m$, with
$$
X_{nm}(x) = C e^{-\sqrt{k_n^2+\ell_m^2}x} \ .
$$
This means we can construct the general solution for the potential by multiplying each of these solutions together to get a basis function for the potential, which we can superpose with each other to get the general solution. Again ignoring the integration constants, which we'll put back in soon, we define basis functions of the form
$$
\phi_{nm}(x,y,z) \equiv e^{-\sqrt{k_n^2+\ell_m^2}x} \sin k_n y \sin \ell_m z \ .
$$
Now, none of these solutions satisfies the final boundary condition that $\phi(0,y,z) = V(y,z)$. This means we need to consider a more general class of solutions. We again do that by appealing to the principle of superposition. This time though we need to sum over both $n$ and $m$ to get the most general possible solution,
$$
\phi(x,y,z) = \sum_{n=1}^\infty \sum_{m=1}^\infty b_{nm} \phi_{nm}(x,y,z) \ .
$$
We'll now impose the final boundary condition and use that to find the expansion coefficients $b_{nm}$. Plugging in the final condition $V(y,z) = \phi(0,y,z)$ to the general solution evaluated at $x=0$, we get
$$
V(y,z) = \phi(0,y,z) = \sum_{n=1}^\infty \sum_{m=1}^\infty b_{nm} \sin k_n y \sin \ell_m z \ .
$$
To find the coefficients, we now appeal to the fact that the set of functions $\sin k_n y$ and $\sin \ell_m z$ are each orthogonal on their respective intervals. This means we can multiply both sides of this equation by $\sin k_{n'} y \ \sin \ell_{m'} z$ and integrate over both $y$ and $z$ to get
$$
\int_0^a dy \int_0^b dz \ V(y,z) \sin k_{n'} y \ \sin \ell_{m'} z = \sum_{n=1}^\infty \sum_{m=1}^\infty b_{nm} \int_0^a dy \int_0^b dz \ \sin k_n y \sin \ell_m z \sin k_{n'} y \ \sin \ell_{m'} z \ .
$$
On the right-hand side, we see that the integrals separate into a product of two univariate integrals, giving
$$
\begin{align*}
\sum_{n,m} b_{nm} \int_0^a dy \int_0^b dz \ \sin k_n y \sin \ell_m z \sin k_{n'} z \ \sin \ell_{m'} y 
&= \sum_{n,m} b_{nm} \bigg(\int_0^a dy \ \sin k_{n'} y \ \sin k_n y\bigg) \bigg(\int_0^b dz \ \sin \ell_m z \ \sin \ell_{m'} z\bigg) \\
&= \frac{a}{2} \frac{b}{2} \sum_{n,m} b_{nm} \delta_{nn'} \delta_{mm'} \\
&= \frac{ab}{4} b_{n'm'} \ .
\end{align*}
$$
For the left-hand side, we can't proceed any further without a specific form for $V(y,z)$. For the sake of argument we'll suppose that $V(y,z) = V$ is constant. In that case, the left-hand side evaluates to
$$
\begin{align*}
\int_0^a dy \int_0^b dz \ V(y,z) \sin k_{n'} y \ \sin \ell_{m'} z
&= V \int_0^a dy \ \sin k_{n'} y \int_0^b dz \ \sin \ell_{m'} z \\
&= V \frac{a}{n'\pi}(1-\cos n'\pi) \frac{b}{m'\pi}(1-\cos m'\pi) \\
&= \frac{Vab}{n'm' \pi^2} (1-\cos n'\pi) (1-\cos m'\pi) \ .
\end{align*}
$$
Putting these together, the coefficients $b_{nm}$ are evidently given by
$$
b_{nm} = \frac{4V}{nm\pi^2} (1-\cos n\pi) (1-\cos m\pi) \ .
$$
As with the previous example, $\cos n\pi$ will equal $+1$ when $n$ is even and $-1$ when $n$ is odd, and similarly for $\cos m\pi$. This means the coefficients will vanish if either $n$ or $m$ is even. The only terms that survive are when both are odd, with
$$
b_{nm} = \frac{16V}{nm\pi^2} \quad , \quad n,m = 1,3,5,\cdots \ .
$$
We've thus satisfied all the boundary conditions in the problem. According to the uniqueness theorem, plugging $b_{nm}$ back into the general solution will give the unique solution that solves this boundary value problem, with
$$
\phi(\mathbf{x}) = \frac{16V}{\pi^2} \sum_{n,m=1,3,5,\cdots} \frac{1}{nm} e^{-\sqrt{k_n^2+\ell_m^2}x} \sin k_n y \sin \ell_m z  \ .
$$
In this case there's no closed-form solution, so we're left with this series. Notice, though, that each term falls off quadratically. This means if we like we can get a reasonable approximation to this potential by keeping only the first few terms. Visualizing the equipotentials for this problem is more challenging since now we're faced with a 4-dimensional plotting situation, but we can still describe qualitatively what these equipotentials will look like. We expect that the potential will be highest at $x=0$ before falling off exponentially in that direction. On the other edges of the pipe the potential will vanish on both sides due to grounding, and will peak along the center-line of the pipe.

##### Example: Conducting rectangular box held at given potential on one end

Let's now consider a slight variation to the previous problem. Suppose we have a rectangular conducting box of finite extent in all directions. One of the sides of the box is held at some varying potential $V(y,z)$, while the other five sides of the box are grounded. Suppose the box has a width $a$ in the direction where the potential is ungrounded, a depth $b$, and a height $c$.

We'll orient the box exactly like we did in the previous problem, with the length along the $x$-axis, and the width and depth along the $y$ and $z$ axes. We'll assume the box is is ungrounded at $x=a$ with $\phi(a,x,y) = V(y,z)$, while the other sides are grounded. 

FIGURE

This gives us a Dirichlet BVP to solve of the form
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi = 0 \ , \\
\text{where} \ \phi(a,y,z) = V(y,z) \ , \\
\phi(0,y,z) = 0 \ , \\
\phi(x,0,z) = \phi(x,a,z) = 0 \ , \\
\phi(x,y,0) = \phi(x,y,b) = 0 \ .
\end{cases}
\end{align*}
$$
Since we confine ourselves to the inside of the box, we don't need to require that $\phi \rightarrow \infty$ as $|\mathbf{x}| \rightarrow \infty$.

If we apply separation of variables to this problem, we end up with three differential equations to solve of the form
$$
\frac{d^2 X}{dx^2} = (k^2+\ell^2) X \quad , \quad \frac{d^2 Y}{dy^2} = -k^2 Y \quad , \quad \frac{d^2 Z}{dz^2} = -\ell^2 Z \ .
$$
Notice that we skipped the step where we chose the signs of the separation constants. To give a brief justification for the above choice, notice that all coordinates are bounded in this problem. Two of the coordinates ($y$ and $z$) have vanishing potentials at both boundaries. For those it makes sense to choose negative constants so that we again get sinusoidal solutions, and can expand the general solution in terms of Fourier bases again. The final coordinate $x$ is then forced to have a positive separation constant. This will turn out to be a reasonable choice, as we'll see.

Now, the equations for $Y(y)$ and $Z(z)$ are exactly the same as they were in the previous problem. The boundary conditions force the constants $k$ and $\ell$ to be quantized in terms of integers $n$ and $m$, with $k_n = \frac{n\pi}{b}$ and $\ell_m = \frac{m\pi}{c}$. This means we end up with two infinite sets of basis functions of the form $Y_n(y) = \sin k_n y$ and $Z_m(z) = \sin \ell_m z$. Both sets of functions will be complete and orthogonal on their given intervals.

The equation for $X(x)$ again gives a general solution in terms of real exponentials, but this time we can't throw away one of them since $x$ is bounded as well in this problem. For each $n$ and $m$, we'll have a general solution of the form
$$
X_{nm}(x) = A_{nm} e^{\sqrt{k_n^2 + \ell_m^2} x} + B_{nm} e^{-\sqrt{k_n^2 + \ell_m^2} x} \ .
$$
Each of these functions must satisfy the boundary condition that $X_{nm}(0) = 0$. Plugging this in forces $B_{nm} = -A_{nm}$, giving
$$
X_{nm}(x) = A_{nm} \big(e^{\sqrt{k_n^2 + \ell_m^2} x} - e^{-\sqrt{k_n^2 + \ell_m^2} x}\big) = 2 A_{nm} \sinh \sqrt{k_n^2 + \ell_m^2} x \ .
$$
We can then combine each of these solutions together to get a basis of solutions for the potential, which we'll define by
$$
\phi_{nm}(x,y,z) \equiv \sinh \sqrt{k_n^2 + \ell_m^2} x \ \sin k_n y \ \sin \ell_m z \ .
$$
Now, we still have to fit the boundary condition that $\phi(a,y,z) = V(y,z)$. None of these basis functions solve this condition. This means we need to consider a more general solution by appealing to the principle of superposition to write
$$
\phi(x,y,z) = \sum_{n=1}^\infty \sum_{m=1}^\infty b_{nm} \phi_{nm}(x,y,z) \ .
$$
Fitting the final boundary condition will determine the expansion coefficients $b_{nm}$. Setting $x=a$ in the above solution, we get
$$
V(y,z) = \phi(a,y,z) = \sum_{n=1}^\infty \sum_{m=1}^\infty b_{nm} \sinh \sqrt{k_n^2 + \ell_m^2} a \ \sin k_n y \ \sin \ell_m z \ .
$$
We now again appeal to the fact that $\sin k_n y$ and $\sin \ell_m z$ each form an orthogonal set of functions, which means we can determine the expansion coefficients by taking inner products. Equivalently, we can determine $b_{nm}$ by multiplying both sides of the above equation by $\sin k_{n'} y \ \sin \ell_{m'} z$ and integrating over both $y$ and $z$ on their respective intervals. Using the previous example as a guide, it's not hard to see that the right-hand side will give
$$
\sum_{n,m} b_{nm} \sinh \sqrt{k_n^2 + \ell_m^2} a \int_0^b dy \int_0^c dz \ \sin k_n y \sin \ell_m z \sin k_{n'} z \ \sin \ell_{m'} y = \frac{bc}{4} \sinh \sqrt{k_{n'}^2 + \ell_{m'}^2} a \ b_{n'm'} \ .
$$
To evaluate the left-hand side we need a specific functional form for $V(y,z)$. Even so, we can formally express $b_{nm}$ in terms of an integral by using the previous expression to write
$$
b_{nm} = \frac{4}{bc} \frac{1}{\sinh \sqrt{k_n^2 + \ell_m^2} a} \int_0^b dy \int_0^c dz \ V(y,z) \sin k_n y \ \sin \ell_m z \ .
$$
Notice if we set $V(y,z)$ to a constant and integrate, we get a solution that looks identical to the solution in the previous problem, except with an extra hyperbolic sine factor included. In that simple case, we get
$$
\phi(\mathbf{x}) = \frac{16V}{\pi^2} \sum_{n,m=1,3,5,\cdots} \frac{1}{nm} \frac{\sinh \sqrt{k_n^2 + \ell_m^2} x}{\sinh \sqrt{k_n^2 + \ell_m^2} a} \sin k_n y \sin \ell_m z  \ .
$$
Again, the uniqueness theorem will guarantee that once we've found this solution, it will be unique.

## Separation of Variables in Spherical Coordinates

Applying separation of variables in Cartesian coordinates is pretty easy due to the fact that the Laplacian takes such a simple form. In curvilinear coordinates though it's not quite as easy, but it's still very useful to solve many interesting problems.

Suppose we now choose to work in spherical coordinates $(r,\theta,\varphi)$. In this coordinate system, the Laplacian is given by
$$
\nabla^2 \phi = \frac{1}{r^2} \frac{\partial}{\partial r} \bigg(r^2 \frac{\partial \phi}{\partial r}\bigg) + \frac{1}{r^2 \sin\theta} \frac{\partial}{\partial \theta} \bigg(\sin\theta \frac{\partial \phi}{\partial \theta}\bigg) + \frac{1}{r^2 \sin^2 \theta} \frac{\partial^2 \phi}{\partial \varphi^2} \ .
$$

To solve Laplace's equation we require that $\nabla^2 \phi = 0$. If we multiply both sides by $r^2$ we end up with
$$
\frac{\partial}{\partial r} \bigg(r^2 \frac{\partial \phi}{\partial r}\bigg) + \frac{1}{ \sin\theta} \frac{\partial}{\partial \theta} \bigg(\sin\theta \frac{\partial \phi}{\partial \theta}\bigg) + \frac{1}{\sin^2 \theta} \frac{\partial^2 \phi}{\partial \varphi^2} = 0 \ .
$$
Notice this equation isn't completely separated yet since the last term still depends on $\theta$. As is convention, we'll handle the special situation of azimuthal symmetry before proceeding to study the general case.

#### Azimuthally Symmetric Potentials

For problems with azimuthal symmetry the potential depends only on $r$ and $\theta$, not on $\varphi$. An example of this type of situation might be a conducting sphere held at a fixed potential, or a potential with only a polar dependence, say $\phi = V(\theta)$ on the surface. For problems like this we can ignore the $\varphi$ derivatives in Laplace's equation and write
$$
\frac{\partial}{\partial r} \bigg(r^2 \frac{\partial \phi}{\partial r}\bigg) + \frac{1}{ \sin\theta} \frac{\partial}{\partial \theta} \bigg(\sin\theta \frac{\partial \phi}{\partial \theta}\bigg) = 0 \ .
$$
This equation is clearly separable in $r$ and $\theta$, so we can proceed as usual. Assume a trial solution of the form
$$
\phi(\mathbf{x}) = R(r) \Theta(\theta) \ .
$$
Plugging this into the previous equation and dividing by $R\Theta$, we get
$$
0 = \frac{1}{R} \frac{d}{dr} \bigg(r^2 \frac{dR}{dr}\bigg) + \frac{1}{\Theta} \frac{1}{\sin\theta} \frac{d}{d\theta} \bigg(\sin\theta \frac{dY}{d\theta}\bigg) \ .
$$
Since each term is an independent function in its own variable, the only way their sum can vanish for all $r,\theta$ is the two terms are equal to a constant if opposite sign. We'll denote this separation constant by $\ell(\ell+1)$ for reasons that will become clear in a moment. Then we have
$$
\begin{align*}
\frac{d}{dr} \bigg(r^2 \frac{dR}{dr}\bigg) &= \ell (\ell+1) R(r) \ , \\
\frac{1}{\sin\theta}\frac{d}{d\theta} \bigg(\sin\theta \frac{d\Theta}{d\theta}\bigg) &= -\ell (\ell+1) \Theta(\theta) \ .
\end{align*}
$$
The first equation, called the *radial equation* can be solved by changing variables to $U(r) = r R(r)$. Then $\frac{dR}{dr} = \frac{U}{r} - \frac{dU}{dr}$, and so after simplifying a bit we end up with an ODE for $U(r)$ of the form
$$
\frac{d^2 U}{dr^2} = \frac{\ell (\ell+1)}{r^2} U \ .
$$
To solve this ODE we assume a trial solution of the form $U(r) = r^\lambda$ for some parameter $\lambda$ we need to determine. Plugging this solution into the ODE evidently forces $\lambda = -\ell, \ell+1$, which means the general solution is given by the superposition
$$
U(r) = a r^{-\ell} + b r^{\ell+1} \ .
$$
Finally, dividing by $r$ gives us the general solution to the original radial equation,
$$
R(r) = a r^{-\ell-1} + b r^{\ell} \ .
$$
We now need to deal with the other ODE, called the *angular equation*,
$$
\frac{1}{\sin\theta} \frac{d}{d\theta} \bigg(\sin\theta \frac{d\Theta}{d\theta}\bigg) = -\ell (\ell+1) \Theta(\theta) \ .
$$
If we change variables by letting $x = \cos\theta$, then $\frac{d\Theta}{d\theta} = -\sin\theta \frac{d\Theta}{dx}$, and so we end up with the following ODE for $\Theta(x)$,
$$
-\frac{d}{dx} \bigg((1-x^2)\frac{d\Theta}{dx}\bigg) = \ell(\ell+1) \Theta(x) \ .
$$
Those who have read the appendix will know that this ODE has a name. It's the *Legendre equation*. Its only bounded solution is the  *Legendre polynomial* $P_\ell(x) = P_\ell(\cos\theta)$, where $\ell = 0,1,2,\cdots$ must be a positive integer. Since this is a second order equation, there is also a second solution, but this solution is known to be unbounded for all $\ell$, and hence non-physical.

We can define the Legendre polynomials most simply using the Rodrigues' formula as
$$
P_\ell(x) \equiv \frac{1}{2^\ell \ell!} \frac{d^\ell}{dx^\ell} (x^2 - 1)^\ell \ .
$$
For example, the first three Legendre polynomials are given by
$$
P_0(x) = 1 \quad , \quad P_1(x) = x = \cos\theta \quad , \quad P_2(x) = \frac{1}{2} (3x^2 - 1) = \frac{1}{2} (3\cos^2 \theta - 1) \ .
$$
The Legendre polynomials form a complete orthogonal set on the interval $-1 \leq x \leq 1$. This means we can express the general solution $\Theta(\theta)$ as a linear superposition of $P_\ell(\cos\theta)$, with
$$
\Theta(\theta) = \sum_{\ell=0}^\infty c_\ell P_\ell(\cos\theta) \ .
$$
Combining this angular solution with the radial solution and absorbing constants together, we can write the general solution for an azimuthally symmetric potential $\phi(\mathbf{x})$ in the form
$$
\boxed{
\phi(\mathbf{x}) = \sum_{\ell=0}^\infty \big(a_\ell r^\ell + b_\ell r^{-(\ell+1)}\big) P_\ell(\cos\theta)
} \ .
$$
The coefficients $a_\ell$ and $b_\ell$ can then be found by imposing the remaining boundary condition. Once these are found, we've found the unique general solution for the potential in spherical coordinates that satisfy all the boundary conditions.

To see that this solution makes sense, let's consider the special case where the potential is spherically symmetric, with $\phi = \phi(r)$. Then all but the $\ell=0$ terms vanish, and since $P_0(\cos\theta) = 1$ by definition, we end up with
$$
\phi(r) = a_0 + \frac{b_0}{r} \ .
$$
We immediately recognize this as the potential of a uniformly charged sphere, with $b_0 = Q$ and $a_0 = \phi(0)$ a chosen ground point potential that we can ignore. Let's now consider some more interesting examples.

##### Example: Potential inside a hollow sphere held at a given potential

Suppose we have a hollow sphere of radius $R$ with a fixed potential $V(\theta)$ on its surface. We want to find the potential inside of the sphere.

FIGURE

The Dirichlet boundary value problem we seek to solve is evidently
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi(r,\theta,\varphi) = 0 \ , \\
\text{where} \ \phi(R,\theta,\varphi) = V(\theta) \ .
\end{cases}
\end{align*}
$$
Since this is clearly an azimuthally symmetric problem, $\phi = \phi(r,\theta)$, which means the general solution must have the form
$$
\phi(r,\theta) = \sum_{\ell=0}^\infty \big(a_\ell r^\ell + b_\ell r^{-(\ell+1)}\big) P_\ell(\cos\theta) \ .
$$
Since we're inside the sphere, we require that all $b_\ell = 0$ to prevent the potential from blowing up at the origin. This leaves
$$
\phi(r,\theta) = \sum_{\ell=0}^\infty a_\ell r^\ell P_\ell(\cos\theta) \ .
$$
We're now left to find the coefficients $b_\ell$ by imposing the boundary condition at $\phi(R,\theta)$, which we can write as 
$$
V(\theta) = \phi(R,\theta) = \sum_{\ell=0}^\infty a_\ell R^\ell P_\ell(\cos\theta) \ .
$$
Now, recall from the appendix that the Legendre polynomials satisfy the orthogonality relation
$$
\langle P_\ell(x) | P_{\ell'}(x) \rangle = \int_{-1}^1 dx P_\ell(x) P_{\ell'}(x) = \frac{2}{2\ell+1} \delta_{\ell\ell'} \ .
$$
Using the relation $x=\cos\theta$ we can re-express this integral in terms of $\theta$ as well,
$$
\langle P_\ell(\cos\theta) | P_{\ell'}(\cos\theta) \rangle = \int_0^\pi d\theta \ P_\ell(\cos\theta) P_{\ell'}(\cos\theta) \sin\theta = \frac{2}{2\ell+1} \delta_{\ell\ell'} \ .
$$
We can now use this orthogonality condition to determine the coefficients $a_\ell$. To do that we proceed as usual. We multiply both sides of the equation for $\phi(R,\theta)$ by $P_{\ell'}(\cos\theta)$ and integrate from $\theta=0$ to $\theta=\pi$. Doing the right-hand side, first, we have
$$
\sum_{\ell=0}^\infty a_\ell R^\ell \int_0^\pi d\theta \ P_{\ell'}(\cos\theta) P_\ell(\cos\theta) = \sum_{\ell=0}^\infty a_\ell R^\ell \frac{2}{2\ell+1} \delta_{\ell\ell'} = \frac{2}{2\ell'+1} a_{\ell'} R^{\ell'} \ .
$$
To evaluate the left-hand side we need a specific form for $V(\theta)$. Nevertheless, we can use the previous expression to solve for $a_\ell$ in terms of this integral to get
$$
a_\ell = \frac{2\ell+1}{2R^\ell} \int_0^\pi d\theta \ V(\theta) P_\ell(\cos\theta) \ .
$$
As an example, let's suppose $V(\theta)$ takes the specific form
$$
V(\theta) = k \sin^2 \frac{\theta}{2} \ .
$$
Using the half-angle formula and the value of the first two Legendre polynomials, we can write this in the form
$$
V(\theta) = \frac{k}{2} (1-\cos\theta) = \frac{k}{2} \big(P_0(\cos\theta) - P_1(\cos\theta)\big) \ .
$$
If we then plug this into the previous integral and use the definition of the inner product above, we get
$$
\begin{align*}
a_\ell &= \frac{k}{2}\frac{2\ell+1}{2R^\ell} \int_0^\pi d\theta \  \big[P_0(\cos\theta) - P_1(\cos\theta)\big]P_\ell(\cos\theta) \sin\theta \\
&= \frac{k}{2}\frac{2\ell+1}{2R^\ell} \big[\langle P_0 | P_\ell \rangle - \langle P_1 | P_\ell \rangle\big] \ .
\end{align*}
$$
Now, by the orthogonality relation, only the $\ell=0,1$ terms will contribute anything while the rest vanish, with
$$
\begin{align*}
a_0 &= \frac{k}{2} \frac{1}{2} \langle P_0 | P_0 \rangle = \frac{k}{2} \ , \\
a_1 &= -\frac{k}{2} \frac{3}{2R} \langle P_1 | P_1 \rangle = -\frac{k}{2R} \ .
\end{align*}
$$
For this choice of $V(\theta)$ we thus have our general solution for the potential that solves this BVP, given by
$$
\phi(\mathbf{x}) = a_0 P_0(\cos\theta) + a_1 r P_1(\cos\theta) = \frac{k}{2} \bigg(1 - \frac{r}{R} \cos\theta\bigg) \ .
$$
By the uniqueness theorem, we can guarantee this will be the unique general solution to the given BVP.

##### Example: Potential outside a hollow sphere held at a given potential

Let's now consider again the previous problem, but suppose we're not interested in the potential *outside* the hollow sphere. We now require that the potential not blow up at infinity, giving a Dirichlet BVP of the form
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi(r,\theta,\varphi) = 0 \ , \\
\text{where} \ \phi(R,\theta,\varphi) = V(\theta) \ .
\end{cases}
\end{align*}
$$
Clearly this problem also has an azimuthally symmetric potential $\phi = \phi(r,\theta)$, and hence we can still write
$$
\phi(r,\theta) = \sum_{\ell=0}^\infty \big(a_\ell r^\ell + b_\ell r^{-(\ell+1)}\big) P_\ell(\cos\theta) \ .
$$
But now we need the potential outside the sphere, not inside. The requirement that $\phi$ not blow up at infinity now forces $a_\ell=0$ instead, leaving
$$
\phi(r,\theta) = \sum_{\ell=0}^\infty b_\ell r^{-(\ell+1)} P_\ell(\cos\theta) \ .
$$
To find $b_\ell$ we proceed the same way as before, relying on the orthogonality of Legendre polynomials. Multiplying both sides by $P_{\ell'}(\cos\theta)$ and integrating, we end up with the expression
$$
b_\ell = \frac{(2\ell+1)R^{\ell+1}}{2} \int_0^\pi d\theta \ V(\theta) P_\ell(\cos\theta) \sin\theta \ .
$$
To proceed further we'd need to know the specific form of the boundary potential $V(\theta)$. For example, if we again assume the same boundary potential given in the previous problem, we can write
$$
V(\theta) = k \sin^2 \theta = \frac{k}{2} \big[P_0(\cos\theta) - P_1(\cos\theta)\big] \ .
$$
As in that problem, plugging this into the integral for $b_\ell$ forces only the $\ell=0,1$ terms to survive, with coefficients
$$
\begin{align*}
b_0 &= \frac{k}{2} \frac{R}{2} \langle P_0 | P_0 \rangle = \frac{kR}{2} \ , \\
b_1 &= -\frac{k}{2} \frac{3R^2}{2} \langle P_1 | P_1 \rangle = -\frac{kR^2}{2} \ .
\end{align*}
$$
With these, we can write the general solution for the potential outside the sphere as
$$
\phi(\mathbf{x}) = \frac{b_0}{r} P_0(\cos\theta) + \frac{b_1}{r^2} P_1(\cos\theta) = \frac{kR}{2r} \bigg(1 - \frac{R}{r} \cos\theta\bigg) \ .
$$
Notice that this behaves exactly how we expect, with $\phi \rightarrow 0$ at infinity. It's also easy to see that this solution agrees with the one inside the sphere at the boundary surface where $r=R$. Indeed, these two solutions together give us the unique potential in all space that satisfies the boundary condition $\phi(R,\theta,\varphi) = V(\theta)$ on the surface of the sphere.

In general, if we have a problem where a boundary value is specified on the surface of a sphere and we're interested in the potential inside and outside the sphere, we only need to find one of the solutions, and we automatically know the other. For example, suppose we've found the potential $\phi$ inside the sphere. All we need to do to get the potential outside the sphere is make the substitution $\big(\frac{r}{R})^\ell \rightarrow \big(\frac{R}{r}\big)^{\ell+1}$ and we automatically have that solution as well.

##### Example: Conducting hemispheres at opposite constant potential

Let's now consider a slightly more interesting example that we calculated in the last chapter using Green's functions, namely the problem of two conducting hemispheres held at equal and opposite constant potentials $\pm V$.

FIGURE

We showed before with great effort that we could represent the potential as a series of odd-degree Legendre polynomials. Now we'll provide a much easier way to arrive at the same result using separation of variables.

We can also solve this problem using separation of variables. We thus have the following Dirichlet boundary value problem.
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi(r,\theta,\varphi) = 0 \ , \\
\text{where} \ \phi(R,\theta,\varphi) = V \ \text{when} \ 0 \leq \theta < \frac{\pi}{2} \ , \\
 \phi(R,\theta,\varphi) = -V \ \text{when} \ \frac{\pi}{2} < \theta \leq \pi \ .
\end{cases}
\end{align*}
$$
Again, this problem is clearly azimuthally symmetric. Since one is as easy as the other, we'll show how to find the potential inside the sphere, and then use that formula to get the potential outside as well using the trick described in the previous example.

Inside the sphere we require that $b_\ell = 0$, which gives an expansion of the form
$$
\phi(r,\theta,\varphi) = \sum_{\ell=0}^\infty a_\ell r^{\ell} P_\ell(\cos\theta) \ .
$$
Notice this looks exactly like the previous examples if we take $V(\theta) = \pm V$. We can solve for the coefficients $a_\ell$ in the usual way, in which case we end up with the integral
$$
a_\ell = \frac{2\ell+1}{2R^\ell} \int_0^\pi d\theta \ V(\theta) P_\ell(\cos\theta) \sin\theta \ .
$$
Plugging in $V(\theta) = \pm V$, this becomes
$$
a_\ell =  \frac{2\ell+1}{2R^\ell} V \bigg[\int_0^{\pi/2} d\theta \ P_\ell(\cos\theta) \sin\theta - \int_{\pi/2}^\pi d\theta \ P_\ell(\cos\theta) \sin\theta\bigg] \ .
$$
Since $P_\ell(\cos\theta)$ is odd when $\ell$ is odd and even when $\ell$ is even, we can see that the even coefficients must cancel out, while for odd terms we can write
$$
a_\ell = \frac{2\ell+1}{R^\ell} V \int_0^{\pi/2} d\theta \ P_\ell(\cos\theta) \sin\theta \ .
$$
Now, by changing variables with $x=\cos\theta$ we see that the above integral can be written in the simpler form
$$
\int_0^{\pi/2} d\theta \ P_\ell(\cos\theta) \sin\theta = \int_0^1 dx \ P_\ell(x) \ .
$$
This integral is just the interval of $P_\ell(x)$ over the right-half interval $0 \leq x \leq 1$. Its expression can be calculated for odd $\ell$ (see the appendix for an example) to give
$$
\int_0^1 dx \ P_\ell(x) = \frac{(-1)^{\frac{\ell-1}{2}}}{2^\ell \big(\frac{\ell+1}{2}\big)} \frac{(\ell-1)!}{\big(\frac{\ell-1}{2}!\big)^2} \ .
$$
Plugging this in and simplifying, the coefficients we seek are given by
$$
a_\ell = \bigg(\frac{-1}{2}\bigg)^{\frac{\ell-1}{2}} \frac{(2\ell+1)(\ell-2)!!}{2\big(\frac{\ell+1}{2}!\big)^2} \frac{V}{R^\ell} \quad , \quad \ell=1,3,5,\cdots \ .
$$
This means the potential inside the sphere must be given by
$$
\begin{align*}
\phi(r,\theta,\varphi) &= V\sum_{\ell=0}^\infty \bigg(\frac{-1}{2}\bigg)^{\frac{\ell-1}{2}} \frac{(2\ell+1)(\ell-2)!!}{2\big(\frac{\ell+1}{2}!\big)^2} \bigg(\frac{r}{R}\bigg)^\ell P_\ell(\cos\theta) \\
&= V \bigg[\frac{3}{2}\bigg(\frac{r}{R}\bigg)P_1(\cos\theta) - \frac{7}{8}\bigg(\frac{r}{R}\bigg)^3P_3(\cos\theta) + \frac{11}{16}\bigg(\frac{r}{R}\bigg)^5P_5(\cos\theta) - \cdots\bigg] \ , \quad r \leq R \ .
\end{align*}
$$
To get the potential outside the sphere we need only substitute $\big(\frac{r}{R})^\ell \rightarrow \big(\frac{R}{r}\big)^{\ell+1}$ to get
$$
\begin{align*}
\phi(r,\theta,\varphi) &= V\sum_{\ell=0}^\infty \bigg(\frac{-1}{2}\bigg)^{\frac{\ell-1}{2}} \frac{(2\ell+1)(\ell-2)!!}{2\big(\frac{\ell+1}{2}!\big)^2} \bigg(\frac{R}{r}\bigg)^{\ell+1} P_\ell(\cos\theta) \\
&= V \bigg[\frac{3}{2}\bigg(\frac{R}{r}\bigg)^2P_1(\cos\theta) - \frac{7}{8}\bigg(\frac{R}{r}\bigg)^4P_3(\cos\theta) + \frac{11}{16}\bigg(\frac{R}{r}\bigg)^6P_5(\cos\theta) - \cdots\bigg] \ , \quad r \geq R \ .
\end{align*}
$$
As expected, the potential outside the sphere goes to zero at infinity, satisfying the final boundary condition. It also appears that the potential vanishes at the origin, and indeed in the whole equatorial plane. Indeed, the potential seems to behave as a dipole, with the electric field falling off like $r^{-3}$ far away from the sphere. This should hopefully make sense. Far away from the sphere we could imagine modeling the two hemispheres as opposite point charges very close together.

##### Example: Potential of a hollow sphere with an azimuthally symmetric surface charge distribution

Since we've neglected Neumann boundary value problems so far in this chapter, let's consider an example where the potential on the surface of a sphere isn't known, but instead its surface charge density is known. Suppose we have a hollow sphere of radius $R$, and on this sphere we have a surface charge density of the form $\sigma' = k \cos\theta$, where $k$ is some constant.

We'd like to find the potential due to this charged sphere both inside and outside the sphere. We can use the fact that the normal derivative is $\partial \phi / \partial n' = -4\pi \sigma'$ on the surface of the sphere to express this as a Neumann BVP of the form
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi(r,\theta,\varphi) = 0 \ , \\
\text{where} \ \partial \phi / \partial r' \big|_{r'=R} = -4\pi k\cos\theta \ .
\end{cases}
\end{align*}
$$
We'll denote the potential inside the sphere by $\phi_-(r,\theta,\varphi)$, and the potential outside the sphere by $\phi_+(r,\theta,\varphi)$. By requiring that the potential be continuous at the surface of the sphere, we require that $\phi_-(R,\theta,\varphi) = \phi_+(R,\theta,\varphi)$.

When outside the sphere the coefficients $a_\ell$ must all vanish for the potential to not blow up at infinity. We thus have
$$
\phi_+(r,\theta,\varphi) = \sum_{\ell=0}^\infty b_\ell r^{-\ell(\ell+1)} P_\ell(\cos\theta) \ .
$$
Inside the sphere we require the opposite, that each $b_\ell$ vanish, giving
$$
\phi_-(r,\theta,\varphi) = \sum_{\ell=0}^\infty a_\ell r^\ell P_\ell(\cos\theta) \ .
$$
Requiring that the potential be continuous at the surface of the sphere means each term in these series must match at $r=R$. This means for each $\ell$ we must have the condition
$$
b_\ell R^{-\ell(\ell+1)} - a_\ell R^\ell = 0 \quad \Longrightarrow \quad b_\ell = a_\ell R^{2\ell+1} \ .
$$
Since the sphere is hollow, we know that there's a discontinuity in the electric field across the surface at $r=R$ that's proportional to $4\pi\sigma'$. The difference between the normal derivatives across the surface the sphere must then satisfy
$$
\frac{\partial \phi_+}{\partial r'} \bigg|_{r'=R} - \frac{\partial \phi_-}{\partial r'} \bigg|_{r'=R} = -4\pi k\cos\theta \ .
$$
Plugging in the series expansions for each term and differentiating, we then have
$$
\sum_{\ell=0}^\infty \bigg[b_\ell (\ell+1)R^{-(\ell+2)} + a_\ell \ell R^{\ell-1} \bigg] P_\ell(\cos\theta) = 4\pi k\cos\theta \ .
$$
Since only $P_1(\cos\theta) = \cos\theta$, each $\ell \neq 1$ term on the left must vanish, which means we have
$$
b_\ell (\ell+1)R^{-(\ell+2)} + a_\ell \ell R^{\ell-1} = 0 \quad \Longrightarrow b_\ell = a_\ell R^{2\ell+1} = 0 \ .
$$
When $\ell = 1$ we must have
$$
2b_1 R^{-3} + a_1 = 4\pi k \quad \Longrightarrow \quad b_1 = a_1 R^3 = \frac{4\pi}{3} kR^3 \ .
$$
Thus, to satisfy the boundary conditions the full potential must be
$$
\phi(r,\theta,\varphi) = \frac{4\pi}{3} kR \cos\theta \bigg(\frac{R}{r}\bigg)^2 \ .
$$
By the uniqueness theorem, this is the only potential that satisfies the boundary condition $\partial \phi / \partial n' = -4\pi \sigma'$, which means it's the only valid potential that solves this BVP both inside and outside the sphere. Notice that this potential falls off like $1/r^2$. That is, this problem is an example of a *dipole*. We'll discuss this more in the next chapter.

##### Example: Conducting sphere in the presence of an external electric field

Let's revisit another problem we solved previously with the method of images, that of a solid conducting sphere of radius $R$  in the presence of a constant external electric field $\mathbf{E}_0$. Recall that we solved this problem previously by modeling the external field with two opposite point charges located far away from the sphere, and placed two image charges inside the sphere that fit the boundary conditions on the sphere. We'll now show that we can solve this same problem using separation of variables as well.

Modeling this as a Dirichlet boundary value problem with $\mathbf{E}_0 = E_0 \mathbf{e}_z$ oriented along the $z$-axis, we write
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi(r,\theta,\varphi) = 0 \ , \\
\text{where} \ \phi(R,\theta,\varphi) = 0 \ , \\
\phi(r,\theta,\varphi) \rightarrow -E_0 r\cos\theta \ \text{as} \ r \rightarrow \infty \ .
\end{cases}
\end{align*}
$$
Note the last boundary condition was chosen to ensure $\phi$ becomes the potential for $E_0$ at $z=\infty$, i.e. $\phi = -E_0z$. This problem is clearly azimuthally symmetric as well. However, since the potential in this case doesn't vanish at infinity we can't set $a_\ell=0$ anymore. We have to include both terms. Suppose then that
$$
\phi(r,\theta,\varphi) = \sum_{\ell=0}^\infty \big(a_\ell r^\ell + b_\ell r^{-\ell(\ell+1)}\big) P_\ell(\cos\theta) \ .
$$
At the surface of the sphere we must have $\phi(R,\theta,\varphi) = 0$, which means each term in the sum must vanish, with
$$
\big(a_\ell R^\ell + b_\ell R^{-\ell(\ell+1)}\big) P_\ell(\cos\theta) = 0 \ .
$$
Since $P_\ell(\cos\theta)$ doesn't depend on $r$, the only way each term can vanish is if the terms in parentheses do. This happens when
$$
b_\ell = -a_\ell R^{2\ell+1} \ .
$$
Let's now look at the limiting behavior as $r \rightarrow \infty$. When $r \gg R$ we can neglect the second term and write
$$
\phi(r,\theta,\varphi) \approx \sum_{\ell=0}^\infty a_\ell r^\ell P_\ell(\cos\theta) \ .
$$
To satisfy the boundary condition at infinity we require that $\phi(r,\theta,\varphi) \approx -E_0 r \cos\theta$. Matching this condition with the series evidently forces $\ell = 1$ while the other terms must vanish. Since $P_1(\cos\theta) = \cos\theta$, we then get
$$
-E_0 r \cos\theta = a_1 r \cos\theta \quad \Longrightarrow \quad a_1 = -E_0 \ .
$$
Plugging this in, we get a final expression for the potential satisfying these boundary conditions, with
$$
\phi(\mathbf{x}) = -E_0 r \bigg(1 - \frac{R^3}{r^3}\bigg) \cos\theta \ .
$$
This of course is exactly what we found before using the method of images. It's useful to look at the induced surface charge on the sphere to see how the charges on the surface are distributing in response to the external field. We do that by calculating
$$
\sigma = -\frac{1}{4\pi} \frac{\partial \phi}{\partial r} \bigg|_{r=R} = \frac{E_0}{\pi} \cos\theta \ .
$$
Notice that charge density is evidently the most positive near $\theta = 0$ and the most negative near $\theta = \pi$. This indicates that positive charge is building up in the direction of the external field, while negative charge is building up opposite to the direction of the field, which is of course what we'd expect physically in this situation.

---

Before moving onto the more general non-azimuthally symmetric case we'll mention one more useful property of azimuthally symmetric potentials that can often be useful for solving BVPs. In this case, we know the potential must have the general form
$$
\phi(\mathbf{x}) = \sum_{\ell=0}^\infty \big(a_\ell r^\ell + b_\ell r^{-(\ell+1)}\big) P_\ell(\cos\theta) \ .
$$
Now, let's look at the special case where the field point $\mathbf{x}$ lies on the positive $z$-axis, so that $\mathbf{x} = z \mathbf{e}_z$. Along this axis we must have $\theta = 0$ in spherical coordinates, hence $r=z$. We also know that $P_\ell(1) = 1$ for all $\ell$. This means along this axis we must have
$$
\phi(z) = \sum_{\ell=0}^\infty \big(a_\ell z^\ell + b_\ell z^{-(\ell+1)}\big) \ .
$$
This tells us something interesting. Provided we can find the potential $\phi(z)$ along the positive $z$-axis, a much simpler case usually for azimuthally symmetric potentials, then we can immediately obtain the general solution as well by following the procedure above in reverse. We first find $\phi(z)$ and expand it in powers of $z$. Then, we set $r=z$ and multiply each term by its corresponding Legendre polynomial $P_\ell(\cos\theta)$.

This trick provides an expedient way to obtain the general solution to many interesting BVPs. Let's see a quick example of this.

##### Example: Potential of a ring of uniform charge

Suppose we have a planar circular ring of radius $a$ containing a uniform charge line density $\lambda$. We'll suppose the ring is centered at the origin and oriented in the $xy$-plane. This means the problem will be azimuthally symmetric. 

FIGURE (show ring of charge)

Now, suppose we're interested in the potential at each $r > a$ outside the ring. To solve this problem we'll first try to find $\phi(z)$. We can do this any way we like. For this problem it's most convenient to use the integral formula directly. Since the ring is one-dimensional, we'll use the integral formula
$$
\phi(z) = \int d\ell \ \frac{\lambda(\mathbf{x}')}{|z \mathbf{e}_z - \mathbf{x}'|} \ .
$$
Since the ring has constant line charge density $\lambda$, we can pull it outside the integral. Since all charges lie on a ring of radius $a$, we can write $d\ell = a d\varphi$ and $|z\mathbf{e}_z - \mathbf{x}'| = \sqrt{a^2 + z^2}$. Since the integrand becomes independent of the integration variable $\varphi$, we get
$$
\phi(z) = a \lambda \int_0^{2\pi} \frac{d\varphi}{\sqrt{a^2 + z^2}} = \frac{2\pi a^2 \lambda}{\sqrt{a^2 + z^2}}  \ .
$$
This is the exact solution for the potential along the positive $z$-axis. To get the general solution we first need to expand $\phi(z)$. Since we're only interested in field points where $r > a$, we need only do an expansion in integer powers of $a/r$. This can easily be done by taking the binomial expansion of $(a^2 + z^2)^{-1/2}$, in which case we get
$$
\phi(z) = 2\pi a^2 \lambda \bigg[\frac{1}{z} - \frac{1}{2} \frac{a^2}{z^3} + \frac{3}{8} \frac{a^4}{z^5} - \frac{5}{16} \frac{a^6}{z^7} + \cdots \bigg] \ .
$$
Finally, we set $r=z$ and multiply each $1/r^{\ell+1}$ term by its Legendre polynomial $P_\ell(\cos\theta)$ to get the general solution,
$$
\phi(\mathbf{x}) = 2\pi a^2 \lambda \bigg[\frac{1}{r} - \frac{1}{2} \frac{a^2}{r^3} P_2(\cos\theta) + \frac{3}{8} \frac{a^4}{r^5} P_4(\cos\theta) - \frac{5}{16} \frac{a^6}{r^7} P_6(\cos\theta) + \cdots \bigg]  \ .
$$
Notice that $q = 2\pi a^2 \lambda$ is just the total charge of the ring. This means the first expansion term is just $q/r$. This is exactly what we expect, since very far away from the ring it should behave like a point charge. We call this the *monopole term*. The next expansion term goes like $1/r^3$. We call this the *quadrupole term*. And so on. In fact, what we've just done is a *multipole expansion* of this potential. We'll study such expansions in great depth in the next chapter.

If we like, we can do an expansion for $r < a$ as well, by replacing $a^\ell / r^{\ell+1} \to r^\ell / a^{\ell+1}$ to get
$$
\phi(\mathbf{x}) = 2\pi a^2 \lambda \bigg[\frac{1}{a} - \frac{1}{2} \frac{r^2}{a^3} P_2(\cos\theta) + \frac{3}{8} \frac{r^4}{a^5} P_4(\cos\theta) - \frac{5}{16} \frac{r^6}{a^7} P_6(\cos\theta) + \cdots \bigg]  \ .
$$
These together give the potential at all points in space, except along the spherical shell $r=a$. The two solutions can be joined to get a solution along the shell by setting $r=a$. The potential will be finite at every point except along the ring itself, where we end up with a divergent series.

#### General Potentials

Now that we've studied the special case of azimuthally symmetric potentials we'll return to the general case where the potential can depend on the angle $\varphi$ as well. Recall we had the following form for Laplace's equation in spherical coordinates,
$$
\frac{\partial}{\partial r} \bigg(r^2 \frac{\partial \phi}{\partial r}\bigg) + \frac{1}{ \sin\theta} \frac{\partial}{\partial \theta} \bigg(\sin\theta \frac{\partial \phi}{\partial \theta}\bigg) + \frac{1}{\sin^2 \theta} \frac{\partial^2 \phi}{\partial \varphi^2} = 0 \ .
$$
Now we'll keep the last term involving the $\varphi$ derivatives in. However, since the two angular terms depend on each other, we can only separate the radial and angular components, but not all three. Suppose then a trial solution of the form
$$
\phi(\mathbf{x}) = R(r) Y(\theta,\varphi) \ .
$$
Plugging this trial solution into the above equation and dividing by $\phi = RY$, we get
$$
0 = \frac{1}{R} \frac{d}{dr} \bigg(r^2 \frac{dR}{dr}\bigg) + \frac{1}{Y}\bigg[\frac{1}{\sin\theta} \frac{\partial}{\partial\theta} \bigg(\sin\theta \frac{\partial Y}{\partial\theta}\bigg) + \frac{1}{\sin^2 \theta} \frac{\partial^2 Y}{\partial\varphi^2}\bigg] \ .
$$
Since these two terms are independent of the other, the only way they can sum to zero is they both equal the same constant but with opposite sign. Again, we'll denote the separation constant by $\ell(\ell+1)$ and write
$$
\begin{align*}
\frac{d}{dr} \bigg(r^2 \frac{dR}{dr}\bigg) &= \ell (\ell+1) R(r) \\
\frac{\partial}{\partial\theta} \bigg(\sin\theta \frac{\partial Y}{\partial\theta}\bigg) + \frac{\partial^2 Y}{\partial\varphi^2} &= -\ell (\ell+1) \sin^2 \theta \ Y(\theta,\varphi) \ .
\end{align*}
$$
The first equation we recognize from before. It's the radial equation. Its general solution is given by
$$
R(r) = a r^\ell + b r^{-(\ell+1)} \ .
$$
The second equation is evidently a more general form of the angular equation. We can again separate variables for the angular equation by supposing a second trial solution of the form
$$
Y(\theta,\varphi) = \Theta(\theta) \Phi(\varphi) \ .
$$
If we plug this into the angular equation and divide by $\Theta\Phi \ $, we get
$$
\bigg[\frac{1}{\Theta} \frac{d}{d\theta} \bigg(\sin\theta \frac{d\Theta}{d\theta}\bigg) - \ell (\ell+1) \sin^2 \theta\bigg] + \frac{1}{\Phi} \frac{d^2 \Phi}{d\varphi^2} = 0
$$
Again, each term is an independent function of its own variable, so the only way their sum can vanish is if they're both constants of equal and opposite sign. For reasons we'll see in a moment, we'll denote the separation constant by $m^2$ and write
$$
\begin{align*}
&\frac{d}{d\theta} \bigg(\sin\theta \frac{d\Theta}{d\theta}\bigg) - \ell (\ell+1)\Theta(\theta) = m^2 \Theta(\theta) \ , \\
&\frac{d^2\Phi}{d\varphi^2} = -m^2 \Phi(\varphi) \ .
\end{align*}
$$
The second equation is easy to solve. It's just a sum of complex exponentials $e^{\pm im\varphi}$. Since we're dealing with an angle, we require that any solution $\Phi(\varphi)$ be periodic, meaning $\Phi(\varphi) = \Phi(\varphi + 2\pi)$. It's easy to see that this requirement forces $m$ to be an integer. By convention, we'll allow $m$ to run both positive and negative, and write $\Phi(\varphi)$ in the form
$$
\Phi(\varphi) = c e^{im\varphi} \ .
$$
We're now left with the other differential equation to deal with, which we'll write as
$$
\frac{d}{d\theta} \bigg(\sin\theta \frac{d\Theta}{d\theta}\bigg) - \big[\ell (\ell+1) \sin^2 \theta - m^2\big] \Theta(\theta) = 0 \ .
$$
Notice that this equation looks very similar to the Legendre equation except there's an extra term of the form $m^2 \Theta(\theta)$ present. From the appendix, we know that the solutions to this equation are the *associated Legendre functions* $P_\ell^m(\cos\theta)$, where $\ell$ again must be a non-negative integer, and $m$ must be an integer that runs from $-\ell$ to $\ell$. By again defining $x = \cos\theta$ we can again define these functions in terms of a Rodrigues' equation, with
$$
P_\ell^m(x) = \frac{1}{2^\ell \ell!} (1-x^2)^{m/2} \frac{d^{\ell+m}}{dx^{\ell+m}} (x^2 - 1)^\ell \ .
$$
These also form a complete set of orthogonal functions on the interval $-1 \leq x \leq 1$, which means we can use superposition to write the general solution $\Theta(\theta)$ in the form
$$
\Theta(\theta) = \sum_{\ell=0}^\infty \sum_{m=-\ell}^\ell c_{\ell m} P_\ell^m(\cos\theta) \ .
$$
If we combine $\Theta(\theta)$ and $\Phi(\varphi)$ back together, we get an angular solution $Y(\theta,\varphi)$ of the form
$$
Y(\theta,\varphi) = \sum_{\ell=0}^\infty \sum_{m=-\ell}^\ell c_{\ell m} P_\ell^m(\cos\theta) e^{im\varphi} \ .
$$
Note that we absorbed the integration constant for $\Phi(\varphi)$ into the ones for $\Theta(\theta)$.

Now, recall again from the appendix that functions proportional to $P_\ell^m(\cos\theta) e^{im\varphi}$ also have a name. They're called the *spherical harmonics*, which we by convention normalize and write in the more complicated form
$$
Y_{\ell m}(\theta,\varphi) \equiv (-1)^m \sqrt{\frac{2\ell+1}{4\pi} \frac{(\ell-m)!}{(\ell+m)!}} P_\ell^m(\cos\theta) e^{im\varphi} \ .
$$
The spherical harmonics are precisely the eigenfunctions of the Laplacian in spherical coordinates. By construction, they form a complete orthonormal set of functions on the sphere, meaning we can write any $Y(\theta,\varphi)$ as a superposition of them,
$$
Y(\theta,\varphi) = \sum_{\ell=0}^\infty \sum_{m=-\ell}^\ell c_{\ell m} Y_\ell^m(\theta,\varphi) \ .
$$
Finally, we can combine $R(r)$ and $Y(\theta,\varphi)$ back together to get the general solution for the potential $\phi(\mathbf{x})$. We'll again absorb the constants $c_{\ell m}$ into the constants of $R(r)$ and write
$$
\boxed{
\phi(\mathbf{x}) = \sum_{\ell=0}^\infty \sum_{m=-\ell}^\ell \big(a_{\ell m} r^\ell + b_{\ell m} r^{-(\ell+1)}\big) Y_\ell^m(\theta,\varphi)} \ .
$$
This equation looks exactly the same as the one for the azimuthally symmetric potential, except we now have to replace the Legendre polynomial $P_\ell(\cos\theta)$ by the more general spherical harmonic $Y_\ell^m(\theta,\varphi)$ and sum over $m$. Indeed, it's easy to see that the azimuthally symmetric potential is a special case of this general potential. Azimuthal symmetry is evidently equivalent to requiring that $m=0$. If we set $m=0$ in the general potential we recover the previous one, up to a normalization factor. The coefficients $a_{\ell m}$ and $b_{\ell m}$ can be found in the usual way, by imposing the final boundary condition and taking an inner product.

## Separation of Variables in Cylindrical Coordinates

Last, we'll apply separation of variables to the Laplacian in cylindrical coordinates $(\varrho,\varphi,z)$. In cylindrical coordinates, the Laplacian can be written in the form
$$
\nabla^2 \phi = \frac{1}{\varrho} \frac{\partial}{\partial\varrho} \bigg(\varrho \frac{\partial\phi}{\partial\varrho} \bigg) + \frac{1}{\varrho^2} \frac{\partial^2 \phi}{\partial^2\varphi} + \frac{\partial^2 \phi}{\partial z^2} \ .
$$
To satisfy Laplace's equation we again require $\nabla^2 \phi = 0$. If we set the above equation equal to zero we get
$$
0 = \frac{1}{\varrho} \frac{\partial}{\partial\varrho} \bigg(\varrho \frac{\partial\phi}{\partial\varrho} \bigg) + \frac{1}{\varrho^2} \frac{\partial^2 \phi}{\partial^2\varphi} + \frac{\partial^2 \phi}{\partial z^2} \ .
$$
As with spherical coordinates, the terms aren't completely separable since $\varrho$ appears in two terms. We'll first consider the case of cylindrical symmetry, where the potential is independent of $z$, before proceeding to the case of more general potentials.

#### Cylindrically Symmetric Potentials

For problems with cylindrically symmetry the potential depends only on $r$ and $\varphi$, not on $z$. These kinds of problems include the infinitely long wire held at constant potential, or infinitely long wires held at some anisotropic potential $V(\varphi)$.

If we assume the potential is cylindrically symmetric then the $z$ derivatives in Laplace's equation vanish, and we can multiply through by $\varrho^2$ and write Laplace's equation in the form
$$
0 = \varrho \frac{\partial}{\partial\varrho} \bigg(\varrho \frac{\partial\phi}{\partial\varrho} \bigg) + \frac{\partial^2 \phi}{\partial^2\varphi} \ .
$$
Now each term is separable and we can proceed to apply separation of variables. Assume a trial solution of the form
$$
\phi(\mathbf{x}) = R(\varrho) \Phi(\varphi) \ .
$$
Plugging this into Laplace's equation and dividing through by $\phi = RZ$, we end up with
$$
0 = \frac{\varrho}{R} \frac{d}{d\varrho} \bigg(\varrho \frac{dR}{d\varrho} \bigg) + \frac{1}{\Phi} \frac{d^2 \Phi}{d\varphi^2} \ .
$$
The only way this equation can vanish is if both terms equal a constant of opposite sign, which we'll call $n^2$. Then we have
$$
\begin{align*}
\varrho \frac{d}{d\varrho} \bigg(\varrho \frac{dR}{d\varrho} \bigg)&= n^2 R(\varrho) \ , \\
\frac{d^2 \Phi}{d\varphi^2} &= -n^2 \Phi(\varphi) \ .
\end{align*}
$$
The second equation is easy enough to solve. In real form its solutions are sines and cosines. Provided the problem allows $\varphi$ to range over the full circle from $0 \leq \varphi \leq 2\pi$, then we require that the potential be the same when $\varphi \rightarrow \varphi + 2\pi$. That is, we require that $n$ be an integer so that $\Phi(\phi) = \Phi(\phi + 2\pi)$. This means that for each $n$ we'll have a solution of the form
$$
\Phi_n(\varphi) = a \cos n\varphi + b \sin n\varphi \ .
$$
Note that if $\varphi$ is restricted to some range $0 \leq \varphi \leq \beta$ then we have to modify this result slightly. In that case, $n$ will no longer be an integer, but must instead be an integer multiple of $\frac{\pi}{\beta}$. We'll see an example of such a case below.

Anyway, to get the full solution for all integer $n$ we appeal to the principle of superposition. We know that the set of functions $\Phi_n(\varphi)$ are just the real Fourier functions on the interval $0 \leq \varphi \leq 2\pi$, which form a complete set of orthogonal functions on this interval. This means the general solution $\Phi(\varphi)$ can be written in terms of a real Fourier series of the form
$$
\Phi(\varphi) = \frac{a_0}{2} + \sum_{n=1}^\infty \big(a_n \cos n\varphi + b_n \sin n\varphi\big) \ .
$$
To solve the first equation we'll assume a trial solution of the form $R(\varrho) = \varrho^\lambda$. Plugging this in forces $\lambda = \pm n$, giving
$$
R_n(\varrho) = c_1 \varrho^n + c_2 \varrho^{-n} \ .
$$
However, this is only true when $n \neq 0$. When $n=0$ we need to solve for $R(\varrho)$ separately. In that case it's easy to see that
$$
R_0(\varrho) = d_1 + d_2 \log \varrho \ .
$$
To get the general solution for the potential we then combine these two functions. We'll absorb the constants together and write
$$
\phi(\mathbf{x}) = a_0 + b_0 \log\varrho + \sum_{n=1}^\infty \big[(a_n \cos n\varphi + b_n \sin n\varphi)\varrho^n + (c_n \cos n\varphi + d_n \sin n\varphi)\varrho^{-n}\big] \ .
$$
Note that the requirement that the potential not blow up inside the boundary surface will generally force some of these constants to vanish depending on whether we're inside of our outside of the boundary surface. If we're inside the surface, we require that $b_0$ and the $\varrho^{-n}$ constants $c_n$ and $d_n$ vanish so that the potential doesn't blow up at the origin. If we're outside the surface we require that the $\varrho^n$ constants $a_n$ and $b_n$ vanish so that the potential vanishes at infinity.

To check that this solution makes sense, let's consider the case of a potential where $\phi = \phi(\varrho)$ only. In this case only the $n=0$ terms survive, leaving
$$
\phi(\varrho) = a_0 + b_0 \log\varrho \ .
$$
The associated electric field is then $\mathbf{E}(\mathbf{x}) = E(\varrho) \mathbf{e}_\varrho$, where
$$
E(\varrho) = -\frac{d\phi}{d\varrho} = -\frac{b_0}{\varrho} \equiv \frac{2\lambda}{\varrho} \ .
$$
If we take $b_0 = -2\lambda$ and $a_0 = \phi(0)$ as a ground point, this is evidently the potential of a uniform wire with line density $\lambda$. Let's now consider a more general example.

##### Example: Grounded infinite wire perpendicular to a uniform electric field

Let's now consider the problem of an infinite, grounded wire of some thickness $R$ that's placed perpendicular to a uniform external electric field $\mathbf{E}_0$. We'll suppose the wire is oriented along the $z$-axis and the field is oriented in the direction of the positive $x$-axis, with $\mathbf{E}_0 = E_0 \mathbf{e}_x$. 

FIGURE

We can thus formulate this problem in terms of the following Dirichlet boundary value problem,
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi(\varrho,\varphi,z) = 0 \ , \\
\text{where} \ \phi(R,\varphi,z) = 0 \ , \\
\phi(r,\varphi,z) \rightarrow -E_0 \varrho \cos\varphi \ \text{as} \ \varrho \rightarrow \infty \ .
\end{cases}
\end{align*}
$$
Again, we see that this problem is clearly cylindrically symmetric since the wire is infinite and perpendicular to the field. This means the general solution for the potential can again be written in the form
$$
\phi(\mathbf{x}) = a_0 + b_0 \log\varrho + \sum_{n=1}^\infty \big[(a_n \cos n\varphi + b_n \sin n\varphi)\varrho^n + (c_n \cos n\varphi + d_n \sin n\varphi)\varrho^{-n}\big] \ .
$$
Requiring that $\phi \rightarrow -E_0 \varrho \cos\varphi$ as $\varrho \rightarrow \infty$ forces $a_0 = b_0 = 0$ and $b_n = d_n = 0$ for all $n$, and $a_n = c_n = 0$ when $n \neq 1$. When $n=1$ we must evidently have $a_1 = -E_0$ as well. This evidently leaves a solution of the form
$$
\phi(\mathbf{x}) = \bigg(-E_0 \rho + \frac{c_1}{\varrho}\bigg) \cos\varphi \ .
$$
Requiring now that the potential vanish on the surface of the wire forces $c_1 = E_0 R^2$. Plugging this back in, we finally have
$$
\phi(\mathbf{x}) = -E_0 \varrho \bigg(1 - \frac{R^2}{\varrho^2}\bigg) \cos\varphi \ .
$$
When dealing with conductors placed in an external field, it's good to look at the induced charge density $\sigma$ along the surface of the conductor as well. Since the surface normal is just $\mathbf{n} = \mathbf{e}_\varrho$ in this problem, we have
$$
\sigma = -\frac{1}{4\pi} \frac{\partial \phi}{\partial\varrho} = \frac{E_0}{2\pi} \cos\varphi \ .
$$
As we'd expect, the surface charge polarizes along the direction of the field, with positive charge concentrating in the positive $x$-direction and the negative charge concentrating in the negative $x$-direction.

##### Example: Infinite hollow cylinder held at a given surface charge density

Suppose we have an infinitely long hollow cylinder of radius $R$ whose surface is held at some surface charge density $\sigma(\varphi)$. We're interested in the behavior of the potential inside and outside the cylinder. 

FIGURE

Recall that we can relate the surface density to the potential via its normal derivative, with $\frac{\partial \phi}{\partial n} = -4\pi \sigma$. Since the surface normal to the cylinder is $\mathbf{n} = \pm \mathbf{e}_\varrho$ depending on whether we're outside or inside the surface, we thus require that $\frac{\partial \phi}{\partial \varrho} \big|_{\varrho=R} = \mp 4\pi \sigma(\varphi)$. We'll also require that the potential not blow up at any finite position or at infinity. 

This means we end up with a Neumann boundary value problem to solve of the form
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi(\varrho,\varphi,z) = 0 \ , \\
\text{where} \ \frac{\partial \phi}{\partial \varrho} \big|_{\varrho=R} = \mp 4\pi \sigma(\varphi) \ .
\end{cases}
\end{align*}
$$
Since this problem is cylindrically symmetric, we know the general solution can be written in the form
$$
\phi(\mathbf{x}) = a_0 + b_0 \log\varrho + \sum_{n=1}^\infty \big[(a_n \cos n\varphi + b_n \sin n\varphi)\varrho^n + (c_n \cos n\varphi + d_n \sin n\varphi)\varrho^{-n}\big] \ .
$$
Now, outside the cylinder we require the potential not blow up at infinity. This forces $b_0 = a_n = b_n = 0$ outside the wire, giving
$$
\phi_+(\mathbf{x}) = a_0^+ + \sum_{n=1}^\infty (c_n^+ \cos n\varphi + d_n^+ \sin n\varphi)\varrho^{-n} \quad , \quad \varrho \geq R \ .
$$
Meanwhile, inside the cylinder we require that the potential not blow up when $\varrho \leq R$. This forces $b_0 = c_n = d_n = 0$, giving
$$
\phi_-(\mathbf{x}) = a_0^- + \sum_{n=1}^\infty (a_n^- \cos n\varphi + b_n^- \sin n\varphi)\varrho^n \quad , \quad \varrho \leq R \ .
$$
We now need to match these two solutions together at the boundary surface $\varrho = R$. Along this surface we require that these two solutions match and that the difference in normal derivatives be proportional to $\sigma(\varphi)$. The first condition requires that
$$
\begin{align*}
0 &= \phi_+(R,\varphi,z) - \phi_-(R,\varphi,z) \\
&= (a_0^+ - a_0^-) + \sum_{n=1}^\infty \bigg[(c_n^+ \cos n\varphi + d_n^+ \sin n\varphi) R^{-n} - (a_n^- \cos n\varphi + b_n^- \sin n\varphi) R^n \bigg] \\
&= (a_0^+ - a_0^-) + \sum_{n=1}^\infty R^n \bigg[(c_n^+ R^{-2n} - a_n^-) \cos n\varphi + (d_n^+ R^{-2n} - b_n^-) \sin n\varphi \bigg] \ .
\end{align*}
$$
The only way this can hold is if each term in parentheses vanishes, with $a_0^+ = a_0^-$, $a_n^- = c_n^+ R^{-2n}$, and $b_n^- = d_n^+ R^{-2n}$.

The second condition requires that
$$
\begin{align*}
\sigma(\varphi) &= -\frac{1}{4\pi} \bigg[\frac{\partial \phi_+}{\partial \varrho} - \frac{\partial \phi_-}{\partial \varrho}\bigg]_{\varrho=R} \\
&= -\frac{1}{4\pi} \sum_{n=1}^\infty \bigg[-n(c_n^+ \cos n\varphi + d_n^+ \sin n\varphi)R^{-(n+1)} - n(a_n^- \cos n\varphi + b_n^- \sin n\varphi)R^{n-1} \bigg] \\
&= \frac{1}{4\pi} \sum_{n=1}^\infty n R^{n-1} \bigg[(c_n^+ R^{-2n} + a_n^-) \cos n\varphi + (d_n^+ R^{-2n} + b_n^-) \sin n\varphi \bigg] \ .
\end{align*}
$$
Once we have a specific form for $\sigma(\varphi)$ we can proceed to match coefficients on the left and right hand sides and determine the coefficients. As an example, suppose $\sigma(\varphi) = k \sin m\varphi$ for some integer $m$ and parameter $k$. This means for all $n \neq m$ each term must vanish, with $a_n^- = -c_n^+ R^{-2n}$ for all $n$, $b_n^- = -d_n^+ R^{-2n}$ for $n \neq m$, and $d_m^+ R^{-2m} + b_m^- = k$ when $n=m$.

Matching these two sets of conditions together, we evidently require that $a_n^- = b_n^- = c_n^+ = d_n^+ = 0$ when $n \neq m$, and
$$
b_m^- = \frac{2\pi k}{m R^{m-1}} \quad , \quad d_m^+ = \frac{2\pi k}{m} R^{m+1} \ .
$$
The coefficients $a_0^+ = a_0^-$ are immaterial to this problem and can freely be set to zero. Plugging these coefficients in then gives the final potential for this particular choice of $\sigma(\varphi)$,
$$
\phi(\mathbf{x}) = \begin{cases}
\frac{2\pi k R}{m} \big(\frac{\varrho}{R}\big)^m \sin m\varphi & \varrho \leq R \ , \\
\frac{2\pi k R}{m} \big(\frac{R}{\varrho}\big)^m \sin m\varphi & \varrho \geq R \ .
\end{cases} \ .
$$
Notice that this potential evidently has a discontinuous first derivative at the surface of the cylinder. This is consistent with our observation that the electric field is discontinuous when crossing a surface of charge.

##### Example: Behavior of electric fields around corners and edges of conductors

Let's now consider a problem that will help us understand some physics better. We want to ask ourselves how the potential and electric field behave near sharp corners and edges of conducting objects. We can model this behavior by studying the following relatively simple problem.

Suppose we have two infinite conducting sheets that intersect at some angle $0 \leq \beta \leq 2\pi$ in the $xy$-plane. We'll suppose that both of the sheets are held at some constant potential $V$ on their surfaces. Since the sheets are infinite along the $z$-direction, we can treat this as a cylindrically symmetric problem and focus only on the behavior of the potential $\phi(\varrho,\varphi)$ in the $xy$-plane.

Consider then the following Dirichlet boundary value problem,
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi(\varrho,\varphi,z) = 0 \ , \\
\text{where} \ \phi(\varrho,0,z) = V \ , \\
\phi(\varrho,\beta,z) = V \ .
\end{cases}
\end{align*}
$$
Note that we require $0 \leq \varphi \leq \beta$. This means $n$ will no longer be an integer, but instead $n = \frac{k\pi}{\beta}$ for some integer $k$. Replacing $n$ by this expression in the general formula for the potential, we thus have
$$
\phi(\mathbf{x}) = a_0 + b_0 \log\varrho + \sum_{k=1}^\infty \bigg[\bigg(a_k \cos \frac{k\pi\varphi}{\beta} + b_k \sin \frac{k\pi\varphi}{\beta}\bigg) \varrho^{k\pi / \beta} + \bigg(c_k \cos \frac{k\pi\varphi}{\beta} + d_k \sin \frac{k\pi\varphi}{\beta}\bigg) \varrho^{-k\pi / \beta}\bigg] \ .
$$
We're interested in studying the behavior of this potential as $\varrho \rightarrow 0$. To keep the potential from blowing up we thus require that $b_0 = c_k = d_k = 0$. Requiring that $\phi = V$ when $\varphi = 0,\beta$ also forces $a_0 = V$ and all $b_k = 0$. We're thus left with the potential
$$
\phi(\mathbf{x}) = V + \sum_{k=1}^\infty b_k \varrho^{k\pi / \beta} \sin \frac{k\pi\varphi}{\beta} \ .
$$
Now, as $\varrho \rightarrow 0$ only the $k=1$ term dominates in the sum, meaning near the corner $\varrho = 0$ we have
$$
\phi(\mathbf{x}) \approx V + b_1 \varrho^{\pi / \beta} \sin \frac{\pi\varphi}{\beta} \ .
$$
This means near the corner the electric field is evidently given by
$$
\mathbf{E}(\mathbf{x}) \approx -\frac{\pi b_1}{\beta} \varrho^{\pi / \beta-1} \bigg(\sin \frac{\pi\varphi}{\beta}\mathbf{e}_\varrho + \cos \frac{\pi\varphi}{\beta} \mathbf{e}_\varphi\bigg) \ .
$$
The surface charge density near the corner is evidently then proportional to the field strength near the corner, with
$$
\sigma \approx \frac{|\mathbf{E}(\varrho,0)|}{4\pi} \approx -\frac{b_1}{4\beta} \varrho^{\pi / \beta-1} \ .
$$
Evidently, both the field strength and the density near the corner vary as $\varrho^{\pi / \beta-1}$. Evidently, the strength of the field and the charge density near the corner will depend explicitly on the corner's angle $\beta$. In the figure below, we show this relation for different values of $\beta$.

FIGURE

Notice when $\beta = \pi$ we recover the case of a flat conducting plane, where the electric field is constant and the charge is uniformly distributed along the surface. When $\beta < \pi$ the charge density and field go to zero near the corner, but grow rapidly as we move away from the corner. Meanwhile, when $\beta > \pi$ the corner becomes an edge, where the charge density and field become infinitely large at the edge before rapidly falling off away from the edge.

The same qualitative behaviors turn out to hold true for 3-dimensional surfaces as well. This is the reason why lightening rods work. The high concentration of charges near the edge of the rod creates a large electric field, which will draw lightening from the air when electric breakdown takes place. Electric breakdown typically occurs when clouds create electric field strengths higher than about $E \sim 250 \ \frac{\text{kV}}{\text{cm}}$. When this happens, a closed circuit effectively gets created between the charged clouds and the ground, which causes the charge to move from clouds to the ground, where the lightening rod will attract much of the charge.

#### General Potentials

We'll now return to the more general case with no symmetry in the potential. Recall we had Laplace's equation in the form
$$
0 = \frac{1}{\varrho} \frac{\partial}{\partial\varrho} \bigg(\varrho \frac{\partial\phi}{\partial\varrho} \bigg) + \frac{1}{\varrho^2} \frac{\partial^2 \phi}{\partial^2\varphi} + \frac{\partial^2 \phi}{\partial z^2} \ .
$$
We'll first apply separation of variables to split off the first two terms from the second. Assume a trial solution of the form
$$
\phi(\mathbf{x}) = F(\varrho, \varphi) Z(z) \ .
$$
Plugging this in and dividing by $JZ$, we end up with
$$
0 = \frac{1}{F\varrho} \frac{\partial}{\partial\varrho} \bigg(\varrho \frac{\partial F}{\partial\varrho} \bigg) + \frac{1}{F\varrho^2} \frac{\partial^2 F}{\partial^2\varphi} + \frac{1}{Z}\frac{\partial^2 Z}{\partial z^2} \ .
$$
The only way this equation can vanish is if the first two terms equal a constant, and the last term is a constant of opposite sign. We'll call that constant $-k^2$. We then end up with two differential equations of the form
$$
\begin{align*}
\frac{1}{\varrho} \frac{\partial}{\partial\varrho} \bigg(\varrho \frac{\partial F}{\partial\varrho} \bigg) + \frac{1}{\varrho^2} \frac{\partial^2 F}{\partial^2\varphi} &= -k^2 F(\varrho,\varphi) \ , \\
\frac{d^2 Z}{dz^2} &= k^2 Z(z) \ .
\end{align*}
$$
The second equation is easy enough to solve. Its solutions are just exponentials, with
$$
Z(z) = A e^{kz} + B e^{-kz} \ .
$$
To deal with the first equation we separate variables again by assuming a trial solution of the form
$$
F(\varrho,\varphi) = R(\varrho) \Phi(\varphi) \ .
$$
Then multiplying both sides of the equation by $\varrho^2$, dividing by $F = R\Phi$, and rearranging terms, we get
$$
\bigg[\frac{\varrho}{R\varrho} \frac{d}{d\varrho} \bigg(\varrho \frac{dR}{d\varrho} \bigg) + k^2 \varrho^2\bigg] + \frac{1}{\Phi} \frac{d^2 \Phi}{d^2\varphi} = 0 \ .
$$
Again, the only way these terms can vanish is if they equal the same constant with opposite sign. We'll call that constant $n^2$, so that we end up with following two differential equations,
$$
\begin{align*}
\frac{1}{\varrho} \frac{d}{d\varrho} \bigg(\varrho \frac{dR}{d\varrho} \bigg) + k^2 \varrho^2 R(\varrho)  &= n^2 R(\varrho) \ , \\
\frac{d^2 \Phi}{d^2\varphi} &= -n^2 \Phi(\varphi) \ .
\end{align*}
$$
The second equation just gives the same solution found in the cylindrically symmetric case. Requiring that $\Phi(\varphi)$ be periodic on the interval $0 \leq \varphi \leq 2\pi$ forces $n$ be an integer. For each integer $n$ we get a solution in terms of sines and cosines of the form
$$
\Phi_n(\varphi) = a_n \cos n\varphi + b_n \sin n\varphi \ .
$$
Since these Fourier functions form a complete set of orthogonal functions, we can get the general solution $\Phi(\varphi)$ by expanding in terms of these basis functions $\Phi_n(\varphi)$ to get a Fourier series solution.

To deal with the first equation, we'll expand out the derivative and move everything to one side to write
$$
\varrho^2\frac{d^2R}{d\varrho^2} + \varrho \frac{dR}{d\varrho} + \big(k^2 \varrho^2 - n^2\big) R(\varrho) = 0 \ .
$$
It's conventional to write this equation slightly differently by letting $x = k\varrho$. Plugging this in, we get
$$
x^2\frac{d^2R}{dx^2} + x \frac{dR}{dx} + \big(x^2 - n^2\big) R(x) = 0 \ .
$$
From the appendix, we recognize this differential equation as *Bessel's equation*. Its solutions are given by a superposition of Bessel functions of the first and second kind, denoted $J_n(x)$ and $Y_n(x)$ respectively,
$$
R_n(x) = c_n J_n(x) + d_n Y_n(x) \ .
$$
Recall that Bessel functions can be qualitatively thought of as decaying oscillating functions. This means they'll both have infinitely many roots, which we'll call $x_{nm}$, where $m$ is another integer characterizing the $m$<sup>th</sup> root of $J_n(x)$. Note that by definition both $J_n(x)$ and $Y_n(x)$ will share the same roots for a given fixed $n$.

As written, solutions of this form don't form a complete set of orthogonal functions, but for each $n$ we can find such a set by letting $k$ be proportional to the roots $x_{nm}$. Indeed, if we let $k_{nm} = \frac{x_{nm}}{a}$ for some characteristic length $a$, then for each $n$, the set of functions $J_n(k_{nm} \varrho)$ and $Y_n(k_{nm} \varrho)$ will form a complete set of orthogonal functions on the interval $0 \leq \varrho \leq a$. We can then express each radial solution $R_n(\varrho)$ as a superposition of these basis functions $R_{nm}(\varrho)$ defined by
$$
R_{nm}(\varrho) = c_n J_n(k_{nm}\varrho) + d_n Y_n(k_{nm} \varrho) \ .
$$
To proceed further we need to know the specific boundary conditions for the given problem to stitch together the general solution. Let's suppose we have a cylinder of radius $R$ and height $h$. Suppose the bottom and side of the cylinder are grounded, and the top of the cylinder is held at some known potential $V(\varrho,\varphi)$.

FIGURE

This then gives a Dirichlet boundary value problem of the form
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi(\varrho,\varphi,z) = 0 \ , \\
\text{where} \ \phi(\varrho,\varphi,h) = V(\varrho,\varphi) \ , \\
\phi(\varrho,\varphi,0) = 0 \ , \\
\phi(R,\varphi,z) = 0 \ .
\end{cases}
\end{align*}
$$
Suppose first we're inside the cylinder, so $0 \leq \varrho \leq R$ and $0 \leq z \leq h$. We can express the radial solution as a superposition of Bessel functions of the form
$$
R_{nm}(\varrho) = c_{nm} J_n(k_{nm}\varrho) + d_{nm} Y_n(k_{nm} \varrho) \ ,
$$
where requiring $k_{nm} = \frac{x_{nm}}{R}$ will forces this solution to vanish at the sides of the cylinder where $\varrho = R$. Since $Y_n(k_{nm} \varrho)$ blows up at the origin, requiring that the potential not blow up at the origin will force each $d_{nm} = 0$.

Along the $z$-direction, it's easy to see that imposing the boundary condition $Z(0) = 0$ will yield a family of general solutions parametrized by $k_{nm}$ of the form
$$
Z_{nm}(z) = \sinh k_{nm} z \ .
$$
The general solution for $\Phi_n(\varphi)$ is unaffected by the boundary conditions. Multiplying the three solutions together will then yield an infinite set of basis potentials of the form
$$
\phi_{nm}(\varrho,\varphi,z) = J_n(k_{nm}\varrho) \big[a_{nm} \cos n\varphi + b_{nm} \sin n\varphi\big] \sinh k_{nm} z \ .
$$
These basis potentials still don't satisfy the final boundary condition that $\phi(\varrho,\varphi,h) = V(\varrho,\varphi)$. This means we need to use the principle of superposition to consider a more general class of solutions of the form
$$
\phi(\varrho,\varphi,z) = \sum_{n=0}^\infty \sum_{m=1}^\infty J_n(k_{nm}\varrho) \big[a_{nm} \cos n\varphi + b_{nm} \sin n\varphi\big] \sinh k_{nm} z \ .
$$
If we plug the final boundary condition into the previous expression and set $z = h$, we get
$$
V(\varrho,\varphi) = \phi(\varrho,\varphi,h) = \sum_{n=0}^\infty \sum_{m=1}^\infty J_n(k_{nm}\varrho) \big[a_{nm} \cos n\varphi + b_{nm} \sin n\varphi\big] \sinh k_{nm} h \ .
$$
To determine the coefficients $a_{nm}$, we multiply both sides by $\varrho J_{n'}(k_{n'm'}\varrho) \cos n'\varphi$ and integrate over $\varrho$ and $\varphi$ inside the cylinder. On the right-hand side, we end up with
$$
\sum_{n,m} \sinh k_{nm} h \int_0^R d\varrho \ \varrho J_{n'}(k_{n'm'}\varrho) J_n(k_{nm}\varrho) \int_0^{2\pi} d\varphi \ \cos n'\varphi \big[a_{nm} \cos n\varphi + b_{nm} \sin n\varphi\big] \ .
$$
To deal with the first integral we appeal to the orthogonality condition of Bessel functions, which says that
$$
\int_0^R d\varrho \ \varrho J_{n'}(k_{n'm'}\varrho) J_n(k_{nm}\varrho) = \frac{R^2}{2} J_{n'+1}^2(k_{n'm'} \varrho) \delta_{mm'} \ .
$$
For the second integral, we use the fact that $\cos n'\varphi$ will be orthogonal to all $\sin n\varphi$, and all $\cos n\varphi$ when $n \neq n'$ to get
$$
\int_0^{2\pi} d\varphi \ \cos n'\varphi \big[a_{nm} \cos n\varphi + b_{nm} \sin n\varphi\big] = \pi a_{nm} \delta_{nn'} \ .
$$
Putting these two results together, the left-hand side evidently evaluates to
$$
\frac{\pi R^2}{2} J_{n'+1}^2(k_{n'm'} \varrho) a_{n'm'} \sinh k_{n'm'} h \ .
$$
For the right-hand side we do the same thing to get an integral of the form
$$
\int_0^R d\varrho \int_0^{2\pi} d\varphi \ \varrho V(\varrho,\varphi) J_{n'}(k_{n'm'}\varrho) \cos n'\varphi \ .
$$
This means the coefficients $a_{nm}$ will be given by the formula
$$
a_{nm} = \frac{2}{\pi R^2 J_{n+1}^2(k_{nm} \varrho)} \frac{1}{\sinh k_{nm} h} \int_0^R d\varrho \int_0^{2\pi} d\varphi \ \varrho V(\varrho,\varphi) J_{n}(k_{nm}\varrho) \cos n\varphi \ .
$$
Note that this is strictly speaking only true when $n \neq 0$. When $n = 0$ we need to also divide by $2$, since in that case no cosine terms appear in the $\varphi$ integral, which will cause it to give $2\pi$ instead of $\pi$.

Similarly, we can determine the coefficients $b_{nm}$ by multiplying both sides of the equation for $\phi(\varrho,\varphi,h)$ by $\varrho J_{n'}(k_{n'm'}\varrho) \sin n'\varphi$ and performing the same integrations. We end up with the same formula except with the cosine replaced by a sine,
$$
b_{nm} = \frac{2}{\pi R^2 J_{n+1}^2(k_{nm} \varrho)} \frac{1}{\sinh k_{nm} h} \int_0^R d\varrho \int_0^{2\pi} d\varphi \ \varrho V(\varrho,\varphi) J_{n}(k_{nm}\varrho) \sin n\varphi \ .
$$
Once these coefficients are determined we have the general solution for the potential that solves this BVP.

In some cases, we might be interested in a problem where there is no cylindrical surface present. In that case we want to send $R \rightarrow \infty$ and $z \rightarrow \infty$. It turns out in this case that the radial solution $R(\varrho)$ will now need to be expressed as an integral over all $k$. Such an integral is called a *Hankel transform*. In that case we'd instead express the general solution for the potential in this problem as a sum over $n$ and an integral over $k$. Sending $z \rightarrow \infty$ as well makes the $\sinh$ function goes away, giving
$$
\phi(\varrho,\varphi,z) = \sum_{n=0}^\infty \int_0^\infty dk \ J_n(k\varrho) \big[a_n(k) \cos n\varphi + b_n(k) \sin n\varphi\big] \ .
$$
The boundary condition relation would then be expressed by the integral
$$
V(\varrho,\varphi) = \sum_{n=0}^\infty \int_0^\infty dk \ J_n(k\varrho) \big[a_n(k) \cos n\varphi + b_n(k) \sin n\varphi\big] \ .
$$
Other than that, we'd proceed as the same. The only difference is that we now have a continuum of coefficients to obtain for both $a_n(k)$ and $b_n(k)$. We can use similar techniques as above, except that the orthogonality relation will result in the Kronecker delta $\delta_{mm'}$ being replaced by a Dirac delta function $\delta(k-k')$.

- Fill this in more, since you'll use it in the next example.
- Add a section on Hankel transforms to the appendix, and expand on the Fourier transform there (and above perhaps).

##### Example: Conducting plane with a circular hole

- See Jackson.

