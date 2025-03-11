# Electrodynamic Potentials

In this chapter we will continue on with the theory of electrodynamics. In the previous chapter we derived Maxwell's equations and used those to study the behavior of electromagnetic fields in regions free of sources. We saw that in this setting the fields satisfy the homogeneous wave equation, which imply the fields behave as electromagnetic waves when far from their sources. In this chapter we will add the sources back in and discuss how the fields behave in general. This will lead us to a discussion of the electrodynamic potentials, the inhomogeneous wave equation and its Green's function, and the multipole expansion of electrodynamics. We will also study the most fundamental example of an electrodynamic system, the moving point charge.



## Electrodynamic Potentials

Just as in statics it was useful to express the EM fields in terms of potentials, it'll be useful to do the same in electrodynamics. Recall that we derived the scalar potential $\phi(\mathbf{x})$ from the assumption that $\nabla \times \mathbf{E} = \mathbf{0}$, and the vector potential $\mathbf{A}(\mathbf{x})$ from the assumption that $\nabla \cdot \mathbf{B} = 0$. Provided these equations hold, we can write
$$
\mathbf{E} = -\nabla \phi \quad , \quad \mathbf{B} = \nabla \times \mathbf{A} \ .
$$
As we'll soon see, we'll need to modify these relations slightly in electrodynamics.

### Electrodynamic Potentials

In electrodynamics it's still true that $\nabla \cdot \mathbf{B} = 0$ even for time-varying B-fields, which means we can still find a time-varying vector field $\mathbf{A}(\mathbf{x},t)$ such that $\mathbf{B} = \nabla \times \mathbf{A}$. We will still refer to $\mathbf{A}(\mathbf{x},t)$ as the *vector potential*.

However, it's no longer true that $\nabla \times \mathbf{E} = \mathbf{0}$ for time-varying E-fields, which means we no longer find a time-varying scalar field $\phi(\mathbf{x},t)$ such that $\mathbf{E} = -\nabla \phi$. However, we can still find a related vector field whose curl vanishes. Consider Faraday's law,
$$
\nabla \times \mathbf{E} = -\frac{1}{c} \frac{\partial \mathbf{B}}{\partial t} \ .
$$
If we write $\mathbf{B} = \nabla \times \mathbf{A}$ and move everything to the left-hand side, we have
$$
\nabla \times \bigg(\mathbf{E} + \frac{1}{c} \frac{\partial \mathbf{A}}{\partial t}\bigg) = 0 \ .
$$
Since we now have a vector field whose curl vanishes, we can find a scalar field $\phi(\mathbf{x},t)$ such that
$$
\mathbf{E} + \frac{1}{c} \frac{\partial \mathbf{A}}{\partial t} = -\nabla \phi \ .
$$
This means we can express $\mathbf{E}(\mathbf{x},t)$ in terms of the time-varying scalar and vector potentials as
$$
\mathbf{E} = -\nabla \phi - \frac{1}{c} \frac{\partial \mathbf{A}}{\partial t} \ .
$$
As before, we call $\phi(\mathbf{x},t)$ the *scalar potential*. Thus, in electrodynamics we relate the EM fields to the potentials by
$$
\boxed{
\begin{align*}
\mathbf{E} &= -\nabla \phi - \frac{1}{c} \frac{\partial \mathbf{A}}{\partial t} \\ 
\mathbf{B} &= \nabla \times \mathbf{A}
\end{align*}
} \ .
$$
The dynamical behavior of these potentials must then be satisfied by the remaining two Maxwell equations.

### Field Equations for Potentials

We still have two more of Maxwell's equations that the potentials need to satisfy, namely the inhomogeneous equations
$$
\nabla \cdot \mathbf{E} = 4\pi \rho \quad , \quad \nabla \times \mathbf{B} = \frac{4\pi}{c} \mathbf{J} + \frac{1}{c} \frac{\partial \mathbf{E}}{\partial t} \ .
$$
If we plug the expression for $\mathbf{E}$ in terms of the potentials into the first equation, we must have
$$
\nabla \cdot \bigg(\nabla \phi + \frac{1}{c} \frac{\partial \mathbf{A}}{\partial t}\bigg) = -4\pi \rho \ .
$$
Simplifying the left-hand side, this gives the following differential equation for the scalar potential,
$$
\nabla^2 \phi + \frac{1}{c} \frac{\partial}{\partial t} \nabla \cdot \mathbf{A} = -4\pi \rho \ .
$$
Similarly, if we plug the expressions for both $\mathbf{E}$ and $\mathbf{B}$ into the second inhomogeneous equation, we have
$$
\nabla \times (\nabla \times \mathbf{A}) = \frac{4\pi}{c} \mathbf{J} - \frac{1}{c} \frac{\partial}{\partial t} \bigg(\nabla \phi + \frac{1}{c} \frac{\partial \mathbf{A}}{\partial t}\bigg) \ .
$$
Since $\nabla \times (\nabla \times \mathbf{A}) = \nabla (\nabla \cdot \mathbf{A}) - \nabla^2 \mathbf{A}$, upon rearranging we get
$$
\nabla^2 \mathbf{A} - \frac{1}{c^2} \frac{\partial^2 \mathbf{A}}{\partial t^2} - \nabla \bigg(\nabla \cdot \mathbf{A} + \frac{1}{c} \frac{\partial \phi}{\partial t} \bigg) = -\frac{4\pi}{c} \mathbf{J} \ .
$$
As things stand, the differential equations for $\phi$ and $\mathbf{A}$ look quite different, but notice each equation contains a term proportional to $\nabla \cdot \mathbf{A}$, which means we can potentially make them have the same form by exploiting gauge invariance.

### Gauge Invariance

Recall that we can always add to the vector potential the gradient of any scalar field $\chi$ without changing the underlying B-field,
$$
\mathbf{A}' = \mathbf{A} + \nabla \chi \ .
$$
This is called a *gauge transformation*. This follows from the relation $\mathbf{B} = \nabla \times \mathbf{A}$ along with the fact that the curl of any gradient is always zero. This is still true in electrodynamics, except now when we do a gauge transformation we have to be careful not to alter the E-field as well. The only way we can ensure this is to require that $\phi$ also gauge transform simultaneously as
$$
\phi' = \phi - \frac{1}{c} \frac{\partial \chi}{\partial t} \ .
$$
Thus, in electrodynamics, a gauge transformation is any transformation on both the scalar and vector potentials of the form
$$
\begin{align*}
\phi' &= \phi -\frac{1}{c} \frac{\partial \chi}{\partial t} \ , \\ 
\mathbf{A}' &= \mathbf{A} + \nabla \chi \ .
\end{align*}
$$
As we mentioned in magnetostatics, we can uniquely specify a given gauge by fixing $\chi$, or equivalently by fixing $\nabla \cdot \mathbf{A}$. This ability to specify the divergence of the vector potential gives us a gauge freedom we can use to simplify various formulas without altering any of the underlying physics. We can fix $\nabla \cdot \mathbf{A}$ to be anything we like so long as we're consistent within a given theory.

In magnetostatics we fixed the gauge by choosing the *Coulomb gauge* $\nabla \cdot \mathbf{A} = 0$, which was the natural choice in that setting. We could still do that in electrodynamics as well if we like. If we did, the differential equations for the potentials would be written
$$
\begin{align*}
\nabla^2 \phi &= -4\pi \rho(\mathbf{x},t) \ , \\
\nabla^2 \mathbf{A} - \frac{1}{c^2} \frac{\partial^2 \mathbf{A}}{\partial t^2} &= -\frac{4\pi}{c} \mathbf{J}(\mathbf{x},t) + \frac{1}{c} \frac{\partial}{\partial t} \nabla\phi(\mathbf{x},t) \ .
\end{align*}
$$
This choice of gauge makes the equation for the scalar potential especially simple. We just recover Poisson's equation, the same equation we saw in electrostatics. However, the equation for the vector potential is more complex. It's coupled to the scalar potential $\phi$, which means we need to first solve for $\phi$ before we can solve for $\mathbf{A}$. We'll examine these solutions later.

While the Coulomb gauge is physically allowed it's not intuitively pleasing. For one thing, we'd like the equations for $\phi$ and $\mathbf{A}$ to have the same form if possible. But more importantly, we'd like these equations to be *Lorentz invariant*, meaning they transform according to the laws of special relativity. Thus, for most of this course we'll adopt a different gauge, the *Lorentz gauge*.

By staring at the original differential equations for the potentials in the previous section one can easily identify a gauge that makes the two equations symmetric,
$$
\boxed{
\nabla \cdot \mathbf{A} = - \frac{1}{c} \frac{\partial \phi}{\partial t} 
} \ .
$$
This choice of gauge is called the *Lorentz gauge*, because as we'll see in a later chapter it's Lorentz invariant. In the Lorentz gauge, the differential equations for the potentials can be written symmetrically as
$$
\boxed{
\begin{align*}
&\nabla^2 \phi - \frac{1}{c^2} \frac{\partial^2 \phi}{\partial t^2} = -4\pi \rho(\mathbf{x},t) \\ 
&\nabla^2 \mathbf{A} - \frac{1}{c^2} \frac{\partial^2 \mathbf{A}}{\partial t^2} = -\frac{4\pi}{c} \mathbf{J}(\mathbf{x},t)
\end{align*}
} \ .
$$
Differential equations of this form are known as *inhomogeneous wave equations*. As we'll soon see, functions satisfying this kind of partial differential equation necessarily must propagate at a finite speed, namely $c$.

To see what kind of condition the Lorentz gauge places on the gauge potential $\chi$, suppose
$$
\nabla \cdot \mathbf{A}' = - \frac{1}{c} \frac{\partial \phi'}{\partial t} \ ,
$$
where $\mathbf{A}' = \mathbf{A} + \nabla \chi$ and $\phi' = \phi - \partial_t \chi / c$ is some gauge transformation. Plugging in and simplifying, we get
$$
\nabla^2 \chi - \frac{1}{c^2} \frac{\partial^2 \chi}{\partial t^2} = -\nabla \cdot \mathbf{A} - \frac{1}{c} \frac{\partial \phi}{\partial t} \ .
$$
Thus, if we have potentials $\phi$ and $\mathbf{A}$ that don't satisfy the Lorentz gauge, we can always convert them into potentials that do by finding a gauge potential $\chi$ that solves this inhomogeneous wave equation.

## Green's Function

Just as we characterized the solutions to Poisson's equation in electrostatics by first finding its Green's function, we'll want to do the same with the inhomogeneous wave equation. First, we'll want to understand the nature of wave equation problems, which are characterized by both boundary conditions as well as initial conditions.

### Inhomogeneous Wave Equation

Suppose $\phi(\mathbf{x},t)$ is some arbitrary scalar field that happens to satisfy the inhomogeneous wave equation
$$
\nabla^2 \phi - \frac{1}{c^2} \frac{\partial^2 \phi}{\partial t^2} = -4\pi \rho(\mathbf{x},t) \ ,
$$
where $\rho(\mathbf{x},t)$ is some arbitrary source function. Here $\phi(\mathbf{x},t)$ could be any scalar field, or perhaps one of the components of some other vector (or even tensor) field. Such solutions to the wave equation are sometimes called *wave functions*.

The wave equation is a second order linear partial differential equation. Since it involves time and not just space, the exact solution for a given source will depend both on the initial conditions of $\phi(\mathbf{x},t)$ and its time derivative, as well as any imposed boundary conditions. A PDE subject to both initial conditions and boundary conditions is often called an *initial-boundary value problem*, or *IBVP* for short.

We often denote the wave operator above using the short-hand symbol $\square$, called the *d'Alembertian*. That is, we define
$$
\square \equiv \nabla^2 - \frac{1}{c^2} \frac{\partial^2}{\partial t^2} \ .
$$
In this notation the inhomogeneous wave equation is then written simply as
$$
\square \phi = -4\pi\rho(\mathbf{x}, t) \ .
$$
As with any linear PDE, the general solution $\phi(\mathbf{x},t)$ to the wave equation can be express as the sum of two solutions, a *particular solution* $\phi_p(\mathbf{x},t)$ that satisfies the inhomogeneous wave equation $\square \phi_p = -4\pi\rho$ free of any boundary conditions, and a *homogeneous solution* $\phi_h(\mathbf{x},t)$ that satisfies the *homogeneous wave equation* $\square \phi_h = 0$ subject to the boundary conditions of the problem. Provided we can find such solutions, we can always then write
$$
\phi(\mathbf{x},t) = \phi_h(\mathbf{x},t) + \phi_p(\mathbf{x},t) \ .
$$
That we can always express the general solution as the sum of a particular and homogeneous solution follows as usual from the principle of superposition, which applies to *any* linear PDE.

We'll discuss the homogeneous solutions in much more depth in later chapters when we study electromagnetic waves. For now, we'll focus on the particular solution, or equivalently its Green's function. The Green's function $G(\mathbf{x}, t)$ is defined to be the solution to the inhomogeneous wave equation for a unit point charge passing through the origin at time $t=0$,
$$
\nabla^2 G - \frac{1}{c^2} \frac{\partial^2 G}{\partial t^2} = -4\pi\delta(\mathbf{x})\delta(t) \ .
$$
Assuming we can find this Green's function, we can obtain the particular solution $\phi_p(\mathbf{x},t)$ via space-time convolution of $G(\mathbf{x}, t)$ with the source $\rho(\mathbf{x},t)$,
$$
\phi_p(\mathbf{x},t) = \int d^3\mathbf{x}' dt' \ \rho(\mathbf{x}', t') G(\mathbf{x}-\mathbf{x}', t-t') \ .
$$
Notice that we are now doing a 4-dimensional convolution over *both* space and time.


### Green's Function

Let's now try to find this Green's function. Suppose $G(\mathbf{x}, t)$ is the solution to the inhomogeneous wave equation
$$
\nabla^2 G - \frac{1}{c^2} \frac{\partial^2 G}{\partial t^2} = -4\pi\delta(\mathbf{x})\delta(t) \ .
$$
As with any Green's function, we'll require that $G(\mathbf{x}, t) \to 0$ as both $r \to \infty$ and $t \to \infty$.

To find $G(\mathbf{x}, t)$ we'll use the same approach we did to find the Green's function for Poisson's equation in electrostatics. That is, we'll take the Fourier transform of both sides of the wave equation, solve for the Green's function in the frequency domain, and then inverse transform to get the original Green's function in the space-time domain.

By definition, the Fourier transform of a space-time dependent function $G(\mathbf{x}, t)$ is given by
$$
G(\mathbf{k},\omega) \equiv \int d^3\mathbf{x} dt \ G(\mathbf{x},t) e^{-i (\mathbf{k} \cdot \mathbf{x} - \omega t)} \ .
$$
Here the spatial Fourier conjugate $\mathbf{k}$ represents the usual wave vector, and the time Fourier conjugate $\omega$ represents the usual angular frequency. Note that as usual $\mathbf{k}$ has dimensions of inverse length, while $\omega$ has dimensions of inverse time.

Now, we want to Fourier transform the wave equation above. This can be done by multiplying both sides by $e^{-i (\mathbf{k} \cdot \mathbf{x} - \omega t)}$ and integrating over all space and time,
$$
\int d^3\mathbf{x} dt \ \bigg[\nabla^2 G - \frac{1}{c^2} \frac{\partial^2 G}{\partial t^2}\bigg] e^{-i (\mathbf{k} \cdot \mathbf{x} - \omega t)} = -4\pi \int d^3\mathbf{x} dt \ \delta(\mathbf{x})\delta(t) e^{-i (\mathbf{k} \cdot \mathbf{x} - \omega t)} \ .
$$
The integral on the right-hand side is just one following the usual properties of the delta function, while the integral on the left-hand side can be simplified by applying integration by parts twice and noting the boundary terms vanish. All together, we get
$$
\bigg(-|\mathbf{k}|^2 + \frac{\omega^2}{c^2}\bigg) G(\mathbf{k}, \omega) = -4\pi \ .
$$
We thus have
$$
G(\mathbf{k}, \omega) = -\frac{4\pi}{(\omega/c)^2 - |\mathbf{k}|^2} = -\frac{4\pi c^2}{\omega^2 - c^2|\mathbf{k}|^2} \ .
$$
To recover $G(\mathbf{x},t)$ we now need to take the *inverse* Fourier transform of this function, which is defined as the integral
$$
G(\mathbf{x},t) = \int \frac{d^3\mathbf{k}d\omega}{(2\pi)^4} \ G(\mathbf{k},\omega) e^{i(\mathbf{k} \cdot \mathbf{x} - \omega t)} \ .
$$
All that remains now is to perform the integration. We'll find it convenient to integrate over $\omega$ first. We'll thus write
$$
G(\mathbf{x},t) = -\frac{4\pi c^2}{(2\pi)^4} \int d^3\mathbf{k} \  e^{i\mathbf{k} \cdot \mathbf{x}} \int_{-\infty}^\infty d\omega \ \frac{e^{-i\omega t}}{\omega^2 - c^2|\mathbf{k}|^2} \ .
$$
Performing the integration over $\omega$ requires the tools of complex analysis. We showed in the appendix that
$$
\int_{-\infty}^\infty dx \ \frac{e^{-itx}}{x^2 - a^2} = -\frac{\pi}{a} \sin a|t| \ .
$$
Identifying $x \leftrightarrow \omega$ and $a \leftrightarrow c|\mathbf{k}|$, we can see that the solution to the $\omega$ integral is thus
$$
\int_{-\infty}^\infty d\omega \ \frac{e^{-i\omega t}}{\omega^2 - c^2|\mathbf{k}|^2} = -\frac{\pi}{c|\mathbf{k}|} \sin c|\mathbf{k}t| \ .
$$

Plugging this result back into the Green's function and simplifying, we have
$$
G(\mathbf{x},t) = \frac{c}{(2\pi)^2} \int d^3\mathbf{k} \  e^{i\mathbf{k} \cdot \mathbf{x}} \frac{\sin c|\mathbf{k}t|}{|\mathbf{k}|} \ .
$$
All that remains now is the integral over $\mathbf{k}$. We'll orient the axes in $\mathbf{k}$ space so that $\mathbf{x} = r\mathbf{e}_z$ and $\mathbf{k} \cdot \mathbf{x} = kr\cos\theta_k$, where $k = |\mathbf{k}|$. Writing the volume element in spherical coordinates $(k, \theta_k, \varphi_k)$ as $d^3 \mathbf{k} = k^2 \sin\theta_k dk d\theta_k d\varphi_k$ and integrating over $\varphi_k$, we get
$$
G(\mathbf{x},t) = \frac{c}{2\pi} \int_0^\infty k^2 dk \ \frac{\sin ck|t|}{k} \int_0^\pi d\theta_k \  \sin\theta_k e^{ikr\cos\theta_k} \ .
$$
We saw this same $\theta_k$ integral before when calculating the Green's function in electrostatics, where we showed
$$
\int_0^\pi d\theta_k \  \sin\theta_k e^{ikr\cos\theta_k} = \int_{-1}^1 d\mu \ e^{ikr\mu} = 2\frac{\sin kr}{kr} \ .
$$
All that remains now is the integral over $k$. Canceling the factors of $k^2$, we have
$$
G(\mathbf{x},t) = \frac{c}{\pi r} \int_0^\infty dk \ \sin ck|t| \sin kr \ .
$$
This integral can be done by writing the expanding the sines in terms of complex exponentials and exploiting the properties of the delta function. We have
$$
\begin{align*}
G(\mathbf{x},t) &= \frac{c}{\pi r} \int_0^\infty dk \ \frac{1}{2i} \big(e^{ick|t|} - e^{-ick|t|}\big) \frac{1}{2i} \big(e^{ikr} - e^{-ikr}\big) \\
&= -\frac{c}{4\pi r} \int_0^\infty dk \ \big[e^{ik(c|t| + r)} - e^{ik(c|t| - r)} - e^{ik(-c|t| + r)} + e^{ik(-c|t| - r)}\big] \\
&= -\frac{c}{4\pi r} \big[2\pi\delta(c|t| + r) - 2\pi\delta(c|t| - r) - 2\pi\delta(-c|t| + r) + 2\pi\delta(-c|t| - r)\big] \\
&= \frac{c}{2r} \big[\delta(c|t| - r) - \delta(c|t| + r)\big] \\
&= \frac{1}{2r} \big[\delta(|t| - r/c) - \delta(|t| + r/c)\big] \ .
\end{align*}
$$
Now, since $|t| > 0$ and $r > 0$, the second delta function must vanish since we can never have $|t| = -r/c$, which means
$$
G(\mathbf{x},t) = \frac{1}{2r} \delta(|t| - r/c) = \frac{1}{2r} [\delta(t - r/c) + \delta(t + r/c)] \ .
$$
This is called the *symmetrized Green's function* for the wave equation for reasons we'll understand in a moment.

### Retarded and Advanced Solutions

Let's now examine each term in this Green's function more closely. It'll be useful to define
$$
t_\text{ret} \equiv t - \frac{r}{c} \quad , \quad t_\text{adv} \equiv t + \frac{r}{c} \ .
$$
We call $t_\text{ret}$ the *retarded time* and $t_\text{adv}$ the *advanced time* for reasons that'll become clear in a moment. Similarly, we define
$$
\begin{align*}
&G_\text{ret}(\mathbf{x}, t) \equiv \frac{\delta(t - r/c)}{r} = \frac{\delta(t_\text{ret})}{r} \ , \\
&G_\text{adv}(\mathbf{x}, t) \equiv \frac{\delta(t + r/c)}{r} = \frac{\delta(t_\text{adv})}{r} \ ,
\end{align*}
$$
where $G_\text{ret}(\mathbf{x}, t)$ is called the *retarded Green's function* and $G_\text{adv}(\mathbf{x}, t)$ is the *advanced Green's function*. In this notation, we can then rewrite the symmetrized Green's function as the average of the retarded and advanced Green's functions,
$$
G(\mathbf{x}, t) = \frac{1}{2}[G_\text{ret}(\mathbf{x}, t) + G_\text{adv}(\mathbf{x}, t)] \ .
$$
Now, notice that both $G_\text{ret}(\mathbf{x}, t)$ and $G_\text{adv}(\mathbf{x}, t)$ each individually satisfy the inhomogeneous wave equation
$$
\nabla^2 G - \frac{1}{c^2} \frac{\partial^2 G}{\partial t^2} = -4\pi\delta(\mathbf{x})\delta(t) \ .
$$
That is, the retarded and advanced Green's functions are each individually valid Green's function. By the principle of superposition then, any weighted average of the two will also be a valid Green's function to the wave equation. This means that in some sense the retarded and Green's functions are more fundamental than the symmetrized Green's function found before.

Now, let's ask how these retarded and advanced Green's functions behave physically with time. Let's first look at the retarded Green's function
$$
G_\text{ret}(\mathbf{x}, t) = \frac{\delta(t_\text{ret})}{r} = \frac{\delta(t - r/c)}{r} \ .
$$
Notice that this function is only non-zero when $t = r/c$. Since $r/c \geq 0$, this function can only be non-zero when $t \geq 0$. In particular, this means $G_\text{ret}(\mathbf{x}, t) = 0$ when $t < 0$. When $t \geq 0$, the function is only non-zero when $t = r/c$. This is known as a *wavefront*. As time increases, this wavefront propagates outward from the origin as a spherical wave with a constant speed $c$, reaching a radius $r$ at time $t = r/c$ and going to infinity as $t \to \infty$. We can thus think of the retarded Green's function as a spherical wave propagating outward in time from the origin at a constant speed.

FIGURE (show outward spherical wave)

What about the advanced Green's function? In that case, we instead have
$$
G_\text{adv}(\mathbf{x}, t) = \frac{\delta(t_\text{adv})}{r} = \frac{\delta(t + r/c)}{r} \ .
$$
Notice this function is only non-zero when $t = -r/c$. Since $r/c \geq 0$, $G_\text{adv}(\mathbf{x}, t)$ can only be non-zero when $t \leq 0$. Thus, we must have $G_\text{adv}(\mathbf{x}, t) = 0$ when $t > 0$. When $t \leq 0$, the wavefront of this function is only non-zero when $-t = r/c$. At time $t=0$, the wavefront propagates outward to infinity with *decreasing* time, at the same constant speed $c$. To an observer, it would seem like a wave is coming in from infinity and terminating at the origin at time $t=0$. Equivalently, we can think of the advanced Green's function as a spherical wave propagating out from the origin at constant speed, but *backward* in time instead of forward.

FIGURE (show inward spherical wave)

Now, from a physical perspective, only the *retarded* Green's function seems physical. If we want to think of the source charges as being the cause of an EM field, then we want to think of the field as propagating outward from the source as time increases, not propagating inward toward the source as time increases. This is the causality condition we mentioned before, which did not follow from Maxwell's equations alone. For this reason, on physical grounds we reject the advanced Green's function and insist that only the retarded Green's function be valid. Causality is thus an extra condition we impose on the theory, not one that follows from anything we've encountered before in the theory of electromagnetism.

Thus, from here on we will *always* assume that the only valid Green's function for the wave equation is the *retarded* Green's function. That is, we'll set $G(\mathbf{x}, t) \equiv G_\text{ret}(\mathbf{x}, t)$. Shifting the Green's function back to $\mathbf{x}'$ and $t'$, we thus finally have
$$
\boxed{
G(\mathbf{x} - \mathbf{x}', t - t') \equiv \frac{\delta(t' - t_\text{ret})}{|\mathbf{x} - \mathbf{x}'|}
} \ ,
$$
where the retarded time $t_\text{ret}$ is given by
$$
\boxed{
t_\text{ret} \equiv t - \frac{|\mathbf{x} - \mathbf{x}'|}{c}
} \ .
$$
We can now convolve this Green's function with the source function $\rho(\mathbf{x},t)$ to get the particular solution for the wave equation,
$$
\phi(\mathbf{x},t) = \int d^3\mathbf{x}' dt' \ \rho(\mathbf{x}', t') G(\mathbf{x}-\mathbf{x}', t-t') = \int d^3\mathbf{x}' dt' \ \rho(\mathbf{x}', t') \frac{\delta(\mathbf{x} - \mathbf{x}', t' - t_\text{ret})}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
Notice that we can go ahead and integrate with respect to $t'$ to get a volume integral. If we do that we get
$$
\phi(\mathbf{x},t) = \int d^3\mathbf{x}' \ \frac{\rho(\mathbf{x}', t_\text{ret})}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
Evidently, the particular solution to the wave equation looks exactly like the one for Poisson's equation, except that now there's a time delay $|\mathbf{x} - \mathbf{x}'|/c$ for the source at $\mathbf{x}'$ to affect the field at $\mathbf{x}$. That is, at time $t'$, the field propagates outward from $\mathbf{x}'$ as a wave traveling at a finite speed $c$. This means any source disturbance will take time to affect the field. Nothing is instantaneous.

## Field Solutions

With the particular solution to the inhomogeneous wave equation in hand we can now immediately write down the particular solutions for the scalar and vector potentials in terms of the source distributions, provided we work in the Lorentz gauge.

For the scalar potential $\phi(\mathbf{x},t)$, we have
$$
\boxed{
\phi(\mathbf{x},t) = \int d^3\mathbf{x}' \frac{\rho(\mathbf{x}',t_\text{ret})}{|\mathbf{x} - \mathbf{x}'|}
} \ .
$$
For the vector potential $\mathbf{A}(\mathbf{x},t)$, each component $A_i$ will satisfy its own inhomogeneous wave equation
$$
\square A_i = -\frac{4\pi}{c} J_i \ .
$$
Identifying the source as $J_i/c$, we can thus express the particular solution for the vector potential in vector form as
$$
\boxed{
\mathbf{A}(\mathbf{x},t) = \frac{1}{c} \int d^3\mathbf{x}' \frac{\mathbf{J}(\mathbf{x}',t_\text{ret})}{|\mathbf{x} - \mathbf{x}'|} 
} \ .
$$
Notice that now the equipotentials at any given point in time are now a function of the source evaluated at the retarded time
$$
t_\text{ret} = t - \frac{|\mathbf{x} - \mathbf{x}'|}{c} \ .
$$
In particular, this means the fields will not respond instantaneously to changes to the sources, but instead to changes to the sources that happened at a lagged time $\Delta t = |\mathbf{x} - \mathbf{x}'|/c$ seconds in the past. This lag time is of course the time it takes for a disturbance to propagate from the source point $\mathbf{x}'$ to the find point $\mathbf{x}$ when traveling at the speed of light $c$. If a disturbance to the sources happens sooner, the field won't yet know that it's happened until the disturbance is able to reach it.

### Jefimenko Equations

If we like, we can now use these particular solutions for the potentials to find the particular solutions for the EM fields, known as the *Jefimenko equations*. These equations are the electrodynamic generalization of the Coulomb and Biot-Savart laws from statics. We'll derive these equations in the Lorentz gauge. Since the fields must be the same in any gauge, their forms will still be the same whether we choose the Coulomb gauge or something else.

Let's focus on the E-field first. Using the solutions above, we can express $\mathbf{E}(\mathbf{x},t)$ in terms of the scalar and vector potentials as
$$
\begin{align*}
\mathbf{E}(\mathbf{x},t) &= -\nabla \phi(\mathbf{x},t) - \frac{1}{c} \frac{\partial}{\partial t} \mathbf{A}(\mathbf{x},t) \\
&= -\nabla \int d^3\mathbf{x}' \frac{\rho(\mathbf{x}',t_\text{ret})}{|\mathbf{x} - \mathbf{x}'|} - \frac{1}{c^2} \frac{\partial}{\partial t} \int d^3\mathbf{x}' \frac{\mathbf{J}(\mathbf{x}',t_\text{ret})}{|\mathbf{x} - \mathbf{x}'|} \\
&= - \int d^3\mathbf{x}' \bigg[\nabla \frac{\rho(\mathbf{x}',t_\text{ret})}{|\mathbf{x} - \mathbf{x}'|} + \frac{1}{c^2} \frac{\partial_t \mathbf{J}(\mathbf{x}',t_\text{ret})}{|\mathbf{x} - \mathbf{x}'|}\bigg] \ .
\end{align*}
$$
We now need to evaluate the gradient in the first term. By the product rule for gradients we have
$$
\nabla \frac{\rho(\mathbf{x}',t_\text{ret})}{|\mathbf{x} - \mathbf{x}'|} = \frac{\nabla \rho(\mathbf{x}',t_\text{ret})}{|\mathbf{x} - \mathbf{x}'|} + \rho(\mathbf{x}',t_\text{ret}) \nabla \frac{1}{|\mathbf{x} - \mathbf{x}'|} \ .
$$

Now, recall that $\nabla r = \mathbf{x}/r$, $\nabla 1/r = -\mathbf{x}/r^3$, and $t_\text{ret} = t - |\mathbf{x} - \mathbf{x}'|/c$. This means by the chain rule we have
$$
\begin{align*}
&\nabla \frac{1}{|\mathbf{x} - \mathbf{x}'|} = -\frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \ , \\
&\nabla \rho(\mathbf{x}',t_\text{ret}) = -\frac{1}{c} \frac{\mathbf{x}-\mathbf{x}'}{|\mathbf{x}-\mathbf{x}'|} \partial_t \rho(\mathbf{x}',t_\text{ret}) \ .
\end{align*}
$$
Plugging these back into the above integral, we finally get
$$
\boxed{
\mathbf{E}(\mathbf{x},t) = \int d^3\mathbf{x}' \bigg[\rho(\mathbf{x}',t_\text{ret}) \frac{\mathbf{x}-\mathbf{x}'}{|\mathbf{x}-\mathbf{x}'|^3} + \frac{1}{c} \frac{\partial \rho(\mathbf{x}',t_\text{ret})}{\partial t} \frac{\mathbf{x}-\mathbf{x}'}{|\mathbf{x}-\mathbf{x}'|^2} - \frac{1}{c^2} \frac{\partial \mathbf{J}(\mathbf{x}',t_\text{ret})}{\partial t} \frac{1}{|\mathbf{x}-\mathbf{x}'|} \bigg]
} \ .
$$
Notice when the source distributions are *static* the time derivative terms both vanish, leaving us with Coulomb's law from electrostatics as we'd expect. Provided $|\mathbf{x}-\mathbf{x}'| \ll ct$, we can set $t_\text{ret} \approx t$ and assume the source distributions affect the E-field instantaneously, which is what we implicitly assume in electrostatics.

Indeed, this formula is the electrodynamic generalization of Coulomb's law. It now must also account for the fact that the E-field depends on time-varying charge and current distributions. Also notice the factors of $c$ in the time-dependent terms. This means these terms won't contribute much to the E-field *unless* the charge and current distributions are changing rapidly relative to the speed of light $c$. This is why we can often use Coulomb's law as an approximation for slowly varying charge distributions.

Let's now focus on the B-field. We can express $\mathbf{B}(\mathbf{x},t)$ in terms of the vector potential as
$$
\mathbf{B}(\mathbf{x},t) = \nabla \times \mathbf{A}(\mathbf{x},t) = \nabla \times \frac{1}{c} \int d^3\mathbf{x}' \frac{\mathbf{J}(\mathbf{x}',t_\text{ret})}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
Pulling the curl inside the integral and using the product rule for curls, we can write
$$
\begin{align*}
\mathbf{B}(\mathbf{x},t) &= \frac{1}{c} \int d^3\mathbf{x}' \nabla \times \frac{\mathbf{J}(\mathbf{x}',t_\text{ret})}{|\mathbf{x} - \mathbf{x}'|} \\
&= \frac{1}{c} \int d^3\mathbf{x}' \bigg[\nabla \frac{1}{|\mathbf{x} - \mathbf{x}'|} \times \mathbf{J}(\mathbf{x}',t_\text{ret}) + \frac{1}{|\mathbf{x} - \mathbf{x}'|} \nabla \times \mathbf{J}(\mathbf{x}',t_\text{ret})\bigg] \ .
\end{align*}
$$
We again use the fact that $\nabla 1/r = -\mathbf{x}/r^3$, and use the chain rule for curls to write
$$
\nabla \times \mathbf{J}(\mathbf{x}',t_\text{ret}) = \frac{1}{c} \partial_t \mathbf{J}(\mathbf{x}',t_\text{ret}) \times \frac{\mathbf{x}-\mathbf{x}'}{|\mathbf{x}-\mathbf{x}'|} \ .
$$
Plugging this back in to the integral, we finally get
$$
\boxed{
\mathbf{B}(\mathbf{x},t) = \frac{1}{c} \int d^3\mathbf{x}' \bigg[\mathbf{J}(\mathbf{x}',t_\text{ret}) \times \frac{\mathbf{x}-\mathbf{x}'}{|\mathbf{x}-\mathbf{x}'|^3} + \frac{1}{c} \frac{\partial \mathbf{J}(\mathbf{x}',t_\text{ret})}{\partial t} \times \frac{\mathbf{x}-\mathbf{x}'}{|\mathbf{x}-\mathbf{x}'|^2} \bigg]
} \ .
$$
Notice that in the static case the time derivative in the second term vanishes, leaving us with the Biot-Savart law from magnetostatics provided $t_\text{ret} \approx t$. Indeed, this is the electrodynamics generalization of the Biot-Savart law, now accounting for the fact that the current density can vary with time. Since the second term contains an extra factor of $c$ in the denominator, it won't appreciably affect the B-field unless the current density is varying rapidly relative to the speed of light.

Both of these equations together are known as the *Jefimenko equations*. Curiously, these equations were evidently never formally written down until the 1960s. Perhaps the main reason for this is that, while these equations are nice to be aware of, they're not particularly useful in practice to calculate the EM fields in electrodynamics. Indeed, it's usually much easier just to calculate the potentials explicitly and then differentiate them to find the fields.

### Coulomb Gauge

Remember that the particular solutions for the potentials above are only true in the Lorentz gauge, since only in the Lorentz gauge do the potentials satisfy the inhomogeneous wave equation. If one chooses another gauge the solutions will look different. In the Coulomb gauge for instance we have $\nabla \cdot \mathbf{A} = 0$, which means the potentials instead satisfy the equations
$$
\begin{align*}

\nabla^2 \phi &= -4\pi\rho \ , \\
\nabla^2 \mathbf{A} - \frac{1}{c^2} \frac{\partial^2 \mathbf{A}}{\partial t^2} &= -\frac{4\pi}{c} \mathbf{J} + \frac{1}{c} \frac{\partial}{\partial t} \nabla\phi \ .

\end{align*}
$$
This means the scalar potential will satisfy Poisson's equation, which means we get what the same solution we got in electrostatics, except that the charge density now depends on the *current* time $t$,
$$
\phi(\mathbf{x},t) = \int d^3\mathbf{x}' \frac{\rho(\mathbf{x}',t)}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
Assuming we first solve for $\phi(\mathbf{x},t)$, the vector potential would again solve the inhomogeneous wave equation, except with the usual current density $\mathbf{J}(\mathbf{x},t)$ replaced by a *transverse current density* $\mathbf{J}_T(\mathbf{x},t)$ defined by
$$
\mathbf{J}_T(\mathbf{x},t) \equiv \mathbf{J}(\mathbf{x},t) - \frac{1}{4\pi} \frac{\partial}{\partial t} \nabla\phi(\mathbf{x},t) \ .
$$
We call $\mathbf{J}_T$ the *transverse* current density because its divergence is zero, which means it propagates perpendicular to the direction of wave propagation. To see why this is true, observe that since $\nabla^2 \phi = -4\pi\rho$, by the continuity equation we have
$$
\nabla \cdot \mathbf{J}_T = \nabla \cdot \mathbf{J} - \frac{1}{4\pi} \frac{\partial}{\partial t} \nabla^2 \phi = \nabla \cdot \mathbf{J} + \frac{\partial \rho}{\partial t} = 0 \ .
$$
In the Coulomb gauge, the vector potential would then have the particular solution
$$
\mathbf{A}(\mathbf{x},t) = \frac{1}{c} \int d^3\mathbf{x}' \frac{\mathbf{J}_T(\mathbf{x}',t_\text{ret})}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
Notice something peculiar about these solutions. Most importantly, the solution for the scalar potential $\phi(\mathbf{x},t)$ is *instantaneous*, depending on the current time $t$ instead of the retarded time $t_\text{ret}$. This means any disturbance to the source would affect the entire scalar field instantaneously, which would seem to violate special relativity. The way around this puzzle is to remember that the potentials aren't physical objects, the fields are. The fields will be the same in any choice of gauge.

While the Lorentz gauge is the preferred choice in relativity and most of theoretical electrodynamics, the Coulomb gauge does have its uses. The instantaneous behavior of $\phi(\mathbf{x},t)$ means we can think of it as the local Coulomb field around the sources, hence its name. This means all the far field behavior, which is what contributes to radiation, is contained in $\mathbf{A}(\mathbf{x},t)$. Thus, if we're only interested in studying radiation, it's natural to choose the Coulomb gauge and focus only on the vector potential's behavior.

## Lienard-Wiechert Potentials

We'd now like to calculate the potentials and fields for what should be the simplest problem in electrodynamics, the moving point charge. As we'll see, even the potentials and fields for such a simple problem turn out to be surprisingly complicated compared to those for the stationary point charge. However, in them we'll see an important implication: moving charges radiate energy.

### Potentials

To start, suppose we have a point charge $q$ moving along some trajectory $\mathbf{x}_p(t)$ in space with velocity $\mathbf{v}_p(t)$. Then its charge and current distributions are given by
$$
\rho(\mathbf{x}',t') = q \delta(\mathbf{x}' - \mathbf{x}_p(t')) \quad , \quad \mathbf{J}(\mathbf{x}',t') = q \mathbf{v}_p(t) \delta(\mathbf{x}' - \mathbf{x}_p(t')) \ .
$$
Substituting these distributions into the potentials and evaluating the trajectory at the retarded time $t_\text{ret}$, we get
$$
\phi(\mathbf{x},t) = \int d^3\mathbf{x}' q \frac{\delta\big(\mathbf{x}' - \mathbf{x}_p(t_\text{ret}(t'))\big)}{|\mathbf{x} - \mathbf{x}'|} \quad , \quad \mathbf{A}(\mathbf{x},t) = \frac{1}{c} \int d^3\mathbf{x}' q \mathbf{v}_p(t_\text{ret}) \frac{\delta\big(\mathbf{x}' - \mathbf{x}_p(t_\text{ret}(t'))\big)}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
Note that now the retarded time $t_\text{ret}$ will depend implicitly on the source time $t'$ since $\mathbf{x}_p$ depends on $t'$. Since we need to be very careful about this when doing the time integration, we'll explicitly write $t_\text{ret} = t_\text{ret}(t')$. To evaluate these integrals it'll be useful to rewrite the delta functions in the factored form
$$
\delta\big(\mathbf{x}' - \mathbf{x}_p(t_\text{ret}(t'))\big) = \delta(\mathbf{x}' - \mathbf{x}_p(t')) \delta(t' - t_\text{ret}(t')) \ .
$$
This is completely equivalent to the original delta function provided we insert an integral over $t'$ into the potentials,
$$
\begin{align*}
&\phi(\mathbf{x},t) = \int d^3\mathbf{x}' dt' q \frac{\delta(\mathbf{x}' - \mathbf{x}_p(t'))}{|\mathbf{x} - \mathbf{x}'|} \delta(t' - t_\text{ret}(t')) \ , \\
&\mathbf{A}(\mathbf{x},t) = \frac{1}{c} \int d^3\mathbf{x}' dt' q \mathbf{v}_p(t') \frac{\delta(\mathbf{x}' - \mathbf{x}_p(t'))}{|\mathbf{x} - \mathbf{x}'|} \delta(t' - t_\text{ret}(t')) \ .
\end{align*}
$$
Now we can interchange the order of integration and evaluate the volume integrals first. Upon performing the volume integration, the delta function picks out $\mathbf{x}' = \mathbf{x}_s(t')$, leaving us with the following integrals over $t$',
$$
\begin{align*}
&\phi(\mathbf{x},t) = q \int dt' \frac{\delta(t' - t_\text{ret}(t'))}{|\mathbf{x} - \mathbf{x}_p(t')|} \ , \\
&\mathbf{A}(\mathbf{x},t) = \frac{q}{c} \int dt' \mathbf{v}_p(t')\frac{\delta(t' - t_\text{ret}(t'))}{|\mathbf{x} - \mathbf{x}_p(t')|} \ .
\end{align*}
$$
Let's now look closer at the argument $f(t')$ of these remaining delta functions. Writing out $t_\text{ret}(t')$ explicitly, we have
$$
f(t') \equiv t' - t_\text{ret}(t') = t' - \bigg(t - \frac{|\mathbf{x} - \mathbf{x}_p(t')|}{c}\bigg) \ .
$$
Now, we'd like to write the delta function $\delta(f(t'))$ inside the integrals above using the delta function identity
$$
\delta(f(t')) = \sum_i \frac{\delta(t' - t_i)}{\quad \big|\frac{\partial}{\partial t'} f(t')\big|_{t' = t_i}} \ ,
$$
where $t' = t_i$ are the roots of $f(t')$. But first we need to figure out what the roots of $f(t')$ are. In principle, such a function could have no roots, or arbitrarily many arbitrary roots. But *physically*, we want to insist that $f(t') = 0$ only at some *unique* retarded time $t_\text{ret}$ which depends only on $\mathbf{x}$ and $t$, and not on $t'$. It can be proven that under certain regularity conditions on $f(t')$ that such a unique retarded time exists. In that case, $f(t') = 0$ only when $t' = t_\text{ret}$, and we can write
$$
\delta(f(t')) = \frac{\delta(t' - t_\text{ret})}{\quad \frac{\partial}{\partial t'} f(t')\big|_{t' = t_\text{ret}}} \ .
$$
Note that now we're abusing notation a bit by now assuming $t_\text{ret}$ is a fixed value, not a function of $t'$. That is, $t_\text{ret}$ without the argument is now the (assumed to be unique) implicit solution to the equation
$$
t_\text{ret}(t_\text{ret}) = t - \frac{|\mathbf{x} - \mathbf{x}_p(t_\text{ret})|}{c} \ .
$$
Next, we need to evaluate the derivative in the denominator and set $t' = t_\text{ret}$. We have
$$
\begin{align*}
\frac{\partial}{\partial t'} f(t') \bigg|_{t' = t_\text{ret}} &= \frac{\partial}{\partial t'} \bigg[t' - \bigg(t - \frac{|\mathbf{x} - \mathbf{x}_p(t')|}{c}\bigg)\bigg]_{t' = t_\text{ret}} \\
&= 1 + \frac{1}{c} \frac{\partial}{\partial t'} |\mathbf{x} - \mathbf{x}_p(t')| \bigg|_{t' = t_\text{ret}} \\
&= 1 - \frac{\mathbf{v}_p(t_\text{ret})}{c} \cdot \frac{\mathbf{x} - \mathbf{x}_p(t_\text{ret})}{|\mathbf{x} - \mathbf{x}_p(t_\text{ret})|} \ .
\end{align*}
$$
Plugging this back into the delta function identity, we have
$$
\delta(t-t_\text{ret}(t')) = \frac{\delta(t' - t_\text{ret})}{1 - \frac{\mathbf{v}_p(t_\text{ret})}{c} \cdot \frac{\mathbf{x} - \mathbf{x}_p(t_\text{ret})}{|\mathbf{x} - \mathbf{x}_p(t_\text{ret})|}} \ .
$$
Plugging this back into the integral and evaluating the delta function, the scalar potential becomes
$$
\begin{align*}
\phi(\mathbf{x},t) &= q \int dt' \frac{\delta(t' - t_\text{ret}(t'))}{|\mathbf{x} - \mathbf{x}_p(t')|} \\
&= q \int dt' \frac{\delta(t' - t_\text{ret})}{1 - \frac{\mathbf{v}_p(t_\text{ret})}{c} \cdot \frac{\mathbf{x} - \mathbf{x}_p(t_\text{ret})}{|\mathbf{x} - \mathbf{x}_p(t_\text{ret})|}} \frac{1}{|\mathbf{x} - \mathbf{x}_p(t')|} \\
&= \frac{q}{|\mathbf{x} - \mathbf{x}_p(t_\text{ret})|} \bigg(1 - \frac{\mathbf{v}_p(t_\text{ret})}{c} \cdot \frac{\mathbf{x} - \mathbf{x}_p(t_\text{ret})}{|\mathbf{x} - \mathbf{x}_p(t_\text{ret})|}\bigg)^{-1} \ .
\end{align*}
$$

Thus, the scalar potential for a moving point charge $q$ with trajectory $\mathbf{x}_p(t)$ and velocity $\mathbf{v}_p(t)$ is given by
$$
\boxed{
\phi(\mathbf{x},t) = \frac{q}{|\mathbf{x} - \mathbf{x}_p(t_\text{ret})|} \bigg(1 - \frac{\mathbf{v}_p(t_\text{ret})}{c} \cdot \frac{\mathbf{x} - \mathbf{x}_p(t_\text{ret})}{|\mathbf{x} - \mathbf{x}_p(t_\text{ret})|}\bigg)^{-1} 
} \ .
$$
Notice we easily recover the Coulomb potential when the particle is at rest, as we'd expect. Interestingly, when the charge is moving we now have what appears to be a relativistic correction to the scalar potential given by the factor
$$
\mathcal{R} \equiv \bigg(1 - \frac{\mathbf{v}_p(t_\text{ret})}{c} \cdot \frac{\mathbf{x} - \mathbf{x}_p(t_\text{ret})}{|\mathbf{x} - \mathbf{x}_p(t_\text{ret})|}\bigg)^{-1} \ .
$$
Provided the particle is moving slowly relative to the speed of light, we have $|\mathbf{v}_p| \ll c$, which means $\mathcal{R} \to 1$, in which case we recover a Coulomb-like scalar potential,
$$
\phi(\mathbf{x},t) \approx \frac{q}{|\mathbf{x} - \mathbf{x}_p(t_\text{ret})|} \ .
$$
In this limit the equipotentials propagate outward from the moving charge as spherical waves moving at the speed of light. However, when $|\mathbf{v}_p| \sim c$ these waves are no longer spherical. In this limit, we have two cases. In the plane normal to the charge's motion, $\mathcal{R} = 1$ at all speeds, which means the field lines in this plane still move outward as circular waves. However, outside this normal plane the equipotentials get *contracted* near the moving charge, with $\mathcal{R} \to \infty$ as $|\mathbf{v}_p| \to c$.

FIGURE (equipotentials of moving point charge)

Similarly, the vector potential for a moving point charge is given by
$$
\boxed{
\mathbf{A}(\mathbf{x},t) = \frac{\mathbf{v}_p(t_\text{ret})}{c} \frac{q}{|\mathbf{x} - \mathbf{x}_p(t_\text{ret})|} \bigg(1 - \frac{\mathbf{v}_p(t_\text{ret})}{c} \cdot \frac{\mathbf{x} - \mathbf{x}_p(t_\text{ret})}{|\mathbf{x} - \mathbf{x}_p(t_\text{ret})|}\bigg)^{-1} 
} \ .
$$
Notice that when the velocity of the particle is zero the vector potential vanishes, reflecting the fact that only moving point charges can create magnetic fields. Notice the vector potential is directly proportional to the scalar potential above, with
$$
\mathbf{A}(\mathbf{x},t) = \frac{\mathbf{v}_p(t_\text{ret})}{c} \phi(\mathbf{x},t) \ .
$$
These two potentials for a moving point charge are known as the *Lienard-Wiechert potentials*. Together, these potentials are the electrodynamic generalization of the usual Coulomb potential for a stationary point charge. One immediate consequence of the Lienard-Wiechert potentials is that moving charges *radiate*. That is, they emit energy in the form of EM waves. We'll discuss this radiation in more detail later.

Note that more commonly in textbooks, one defines $\mathbf{n}_p \equiv (\mathbf{x} - \mathbf{x}_p)/|\mathbf{x} - \mathbf{x}_p|$ and $\boldsymbol{\beta}_p \equiv \mathbf{v}_p / c$ and writes the Lienard-Wiechert potentials in the equivalent form
$$
\begin{align*}
&\phi(\mathbf{x},t) = \bigg[\frac{q}{(1 - \boldsymbol{\beta}_p \cdot \mathbf{n}_p)|\mathbf{x} - \mathbf{x}_p|}\bigg]_{t_\text{ret}} \ , \\
&\mathbf{A}(\mathbf{x},t) = \bigg[\frac{q\boldsymbol{\beta}_p}{(1 - \boldsymbol{\beta}_p \cdot \mathbf{n}_p)|\mathbf{x} - \mathbf{x}_p|}\bigg]_{t_\text{ret}} \ .
\end{align*}
$$
In this form it's understood that the arguments inside the brackets are evaluated at the retarded time $t_\text{ret}$.

### Fields

- Follow wikipedia article for more here. Seems like the simplest approach.
