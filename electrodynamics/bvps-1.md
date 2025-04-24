# Boundary Value Problems I

With the foundations of electrostatics in place, we will now turn our attention to more advanced methods for understanding and solving electrostatics problems. In this chapter and the next we will concern ourselves mainly with *boundary value problems*, or *BVPs*. We will show that electrostatics can be recast in terms of a single scalar partial differential equation, or *PDE*, for the scalar potential, known as *Poisson's equation*. In this chapter we will show how to solve the inhomogeneous Poisson equation using Green's functions and the related method of images. In the next chapter we will focus on solution methods for *Laplace's equation*, which is the homogeneous version of Poisson's equation. It'll turn out that many of the solution methods we introduce here will also apply beyond electrostatics, including to magnetostatics and electrodynamics.

## Boundary Value Problems

In the previous chapter we showed that in electrostatics the electric field is completely summarized by the field equations
$$
\begin{align*}
\nabla \cdot \mathbf{E} &= 4\pi\rho \ , \\
\nabla \times \mathbf{E} &= \mathbf{0} \ .
\end{align*}
$$
We'll now convert these field equations into a single PDE for the scalar potential, known as Poisson's equation, and show how to recast electrostatics problems in the form of boundary value problems.

### Poisson Equation

From the equation $\nabla \times \mathbf{E} = \mathbf{0}$ we know that in electrostatics the E-field $\mathbf{E}(\mathbf{x})$ is by definition irrotational, and hence must be the gradient of some scalar field, which we call the scalar potential $\phi(\mathbf{x})$,
$$
\mathbf{E}(\mathbf{x}) = -\nabla \phi(\mathbf{x}) \ .
$$
This means all relevant physical information about the E-field is contained in the scalar potential. To calculate the E-field for a given charge distribution it suffices to instead calculate the scalar potential and then take its gradient to recover the field. Given this is the case it makes sense to convert the field equations for the E-field in terms of a field equation for the potential.

Since $\mathbf{E} = -\nabla \phi$ already guarantees that $\nabla \times \mathbf{E} = \mathbf{0}$, we need only substitute this gradient into Gauss's law $\nabla \cdot \mathbf{E} = 4\pi\rho$ to get a field equation for the potential. Performing this substitution, we have
$$
\nabla \cdot \mathbf{E} = \nabla \cdot (-\nabla \phi) = -\nabla^2 \phi = 4\pi\rho \ .
$$
Thus, the two electrostatic field equations for the E-field are entirely contained in the single equation
$$
\boxed{
\nabla^2 \phi = -4\pi\rho
} \ .
$$
A PDE of this form is known as *Poisson's equation*. It's a single scalar second order spatial PDE for the potential. Given some charge distribution, we in principle need only solve this PDE for the corresponding scalar potential and E-field. Indeed, much of the remainder of electrostatics is about finding more and more ways to solve Poisson's equation for the scalar potential.

When we're only interested in the potential in some region of space where no charges are present, $\rho = 0$ and Poisson's equation reduces to a simpler PDE known as *Laplace's equation*,
$$
\boxed{
\nabla^2 \phi = 0
} \ .
$$
We'll discuss solution methods to Laplace's equation in great depth in the next chapter.

### Boundary Conditions

Poisson's equation (and Laplace's equation) allows us to incorporate a new feature into our problem solving methods, namely *boundary conditions*. Boundary conditions are conditions that the potential must satisfy on some given spatial surface. These can be useful whenever we have some charged surfaces in space that will affect the value of the potential, but whose charge densities are too complicated or too inconvenient to model directly. Solving a differential equation when boundary conditions are also imposed is known as a *boundary value problem*, or *BVP*. These BVPs will be our primary focus for the next two chapters.

As an example, suppose we're interested in the potential of a point charge located some distance outside of the surface of a sphere, where we happen to know that the surface of the sphere is held at some fixed potential $\phi(\mathbf{x}) = V$. Instead of writing the charge density as the sum of the density of a point charge and the density of a sphere, we could neglect the sphere from the charge density and instead impose the boundary condition on Poisson's equation that the solution must satisfy the boundary condition $\phi(\mathbf{x}) = V$ on the surface of the sphere. This is an example of a *Dirichlet boundary condition*. Dirichlet boundary conditions are boundary conditions where the *value* of the potential itself is assumed to be fixed on some known surface.

Poisson BVPs with only Dirichlet boundary conditions all have the general form
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi = -4\pi\rho \ \text{in} \ \mathcal{V} \ , \\
\text{where} \ \phi = V \ \text{on} \ \mathcal{S} \ .
\end{cases}
\end{align*}
$$
In the previous example, the region $\mathcal{V}$ would be the region outside the sphere where $r > R$, and the surface $\mathcal{S}$ would be a sphere of radius $R$ centered at the origin, in which case the boundary condition might be that $\phi(\mathbf{x}) = V$ when $r = R$. This means whichever solutions we find to Poisson's equation, the only solution that will work in the end is the one whose potential is exactly $V$ on the surface of the sphere.

As another example, instead of knowing that the potential is fixed on the surface of the sphere, we might instead happen to know that the surface charge density $\sigma(\mathbf{x})$ on the surface of the sphere is constant instead. This turns out to be equivalent to the statement that the E-field itself is constant on the surface, or equivalently that the gradient of the potential is constant. This is an example of a *Neumann boundary condition*. Neumann boundary conditions are those where the *derivative* of the potential is assumed to be fixed on some known surface.

Poisson BVPs with only Neumann boundary conditions all have the general form
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi = -4\pi\rho \ \text{in} \ \mathcal{V} \ , \\
\text{where} \ \frac{\partial \phi}{\partial n} = -E \ \text{on} \ \mathcal{S} \ .
\end{cases}
\end{align*}
$$
Here we've introduced the *normal derivative* $\partial \phi / \partial n$, defined by
$$
\frac{\partial \phi}{\partial n} \equiv \nabla \phi \cdot \mathbf{n} \ .
$$
As the name suggests, the normal derivative is just the derivative of the potential in the direction normal to the surface $\mathcal{S}$. Since $\mathbf{E} = -\nabla \phi$, the normal derivative of the potential is also $-\mathbf{E} \cdot \mathbf{n}$, or the component of the (negative) E-field normal to the surface. For instance, in the previous example, the boundary condition might be that $\mathbf{E}(\mathbf{x}) \cdot \mathbf{n} = E$ whenever $r = R$.

We could also imagine problems where the potential is fixed on some part of a surface and the charge density is fixed on some other part of a surface. For instance, we could have two spheres where one is held at a fixed potential and the other at a fixed surface charge density. Boundary conditions of this kind are known as *mixed boundary conditions*. 

Poisson BVPs with mixed boundary conditions all have the general form
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi = -4\pi\rho \ \text{in} \ \mathcal{V} \ , \\
\text{where} \ \phi = V \ \text{on} \ \mathcal{S}_D \ , \\
\text{and} \ \frac{\partial \phi}{\partial n} = -E \ \text{on} \ \mathcal{S}_N \ .
\end{cases}
\end{align*}
$$
In principle there could be other types of boundary conditions as well, though in practice Dirichlet, Neumann, and mixed boundary conditions are all we'll see. There's a good reason for this, for as we'll see these conditions are precisely the ones that guarantee the solution to Poisson's equation is unique, and hence that the potential obtained is physically meaningful.

### Uniqueness Theorem

As previously mentioned, the three types of BVPs mentioned above are guaranteed to have unique solutions. We want to know that the potential we solve for is the one that gives rise to the E-field and the forces we'd physically measure in the lab if we were to do experiments. It's thus good to know in what situations the solutions to Poisson's equation will be unique (at least up to an additive constant) so we don't have to worry about this issue every time we solve a given BVP. It turns out if we stick to Poisson BVPs with only Dirichlet, Neumann, or mixed boundary conditions, we can indeed be assured the solution found is indeed unique. This fact follows from the *uniqueness theorem*, which we will now prove.

To that end, suppose first that $\phi(\mathbf{x})$ and $\psi(\mathbf{x})$ are each potentially distinct solutions to a Dirichlet BVP of the form
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi = \nabla^2 \psi = -4\pi\rho \ \text{in} \ \mathcal{V} \ , \\
\text{where} \ \phi = \psi = V \ \text{on} \ \mathcal{S} \ .
\end{cases}
\end{align*}
$$
Now, let $u = \phi - \psi$. Then we have $\nabla^2 u = \nabla^2 \phi - \nabla^2 \psi = 0$, which means $u(\mathbf{x})$ must satisfy Laplace's equation inside the enclosed volume $\mathcal{V}$. Moreover, on the boundary surface $\mathcal{S}$ we have $\phi = \psi = V$, which means $u = 0$ on $\mathcal{S}$. We thus obtain a new Dirichlet BVP for $u(\mathbf{x})$ of the form
$$
\begin{cases}
\nabla^2 u = 0 \ \text{in} \ \mathcal{V} \ , \\
\text{where} \ u = 0 \ \text{on} \ \mathcal{S} \ .
\end{cases}
$$
Similarly, if $\phi(\mathbf{x})$ and $\psi(\mathbf{x})$ are each potentially distinct solutions to a Neumann BVP inside the same region $\mathcal{V}$ we have
$$
\begin{cases}
\nabla^2 \phi = \nabla^2 \psi = -4\pi\rho \ \text{in} \ \mathcal{V} \ , \\
\text{where} \ \frac{\partial \phi}{\partial n} = \frac{\partial \psi}{\partial n} = -E \ \text{on} \ \mathcal{S} \ ,
\end{cases}
$$
then $u(\mathbf{x})$ again satisfies Laplace's equation inside $\mathcal{V}$, and on the boundary surface $\mathcal{S}$ we have $\partial u / \partial n = 0$, so we instead obtain a Neumann BVP for $u(\mathbf{x})$ of the form
$$
\begin{cases}
\nabla^2 u = 0 \ \text{in} \ \mathcal{V} \ , \\
\text{where} \ \frac{\partial u}{\partial n} = 0 \ \text{on} \ \mathcal{S} \ .
\end{cases}
$$
Now recall Green's first identity from vector calculus, which says for any two smooth scalar fields $f(\mathbf{x})$ and $g(\mathbf{x})$ we have
$$
\int_\mathcal{V} d^3 \mathbf{x} \ (\nabla f \cdot \nabla g + g \nabla^2 f) = \oint_\mathcal{S} da \ g \frac{\partial f}{\partial n} \ .
$$
If we now set $f = g = u$, we have
$$
\int_\mathcal{V} d^3 \mathbf{x} \ (|\nabla u|^2 + u \nabla^2 u) = \oint_\mathcal{S} da \ u \frac{\partial u}{\partial n} \ .
$$
But we know $\nabla^2 u = 0$ inside $\mathcal{V}$, and one or the other of $u$ or $\partial u / \partial n$ is zero on $\mathcal{S}$ depending on whether the BVP is Cauchy or Neumann. For either type of BVP, we thus have
$$
\int_\mathcal{V} d^3 \mathbf{x} \ |\nabla u|^2 = 0 \ .
$$
However, $|\nabla u|^2 \geq 0$ by definition, and the only way the integral of a non-negative function can be zero is if the function itself is also zero. That is, we must have $|\nabla u|^2 = 0$, which can only be true if $\nabla u = \mathbf{0}$ by the definition of the norm. But the only way the gradient of a function can be zero is if the function itself is constant, meaning $u(\mathbf{x})$ must be constant. We thus must have that
$$
\phi(\mathbf{x}) - \psi(\mathbf{x}) = \text{constant} \ .
$$
Thus, if both $\phi(\mathbf{x})$ and $\psi(\mathbf{x})$ are solutions to the same Dirichlet or Neumann BVP, then they must be identical up to an additive constant. This means *any* solution to a Dirichlet or Neumann BVP must be unique up to an additive constant. In fact, for a Dirichlet BVP we can be assured that this additive constant is always zero, since  $\phi(\mathbf{x})$ and $\psi(\mathbf{x})$ must agree on the boundary. In practice though it doesn't much matter, since as discussed in the previous chapter we're always free to add an arbitrary constant to the potential without changing the E-field. This is just equivalent to shifting the ground point of the potential.

In a similar manner, one can show that solutions to mixed BVPs are also unique up to an additive constant. All one needs to do is apply the proof above to the Dirichlet portion of the surface $\mathcal{S}_D$ and to the Neumann portion of the surface $\mathcal{S}_N$.

As mentioned above, this result is known as the uniqueness theorem. Provided we can find *any* solution to a given BVP of the above types, whether by guessing or some other method, we know that must be *the* solution up to an additive constant. We'll find this theorem a powerful tool in electrostatics, most importantly when discussing the method of images. Incidentally, since Laplace's equation is just a special case of Poisson's equation the same facts we just prove also hold for Laplace BVPs.

### Surface Boundary Conditions

The discussion of Poisson BVPs so far has been quite general. We now want to specialize the discussion of boundary conditions specifically to electrostatic potentials. Recall in the previous chapter that we saw for the infinite sheet and hollow sphere examples that the E-field changes discontinuously by an amount $4\pi\sigma$ when crossing the surface, while the potential remains continuous when crossing the surface. We will now show these are general facts for any 2-dimensional surface of charge. We'll then use these facts to derive a general set of boundary conditions any potential must satisfy on a boundary surface.

To that end, suppose $\mathcal{S}$ is some smooth surface carrying a potentially non-constant surface charge density $\sigma(\mathbf{x})$. Suppose $\mathbf{x}$ is some arbitrary point on the surface at which we're interested in calculating the E-field $\mathbf{E}(\mathbf{x})$. It'll be useful to break up the E-field into two vector components, one component $\mathbf{E}_\perp(\mathbf{x})$ normal to the surface and the remaining component $\mathbf{E}_\parallel(\mathbf{x})$ tangential to it,
$$
\mathbf{E}(\mathbf{x}) = \mathbf{E}_\perp(\mathbf{x}) + \mathbf{E}_\parallel(\mathbf{x}) \ .
$$
For example, if the surface $\mathcal{S}$ were an infinite sheet in the $xy$-plane, $\mathbf{E}_\perp = E_z \mathbf{e}_z$ is the normal component to the sheet pointing along the $z$-axis, and $\mathbf{E}_\parallel = E_x \mathbf{e}_x + E_y \mathbf{e}_y$ is the tangential component in the $xy$-plane. Clearly $\mathbf{E}_\perp$ and $\mathbf{E}_\parallel$ must be orthogonal.

We'll now focus on analyzing the normal and tangential components separately using the field equations for the E-field. We'll focus first on the normal component $\mathbf{E}_\perp(\mathbf{x})$. We can do so using the integral form of Gauss's law. Suppose we zoom in on the point $\mathbf{x}$ so close that the surface $\mathcal{S}$ looks approximately flat. Suppose we place a pillbox Gaussian surface around $\mathbf{x}$ similar to the one we used for the infinite sheet in the previous chapter. Suppose the pillbox has infinitesimal areas $\delta A$ on the end-caps above and below the surface, and an infinitesimal height $\delta x$ joining the caps normal to the surface. Since $\mathbf{E}_\perp(\mathbf{x})$ is normal to the end-caps apart from second-order curvature effects we'll ignore, by Gauss's law we have
$$
\Delta E_\perp(\mathbf{x}) \delta A = 4\pi\sigma(\mathbf{x}) \delta A \ ,
$$
where $\Delta E_\perp(\mathbf{x})$ is the change in the normal field strength when crossing the surface at $\mathbf{x}$. Cancelling the $\delta A$ from both sides, we've thus shown that the normal component $\mathbf{E}_\perp(\mathbf{x})$ changes by exactly an amount
$$
\Delta E_\perp(\mathbf{x}) = 4\pi\sigma(\mathbf{x})
$$
when crossing the surface of the sheet. Thus, what we saw in the previous chapter was indeed a general fact, but only for the component of the E-field normal to the surface.

But what about the tangential component of the E-field? We never said anything about that. It turns out it's because we didn't need to. The tangential component of the field always remains continuous along the sheet. To see why, we can employ the integral form of the remaining field equation $\nabla \times \mathbf{E} = \mathbf{0}$ to the tangential component $\mathbf{E}_\parallel(\mathbf{x})$. Suppose we again zoom in on $\mathbf{x}$ and place a closed loop of infinitesimal radius around this point. Since the circulation integral always vanishes in electrostatics,
$$
\oint_\mathcal{C} \mathbf{E} \cdot d\boldsymbol{\ell} = 0 \ ,
$$
then neglecting second order curvature effects the change in the tangential field strength $\Delta E_\parallel(\mathbf{x})$ around the loop will satisfy
$$
\Delta E_\parallel(\mathbf{x}) \delta\ell = 0 \ .
$$
That is, $\Delta E_\parallel(\mathbf{x}) = 0$. This means the tangential component of the E-field remains continuous along the surface. 

We can combine both the tangential and normal results together by writing
$$
\Delta\mathbf{E}(\mathbf{x}) = 4\pi\sigma(\mathbf{x}) \mathbf{n} \ ,
$$
where $\mathbf{n}$ is the outward unit normal from the surface $\mathcal{S}$ at the point $\mathbf{x}$.

Now that we've shown how the E-field changes across a surface of charge quickly let's look at how the potential behaves. Since the potential $\phi(\mathbf{x})$ is a scalar we don't need to decompose it into pieces. Recall that the potential difference $\Delta \phi(\mathbf{x})$ between any two points $\mathbf{x}_1$ and $\mathbf{x}_2$ can be obtained from the E-field by evaluating any path integral between the two points,
$$
\Delta \phi(\mathbf{x}) = -\int_{\mathbf{x}_1}^{\mathbf{x}_2} \mathbf{E}(\mathbf{x}) \cdot d\boldsymbol{\ell} \ .
$$
We can use this to calculate the potential difference across two points arbitrarily close to our point $\mathbf{x}$ on the surface of charge. Suppose $\mathbf{x}_\pm = \mathbf{x} \pm \delta\mathbf{x}$ are any two points infinitesimally close to this point $\mathbf{x}$. Then to first order in $\delta\ell$ we have
$$
\Delta \phi(\mathbf{x}) = -\int_{\mathbf{x}_-}^{\mathbf{x}_+} \mathbf{E}(\mathbf{x}) \cdot d\boldsymbol{\ell} \approx -\Delta E(\mathbf{x}) \delta\ell \ .
$$
Since $\delta\ell$ is infinitesimal though, the right-hand side will be much smaller than the left-hand side. In the limit $\delta\mathbf{x} \to \mathbf{0}$ we then have
$$
\Delta \phi(\mathbf{x}) = 0 \ .
$$
That is, the potential remains continuous on the surface of charge, no matter which path we choose.

Let's now formulate these results as a set of boundary conditions for the potential in electrostatics, since we'll use them a good bit over the next couple of chapters. First, since the potential remains continuous across a surface of charge, the value of the potential on one side of the boundary must always match the value of the potential on the other side of the boundary. That is,
$$
\boxed{
\phi_+(\mathbf{x}) = \phi_-(\mathbf{x}) 
} \ .
$$
Here it's understood that $\phi_+(\mathbf{x})$ and $\phi_-(\mathbf{x})$ refer to any points infinitesimally above and below the surface, respectively. When we specify Dirichlet boundary conditions in electrostatics, we're thus specifying what the potential must be on the boundary surface. We're guaranteed that the potential will be the same on both sides of the surface, ensuring this specified value is unique.

Second, since the E-field changes by an amount $\Delta\mathbf{E} = 4\pi\sigma \mathbf{n}$ across any boundary surface of charge, and
$$
\frac{\partial \phi}{\partial n} = -\mathbf{E} \cdot \mathbf{n} \ ,
$$
the normal derivative of the potential must satisfy the following condition across the boundary surface,
$$
\boxed{
\frac{\partial \phi_+}{\partial n} - \frac{\partial \phi_-}{\partial n} = -4\pi\sigma(\mathbf{x}) 
} \ .
$$
Thus, Neumann boundary conditions in electrostatics are essentially equivalent to specifying the surface charge density on the boundary surface. Since the normal derivative must be proportional to the same surface charge density $\sigma(\mathbf{x})$ on both sides of the surface, we can be sure that this density uniquely specifies a Neumann boundary condition.

### Boundary Conditions for Conductors

The boundary value problem formulation of electrostatics is perhaps most useful when we wish to find the potential or E-field of a charge distribution in the presence of conducting materials. Trying to explicitly model the charge distribution of a conductor is quite difficult since free charges are allowed to move around in response to external fields. We'll now derive some important facts about conductors, and show how we can model the behavior of conductors using boundary conditions. 

When we speak of conductors in this chapter and much of classical electromagnetism, what we are really speaking about are *ideal* conductors, or conductors with an infinite supply of available free charge. Real-life conductors of course aren't exactly ideal since they contain a finite amount of free charge, but the amount of free charge they contain is so high that they can often be treated as ideal conductors anyway. For instance, a typical metal like copper might contain one or two free electrons per atom, which translates to something like $10^{28}$ free electrons per cubic centimeter.

Suppose an ideal conductor is brought into contact with some external E-field. When this happens, the free charges inside the conductor will rearrange themselves in response to the field until the following conditions are satisfied:

1. The electric field inside the conductor is exactly zero.

2. The surface of the conductor is an equipotential.

3. All free charges reside on the surface of the conductor.

This is easy enough to prove. Suppose we bring the conductor into contact with some external E-field $\mathbf{E}_\text{ext}$. When this happens, the free charges inside the conductor will move in response to the field, creating their own internal E-field $\mathbf{E}_\text{int}$ to oppose their change in momentum. Since the supply of free charge is unlimited, eventually there will reach a time when $\mathbf{E}_\text{int} = -\mathbf{E}_\text{ext}$ inside the conductor. This is known as *electrostatic equilibrium*. By the principle of superposition, the *net* E-field inside the conductor will then be the sum of the external and internal fields,
$$
\mathbf{E} = \mathbf{E}_\text{ext} + \mathbf{E}_\text{int} = \mathbf{0} \ .
$$
Thus, the net E-field inside the conductor will vanish at equilibrium. Since $\mathbf{E} = -\nabla \phi$, the potential inside the conductor must then be constant and thus an equipotential. Moreover, since the potential is continuous at the surface of the conductor, the surface must evidently be an equipotential as well, which means the net E-field lines must be normal to the surface.

<img src="../resources/image-20240703155651920.png" style="zoom:50%;" />

To see why any free charges must reside on the surface at electrostatic equilibrium we can use the integral form of Gauss's law. For any closed Gaussian surface $\mathcal{S}$, the total amount of charge $Q_\text{enc}$ must be given by
$$
\oint_\mathcal{S} \mathbf{E}_\text{net} \cdot d\mathbf{a} = 4\pi Q_\text{enc} \ .
$$
In particular, if we choose any Gaussian surface $\mathcal{S}$ that lies completely inside the conductor then $\mathbf{E}_\text{net} = \mathbf{0}$, in which case we must have $Q_\text{enc} = 0$. Thus, at equilibrium there can be no net enclosed charge inside the conductor. Since any free charges are bound to the conductor and can't jump off, the only place left for them to go is the surface, where they will distribute themselves in such a way as to ensure that $\mathbf{E} = \mathbf{0}$ inside the conductor.

Incidentally, this also implies that at the boundary of the conductor we must have $\mathbf{E} = 4\pi\sigma \mathbf{n}$, or
$$
\frac{\partial\phi}{\partial n} = -4\pi\sigma \ ,
$$
where $\sigma(\mathbf{x})$ is the surface charge density of the free charges on the surface of the conductor. Since this surface density is created from bringing the conductor into contact with an external E-field, we call it the *induced surface charge density*. That is, the external field *induces* the free charges to distribute themselves in such a way as to create a surface density $\sigma(\mathbf{x})$ on the surface.

## Green's Functions

Thus far we've only showed how to reformulate electrostatics problems in terms of a Poisson BVP. We've said nothing about how to actually solve a BVP. In this section we'll start taking steps in that direction by introducing the *Green's function*. We'll first define what we mean by a Green's function and then derive the Green's function for Poisson's equation when there are no boundary conditions imposed. Later in the section we'll show how to incorporate boundary conditions into the Green's function.

### Free Solution

Suppose we want to solve Poisson's equation in the case that no boundary conditions are imposed,
$$
\nabla^2 \phi(\mathbf{x}) = -4\pi\rho(\mathbf{x}) \ .
$$
As is typically the case, we assume that we know what the charge density $\rho(\mathbf{x})$ of interest is and seek to solve for the potential $\phi(\mathbf{x})$ this charge density generates.

Provided the charge distribution is *localized* and doesn't go off to infinity we know how to do this already. Indeed, we showed in the previous chapter that the potential can be found by evaluating the integral
$$
\phi(\mathbf{x}) = \int d^3 \mathbf{x}' \ \frac{\rho(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
Let's first quickly verify that this integral is indeed the unique solution to Poisson's equation free of boundary conditions.
$$
\nabla^2 \phi(\mathbf{x}) = \nabla^2 \int d^3 \mathbf{x}' \ \frac{\rho(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} = \int d^3 \mathbf{x}' \ \nabla \cdot \nabla \frac{\rho(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|}
$$








By Gauss's law we know $\nabla \cdot \mathbf{E} = 4\pi\rho$. If we solve for $\rho(\mathbf{x})$ and insert the divergence inside the integral, we get
$$
\nabla^2 \phi(\mathbf{x}) = -\nabla \cdot \mathbf{E}(\mathbf{x}) \ .
$$
Now, we know that the E-field can also be related to the charge density via the integral
$$
\mathbf{E}(\mathbf{x}) = \int d^3 \mathbf{x}' \ \rho(\mathbf{x}') \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \ ,
$$
Plugging this integral into the previous equation and using the usual identity $\nabla \cdot \mathbf{x}/r = 4\pi\delta(\mathbf{x})$, we then have
$$
\begin{align*}
\nabla^2 \phi(\mathbf{x}) &= -\nabla \cdot \int d^3 \mathbf{x}' \ \rho(\mathbf{x}') \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \\
&= -\int d^3 \mathbf{x}' \ \rho(\mathbf{x}') \nabla \cdot \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \\
&= -\int d^3 \mathbf{x}' \ \rho(\mathbf{x}') 4\pi \delta(\mathbf{x} - \mathbf{x}') \\
&= -4\pi \rho(\mathbf{x}) \ .
\end{align*}
$$




We've thus shown that Coulomb's law satisfies Poisson's equation, as we'd expect. In fact, if the charge distribution is localized and there are no boundary conditions present, like say a set of background conductors, then Coulomb's law is the only valid solution. If boundary conditions are present we have to modify things slightly. We'll see more on this in the next few chapters.

We already know that for a localized charge distribution in the absense of boundary conditions that the potential can be found by
$$
\phi(\mathbf{x}) = \int d^3 \mathbf{x}' \ \frac{\rho(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
If we look at this integral more closely we can see that it's really just a convolution of two functions, $\rho(\mathbf{x}')$ and another function
$$
\boxed{
G(\mathbf{x} - \mathbf{x}') \equiv \frac{1}{|\mathbf{x} - \mathbf{x}'|}
}\ .
$$
This function $G(\mathbf{x} - \mathbf{x}')$ is called a *Green's Function*. This function is evidently a property of the PDE itself, and doesn't depend on any charge distributions or boundary conditions. So where does this function come from?

Suppose we wanted to solve Poisson's equation for a single unit point charge located at a source point $\mathbf{x}'$. Since $q=1$ this means that $\rho(\mathbf{x}) = \delta(\mathbf{x} - \mathbf{x}')$. The potential $G(\mathbf{x} - \mathbf{x}')$ that solves this Poisson's equation in the absence of any boundary conditions is known as a *Green's function*, 
$$
\nabla^2 G(\mathbf{x} - \mathbf{x}') = -4\pi \delta(\mathbf{x} - \mathbf{x}') \ .
$$
Now, suppose as suggested above that we could recover the potential $\phi$ from the Green's function by convolution with the charge density $\rho$,
$$
\phi(\mathbf{x}) = \int d^3 \mathbf{x}' \ \rho(\mathbf{x}') G(\mathbf{x} - \mathbf{x}') \ .
$$
If we take the Laplacian of $\phi(\mathbf{x})$, we then have
$$
\begin{align*}
\nabla^2 \phi(\mathbf{x}) &= \nabla^2 \int d^3 \mathbf{x}' \ \rho(\mathbf{x}') G(\mathbf{x} - \mathbf{x}') \\ 
&= \int d^3 \mathbf{x}' \ \rho(\mathbf{x}') \nabla^2 G(\mathbf{x} - \mathbf{x}') \\
&= -4\pi \int d^3 \mathbf{x}' \ \rho(\mathbf{x}') \delta(\mathbf{x} - \mathbf{x}') \\
&= -4\pi \rho(\mathbf{x}) \ .
\end{align*}
$$
This proves that given the Green's function, we can use it to find the potential for any given charge distribution by convolution.

### Green's Function Solution via the Fourier Transform

Since we already know that the Green's function for Poisson's equation must be given by
$$
G(\mathbf{x} - \mathbf{x}') = \frac{1}{|\mathbf{x} - \mathbf{x}'|} \ ,
$$
we could just skip ahead to the next section. However, we want to derive the Green's function yet another way that's more broadly applicable, namely via the Fourier transform. We cover the mathematical details of the Fourier transform in the appendix, so feel free to stop and read over that first before proceeding.

Let's suppose that we wished to solve Poisson's equation for a unit point charge placed at the origin,
$$
\nabla^2 G(\mathbf{x}) = -4\pi \delta(\mathbf{x}) \ ,
$$
We'll assume that both $G(\mathbf{x})$ and its normal derivative go to zero as $|\mathbf{x}| \rightarrow \infty$, a physically realistic assumption.

Now, we take the Fourier transform of both sides to get the Green's function as a function of the wavevector $\mathbf{k}$. That is, we multiply both sides by $e^{-i \mathbf{k} \cdot \mathbf{x}}$ and integrate with respect to $\mathbf{x}$ over all space,
$$
\int d^3\mathbf{x} \ \nabla^2 G(\mathbf{x}) e^{-i \mathbf{k} \cdot \mathbf{x}} = -4\pi \int d^3\mathbf{x} \ \delta(\mathbf{x}) e^{-i \mathbf{k} \cdot \mathbf{x}} \ .
$$
Now, the right-hand side is easy to work out. By definition of the delta function we get $-4\pi e^{-i \mathbf{k} \cdot \mathbf{0}} = -4\pi$. The left-hand side is more interesting. Those familiar with the Fourier transform will immediately see it must be $-|\mathbf{k}|^2 G(\mathbf{k})$, where $G(\mathbf{k})$ is the Fourier transform of $G(\mathbf{x})$ defined by
$$
G(\mathbf{k}) = \int d^3\mathbf{x} \ G(\mathbf{x}) e^{-i \mathbf{k} \cdot \mathbf{x}} \ .
$$
Let's prove this real quick. If we apply Green's second identity to the left-hand side above and require that $G(\mathbf{x})$ go to zero as $|\mathbf{x}| \rightarrow \pm \infty$, then the boundary terms vanish, leaving us with
$$
\begin{align*}
\int d^3\mathbf{x} \ \nabla^2 G(\mathbf{x}) e^{-i \mathbf{k} \cdot \mathbf{x}} &= 
\int d^3\mathbf{x} \ G(\mathbf{x}) \nabla^2 e^{-i \mathbf{k} \cdot \mathbf{x}} + 
\oint_\mathcal{S} da \ \bigg[e^{-i \mathbf{k} \cdot \mathbf{x}} \frac{\partial G}{\partial n} - G \frac{\partial}{\partial n} e^{-i \mathbf{k} \cdot \mathbf{x}} \bigg] \\
&= -|\mathbf{k}|^2 \int d^3\mathbf{x} \ G(\mathbf{x}) e^{-i \mathbf{k} \cdot \mathbf{x}} \\
&= -|\mathbf{k}|^2 G(\mathbf{k}) \ .
\end{align*}
$$
Putting both sides together, we end up with an algebraic equation in $k$-space that's easily solved for $G(\mathbf{k})$,

$$
-|\mathbf{k}|^2 G(\mathbf{k}) = -4\pi \quad \Longrightarrow \quad G(\mathbf{k}) = \frac{4\pi}{|\mathbf{k}|^2} \ .
$$
Now, we want the Green's function in terms of $\mathbf{x}$, not in terms of $\mathbf{k}$. We can get that by now taking the inverse Fourier transform. That is, we multiply $G(\mathbf{k})$ by $(2\pi)^{-3} e^{i \mathbf{k} \cdot \mathbf{x}}$ and integrate with respect to $\mathbf{k}$ over all $k$-space to get
$$
G(\mathbf{x}) = \int \frac{d^3\mathbf{k}}{(2\pi)^3} \ G(\mathbf{k}) e^{i \mathbf{k} \cdot \mathbf{x}} 
= 4\pi \int \frac{d^3\mathbf{k}}{(2\pi)^3} \ \frac{e^{i \mathbf{k} \cdot \mathbf{x}}}{|\mathbf{k}|^2} \ .
$$
We're now left with an integral to evaluate that's quite non-trivial. First, we observe that the integrand depends on two things, the squared norm $|\mathbf{k}|^2$ and the dot product $\mathbf{k} \cdot \mathbf{x}$. Now, we're free to orient $\mathbf{x}$ along any direction of $k$-space we like. Without loss of generality then, let's suppose $\mathbf{x}$ is oriented along the $k_z$-axis, so that $\mathbf{x} = r \mathbf{e}_{k_z}$. Then $\mathbf{k} \cdot \mathbf{x} = kr\cos\theta_k$, where $k = |\mathbf{k}|$ and $\theta_k$ is the usual polar angle of spherical coordinates in $k$-space. This strongly suggests we should do the integration in $k$-space spherical coordinates $(k, \theta_k, \varphi_k)$. This means the volume element $d^3\mathbf{k}$ becomes
$$
d^3 \mathbf{k} = k^2 \sin\theta_k dk d\theta_k d\phi_k \ .
$$
Plugging this all into the integral and evaluating the trivial integral over $\varphi_k$, we thus have
$$
G(\mathbf{x}) = 4\pi \int_0^\infty dk \int_0^\pi d\theta_k \int_0^{2\pi} d\varphi_k \ \frac{k^2 \sin\theta_k}{(2\pi)^3} \frac{e^{i kr \cos\theta_k}}{k^2} = \frac{1}{\pi} \int_0^\infty dk \int_0^\pi d\theta_k \ \sin\theta_k \ e^{i kr \cos\theta_k} \ .
$$
Next, we need to evaluate the integral over $\theta_k$. This is most easily done by making the useful substitution $\mu = \cos\theta_k$ to get
$$
G(\mathbf{x}) = \frac{1}{\pi} \int_0^\infty dk \int_{-1}^1 d\mu \ e^{i kr \mu} = \frac{1}{\pi} \int_0^\infty dk \ \frac{e^{ikr} - e^{-ikr}}{ikr} = \frac{2}{\pi} \int_0^\infty dk \ \frac{\sin kr}{kr} \ .
$$
All that remains now is the integral over $k$. We'll simplify this remaining integral slightly by substituting $u=kr$ to write
$$
G(\mathbf{x}) = \frac{2}{\pi r} \int_0^\infty du \ \frac{\sin u}{u} \ .
$$
The remaining integral in $u$ is a well-known integral, known as a *Dirichlet integral*. Dirichlet integrals can be evaluated any number of ways. In the appendix we showed that we can evaluate this integral using the residue theorem to get
$$
\int_0^\infty du \ \frac{\sin u}{u} = \frac{\pi}{2} \ .
$$
Plugging this back into the Green's function, we finally get
$$
G(\mathbf{x}) = \frac{2}{\pi r} \cdot \frac{\pi}{2} = \frac{1}{r} = \frac{1}{|\mathbf{x}|} \ .
$$
This is the Green's function that solves the equation posed above. Finally, if we shift the source point from the origin to some other source point $\mathbf{x}'$ we recover the general Green's function derived above,
$$
G(\mathbf{x} - \mathbf{x}') = \frac{1}{|\mathbf{x} - \mathbf{x}'|} \ .
$$

This perhaps seemed like a pointless exercise, but we'll see later that this method for solving PDEs is broadly useful. For example, in a later chapter we'll need to find the Green's function for the Helmholtz equation, and for that we'll need this method.

### Formal Solution to Poisson's Equation

We'll now derive a formal solution to Poisson's equation in the presence of boundary conditions. To do so we'll again make use of Green's second identity. Recall that Green's second identity says that for two scalar fields $\psi(\mathbf{x}')$ and $\phi(\mathbf{x}')$, we have

$$
\int_\mathcal{V} d^3 \mathbf{x}' \ (\phi \nabla'^2 \psi - \psi \nabla'^2 \phi) = \oint_\mathcal{S} da' \ \bigg[\phi \frac{\partial \psi}{\partial n'} - \psi \frac{\partial \phi}{\partial n'} \bigg] \ .
$$
Here $\mathcal{S}$ is some closed surface enclosing a volume $\mathcal{V}$, and $\frac{\partial \phi}{\partial n'} = \nabla' \phi \cdot \mathbf{n}'$ is the normal derivative of $\phi$ across the surface. We write the identity in terms of the source point $\mathbf{x}'$ since that's what will be useful for us here.

Now, what we'll do is set $\psi(\mathbf{x}') = G(\mathbf{x} - \mathbf{x}')$ and $\phi(\mathbf{x}')$ equal to the potential to get
$$
\int_\mathcal{V} d^3 \mathbf{x}' \ (\phi \nabla'^2 G - G \nabla'^2 \phi) = \oint_\mathcal{S} da' \ \bigg[\phi \frac{\partial G}{\partial n'} - G \frac{\partial \phi}{\partial n'} \bigg] \ .
$$
Next, we'll simplify the left-hand side by using Poisson's equation to write $\nabla'^2 \phi = -4\pi\rho$ and the property of the Green's function derived above to write $\nabla'^2 G = -4\pi\delta(\mathbf{x}-\mathbf{x}')$. Plugging these in and rearranging terms, we have
$$
\int_\mathcal{V} d^3 \mathbf{x}' \ \phi(\mathbf{x}') \delta(\mathbf{x}-\mathbf{x}') = \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') G(\mathbf{x} - \mathbf{x}') + \frac{1}{4\pi} \oint_\mathcal{S} da' \ \bigg[G \frac{\partial \phi}{\partial n'} - \phi \frac{\partial G}{\partial n'} \bigg] \ .
$$
Now, we can evaluate the left-hand side of this integral. If $\mathbf{x}$ is outside the surface the left-hand side is zero and we get nowhere. However, if $\mathbf{x}$ is inside the surface we can use the definition of the delta function to write
$$
\boxed{
\phi(\mathbf{x}) = \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') G(\mathbf{x} - \mathbf{x}') + \frac{1}{4\pi} \oint_\mathcal{S} da' \ \bigg[G \frac{\partial \phi}{\partial n'} - \phi \frac{\partial G}{\partial n'} \bigg]
}\ .
$$
Provided we interpret $\mathcal{S}$ as the *boundary surface* we have exactly what we seek, a formal solution for the potential in the presence of boundary conditions acting along the boundary surface. The surface integral term encodes all the information contained in the boundary conditions. Indeed, if we send the boundary surface to infinity the surface integral goes to zero like $r'^{-3}$, and we recover our original integral formula for the potential.

So what exactly is the surface integral encoding? Notice that it contains two terms, one proportional to the *value* of the potential along the boundary surface, and another proportional to the *normal derivative* of the potential along the boundary surface. Since we can write the normal derivative in terms of the electric field via
$$
\frac{\partial \phi}{\partial n'} = \nabla' \phi \cdot \mathbf{n}' = -\mathbf{E} \cdot \mathbf{n}' \ ,
$$
the normal derivative term is just encoding information about the value of the *electric field* along the boundary surface.

We can also see that if there are no source charges present inside the boundary surface we can still find an expression for the potential. It's just the surface integral term. This means we need not have a source charge distribution present at all. We can just specify everything in terms of boundary conditions if we like. If there are no source charges present, Poisson's equation reduces to a simpler PDE known as *Laplace's Equation*,
$$
\nabla^2 \phi = 0 \ .
$$
We can solve many electrostatics problems just by solving Laplace's equation subject to boundary conditions, allowing us to avoid having to specify ahead what the charge distributions are. We'll return to this idea later.

### Green's Function with Boundary Conditions

We derived the Green's function above under the assumption that no boundary conditions were present, and then later imposed boundary conditions when deriving the formal solution. But we can also define the Green's function so that the boundary conditions are already backed in. The idea is to generalize the definition of the Green's function somewhat by supposing
$$
G(\mathbf{x} - \mathbf{x}') = \frac{1}{|\mathbf{x} - \mathbf{x}'|} + F(\mathbf{x} - \mathbf{x}') \ ,
$$
where $F(\mathbf{x} - \mathbf{x}')$ is some function that satisfies Laplace's equation subject to the boundary conditions,
$$
\begin{align*}
\begin{cases}
\nabla^2 F(\mathbf{x} - \mathbf{x}') = 0 \ , \\
\text{where} \ F(\mathbf{x} - \mathbf{x}') = 0 \ \text{on} \ \mathcal{S} \ , \\
\text{or} \ \frac{\partial F}{\partial n'} = 0 \ \text{on} \ \mathcal{S} \ .
\end{cases}
\end{align*}
$$
We'll call $F(\mathbf{x} - \mathbf{x}')$ the *homogeneous part* of the Green's function. Intuitively, we can think of the homogeneous part as the potential of any charge distributions lying beyond the boundary surface. Our goal in this section however isn't to find $F(\mathbf{x} - \mathbf{x}')$, but to formally show that this generalization of the Green's function gives formal solutions that aren't overdetermined.

Consider first the case of a Poisson BVP with Dirichlet boundary conditions. We'll suppose there exists a Green's function $G_D(\mathbf{x} - \mathbf{x}')$ that satisfies the BVP
$$
\begin{align*}
\begin{cases}
\nabla^2 G_D(\mathbf{x} - \mathbf{x}') = -4\pi\delta(\mathbf{x} - \mathbf{x}') \ , \\
\text{where} \ G_D(\mathbf{x} - \mathbf{x}') = 0 \ \text{on} \ \mathcal{S} \ .
\end{cases}
\end{align*}
$$
Now, if we plug this Green's function into the formal solution for the potential, we get
$$
\phi(\mathbf{x}) = \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') G_D(\mathbf{x} - \mathbf{x}') + \frac{1}{4\pi} \oint_\mathcal{S} da' \ \bigg[G_D \frac{\partial \phi}{\partial n'} - \phi \frac{\partial G_D}{\partial n'} \bigg] \ .
$$
Since $G_D(\mathbf{x} - \mathbf{x}')$ will vanish on the surface $\mathcal{S}$ by assumption, the first term in the surface integral vanishes and we're left with
$$
\boxed{
\phi(\mathbf{x}) = \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') G_D(\mathbf{x} - \mathbf{x}') - \frac{1}{4\pi} \oint_\mathcal{S} da' \ \phi \frac{\partial G_D}{\partial n'}
}\ .
$$
We've thus used this generalized Green's function to eliminate the boundary term we don't care about from the formal solution. What remains is the formal solution for a potential under Dirichlet boundary conditions.

We can do something similar for a Poisson BVP with Neumann boundary conditions, except we have to be slightly more careful. Suppose there exists a Green's function $G_N$ that satisfies the BVP
$$
\begin{align*}
\begin{cases}
\nabla^2 G_N(\mathbf{x} - \mathbf{x}') = -4\pi\delta(\mathbf{x} - \mathbf{x}') \ , \\
\text{where} \ \frac{\partial G_N}{\partial n'} = C \ \text{on} \ \mathcal{S} \ .
\end{cases}
\end{align*}
$$
Notice that we let $\frac{\partial G_N}{\partial n'}$ equal some arbitrary constant $C$ along the boundary instead of setting it to zero. To understand why we did this, recall that the normal derivative of a potential $\phi$ is proportional to the component of the electric field normal to the surface, with $\frac{\partial \phi}{\partial n'} = -\mathbf{E} \cdot \mathbf{n}'$. Since the electric field must satisfy Gauss's Law, this means if we integrate over $\mathcal{S}$ we must have
$$
\oint_\mathcal{S} da' \ \frac{\partial \phi}{\partial n'} = -\oint_\mathcal{S} \mathbf{E} \cdot \mathbf{n}' \ da' = -4\pi Q_{\text{enc}} \ .
$$
Now, we can think of the Green's function as the potential of a unit point charge. This means if we substitute $\phi$ for $G_N$ and set $Q_{\text{enc}} = 1$, we're left with
$$
\oint_\mathcal{S} da' \ \frac{\partial G_N}{\partial n'} = -4\pi \ .
$$
This implies that whatever the normal derivative is doing along the boundary surface, it must have the form
$$
\frac{\partial G_N}{\partial n'} = -\frac{4\pi}{S} \ \text{on} \ \mathcal{S} \ .
$$
We'll thus choose this as our boundary condition for the Neumann BVP, setting the constant $C = -\frac{4\pi}{S}$.

Plugging this form of $G_N$ into the formal solution and substituting in the above boundary condition, we have
$$
\begin{align*}
\phi(\mathbf{x}) &= \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') G_N(\mathbf{x} - \mathbf{x}') + \frac{1}{4\pi} \oint_\mathcal{S} da' \ \bigg[G_N \frac{\partial \phi}{\partial n'} - \phi \frac{\partial G_N}{\partial n'} \bigg] \\
&= \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') G_N(\mathbf{x} - \mathbf{x}') + \frac{1}{4\pi} \oint_\mathcal{S} da' \ G_N \frac{\partial \phi}{\partial n'} + \frac{1}{S} \oint_\mathcal{S} da' \phi \ .
\end{align*}
$$
Notice the last term is just the average value of the potential along the boundary surface, a constant. We'll denote this term by
$$
\langle \phi \rangle_\mathcal{S} \equiv \frac{1}{S} \oint_\mathcal{S} da' \phi \ .
$$
Like all additive constants, this term is irrelevant to the physics and can be absorbed into the potential if we like. We thus finally have the correct formal solution for a potential under Neumann boundary conditions,
$$
\boxed{
\phi(\mathbf{x}) = \langle \phi \rangle_\mathcal{S} + \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') G_N(\mathbf{x} - \mathbf{x}') + \frac{1}{4\pi} \oint_\mathcal{S} da' \ G_N \frac{\partial \phi}{\partial n'}
} \ .
$$
Of course, while having these formal solutions is nice, we still haven't shown how to find these generalized Green's functions. In fact, it usually isn't that helpful to find the generalized Green's function directly when solving a given problem. Its primary use is theoretical, to show that a formal solution for the potential will always exist under certain types of boundary conditions.

### Green's Functions in Other Dimensions

For the special case of the Laplacian operator, there's an easier way to find the (unbounded) Green's function that also happens to work just as easily for any number of dimensions. Let's again consider Poisson's equation for the Green's function free from boundary conditions, but this time we'll assume $\mathbf{x}$ and $\mathbf{x}'$ are vectors in some arbitrary $n$-dimensional space. If we ignore the factor of $4\pi$ from before, we can write
$$
\nabla^2 G(|\mathbf{x} - \mathbf{x}'|) = -\delta(\mathbf{x} - \mathbf{x}') \ .
$$
Here $\nabla^2 = \nabla \cdot \nabla$, where the del operator $\nabla$ is now $n$ dimensional, with
$$
\nabla = \sum_{i=1}^n \frac{\partial}{\partial x_i} \mathbf{e}_i \ .
$$
Let's recall the divergence theorem in 3-dimensions, which says for any vector field $\mathbf{F}(\mathbf{x})$ we have
$$
\int_\mathcal{V} d^3 \mathbf{x} \ \nabla \cdot \mathbf{F} = \oint_\mathcal{S} da \ \mathbf{F} \cdot \mathbf{n} \ ,
$$
where $\mathcal{V}$ is some volume and $\mathcal{S}$ is the closed surface bounding that volume.

It turns out the divergence theorem holds in any number of dimensions. In $n$ dimensions we have
$$
\int_{\mathcal{V}_n} d^n \mathbf{x} \ \nabla \cdot \mathbf{F} = \oint_{\mathcal{S}_{n-1}} da^{n-1} \ \mathbf{F} \cdot \mathbf{n} \ ,
$$
where $\mathcal{V}_n$ is an $n$-dimensional volume and $\mathcal{S}_{n-1}$ is the closed $n-1$ dimensional surface bounding the volume $\mathcal{V}_n$.

In our case, we'll choose $\mathbf{F} = \nabla G$. If we plug this into the divergence theorem above and integrate both sides, the left-hand side becomes the Laplacian $\nabla^2 G$ and the right-hand side becomes the normal derivative $\frac{\partial G}{\partial n}$,
$$
\int_{\mathcal{V}_n} d^n \mathbf{x} \ \nabla^2 G = \oint_{\mathcal{S}_{n-1}} da^{n-1} \ \frac{\partial G}{\partial n} \ .
$$
Now, by Poisson's equation we have $\nabla^2 G = -4\pi \delta(\mathbf{x}-\mathbf{x}')$. If the volume contains the point $\mathbf{x}'$ we thus get
$$
-1 = \oint_{\mathcal{S}_{n-1}} da^{n-1} \ \frac{\partial G}{\partial n}\ .
$$
Now, we can pick any Gaussian surface we like containing $\mathbf{x}'$. We'll thus choose an $n-1$ dimensional sphere of radius $r$ centered at the point $\mathbf{x}'$. In that case we can write the area element $da^{n-1}$ as
$$
da^{n-1} = r^{n-1} d\Omega^{n-1} \ ,
$$
where $d\Omega^{n-1}$ is the $(n-1)$-dimensional solid angle. Since $G(|\mathbf{x}|)$ is radial by assumption, its normal derivative with the sphere will just be its derivative with respect to $r$, meaning we can pull $G(|\mathbf{x}|)$ out of the surface integral to get
$$
\oint_{\mathcal{S}_{n-1}} da^{n-1}  \ \frac{\partial G}{\partial n} = r^{n-1}  \frac{\partial G}{\partial r}\oint_{\mathcal{S}_{n-1}} d\Omega^{n-1} = r^{n-1} \frac{\partial G}{\partial r} \Omega_{n-1} \ ,
$$
where $\Omega_{n-1}$ is the surface area of the sphere in $n-1$ dimensions. Putting this all together, we have
$$
\frac{\partial G}{\partial r} = -\frac{1}{\Omega_{n-1} r^{n-1}} \ .
$$
This can then be integrated to find the $n$-dimensional Green's function $G_n(|\mathbf{x} - \mathbf{x}'|) = G(r)$. For $n \geq 3$ we have
$$
G_n(|\mathbf{x} - \mathbf{x}'|) = \frac{(-1)^{n+1}}{(n-2) \Omega_{n-1}} \frac{1}{|\mathbf{x} - \mathbf{x}'|^{n-2}} \ .
$$
It's easy to see that when $n=3$ we get exactly what we'd derived before aside from the factor of $4\pi$. Indeed, since $\Omega_2 = 4\pi$ is the surface area of a unit sphere, we get
$$
G_3(|\mathbf{x} - \mathbf{x}'|) = \frac{1}{4\pi} \frac{1}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
When $n=2$ we do get a proper function, but it looks different than the rest. In this case $\Omega_1 = 2\pi$ is the circumference of a unit sphere, so we get
$$
G_2(|\mathbf{x} - \mathbf{x}'|) = -\frac{1}{2\pi} \log |\mathbf{x} - \mathbf{x}'| \ .
$$
Finally, when $n=1$, $\Omega_0$ is just the size of a point, which is zero. This means that $G_1(|\mathbf{x} - \mathbf{x}'|) = \infty$, meaning the Green's function isn't well-defined in 1-dimension.

In practice, aside from the 3-dimensional Green's function we already studied in depth, it's the 2-dimensional Green's function that's likely to be of most use to use in electromagnetism. It can be useful, for instance, in solving electrostatics problems where we're only interested in the fields and potentials along some flat 2-dimensional surface.

## Method of Images

Thus far, we've yet to show any practical ways to find the potential in a given boundary value problem. In this section we'll introduce the first method, the powerful *method of images*. This method exploits the uniqueness theorem and the geometry of a problem to quickly find the potential. It doesn't always work, but when it does it can be quite useful.

From the previous section, we know we can express the Green's function satisfying the boundary conditions by letting
$$
G(\mathbf{x} - \mathbf{x}') = \frac{1}{|\mathbf{x} - \mathbf{x}'|} + F(\mathbf{x} - \mathbf{x}') \ ,
$$
where the homogeneous part $F(\mathbf{x} - \mathbf{x}')$ is any function that satisfies Laplace's equation subject to the boundary conditions. By the uniqueness theorem, we know that if we can find such a function $F(\mathbf{x} - \mathbf{x}')$, it will be unique up to an unimportant additive constant to the potential, provided Dirichlet or Neumann (or mixed) boundary conditions are used.

The method of images exploits this property of uniqueness by converting the original boundary value problem into an equivalent unbounded problem that still just happens to satisfy the same boundary conditions. Suppose we have one or more point charges in the presence of some set of boundary conditions, for example a set of conductors held at some fixed potentials. In many cases, we can exploit the geometry of the problem to convert this problem into an equivalent unbounded problem by introducing pseudo-charges outside the boundary surface, called *image charges*, such that when added to the problem the combination of original and image charges together happens to satisfy the original boundary conditions. By the uniqueness theorem, we know that if we find such a solution, it must be the unique solution, even for the original BVP.

### Examples

For example, suppose we wanted to find the potential for a point charge $q$ located at a distance $z=d$ above an infinite grounded sheet, meaning $\phi = 0$ at $z=0$. What we can do is pretend the grounded sheet wasn't there, and instead introduce an image charge $-q$ below the sheet at $z = -d$, which is outside the boundary surface. The potential of this new image problem is just
$$
\phi(\mathbf{x}) = \frac{q}{|\mathbf{x} - d \mathbf{e}_z|} - \frac{q}{|\mathbf{x} + d \mathbf{e}_z|} = \frac{q}{\sqrt{x^2 + y^2 + (z-d)^2}} - \frac{q}{\sqrt{x^2 + y^2 + (z+d)^2}} \ .
$$
The potential of this image problem just happens to solve the original boundary conditions, since $\phi(x,y,0) = 0$. By the uniqueness theorem, then, this same potential must *also* be the solution to the original BVP. See the figure below.

![](../resources/image-20240811130344134.png)

From this potential we can also easily find the Green's function satisfying the boundary conditions. For a point charge $q$ located at a position $\mathbf{x}_0$, we have $\rho(\mathbf{x}') = q \delta(\mathbf{x}' - \mathbf{x}_0)$, meaning
$$
\begin{align*}
\phi(\mathbf{x}) &= \int d^3\mathbf{x}' \ \rho(\mathbf{x}') G(\mathbf{x} - \mathbf{x}') \\
&= \int d^3\mathbf{x}' \ q \delta(\mathbf{x}' - \mathbf{x}_0) G(\mathbf{x} - \mathbf{x}') \\
&= q G(\mathbf{x} - \mathbf{x}_0) \ .
\end{align*}
$$
This means that to get the Green's function all we need to do is divide the potential by $q$ to get
$$
G_D(\mathbf{x} - d\mathbf{e}_z) = \frac{q}{\sqrt{x^2 + y^2 + (z-d)^2}} - \frac{q}{\sqrt{x^2 + y^2 + (z+d)^2}} \ .
$$
Notice that the first term is just the unbounded Green's function. The second term is the homogeneous part
$$
F(\mathbf{x} - d \mathbf{e}_z) = -\frac{q}{\sqrt{x^2 + y^2 + (z+d)^2}} \ .
$$
It's important to note that the potential and Green's function we found is *only* valid above the sheet, where $z > 0$. Below the sheet these formulas will *not* hold. The method of images only guarantees a solution *inside* the boundary surface. If we wanted to know what the potential was beyond the boundary surface as well we'd need to use some other approach.

This in a nutshell is how we use the method of images. Given some problem involving a set of point charges subject to some set of boundary conditions, we convert the problem into an unbounded problem by introducing image charges, find the image charges needed to satisfy the boundary conditions, write down the potential for this image problem and if desired the Green's function. Note that for the method of images to work, it's important that the images charges be *outside* the boundary surface. If we can't find image charges outside the surface that satisfy the boundary conditions, we can't proceed.

Before moving on, it's insightful to calculate the total induced charge on the boundary surface, in this case on the sheet. Using the relation between the surface charge density $\sigma$ and the normal derivative of $\phi$ from the previous chapter, we can find the total charge *induced* on the sheet due to the presence of the point charge $q$. Recall that near the surface the normal derivative must satisfy the condition
$$
\frac{\partial \phi}{\partial n} = -4\pi\sigma \ .
$$
Since the normal vector for the sheet is $\mathbf{n} = z \mathbf{e}_z$, the induced surface charge density is given by
$$
\begin{align*}
\sigma &= -\frac{1}{4\pi} \frac{\partial \phi}{\partial z} \\
&= -\frac{1}{4\pi} \frac{\partial}{\partial z} \bigg(\frac{q}{\sqrt{x^2 + y^2 + (z-d)^2}} - \frac{q}{\sqrt{x^2 + y^2 + (z+d)^2}}\bigg) \\
&= -\frac{1}{4\pi} \bigg(\frac{q(z-d)}{(x^2 + y^2 + (z-d)^2)^{3/2}} - \frac{q(z+d)}{(x^2 + y^2 + (z+d)^2)^{3/2}}\bigg) \\
&= -\frac{qd}{2\pi}\frac{1}{(x^2 + y^2 + d^2)^{3/2}} \ .
\end{align*}
$$
Using this information we can then find the total induced charge $Q$ on the sheet by integrating $\sigma$ along the surface of the sheet. Since the surface is just the entire $xy$-plane. We'll use polar coordinates for the integration since it's slightly easier. Writing $da = r dr d\varphi$ and $r^2 = x^2 + y^2$, we have
$$
\begin{align*}
Q &= \oint_\mathcal{S} da \ \sigma \\
&= -\frac{qd}{2\pi} \int_0^{2\pi} d\varphi \int_0^\infty r dr \ \frac{1}{(r^2 + d^2)^{3/2}} \\
&= \frac{qd}{\sqrt{r^2 + d^2}} \bigg |_{r=0}^\infty \\
&= -q \ .
\end{align*}
$$
Notice that the induced charge on the surface is just the image charge, with $Q = -q$. This will be generally true in method of images problems. In fact it *must* be this way, since the image charges are just a reformulation of the boundary conditions. The net charge in the original BVP should be the same as the net charge in the corresponding image problem.

We'll now work through a few more complicated examples to help solidify these ideas.

##### Example: Point charge near a grounded conducting sphere

Suppose we have a point charge $q$ located at some distance $d$ outside a grounded conducting sphere of radius $R$. This means that the boundary surface is just the surface of the sphere, where we must have $\phi = 0$. To find the potential of this BVP, we'll suppose there is a single image charge $q'$ located inside the sphere at some distance $d' \leq R$ from the center.

![](../resources/image-20240811130410188.png)

If we ignore the presence of the sphere and focus on these two charges alone, the potential will be
$$
\phi(\mathbf{x}) = \frac{q}{|\mathbf{x} - \mathbf{d}|} + \frac{q'}{|\mathbf{x} - \mathbf{d}'|} \ ,
$$
where $\mathbf{d} = d\mathbf{n}$ is the distance vector of $q$ and $\mathbf{d}' = d'\mathbf{n}'$ is the distance vector of $q'$, with $\mathbf{n}$ and $\mathbf{n}'$ their respective normal vectors relative to the surface of the sphere. To satisfy the boundary conditions, we require that $\phi(R\mathbf{e}_r) = 0$. This means we need to find a $q'$ and $d'$ for the image charge that satisfies the condition
$$
0 = \frac{q}{|R\mathbf{e}_r - d \mathbf{n}|} + \frac{q'}{|R\mathbf{e}_r - d' \mathbf{n}'|} = 
\frac{q/R}{|\mathbf{e}_r - \frac{d}{R}\mathbf{n}|} + \frac{q'/d'}{|\frac{R}{d'}\mathbf{e}_r - \mathbf{n}'|} \ .
$$
The only way this equation can evidently be satisfied with a nontrivial solution is if
$$
\frac{q}{R} = -\frac{q'}{d'} \quad , \quad \frac{d}{R} = \frac{R}{d'} \ .
$$
This means we means for the image problem to satisfy the boundary conditions, the image charge must satisfy
$$
q' = -\frac{R}{d} q \quad , \quad \mathbf{d}' = \frac{R^2}{d} \mathbf{n} \ .
$$
Plugging these expressions back into the potential, we thus have
$$
\phi(\mathbf{x}) = \frac{q}{|\mathbf{x} - d \mathbf{n}|} - \frac{\frac{R}{d} q}{|\mathbf{x} - \frac{R^2}{d} \mathbf{n}|} \ .
$$
We can rewrite this expression in a somewhat more useful form by using the law of cosines. If we let $\alpha$ denote the angle between $\mathbf{x}$ and $\mathbf{d}$, we can write
$$
\phi(\mathbf{x}) = \frac{q}{\sqrt{r^2 + d^2 - 2rd\cos\alpha}} - \frac{\frac{R}{d} q}{\sqrt{R^2 + \frac{r^2 d^2}{R^2} - 2rd\cos\alpha}} \ .
$$
By the uniqueness theorem, this must be the solution to the original BVP as well. Let's check that the limits make sense. As $d \rightarrow \infty$, we have $d' \rightarrow 0$, meaning the image charge moves closer towards the origin as the main charge moves farther away. Moreover, the image charge itself goes to zero, since $q' \rightarrow 0$. On the other hand, as $d \rightarrow R$, we have $d' \rightarrow R$ as well, meaning the image charge moves toward the surface as the main charge does. The image charge itself goes to $q' \rightarrow q$ in this limit. This also makes sense, since near the surface we expect the problem to approximate that of the charge above an infinite sheet.

If we like we can also write down the Green's function by again dividing both sides of the potential by $q$ to get
$$
G_D(\mathbf{x} - \mathbf{d}) = \frac{1}{\sqrt{r^2 + d^2 - 2rd\cos\alpha}} - \frac{\frac{R}{d}}{\sqrt{R^2 + \frac{r^2 d^2}{R^2} - 2rd\cos\alpha}} \ .
$$
Again, the first term is just the unbounded Green's function. The second term is the homogeneous part
$$
F(\mathbf{x} - \mathbf{d}) = -\frac{\frac{R}{d}}{\sqrt{R^2 + \frac{r^2 d^2}{R^2} - 2rd\cos\alpha}} \ .
$$
One can check that $F$ also satisfies Laplace's equation subject to the boundary condition $F(R\mathbf{e}_r - \mathbf{d}) = 0$.

Again, it's important to note that the potential and Green's function we found is *only* valid outside the sphere. These formulas do not hold inside the sphere, which is outside the boundary surface.

We can find the charge induced on the surface of the conductor as well. Letting $\mathbf{n} = r \mathbf{e}_r$, the surface charge density $\sigma$ turns out to be given by
$$
\sigma = -\frac{1}{4\pi} \frac{\partial \phi}{\partial r} = -\frac{1}{4\pi R^2} \frac{R}{d} \frac{1-\frac{R^2}{d^2}}{\big(1 + \frac{R^2}{d^2} - 2 \frac{R}{d} \cos\alpha \big)^{3/2}} \ .
$$
Notice that $\sigma$ now depends on the location of the field point as well due to the presence of the $\cos\alpha$ term. The density is evidently highest when $\alpha = 0$, which is the area on the sphere closest to the point charge, and lowest when $\alpha = \pi$, which is the area on the sphere farthest from the point charge. As the point charge moves farther away the density decreases.

By evaluating the surface integral, one can again show that the induced charge is given by the induced charge, with
$$
Q = \oint_{\mathcal{S}} da \ \sigma = q' = -\frac{R}{d} q \ .
$$
We can also calculate the force between the point charge and the conducting sphere if we like. Since the image charge problem is equivalent, we can just use Coulomb's Law between the charge $q$ and its image charge $q'$ to get
$$
\mathbf{F} = \frac{qq'}{|\mathbf{d} - \mathbf{d}'|^2} \mathbf{e}_r = -\frac{q^2 R}{d^3\big(1 - \frac{R^2}{d^2}\big)^2} \mathbf{e}_r \ .
$$
Evidently the force between the conductor and the point charge is always attractive. When the charge is near the conductor, the force goes like $F \sim (d-R)^{-2}$ similar to a monopole field, but as the charge moves farther away the force goes like $F \sim d^{-3}$, more similar to a dipole field.

##### Example: Point charge near an ungrounded conducting sphere

In the previous example we considered the problem of a point charge in the presence of a grounded conducting sphere. In fact, there's no necessary reason that the conductor to be grounded. We can hold it at any fixed potential we like, but to do so we need to modify the potential somewhat to account for this.

Suppose the sphere is held at a constant potential $\phi=V$. We'll again place an image charge $q' = -\frac{R}{d} q$ at a distance $d' = \frac{R^2}{d}$. However, we need to cancel the potential on the surface of the sphere as well. To address this, we can place another image charge at the origin with charge $q'' = VR$, to ensure that when $|\mathbf{x}| = R$ we have $\phi = V$ as expected.

FIGURE

Then we have
$$
\phi(\mathbf{x}) = \frac{q}{|\mathbf{x} - d\mathbf{n}|} - \frac{\frac{R}{d}q}{|\mathbf{x} - \frac{R^2}{d^2}\mathbf{n}|} + \frac{VR}{|\mathbf{x}|} \ .
$$
We can use this to get the Green's function in the usual way by dividing by $q$. In this case, the function
$$
F(\mathbf{x} - \mathbf{d}) = -\frac{\frac{R}{d}q}{|\mathbf{x} - \frac{R^2}{d^2}\mathbf{n}|} + \frac{VR}{|\mathbf{x}|}
$$
will satisfy Laplace's equation. In fact, each term satisfies Laplace's equation separately, as one can check.

One can check that the charge $Q$ on the surface of the sphere is given by $Q = q' + q'' = VR - \frac{R}{d} q$. The force between the  ungrounded sphere and the point charge is evidently given by
$$
\mathbf{F} = q\bigg(\frac{q'}{|\mathbf{d} - \mathbf{d}'|^2} + \frac{VR}{|\mathbf{d}|^2}\bigg)\mathbf{e}_r = \frac{q}{d^2} \bigg(VR - \frac{qRd^3}{\big(d^2 - R^2\big)^2}\bigg) \mathbf{e}_r \ .
$$
Now, the force includes both the dipole contribution from before, as well as a new monopole contribution due to the presence of the fixed potential $V$. This means in the far field limit $d \gg R$ the force reduces to Coulomb's Law between point charges $Q$ and $q$. 

In the opposite limit where $d \approx R$ things are somewhat more interesting. Suppose that $d = R + \delta$, where $\delta \ll r$. After working out the math, we find that very close to the surface $\mathbf{F} \sim -\frac{q^2}{4\delta^2} \mathbf{e}_r$. That is, no matter what the force becomes infinitely attractive near the surface, even if $q$ and $Q$ have the same sign.

The point where this attraction happens is usually very close to the sphere. One can show that when $Q \approx VR \gg q$, the force has an unstable equilibrium at $d \approx R\big(1 + \frac{1}{2}\sqrt{\frac{q}{VR}}\big)$. For example, an electron near the surface of a conductor with radius $R = 30 \ \text{cm}$ and $V = 1 \ \text{V}$ will experience this attraction only when $d-R \lesssim 10 \ \mu\text{m}$.

We can use this fact to interpret why charges almost never leave the surface of a conductor in the presence of an external field. If they tried to, they'd always be pulled back to the surface by this very powerful attractive force.

##### Example: Point charge near two grounded conducting perpendicular sheets

Suppose we have a point charge $q$ located at point $\mathbf{d} = (a,b)$ above two perpendicular grounded conducting sheets in the $xy$-plane. It's not too hard to see that using a single image charge for this problem won't work, no matter what its charge or position is. We'll need multiple. But how many? It turns out we'll need 3 image charges.

Consider an equivalent problem where we have 3 image charges $q',q'',q'''$ located at positions $\mathbf{d}'$, $\mathbf{d}''$, and $\mathbf{d}'''$ respectively. The potential of this configuration is evidently given by
$$
\phi(\mathbf{x}) = \frac{q}{|\mathbf{x}-\mathbf{d}|} + \frac{q'}{|\mathbf{x}-\mathbf{d}'|} + \frac{q''}{|\mathbf{x}-\mathbf{d}''|} + \frac{q'''}{|\mathbf{x}-\mathbf{d}'''|} \ .
$$
To arrange these image charges in a way that satisfies the boundary condition $\phi(0,y)=\phi(x,0)=0$, we'll choose
$$
\begin{align*}
q' = -q \quad &, \quad \mathbf{d}' = (-a,b) \ , \\
q'' = -q \quad &, \quad \mathbf{d}'' = (a,-b) \ , \\
q''' = q \quad &, \quad \mathbf{d}''' = (-a,-b) \ . \\
\end{align*}
$$
This configuration of charges is called the *simple quadrupole*, a concept we'll return to in more generality later.

![](../resources/image-20240811130516105.png)

Now, observe if we plug these values back into the potential we get
$$
\phi(\mathbf{x}) = \frac{q}{\sqrt{(x-a)^2+(y-b)^2}} - \frac{q}{\sqrt{(x+a)^2+(y-b)^2}} - \frac{q}{\sqrt{(x-a)^2+(y+b)^2}} + \frac{q}{\sqrt{(x+a)^2+(y+b)^2}} \ .
$$
Observe now that if we set $\mathbf{x}=(x,0)$ or $\mathbf{x}=(0,y)$ the potential vanishes, meaning this potential satisfies the boundary conditions, and hence by uniqueness must also be the correct potential for the original BVP. Dividing by $q$ will again give us the Green's function as usual.

The force between the point charge and the two sheets is given in the usual way. We end up with
$$
\mathbf{F} = q^2 \bigg(\frac{a}{(a^2+b^2)^{3/2}} - \frac{1}{a^2}\bigg)\mathbf{e}_x + q^2 \bigg(\frac{b}{(a^2+b^2)^{3/2}} - \frac{1}{b^2}\bigg)\mathbf{e}_y \ .
$$
Interestingly, this exact same problem can attempt to be carried out for two conducting sheets separated by an angle $\theta$. One can be convinced that in this general case, the method of images will only work for angles $\theta = \frac{\pi}{4}, \frac{\pi}{3}, \frac{\pi}{2}, \pi$. The lower the angle, the more image charges will be needed to match the problem configuration. If any other angles are tried, one is forced to place image charges inside the boundary surface, which of course is not allowed for the method of images are work.

##### Example: Conducting sphere in a uniform electric field

We'll consider now a problem that involves no point charges at all. Suppose a uniform conducting sphere of radius $R$ lies in the presence of a uniform electric field $\mathbf{E}_0$. Though not at all obvious, we can solve this problem using the method of images as well. 

We'll suppose the sphere is centered at the origin, and that $\mathbf{E}_0 = E_0 \mathbf{e}_z$ points along the $z$-axis of the sphere. To turn this into an image problem, we can think of the electric field as being generated by two opposite charges $q_\pm = \pm q$ each located a distance $d \gg R$ from the origin with positions $\mathbf{d}_\pm = \pm R\mathbf{e}_z$. Then the electric field will be approximately constant near the sphere, with
$$
E_0 \approx \frac{2q}{d^2} \ .
$$
If we send $q, d$ to infinity in a way such that this ratio stays constant, $E_0$ will become exactly uniform at every point.

FIGURE

Now, we know how to solve the problem of point charges in the presence of a conducting sphere. Each charge $q_+$ and $q_-$ will have associated image charges inside the sphere with charges and positions given by
$$
q_\pm' = \mp q \frac{R}{d} \quad , \quad \mathbf{d}_\pm' = \frac{R^2}{d} \mathbf{e}_z \ .
$$
Then the potential near the $\phi(\mathbf{x})$ near the sphere will be given by
$$
\begin{align*}
\phi(\mathbf{x}) &= \frac{q_+}{|\mathbf{x} - \mathbf{d}_+|} + \frac{q_-}{|\mathbf{x} - \mathbf{d}_-|} + \frac{q_+'}{|\mathbf{x} - \mathbf{d}_+'|} + \frac{q_-'}{|\mathbf{x} - \mathbf{d}_-'|} \\
&= q \bigg[\frac{1}{\sqrt{r^2 + d^2 + 2rd\cos\theta}} - \frac{1}{\sqrt{r^2 + d^2 - 2rd\cos\theta}} - \frac{R/d}{\sqrt{r^2 + (R^2/d)^2 + 2r(R^2/d)\cos\theta}} \\
&\quad + \frac{R/d}{\sqrt{r^2 + (R^2/d)^2 - 2r(R^2/d)\cos\theta}}\bigg] \ .
\end{align*}
$$
Again, the term in brackets is the Green's function under Dirichlet boundary conditions.

Now, to make this exact for a uniform field we need to send $d \rightarrow \infty$. In this limit, we can assume that $r \ll d$, meaning we can factor out $d^2$ from the roots and use the binomial approximation on each term to write
$$
\phi(\mathbf{x}) = -\frac{2q}{d^2} r \cos\theta + \frac{2q}{d^2} \frac{R^3}{r^2} \cos\theta + O\bigg(\frac{r}{d}\bigg) \ .
$$
The higher-order terms will vanish as $d \rightarrow \infty$. What remains are terms proportional to the uniform electric field $E_0 = \frac{2q}{d^2}$,
$$
\phi(\mathbf{x}) = -E_0\bigg(r - \frac{R^3}{r^2}\bigg) \cos\theta \ .
$$
Notice the first term is just $-E_0 z = -E_0 r\cos\theta$, which is what we'd expect for the potential of a uniform electric field in the absence of any conductors. The second term then is evidently the potential of the induced charge density on the sphere, which is equivalent of course to the potential of the image charges. The induced charge density is given in the usual way,
$$
\sigma = -\frac{1}{4\pi} \frac{\partial \phi}{\partial r} \bigg|_{r=R} = \frac{3}{4\pi} E_0 \cos\theta \ .
$$
Evidently, the surface integral of $\sigma$ in this case will vanish, meaning no net induced charge will accumulate on the sphere,
$$
Q = \oint_\mathcal{S} da \ \sigma = \frac{3}{2} E_0 R^2 \int_0^\pi d\theta \sin\theta \cos\theta = 0 \ .
$$
This can also be seen, of course, by noticing that the image charges $q'_+$ and $q_-'$ are equal and opposite, so their sum will vanish. This doesn't mean, of course, that there's no charge on the sphere. Indeed, we'd expect that in the direction of the field, positive charges will concentrate at one pole and negative charges on the other. What this result says is the net charge will be zero.

### Green's Function for a Sphere

Let's consider again the example of a point charge $q$ in the presence of a grounded conducting sphere of radius $R$. If we let $r'$ denote the distance of the point charge from the origin, we saw that we could write the Green's function for this problem by
$$
G_D(\mathbf{x} - \mathbf{x}') = \frac{1}{\sqrt{r^2 + r'^2 - 2rr'\cos\alpha}} - \frac{R/r'}{\sqrt{R^2 + \frac{r^2 r'^2}{R^2} - 2rr'\cos\alpha}} \ ,
$$
where $\alpha$ is the angle between the field point $\mathbf{x}$ and the source point $\mathbf{x}'$. 

We can use this Green's function as a building block to find solutions to any problem whose potential is specified on the surface of a sphere. Recall from a few sections back that we saw we could express the potential in the presence of Dirichlet boundary conditions by the formal solution
$$
\phi(\mathbf{x}) = \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') G_D(\mathbf{x} - \mathbf{x}') - \frac{1}{4\pi} \oint_\mathcal{S} da' \ \phi \frac{\partial G_D}{\partial n'} \ .
$$
Provided we can find the Green's function and we know the value of the potential on some given boundary surface, we have a unique solution of this form for the potential everywhere in space.

Now, suppose we have some charge distribution $\rho(\mathbf{x})$ located some distance away from a sphere of radius $R$ whose surface is held at some known potential $\phi_0 = \phi(R,\theta',\varphi')$. Since $\mathcal{S}$ is a sphere and the charge distribution lies outside the sphere, its surface normal $\mathbf{n}'$ will point inward toward the sphere with $\mathbf{n}' = -\mathbf{e}_{r'}$. This means the normal derivative of $G_D$ at the surface of the sphere will be
$$
\frac{\partial G_D}{\partial n'} = -\frac{\partial G_D}{\partial r'} \bigg|_{r'=R} = -\frac{(r^2 - R^2)/R}{(r^2 + R^2 - 2Rr \cos\alpha)^{3/2}} \ .
$$
Plugging this in and using the fact that the area element is $da' = R^2 d\Omega'$ on the surface of the sphere, we can express the potential for *any* charge distribution $\rho(\mathbf{x})$ outside a sphere of known potential by the integral
$$
\begin{align*}
\phi(\mathbf{x}) = &\int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') \bigg[\frac{1}{\sqrt{r^2 + r'^2 - 2rr'\cos\alpha}} - \frac{R/r'}{\sqrt{R^2 + \frac{r^2 r'^2}{R^2} - 2rr'\cos\alpha}}\bigg] \\
&+ \frac{1}{4\pi} \oint_\mathcal{S} d\Omega' \ \phi(R,\theta',\varphi') \frac{R(r^2 - R^2)}{(r^2 + R^2 - 2Rr \cos\alpha)^{3/2}} \ ,
\end{align*}
$$
where $\cos\alpha$ can be expressed in terms of the trig relation
$$
\cos\alpha = \cos\theta \cos\theta' + \sin\theta \sin\theta' \cos(\varphi-\varphi') \ .
$$
This is an imposing set of integrals to solve though, so it's perhaps worth looking at a simplifying scenario. Suppose there are no other charges present other than the sphere. Then we can neglect the volume integral and express the potential by
$$
\phi(\mathbf{x}) = \frac{1}{4\pi} \oint_\mathcal{S} d\Omega' \ \phi(R,\theta',\varphi') \frac{R(r^2 - R^2)}{(r^2 + R^2 - 2Rr \cos\alpha)^{3/2}} \ .
$$
Note that we can easily write down the potential inside the sphere as well. All we need to do is flip the sign on the normal derivative, which is equivalent to replacing $r^2 - R^2 \rightarrow R^2 - r^2$ in the integral above. Everything else is the same.

##### Example: Conducting sphere with hemispheres of opposite potentials

Suppose we have a hollow sphere of radius $R$ consisting of two hemispheres held at opposite fixed potentials $\pm V$ that are separated by a thin insulating ring at the equator. We want to find the potential that matches these boundary conditions on the surface of the sphere.

FIGURE

Since there are no other source charges present, we can express the potential in terms of the integral given above,
$$
\phi(\mathbf{x}) = \frac{1}{4\pi} \oint_\mathcal{S} d\Omega' \ \phi(R,\theta',\varphi') \frac{R(r^2 - R^2)}{(r^2 + R^2 - 2Rr \cos\alpha)^{3/2}} \ .
$$
We require that $\phi(R,\theta',\varphi') = +V$ when $0 \leq \theta' < \frac{\pi}{2}$ and $\phi(R,\theta',\varphi') = -V$ when $\frac{\pi}{2} < \theta' \leq \pi$. Plugging this in, we get
$$
\phi(\mathbf{x}) = \frac{VR(r^2 - R^2)}{4\pi} \int_0^{2\pi} d\varphi' \bigg[\int_0^{\pi/2} \sin\theta' d\theta' - \int_{\pi/2}^\pi \sin\theta' d\theta'\bigg] \frac{1}{(r^2 + R^2 - 2Rr \cos\alpha)^{3/2}} \ .
$$
We can simplify this expression somewhat by making the change of variables $\theta' \rightarrow \pi - \theta', \varphi' \rightarrow \pi + \varphi'$ on the second $\theta'$ integral, combining terms, and making a change of variable $\mu' = \cos\theta'$ to write
$$
\phi(\mathbf{x}) = \frac{VR(r^2 - R^2)}{4\pi} \int_0^{2\pi} d\varphi' \int_0^1 d\mu' \bigg[\frac{1}{(r^2 + R^2 - 2Rr \cos\alpha)^{3/2}} - \frac{1}{(r^2 + R^2 + 2Rr \cos\alpha)^{3/2}}\bigg] \ .
$$
Unfortunately though, the presence of the term $\cos\alpha = \cos\theta \cos\theta' + \sin\theta \sin\theta' \cos(\varphi-\varphi')$ still makes this integral impossible to easily solve. But we can solve it in one simplifying case, when the field point is located on the positive $z$-axis, so $r=z$. In that case, we can simply write $\cos\alpha = \cos\theta' = \mu'$. Then the $\varphi'$ integral becomes trivial, and we have
$$
\phi(z\mathbf{e}_z) = \frac{VR(z^2 - R^2)}{2} \int_0^1 d\mu' \bigg[\frac{1}{(z^2 + R^2 - 2Rz \mu')^{3/2}} - \frac{1}{(z^2 + R^2 + 2Rz \mu')^{3/2}}\bigg] \ .
$$
Both integrals can be easily solved using substitutions of the form $u = r^2 + R^2 \mp 2Rr \mu'$. We finally get
$$
\phi(z\mathbf{e}_z) = V \bigg[1 - \frac{(z^2 - R^2)/z}{\sqrt{z^2 + R^2}}\bigg] \ .
$$
Let's check that this solution makes sense. When $z=R$ we get $\phi = V$, which is what we expect when $z > 0$, which we assumed. When $z \gg R$ we get $\phi \sim \frac{3VR^2}{2z^2}$, which means the potential falls off *faster* than it would for a point charge. In fact, it falls off like a *dipole*. This should make sense, given that we have two identical hemispheres held at opposite potentials, which means they have a net charge of zero and effectively act as a sort of dipole.

While we can't evaluate the general integral for this potential for arbitrary $\mathbf{x}$, we can at least get a series solution. The idea here is to suppose we're far away from the sphere, so that $r \gg R$, and define $\varepsilon \equiv (R/r)^2$. If we expand the integrand in powers of $\varepsilon$ and integrate term by term, it's possible to show that the potential we end up with has the form
$$
\phi(\mathbf{x}) = \frac{3VR^2}{2r^2} \bigg(P_1(\cos\theta) - \frac{7R^2}{12r^2} P_3(\cos\theta) + \cdots\bigg) \ .
$$
Here each term $P_\ell(\cos\theta)$ is the *Legendre polynomial* of degree $\ell$. Details on the Legendre polynomials can be found in the appendix. Evidently, the potential given only includes the odd degree polynomials. The even degree terms vanish due to the polar symmetry in the problem. The first two odd Legendre polynomials are given by
$$
P_1(\cos\theta) = \cos\theta \quad , \quad P_3(\cos\theta) = \frac{1}{2} (5\cos^3\theta - 3\cos\theta) \ .
$$
The further we are from the sphere, the better we can approximate this series solution by keeping only the first few terms. In fact, this is the entire idea behind the multipole expansion, something we'll cover in great detail in a future chapter.



























