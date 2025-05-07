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

As an example, suppose we're interested in the potential of a point charge located some distance outside of the surface of a sphere, where we happen to know that the surface of the sphere is held at some fixed potential $\phi(\mathbf{x}) = V$. Instead of writing the charge density as the sum of the density of a point charge and the density of a sphere, we could neglect the sphere from the charge density and instead impose the boundary condition on Poisson's equation that the solution must satisfy the boundary condition $\phi(\mathbf{x}) = V$ on the surface of the sphere. This is an example of a *Dirichlet boundary condition*. Dirichlet boundary conditions are boundary conditions where the solution takes on some known fixed value on some known surface.

Poisson BVPs with only Dirichlet boundary conditions all have the general form
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi = -4\pi\rho \ \text{in} \ \mathcal{V} \ , \\
\text{where} \ \phi = V(\mathbf{x}) \ \text{on} \ \mathcal{S} \ .
\end{cases}
\end{align*}
$$
In the previous example, the region $\mathcal{V}$ would be the region outside the sphere where $r > R$, and the surface $\mathcal{S}$ would be a sphere of radius $R$ centered at the origin, in which case the boundary condition might be that $\phi(\mathbf{x}) = V$ when $r = R$. This means whichever solutions we find to Poisson's equation, the only solution that will work in the end is the one whose potential is exactly $V$ on the surface of the sphere.

As another example, instead of knowing that the potential is fixed on the surface of the sphere, we might instead happen to know that the surface charge density $\sigma(\mathbf{x})$ on the surface of the sphere is constant instead. This turns out to be equivalent to the statement that the E-field itself is constant on the surface, or equivalently that the gradient of the potential is constant. This is an example of a *Neumann boundary condition*. Neumann boundary conditions are those where the *normal derivative* of the solution is a known function on some known surface.

Poisson BVPs with only Neumann boundary conditions all have the general form
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi = -4\pi\rho \ \text{in} \ \mathcal{V} \ , \\
\text{where} \ \frac{\partial \phi}{\partial n} = -E(\mathbf{x}) \ \text{on} \ \mathcal{S} \ .
\end{cases}
\end{align*}
$$
Here we've introduced the *normal derivative* $\partial \phi / \partial n$, defined to be the component of the gradient normal to the surface,
$$
\frac{\partial \phi}{\partial n} \equiv \nabla \phi \cdot \mathbf{n} \ .
$$
Since $\mathbf{E} = -\nabla \phi$, the normal derivative of the potential is also $-\mathbf{E} \cdot \mathbf{n}$, or the component of the (negative) E-field normal to the surface. For instance, in the previous example, the boundary condition might be that $\mathbf{E}(\mathbf{x}) \cdot \mathbf{n} = E$ whenever $r = R$.

We could also imagine problems where the solution is known on one surface, while its normal derivative is known on some other surface. For instance, we could have two spheres where one is held at a fixed potential and the other at a fixed surface charge density. Boundary conditions of this kind are known as *mixed boundary conditions*. 

Poisson BVPs with mixed boundary conditions all have the general form
$$
\begin{align*}
\begin{cases}
\nabla^2 \phi = -4\pi\rho \ \text{in} \ \mathcal{V} \ , \\
\text{where} \ \phi = V(\mathbf{x}) \ \text{on} \ \mathcal{S}_D \ , \\
\text{and} \ \frac{\partial \phi}{\partial n} = -E(\mathbf{x}) \ \text{on} \ \mathcal{S}_N \ .
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
\text{where} \ \phi = \psi = V(\mathbf{x}) \ \text{on} \ \mathcal{S} \ .
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
\text{where} \ \frac{\partial \phi}{\partial n} = \frac{\partial \psi}{\partial n} = -E(\mathbf{x}) \ \text{on} \ \mathcal{S} \ ,
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

### Linear PDEs

Poisson's equation belongs to a special class of PDEs known as *linear PDEs*, which happen to satisfy a few important properties. A linear PDE is a PDE of the form
$$
\mathcal{L} \phi(\mathbf{x}) = f(\mathbf{x}) \ ,
$$
where $\mathcal{L}$ is a linear differential operator and $f(\mathbf{x})$ is some source function. A *linear BVP* is any BVP whose PDE is linear.

For Poisson's equation, $\mathcal{L} = \nabla^2$ is the Laplacian and the source function is $f(\mathbf{x}) = -4\pi \rho(\mathbf{x})$. For Laplace's equation, $\mathcal{L} = \nabla^2$ and $f(\mathbf{x}) = 0$. When the source function is zero we say the PDE is *homogeneous*. When it's non-zero we say it's is *inhomogeneous*.

So what exactly do we mean by a linear differential operator? Suppose we apply the Laplacian operator $\mathcal{L} = \nabla^2$ to some linear superposition of scalar fields,
$$
\phi(\mathbf{x}) = c_1 \phi_1(\mathbf{x}) + c_2 \phi_2(\mathbf{x}) + \cdots \ .
$$
The Laplacian satisfies the property that when applied to $\phi(\mathbf{x})$ the operator $\mathcal{L}$ distributes over each individual $\phi_i(\mathbf{x})$,
$$
\mathcal{L} \phi(\mathbf{x}) = c_1 \mathcal{L} \phi_1(\mathbf{x}) + c_2 \mathcal{L} \phi_2(\mathbf{x}) + \cdots \ .
$$
Any operator with this special property is called a *linear operator*. 

Also, recall that the Laplacian operator is just the sum of second order partial derivatives,
$$
\nabla^2 = \nabla \cdot \nabla = \frac{\partial^2}{\partial x_i \partial x_i} = \frac{\partial^2}{\partial x^2} + \frac{\partial^2}{\partial y^2} + \frac{\partial^2}{\partial z^2} \ .
$$
Phrased differently, the Laplacian is just a linear superposition of partial derivatives. A linear operator $\mathcal{L}$ that's a linear superposition of partial derivatives
$$
\mathcal{L} = a(\mathbf{x}) + b_i(\mathbf{x}) \frac{\partial}{\partial x_i} + c_{ij}(\mathbf{x}) \frac{\partial^2}{\partial x_i \partial x_j} + \cdots
$$
is called a *linear differential operator*. Clearly an operator of this kind is also a linear operator since partial derivatives are inherently linear operators themselves.

When we say $\mathcal{L} \phi(\mathbf{x}) = f(\mathbf{x})$ is a *linear PDE*, we mean specifically that $\mathcal{L}$ is a linear differential operator. A linear PDE is special because its solutions satisfy the principle of superposition. This follows directly from the fact that $\mathcal{L}$ is a linear operator. If $\phi_1(\mathbf{x}), \phi_2(\mathbf{x}), \cdots$ are all solutions to the same linear PDE $\mathcal{L} \phi(\mathbf{x}) = f(\mathbf{x})$, then any linear superposition
$$
\phi(\mathbf{x}) = c_1 \phi_1(\mathbf{x}) + c_2 \phi_2(\mathbf{x}) + \cdots
$$
is also a solution to the same PDE for *some* choice of coefficients $c_i$. This important fact provides us with powerful ways to solve linear PDEs like Poisson's equation that only work for linear PDEs, which we'll explore in this chapter and the next.

Suppose $\phi_h(\mathbf{x})$ is the *general solution* to some homogeneous linear PDE $\mathcal{L} \phi_h(\mathbf{x}) = 0$, potentially subject to some set of boundary conditions. In saying $\phi_h(\mathbf{x})$ is a *general* solution, we mean we can't find any other solution to add to $\phi_h(\mathbf{x})$ that's a new solution to the same PDE.

Suppose further that $\phi_p(\mathbf{x})$ is some *particular solution* to an inhomogeneous PDE $\mathcal{L} \phi(\mathbf{x}) = f(\mathbf{x})$, where $\mathcal{L}$ is the same linear operator. In saying $\phi_p(\mathbf{x})$ is a *particular solution*, we mean that it's just some solution to the above PDE, not necessarily the most general one. We could find a different solution and add it to $\phi_p(\mathbf{x})$ to get a completely new solution.

By the superposition principle their sum
$$
\phi(\mathbf{x}) = \phi_h(\mathbf{x}) + \phi_p(\mathbf{x})
$$
must be another solution to the inhomogeneous PDE $\mathcal{L} \phi(\mathbf{x}) = f(\mathbf{x})$. In fact, this solution turns out to be the general solution to the inhomogeneous PDE.

This means we can solve any inhomogeneous linear BVP in two stages: First, find a particular solution to the inhomogeneous PDE free of any imposed boundary conditions. Second, find the general solution to the homogeneous BVP subject to the original boundary conditions. Finally, sum the two results to get the general solution to the inhomogeneous PDE. 

Applying this problem solving method to Poisson BVPs yields the following approach:

- Find any particular solution $\phi_p(\mathbf{x})$ that solves the Poisson equation $\nabla^2 \phi_p(\mathbf{x}) = -4\pi\rho(\mathbf{x})$ free of boundary conditions.
- Find the general solution $\phi_h(\mathbf{x})$ that solves Laplace's equation $\nabla^2 \phi_h(\mathbf{x}) = 0$ subject to the same set of boundary conditions as the original Poisson BVP.
- Obtain the general solution to the original Poisson BVP by setting $\phi(\mathbf{x}) = \phi_h(\mathbf{x}) + \phi_p(\mathbf{x})$.

We'll show how to find the particular and general solutions to Poisson's equation later in the chapter. In the next chapter we'll focus on other, more practical ways, of finding the general solution for a given BVP.

## Particular Solution

Thus far we've only showed how to reformulate electrostatics problems in terms of a Poisson BVP. We've said little about how to actually solve a BVP. In this section we'll start taking steps in that direction by introducing the *Green's function*, which provides a very efficient way to find the particular solution of a given linear PDE. We'll also discuss various ways to find Green's functions.

### Particular Solution to Poisson's Equation

It turns out we've already found the particular solution to Poisson's equation free of any boundary conditions. We did it in the previous chapter when we derived the integral formula for the potential in terms of the charge density,
$$
\phi(\mathbf{x}) = \int d^3 \mathbf{x}' \ \frac{\rho(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
This turns out to be the particular solution $\phi_p(\mathbf{x})$ for any Poisson equation as well, and indeed the unique particular solution. We can quickly verify both of these claims. Consider again the Poisson equation
$$
\nabla^2 \phi(\mathbf{x}) = -4\pi\rho(\mathbf{x}) \ .
$$
To verify the above integral is a solution to Poisson's equation we need to show that

$$
\nabla^2 \int d^3 \mathbf{x}' \ \frac{\rho(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} = -4\pi\rho(\mathbf{x}) \ .
$$
This is easy enough to do. Pulling the Laplacian $\nabla^2 = \nabla \cdot \nabla$ inside the integral and using the identity $\nabla 1/r = \mathbf{x}/r^3$, we have
$$
\nabla^2 \int d^3 \mathbf{x}' \ \frac{\rho(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} = \int d^3 \mathbf{x}' \ \rho(\mathbf{x}') \nabla \cdot \nabla \frac{1}{|\mathbf{x} - \mathbf{x}'|} = \int d^3 \mathbf{x}' \ \rho(\mathbf{x}') \nabla \cdot \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \ .
$$
Finally, using the related identity $\nabla \cdot \mathbf{x}/r^3 = -4\pi\delta(\mathbf{x})$ and evaluating the integral, we get
$$
\nabla^2 \int d^3 \mathbf{x}' \ \frac{\rho(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} = -4\pi \int d^3 \mathbf{x}' \ \rho(\mathbf{x}') \delta(\mathbf{x} - \mathbf{x}') = -4\pi\rho(\mathbf{x}) \ .
$$
We've thus found a particular solution to Poisson's equation free of boundary conditions. But why is it unique? Suppose we place a large sphere of radius $R$ around the origin and require that $\phi(\mathbf{x}) = 0$ on the surface of the sphere. This is a Dirichlet boundary condition, which means by the uniqueness theorem whatever solution satisfies this boundary condition must be unique. Of course, the particular solution doesn't satisfy this condition for any finite $R$. However, if we send $R \to \infty$ it does, since the above integral satisfies $\phi(\mathbf{x}) \to 0$ at infinity. Placing this boundary at infinity thus turns the unbounded problem above into a Dirichlet BVP, and since we already have a solution that matches the boundary condition at infinity it must be the unique solution.

### Green's Function

Now that we already have the particular solution to Poisson's equation and we know that it's also the general solution for BVPs free of boundary conditions, we're in principle done with this case. However, we'll find it insightful to analyze the structure of this solution a bit before moving on to BVPs with more complicated sets of boundary conditions. 

To that end, let's consider again the simplest non-trivial charge distribution of all, the point charge. We already know the potential for a point charge $q$ located at the origin is simply $\phi(\mathbf{x}) = q/r$, and the charge density is $\rho(\mathbf{x}) = q\delta(\mathbf{x})$. This potential must thus be the solution to the Poisson equation
$$
\nabla^2 \phi(\mathbf{x}) = -4\pi q\delta(\mathbf{x}) \ .
$$
It turns out that solutions to this particular equation are fundamental in the sense that we can use the solutions to this one special form of Poisson's equation to assemble the solution to any Poisson equation with an arbitrary charge density.

To see why this is the case, suppose we set $q=1$. For reasons we'll understand in a moment we'll denote this potential by $G(\mathbf{x})$ and call it a *Green's function*. Thus, $G(\mathbf{x}) \equiv 1/r$ is the potential corresponding to the Poisson equation for a unit point charge,
$$
\nabla^2 G(\mathbf{x}) = -4\pi \delta(\mathbf{x}) \ .
$$
Now suppose we have some arbitrary charge distribution $\rho(\mathbf{x})$ giving rise to some potential $\phi(\mathbf{x})$. Using the delta function we can trivially express the charge density in the form of an integral,
$$
\rho(\mathbf{x}) = \int d^3\mathbf{x}' \rho(\mathbf{x}') \delta(\mathbf{x} - \mathbf{x}') \ .
$$
By Poisson's equation, the charge density must also be $\rho(\mathbf{x}) = -1/4\pi \ \nabla^2 \phi(\mathbf{x})$, and also $\delta(\mathbf{x}) = -1/4\pi \ \nabla^2 G(\mathbf{x})$. Substituting these into the above integral, cancelling common terms, and pulling the Laplacian out of the integral, we thus find
$$
\nabla^2 \phi(\mathbf{x}) = \nabla^2 \int d^3\mathbf{x}' \rho(\mathbf{x}') G(\mathbf{x} - \mathbf{x}') \ .
$$
Moving everything to one side, we have
$$
\nabla^2 \bigg[\phi(\mathbf{x}) - \int d^3\mathbf{x}' \rho(\mathbf{x}') G(\mathbf{x} - \mathbf{x}')\bigg] = 0 \ .
$$
This inner function must thus satisfy Laplace's equation. However, the only solution to Laplace's equation over all space when no other boundary conditions are imposed is a constant. In fact this constant must be zero since both the potential and the charge density go to zero at infinity for a localized charge distribution. We thus have
$$
\boxed{
\phi_p(\mathbf{x}) = \int d^3\mathbf{x}' \rho(\mathbf{x}') G(\mathbf{x} - \mathbf{x}')
} \ .
$$
That is, the particular solution to Poisson's equation can be expressed as the convolution of the charge density with this special Green's function. In some sense we've just restated the obvious, since $G(\mathbf{x} - \mathbf{x}')$ is just the potential for a unit point charge located at some shifted position $\mathbf{x}'$, which is
$$
\boxed{
G(\mathbf{x} - \mathbf{x}') = \frac{1}{|\mathbf{x} - \mathbf{x}'|} 
} \ .
$$
Inserting this into the integral above, we just recover the same particular solution we had before,
$$
\phi_p(\mathbf{x}) = \int d^3 \mathbf{x}' \ \frac{\rho(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ ,
$$
So why did we bother doing this? For one, we've managed to decouple the behavior of the charge distribution from the behavior of the linear operator $\mathcal{L} = \nabla^2$. The Green's function is a property only of the linear operator. It knows nothing about the charge distribution. Only by convolving the two together do we get the potential for that particular distribution.

Every linear differential operator has an associated Green's function, assuming it exists. The form of this function will be unique to each operator. For an arbitrary linear differential operator $\mathcal{L}$, we define its Green's function $G(\mathbf{x})$ as the particular solution to its inhomogeneous PDE with a unit delta function source,
$$
\mathcal{L} G(\mathbf{x}) = \delta(\mathbf{x}) \ .
$$
For regularity reasons we also require that $G(\mathbf{x}) \to 0$ at infinity. This makes physical sense as well, since any physical field of interest should always go to zero at infinity to avoid infinite energies.

Note that the general convention is to place only a delta function on the right-hand side with no other constants. Poisson's equation by convention also includes a factor of $-4\pi$ so its Green's function is also the potential of a unit point charge. It doesn't matter much though, since we could always divide both sides by $-4\pi$ and redefine the Green's function accordingly.

By the same logic we used above for Poisson's equation, one can show that the particular solution to $\mathcal{L} \phi(\mathbf{x}) = f(\mathbf{x})$ can be found by convolving the source function $f(\mathbf{x})$ of interest with this Green's function $G(\mathbf{x})$,
$$
\phi_p(\mathbf{x}) = \int d^3\mathbf{x}' f(\mathbf{x}') G(\mathbf{x} - \mathbf{x}') \ .
$$
This means if we already know what the Green's function is for a given linear differential operator then solving for a particular solution $\phi(\mathbf{x})$ is in principle easy. Given some source function of interest one needs only evaluate the integral above.

Note that not all linear differential operators will have a Green's function. For instance, we'll see later that the second derivative operator $\mathcal{L} = d^2/dx^2$, which is also the 1-dimensional Laplacian, in fact doesn't have a Green's function. Also note that only for *linear* differential operators can we obtain the particular solution through convolution with a Green's function. For instance, we couldn't do this even with a simple non-linear operator like the squared gradient operator $\mathcal{L} \phi = |\nabla \phi|^2$.

### Fourier Transform Methods

We were easily able to find the Green's function for Poisson's equation by noting that $\nabla^2 G = -4\pi \delta(\mathbf{x})$ was just the equation for the potential of a unit point charge, which we already knew was just $G(\mathbf{x}) = 1/r$. But suppose we didn't know this and had to solve the PDE directly to find the Green's function. How would we do that? Indeed, for most linear operators this is what we'd have to do. In this section we'll show how to do this by finding the Green's function for Poisson's equation again, but this time by directly solving the PDE. We'll find the methods described here helpful in future chapters when need to find the Green's functions of more complicated linear operators.

The primary method for solving linear PDEs of the form $\mathcal{L} G(\mathbf{x}) = \delta(\mathbf{x})$ is through the *Fourier transform method*, which we'll describe now. Recall from the appendix that the Fourier transform $G(\mathbf{k})$ of a scalar field $G(\mathbf{x})$ is given by the integral
$$
G(\mathbf{k}) = \mathcal{F}[G(\mathbf{x})](\mathbf{k}) = \int d^3\mathbf{x} \ G(\mathbf{x}) e^{-i \mathbf{k} \cdot \mathbf{x}} \ .
$$
If $\mathbf{x}$ is a position vector, its Fourier conjugate $\mathbf{k}$ is called the *wave-vector*, which has dimensions of inverse length. Given a Fourier transformed function $G(\mathbf{k})$ we can recover the original function $G(\mathbf{x})$ by taking its *inverse Fourier transform*,
$$
G(\mathbf{x}) = \mathcal{F}^{-1}[G(\mathbf{k})](\mathbf{x}) = \int \frac{d^3\mathbf{k}}{(2\pi)^3} \ G(\mathbf{k}) e^{i \mathbf{k} \cdot \mathbf{x}} \ .
$$
The main reason Fourier transforms are useful for solving linear PDEs is that they convert linear PDEs in position space into algebraic equations in Fourier space. To see how this happens, suppose we take the Fourier transform of $\nabla^2 G(\mathbf{x})$ to get
$$
\mathcal{F}[\nabla^2 G(\mathbf{x})](\mathbf{k}) = \int d^3\mathbf{x} \ \nabla^2 G(\mathbf{x}) e^{-i \mathbf{k} \cdot \mathbf{x}} \ .
$$
By Green's second identity, equivalent to using integration by parts twice to move the Laplacian from $G(\mathbf{x})$ to $e^{-i \mathbf{k} \cdot \mathbf{x}}$, we get
$$
\mathcal{F}[\nabla^2 G(\mathbf{x})](\mathbf{k}) = \int d^3\mathbf{x} \ G(\mathbf{x}) \nabla^2 e^{-i \mathbf{k} \cdot \mathbf{x}} + \oint_\mathcal{S} da \ \bigg[e^{-i \mathbf{k} \cdot \mathbf{x}} \frac{\partial}{\partial n} G(\mathbf{x}) - G(\mathbf{x}) \frac{\partial}{\partial n} e^{-i \mathbf{k} \cdot \mathbf{x}} \bigg] \ .
$$
Since we require that $G(\mathbf{x}) \to 0$ at infinity the surface integral term vanishes. For the remaining volume integral we can use the easy to prove fact that $\nabla^2 e^{-i \mathbf{k} \cdot \mathbf{x}} = -\mathbf{k}^2 e^{-i \mathbf{k} \cdot \mathbf{x}}$ to finally get
$$
\mathcal{F}[\nabla^2 G(\mathbf{x})](\mathbf{k}) = -\mathbf{k}^2 \int d^3\mathbf{x} \ G(\mathbf{x}) e^{-i \mathbf{k} \cdot \mathbf{x}} = -\mathbf{k}^2 G(\mathbf{k}) \ .
$$
Thus, the Fourier transform converts the Laplacian in position space into an algebraic function in Fourier space,
$$
\nabla^2 G(\mathbf{x}) \to -\mathbf{k}^2 G(\mathbf{k}) \ .
$$
For a general linear differential operator something similar happens. We can easily Fourier any linear differential operator $\mathcal{L}$ to an algebraic function $\mathcal{L}(\mathbf{k})$ using the following trick: Replace any partial derivative $\partial/\partial x_i$ in the operator with $i k_i$. For instance, for the gradient we'd have $\nabla \to i \mathbf{k}$, and for the Laplacian we'd have $\nabla^2 \to (i\mathbf{k})^2 = -\mathbf{k}^2$.

To deal with the right-hand side of a linear PDE $\mathcal{L} G(\mathbf{x}) = \delta(\mathbf{x})$ we need only Fourier transform the delta function to see that
$$
\mathcal{F}[\delta(\mathbf{x})](\mathbf{k}) = \int d^3\mathbf{x} \ \delta(\mathbf{x}) e^{-i \mathbf{k} \cdot \mathbf{x}} = 1 \ .
$$
Thus, the Fourier transform of a linear PDE $\mathcal{L} G(\mathbf{x}) = \delta(\mathbf{x})$ is just an algebraic function $\mathcal{L}(\mathbf{k})G(\mathbf{k}) = 1$. This makes it very easy to solve for $G(\mathbf{k})$, since it's just $G(\mathbf{k}) = 1/\mathcal{L}(\mathbf{k})$. Now we need only take the inverse Fourier transform of $G(\mathbf{k})$ to get the original Green's function in position space,
$$
G(\mathbf{x}) = \int \frac{d^3\mathbf{k}}{(2\pi)^3} \frac{e^{i \mathbf{k} \cdot \mathbf{x}}}{ \mathcal{L}(\mathbf{k})} \ .
$$
Evaluating this integral is usually the most difficult part of this method, but providing we can do so we're finished.

Let's now apply this method to the Poisson equation and use it to again find its Green's function,
$$
\nabla^2 G(\mathbf{x}) = -4\pi \delta(\mathbf{x}) \ .
$$
Applying the Fourier transform to both sides, we get
$$
-\mathbf{k}^2 G(\mathbf{k}) = -4\pi \ .
$$
Note the Fourier transform of $-4\pi$ is just itself, since the Fourier transform of a constant is itself. Solving for $G(\mathbf{k})$, we have
$$
G(\mathbf{k}) = \frac{4\pi}{\mathbf{k}^2} \ .
$$
Next, we take the inverse transform of $G(\mathbf{k})$ to get the Green's function in position space,
$$
G(\mathbf{x}) = 4\pi \int \frac{d^3\mathbf{k}}{(2\pi)^3} \ \frac{e^{i \mathbf{k} \cdot \mathbf{x}}}{\mathbf{k}^2} \ .
$$
As our finally step we need to evaluate this volume integral in $\mathbf{k}$-space. We'll do so in spherical coordinates $(k, \theta_k, \varphi_k)$. First, notice that we can orient the axes in $\mathbf{k}$-space any way we like. It's typically most convenient to choose the axes such that the position vector $\mathbf{x}$ lies along the $k_z$-axis, so that $\mathbf{k} \cdot \mathbf{x} = kr\cos\theta_k$. If we do this then the $\varphi_k$ integral becomes trivial,
$$
G(\mathbf{x}) = \frac{4\pi}{(2\pi)^3} \int_0^\infty k^2 dk \int_0^\pi \sin\theta_k d\theta_k \int_0^{2\pi} d\varphi_k \frac{e^{i kr \cos\theta_k}}{k^2} = \frac{1}{\pi} \int_0^\infty dk \int_0^\pi d\theta_k \ \sin\theta_k \ e^{i kr \cos\theta_k} \ .
$$
To evaluate the $\theta_k$ integral we can use a useful trick. Notice if we substitute $\mu = \cos\theta_k$, then $d\mu = -\sin\theta_k$ and we get
$$
\int_0^\pi d\theta_k \ \sin\theta_k \ e^{i kr \cos\theta_k} = \int_{-1}^1 d\mu \ e^{i kr \mu} = \frac{e^{ikr} - e^{-ikr}}{ikr} = 2\frac{\sin(kr)}{kr} \ .
$$
Plugging this back into the previous integral, we have
$$
G(\mathbf{x}) = \frac{2}{\pi} \int_0^\infty dk \frac{\sin(kr)}{kr} \ .
$$
All that remains now is to evaluate this integral over $k$. We can simplify somewhat by making the substitution $u = kr$ to get
$$
G(\mathbf{x}) = \frac{2}{\pi r} \int_0^\infty du \frac{\sin u}{u} \ .
$$
Evaluating this remaining integral isn't trivial though. One approach,  which we show in the appendix, is to convert this into a complex integral and use the residue theorem. In the end, we find the integral is just $\pi/2$. We thus finally get
$$
G(\mathbf{x}) = \frac{1}{r} \ ,
$$
which of course is exactly what we found before using the point charge trick. The key takeaway here shouldn't be that we found the same Green's function, but that this same method can be used to find the Green's function of any linear differential operator.

### Green's Function in $n$-Dimensions

In general, the form of the Green's function for a given operator will depend on the number of dimensions there are since the operator itself changes in different dimensions. For example, consider the Laplacian operator $\mathcal{L} = \nabla^2 = \partial_i \partial_i$. In one dimension this operator is $\nabla_1^2 = d^2/dx^2$, in two dimensions it's $\nabla_2^2 = \partial_x^2 + \partial_y^2$, and in 3 dimensions it's $\nabla_3^2 = \partial_x^2 + \partial_y^2 + \partial_z^2$. Setting each of these equal to a delta function would each result in a different PDE and hence give a different Green's function.

For a random given linear differential operator, we'd generally need to find the Green's function for that operator in different dimensions separately since each corresponding PDE will be different. However, for the special case of the Laplacian operator we can use a trick to quickly find the Green's function for any number of dimensions.

Suppose we wanted to find the Green's function corresponding to the $n$-dimensional Laplacian
$$
\nabla_n^2 = \partial_1^2 + \partial_2^2 + \cdots + \partial_n^2 \ .
$$
For this section only, we'll use the notation that $\mathbf{v} = v_i \mathbf{e}_i$ represents an $n$-dimensional real vector, $\mathcal{V}$ is an $n$-dimensional volume, and $\mathcal{S}$ is its corresponding $n-1$ dimensional closed surface.

To find the Green's function $G_n(\mathbf{x})$ corresponding to this Laplacian we by definition need to solve a PDE of the form
$$
\nabla_n^2 G_n(\mathbf{x}) = -\Omega_n \delta(\mathbf{x}) \ .
$$
Here we insert an arbitrary factor of $\Omega_n$ instead of $4\pi$ on the right-hand side. We do so because this factor is supposed to represent the surface area of an $n-1$ dimensional unit sphere. For example, the surface area of a 2-dimensional unit sphere is indeed $\Omega_3 = 4\pi$, but the "surface area" of a 1-dimensional sphere is just the circumference of a unit circle, which is $\Omega_2 = 2\pi$.

Now, the trick here is to convert the above PDE into an integral and use the divergence theorem, which turns out to hold in any number of dimensions. Suppose we take the $n$-dimensional volume integral of both sides of the above PDE. Then we have
$$
\int_\mathcal{V} d^n\mathbf{x} \ \nabla_n^2 G_n(\mathbf{x}) = - \Omega_n \int_\mathcal{V} d^n\mathbf{x} \ \delta(\mathbf{x}) \ .
$$
The integral on the right-hand side evaluates to one by definition of the delta function. To deal with the left-hand side, we'll define $\mathbf{F}_n(\mathbf{x}) \equiv \nabla_n G_n(\mathbf{x})$ to be the $n$-dimensional gradient of $G_n(\mathbf{x})$. Since $\nabla_n^2 = \nabla_n \cdot \nabla_n$, we have
$$
\int_\mathcal{V} d^n\mathbf{x} \ \nabla_n \cdot \mathbf{F}_n(\mathbf{x}) = -\Omega_n \ .
$$
We'll now apply the divergence theorem to the left-hand side to convert the volume integral into a surface integral,
$$
\oint_\mathcal{S} da \ \mathbf{F}_n(\mathbf{x}) \cdot \mathbf{n} = -\Omega_n \ .
$$
But $\mathbf{F}_n(\mathbf{x}) \cdot \mathbf{n}$ is just the the normal derivative of $G_n(\mathbf{x})$, so we have
$$
\oint_\mathcal{S} da \ \frac{\partial G_n}{\partial n} = -\Omega_n \ .
$$
We'll now make the assumption that the Green's function $G_n = G_n(r)$ is spherically symmetric. This comes from the fact that the Laplacian operator itself turns out to be rotationally invariant. Now, the above integral must be true for any choice of Gaussian surface $\mathcal{S}$. If we assume the Green's function is radial, it thus makes sense to choose $\mathcal{S}$ to be an $n$-dimensional sphere so that
$$
\frac{\partial G_n}{\partial n} = \frac{\partial G_n}{\partial r} \ .
$$
The $n$-dimensional sphere has an area element $da = r^{n-1} d\Omega_n$, where $d\Omega_n$ is the $n-1$ dimensional solid angle. Since the integrand is radial though, which means we can pull everything out of the surface integral. Integrating the surface integral thus just gives the same $n$-dimensional solid angle $\Omega_n$ mentioned above. We thus have
$$
\oint_\mathcal{S} da \ \frac{\partial G_n}{\partial n} = \int_0^\infty r^{n-1} d\Omega \ \frac{\partial G_n}{\partial r} = \Omega_n r^{n-1} \frac{\partial G_n}{\partial r} = -\Omega_n \ .
$$
Thus, to find the Green's function $G_n(\mathbf{x})$, we need only to integrate both sides of the equation
$$
\frac{\partial G_n}{\partial r} = -r^{-(n-1)} \ .
$$
Doing so, we'll finally obtain the Green's function for the Laplacian operator in $n$ dimensions, 
$$
G_n(\mathbf{x}) = - \int dr \ r^{-(n-1)} \ .
$$
In general there would be an additive constant to worry about here. If we require that $G_n \to 0$ at infinity this added constant must be zero, which means for any dimension $n \geq 3$ the Green's function is just
$$
G_n(\mathbf{x}) = \frac{(-1)^{n+1}}{n-2} \frac{1}{r^{n-2}} \ .
$$
For example, in three dimensions we get $G_3(\mathbf{x}) = 1/r$, which is the same Green's function we found before. But in four dimensions we instead get an inverse square Green's function,
$$
G_4(\mathbf{x}) = -\frac{1}{2 r^2} \ .
$$
In two dimensions we instead need to integrate $-1/r$, which gives
$$
G_2(\mathbf{x}) = -\log r \ .
$$
Notice this Green's function blows up at infinity, which means it's not a proper Green's function in the usual sense.

In one dimension the situation is even worse. It turns out this Green's function doesn't even exist. We can't see this from the integral we just derived. Instead we have to revisit the PDE we're trying to solve. In one dimension the Laplacian is just the second derivative $\nabla_1^2 = d^2/dx^2$, which means the Green's function PDE collapses into an ordinary differential equation of the form
$$
\frac{d^2}{dx^2} G_1(x) = -\Omega_1 \delta(x) \ .
$$
The problem here turns out to be the solid angle factor $\Omega_1$ on the right-hand side. The solid angle in one dimension would just be the "surface area" of a 0-dimensional unit sphere, which would be the "surface area" of a point. Since a point has no size, $\Omega_1 = 0$. But if $\Omega_1 = 0$ the right-hand side of the PDE is zero, which means we no longer have an equation for the Green's function at all.

## General Solution

Now that we've obtained the particular solution to Poisson's equation we'll now discuss the general solution for a Poisson BVP. We'll first derive the general solution directly, obtaining the *formal solution*, and then show how to "mock up" the Green's function to include the boundary conditions directly.

### Formal Solution to Poisson's Equation

Thus far we've only focused on the free solution to Poisson's equation, ignoring any potential boundary conditions. We'll now add these boundary conditions back in and derive the general solution of an arbitrary Poisson BVP. We call this solution the *formal solution* to the Poisson BVP, since as we'll see it's formally correct but ill-posed, meaning the solution isn't always unique. We'll see how to recast it in a form that is unique in the next section.

The easiest way to derive the formula solution is to start by recalling Green's second identity,
$$
\int_\mathcal{V} d^3 \mathbf{x} \ [f(\mathbf{x}) \nabla^2 g(\mathbf{x}) - g(\mathbf{x}) \nabla^2 f(\mathbf{x})] = \oint_\mathcal{S} da \ \bigg[f(\mathbf{x}) \frac{\partial}{\partial n} g(\mathbf{x}) - g(\mathbf{x}) \frac{\partial}{\partial n} f(\mathbf{x}) \bigg] \ .
$$
Replacing $\mathbf{x} \to \mathbf{x}'$ and $\nabla^2 \to \nabla'^2$, and letting $f(\mathbf{x}') = \phi(\mathbf{x}')$ and $g(\mathbf{x}') = G(\mathbf{x} - \mathbf{x}')$, the above identity becomes
$$
\int_\mathcal{V} d^3 \mathbf{x}' \ [\phi(\mathbf{x}') \nabla'^2 G(\mathbf{x} - \mathbf{x}') - G(\mathbf{x} - \mathbf{x}') \nabla'^2 \phi(\mathbf{x}')] = \oint_\mathcal{S} da' \ \bigg[\phi \frac{\partial}{\partial n'} G(\mathbf{x} - \mathbf{x}') - G(\mathbf{x} - \mathbf{x}') \frac{\partial}{\partial n'} \phi(\mathbf{x}') \bigg] \ .
$$
We now interpret $\phi(\mathbf{x}')$ as the potential at $\mathbf{x}'$ and $G(\mathbf{x} - \mathbf{x}')$ as the Green's function at $\mathbf{x} - \mathbf{x}'$. If we do that, we can use Poisson's equation to write $\nabla'^2 \phi(\mathbf{x}') = -4\pi\rho(\mathbf{x}')$ and $\nabla'^2 G(\mathbf{x} - \mathbf{x}') = -4\pi\delta(\mathbf{x} - \mathbf{x}')$. Plugging these in, we have
$$
-4\pi \int_\mathcal{V} d^3 \mathbf{x}' \ [\phi(\mathbf{x}') \delta(\mathbf{x} - \mathbf{x}') - G(\mathbf{x} - \mathbf{x}') \rho(\mathbf{x}')] = \oint_\mathcal{S} da' \ \bigg[\phi(\mathbf{x}') \frac{\partial}{\partial n'} G(\mathbf{x} - \mathbf{x}') - G(\mathbf{x} - \mathbf{x}') \frac{\partial}{\partial n'} \phi(\mathbf{x}') \bigg] \ .
$$
On the left-hand side, the first term in the integral evaluates to the potential $\phi(\mathbf{x})$. Dividing both sides by $-4\pi$ and moving the second term on the left-hand side over to the right-hand side, we finally get
$$
\boxed{
\phi(\mathbf{x}) = \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') G(\mathbf{x} - \mathbf{x}') + \frac{1}{4\pi} \oint_\mathcal{S} da' \ \bigg[G(\mathbf{x} - \mathbf{x}') \frac{\partial}{\partial n'} \phi(\mathbf{x}') - \phi(\mathbf{x}') \frac{\partial}{\partial n'} G(\mathbf{x} - \mathbf{x}') \bigg]
}\ .
$$
This is the formal solution, or the general solution to Poisson's equation in integral form. We can interpret this result as follows: Suppose we wish to solve a Poisson BVP inside some region $\mathcal{V}$ with mixed boundary conditions on some surface $\mathcal{S}$. Then the volume integral term represents the particular solution $\phi_p(\mathbf{x})$ to Poisson's equation for a given charge density $\rho(\mathbf{x})$ sitting inside $\mathcal{V}$. This term vanishes if there are no charges enclosed in $\mathcal{V}$, leaving only the remaining surface integral term.

The surface integral term represents the homogeneous solution $\phi_h(\mathbf{x})$ obtained by solving Laplace's equation subject to the same mixed boundary conditions on the boundary surface $\mathcal{S}$,
$$
\phi_h(\mathbf{x}) = \frac{1}{4\pi} \oint_\mathcal{S} da' \ \bigg[G(\mathbf{x} - \mathbf{x}') \frac{\partial}{\partial n'} \phi(\mathbf{x}') - \phi(\mathbf{x}') \frac{\partial}{\partial n'} G(\mathbf{x} - \mathbf{x}') \bigg] \ .
$$
This term encodes all information about the boundary conditions in the problem, since the boundary conditions are encoded directly into the surface integral. Notice if we send $\mathcal{S}$ to infinity both terms fall off like $1/r'^3$, in which case the surface integral vanishes and we recover the free solution derived before.

The first term in the surface integral is the convolution of the Green's function with the normal derivative of $\phi(\mathbf{x})$ on the boundary surface. This term reflects any Neumann boundary conditions being imposed, where $\partial \phi / \partial n$ represents a specified value of the normal derivative of $\phi(\mathbf{x})$ on the boundary surface.

Similarly, the second term in the surface integral is the convolution of $\phi(\mathbf{x})$ with the normal derivative of the Green's function on the boundary surface. This term reflects any Dirichlet boundary conditions, where $\phi(\mathbf{x})$ itself has a specified value on the boundary surface. For mixed boundary conditions both terms will contribute on some part of the boundary surface.

Note that according to this integral outside the boundary surface the solution must vanish since both integrals vanish for field points $\mathbf{x}$ outside $\mathcal{S}$. What this really says is that when we formulate Poisson BVPs, we have no information about what's going on outside the boundary surface aside from what's being provided by the boundary conditions. If we were interested in this exterior region we'd need to solve a separate BVP to get the exterior solution and join it with the interior solution given above.

### Generalized Green's Functions

As we mentioned above, the formal solution above is *ill-posed*, meaning it isn't guaranteed to be the unique solution for a given BVP. This is due to the fact that *both* $\phi(\mathbf{x})$ and its normal derivative are specified on a boundary, while the uniqueness theorem only guarantees uniqueness when one or the other is specified on some section of the boundary surface. In order to impose uniqueness we'll thus need to modify the Green's function in a way that forces one of the surface terms vanish.

We can do this as follows. Suppose $\phi(\mathbf{x})$ satisfies a Poisson BVP inside some region $\mathcal{V}$ bounded by some boundary surface $\mathcal{S}$, where the boundary conditions on $\mathcal{S}$ are either strictly Dirichlet or Neumann. That is,
$$
\begin{cases}
\nabla^2 \phi(\mathbf{x}) = -4\pi\rho(\mathbf{x}) \ \text{in} \ \mathcal{V} \\
\text{where} \ \phi(\mathbf{x}) = V(\mathbf{x}) \ \text{on} \ \mathcal{S}
\end{cases}
\ \ , \ \ \text{or} \ \
\begin{cases}
\nabla^2 \phi(\mathbf{x}) = -4\pi\rho(\mathbf{x}) \ \text{in} \ \mathcal{V} \\
\text{where} \ \partial \phi/\partial n = -E(\mathbf{x})  \ \text{on} \ \mathcal{S}
\end{cases} \ \ .
$$
We want to define a *generalized Green's function* $\mathcal{G}(\mathbf{x})$ such that $\mathcal{G}(\mathbf{x})$ satisfies its own boundary conditions that can be used to cancel out one of the surface terms in the formal solution. We can do that by defining
$$
\mathcal{G}(\mathbf{x}) \equiv G(\mathbf{x}) + F(\mathbf{x}) \ ,
$$
where $G(\mathbf{x}) = 1/r$ is the ordinary Green's function for the Laplacian and $F(\mathbf{x})$ is some added function related somehow to the particular set of boundary conditions. Inside $\mathcal{V}$ we require that $\mathcal{G}(\mathbf{x} - \mathbf{x}')$ satisfy the usual Green's function PDE inside $\mathcal{V}$, but with respect to the source point $\mathbf{x}'$,
$$
\nabla'^2 \mathcal{G}(\mathbf{x} - \mathbf{x}') = -4\pi\delta(\mathbf{x} - \mathbf{x}') \ \ \text{in} \ \mathcal{V} \ .
$$
The only way this can be true evidently is if $F(\mathbf{x} - \mathbf{x}')$ satisfies Laplace's equation $\nabla'^2 F(\mathbf{x} - \mathbf{x}') = 0$ in $\mathcal{V}$ with respect to $\mathbf{x}'$.

It's not difficult to see from Green's second identity that $F(\mathbf{x})$ must evidently satisfy the integral equation
$$
\int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') F(\mathbf{x} - \mathbf{x}') + \frac{1}{4\pi} \oint_\mathcal{S} da' \ \bigg[F(\mathbf{x} - \mathbf{x}') \frac{\partial}{\partial n'} \phi(\mathbf{x}') - \phi(\mathbf{x}') \frac{\partial}{\partial n'} F(\mathbf{x} - \mathbf{x}') \bigg] = 0 \ .
$$
Indeed, just set $f(\mathbf{x}') = \phi(\mathbf{x}')$ and $g(\mathbf{x}')$, and use the fact that $\nabla'^2 F(\mathbf{x} - \mathbf{x}') = 0$ and $\nabla'^2 \phi(\mathbf{x}') = -4\pi\rho(\mathbf{x})$ in $\mathcal{V}$. This then implies that the formal solution for $\phi(\mathbf{x})$ is the same whether we use $G(\mathbf{x})$ or $\mathcal{G}(\mathbf{x})$,

$$
\phi(\mathbf{x}) = \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') \mathcal{G}(\mathbf{x} - \mathbf{x}') + \frac{1}{4\pi} \oint_\mathcal{S} da' \ \bigg[\mathcal{G}(\mathbf{x} - \mathbf{x}') \frac{\partial}{\partial n'} \phi(\mathbf{x}') - \phi(\mathbf{x}') \frac{\partial}{\partial n'} \mathcal{G}(\mathbf{x} - \mathbf{x}') \bigg] \ .
$$
Now, recall the entire purpose of adding $F(\mathbf{x})$ to the Green's function is to give us extra freedom to impose boundary conditions on $\mathcal{G}(\mathbf{x})$. We'd further like the boundary conditions we impose on $\mathcal{G}(\mathbf{x})$ to be general and not specific to the boundary surface.

For a Dirichlet BVP this is easy. For a given boundary surface $\mathcal{S}$, we choose $F(\mathbf{x} - \mathbf{x}')$ so that $\mathcal{G}_D(\mathbf{x} - \mathbf{x}')$ vanishes on $\mathcal{S}$,
$$
\begin{cases}
\nabla^2 \mathcal{G}_D(\mathbf{x} - \mathbf{x}') = -4\pi\delta(\mathbf{x} - \mathbf{x}') \ \text{in} \ \mathcal{V} \\
\text{where} \ \mathcal{G}_D(\mathbf{x} - \mathbf{x}') = 0 \ \text{on} \ \mathcal{S}
\end{cases} \ .
$$
If we plug this into the formal solution we find that the first surface integral term vanishes since $\mathcal{G}_D(\mathbf{x} - \mathbf{x}') = 0$, giving
$$
\boxed{
\phi(\mathbf{x}) = \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') \mathcal{G}_D(\mathbf{x} - \mathbf{x}') - \frac{1}{4\pi} \oint_\mathcal{S} da' \ \phi(\mathbf{x}') \frac{\partial}{\partial n'} \mathcal{G}_D(\mathbf{x} - \mathbf{x}') 
} \ .
$$
This is the *unique* formal solution to the general Dirichlet BVP. Notice that as the radius of $\mathcal{S}$ goes to infinity, the surface integral term vanishes since the integrand goes to zero faster than $1/r'^2$, thus recovering the unbounded solution from before.

As an example, suppose $\phi(\mathbf{x}') = V$ is constant on $\mathcal{S}$. Recall from our discussion of Green's functions in $n$ dimensions that the closed surface integral of the normal derivative of $G(\mathbf{x})$ is just $-4\pi$ in three dimensions. For the generalized Green's function $\mathcal{G}(\mathbf{x})$ the result will be the same,
$$
\oint_\mathcal{S} da' \ \frac{\partial}{\partial n'} \mathcal{G}(\mathbf{x} - \mathbf{x}') = \oint_\mathcal{S} da' \ \frac{\partial}{\partial n'} G(\mathbf{x} - \mathbf{x}') = -4\pi \ .
$$
This follows from the fact that the surface integral term over $F(\mathbf{x} - \mathbf{x}')$ vanishes since $\nabla'^2 F(\mathbf{x} - \mathbf{x}') = 0$ in $\mathcal{V}$. Plugging this back in, the solution to the Dirichlet BVP finally satisfies the following integral relation,
$$
\phi(\mathbf{x}) = V + \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') \mathcal{G}_D(\mathbf{x} - \mathbf{x}') \ .
$$
Since $\rho(\mathbf{x})$ is only non-zero inside $\mathcal{V}$, on the boundary surface the volume integral vanishes, thus ensuring $\phi(\mathbf{x}) = V$ on $\mathcal{S}$.

Let's now consider the case of a Neumann BVP for $\phi(\mathbf{x})$. It would be tempting to insist $\partial/\partial n' \mathcal{G}_N(\mathbf{x} - \mathbf{x}') = 0$ on $\mathcal{S}$ in a similar manner to what we did for the Dirichlet BVP. But this is impossible since we already know the normal derivative of the Green's function on the boundary surface must integrate to $-4\pi$. Thus, instead we choose $F(\mathbf{x})$ such that $\partial/\partial n' \mathcal{G}_N(\mathbf{x} - \mathbf{x}') = -4\pi/S$, where $S$ is the surface area of the boundary surface $\mathcal{S}$. Then we have
$$
\begin{cases}
\nabla^2 \mathcal{G}_N(\mathbf{x} - \mathbf{x}') = -4\pi\delta(\mathbf{x} - \mathbf{x}') \ \text{in} \ \mathcal{V} \\
\text{where} \ \frac{\partial}{\partial n'} \mathcal{G}_N(\mathbf{x} - \mathbf{x}') = -4\pi/S  \ \text{on} \ \mathcal{S}
\end{cases} \ .
$$
Plugging this back into the formal solution, the second surface integral term now reduces to a constant $\langle \phi \rangle_\mathcal{S}$ given by
$$
\langle \phi \rangle_\mathcal{S} \equiv -\frac{1}{4\pi} \oint_\mathcal{S} da' \ \phi(\mathbf{x}') \frac{\partial}{\partial n'} \mathcal{G}_N(\mathbf{x} - \mathbf{x}') = \frac{1}{S} \oint_\mathcal{S} da' \ \phi(\mathbf{x}') \ .
$$
Notice the remaining integral is just the average value of $\phi(\mathbf{x})$ on the boundary surface, hence the notation. Plugging this back into the formal solution we get
$$
\boxed{
\phi(\mathbf{x}) = \langle \phi \rangle_\mathcal{S} + \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') \mathcal{G}_N(\mathbf{x} - \mathbf{x}') + \frac{1}{4\pi} \oint_\mathcal{S} da' \ \mathcal{G}_N(\mathbf{x} - \mathbf{x}') \frac{\partial}{\partial n'} \phi(\mathbf{x}') 
} \ .
$$
This is the *unique* formal solution to the general Neumann BVP. Notice if we send the radius of $\mathcal{S}$ to infinity the surface term will vanish since the integrand falls off faster than $1/r'^2$, again giving us the unbounded solution from before.

As an example, suppose $\partial \phi / \partial n' = -E$ is constant on $\mathcal{S}$, leaving a function in $\mathbf{x}$ of the form
$$
g(\mathbf{x}) \equiv -\frac{E}{4\pi} \oint_\mathcal{S} da' \ \mathcal{G}_N(\mathbf{x} - \mathbf{x}') \ .
$$
Note that $g(\mathbf{x})$ is just $-E S/4\pi$ times the average of the Green's function on the boundary surface. We thus have
$$
\phi(\mathbf{x}) = \langle \phi \rangle_\mathcal{S} + g(\mathbf{x}) + \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') \mathcal{G}_N(\mathbf{x} - \mathbf{x}') \ .
$$
Note that specifying $g(\mathbf{x})$ is essentially equivalent to specifying $F(\mathbf{x})$, and as such we can't really reduce it further without knowing the specific boundary surface or boundary condition on that surface.

We've thus achieved our goal of reformulating the formal solution in a form that's unique for a given Dirichlet or Neumann (or indeed mixed) BVP. Note that finding the generalized Green's function to achieve this in practice can usually be quite difficult to do. Often it's just easier to calculate the solution directly from the BVP, for instance using separation of variables or complex methods, both of which we'll discuss in later chapters. However, there is one case where it's quite easy to write down the generalized Green's function, the *method of images*. We'll discuss this method toward the end of this chapter.

## Boundary Conditions in Electrostatics

The discussion so far has been fairly general. We've said almost nothing specific to electrostatics other than the fact that the scalar potential just so happens to satisfy Poisson's equation. We'll now specialize the discussion to electrostatics by deriving boundary conditions specific to electrostatics problems, in particular the boundary conditions for surfaces of charge and conductors. We'll find these very helpful for solving electrostatics problems in the next chapter especially.

### Surface Boundary Conditions

Recall in the previous chapter that we saw for the infinite sheet and hollow sphere examples that the E-field changes discontinuously by an amount $4\pi\sigma$ when crossing the surface, while the potential remains continuous when crossing the surface. We will now show these are general facts for any 2-dimensional surface of charge. We'll then use these facts to derive a general set of boundary conditions any potential must satisfy on a boundary surface.

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

- Discuss dipole layers (see Jackson)
- Recast the formal solution of electrostatics in terms of surface charge densities and dipole densities (see Jackson)

## Method of Images

- Most useful when dealing with simple distributions (spheres, point charges) in the presence of some other distribution more easily treated as boundary conditions when symmetry is applied.

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







---

Harmonic Functions

Any function $\phi(\mathbf{x})$ satisfying Laplace's equation $\nabla^2 \phi(\mathbf{x}) = 0$ is called a *harmonic function*. We can think of harmonic functions as a kind of higher-dimensional generalization of affine functions $f(x) = a x + b$. In one dimension, the Laplacian $\nabla^2$ reduces to the ordinary second derivative $d^2/dx^2$, and only affine functions satisfy Laplace's equation $d^2 /dx^2 f(x) = 0$ in one dimension.

Notice that affine functions $f(x) = a x + b$ trivially satisfy the following properties:

- Maximum Principle: The maximum (and minimum) of $f(x)$ on any closed interval $x_1 \leq x \leq x_2$ must occur at the endpoints $x_1$ or $x_2$. This is obvious, since a line is always either strictly increasing, strictly decreasing, or horizontal. In the degenerate case where $f(x)$ is constant, i.e. $a=0$, the maximum and minimum will both trivially occur at every point on the interval.

- Mean Value Property: At any point $x$, the value of $f(x)$ is equal to the average of the value of the function evaluated at the endpoints of any closed interval centered at the point $x$. That is, for any symmetric interval $x - d \leq x \leq x + d$ we have
  $$
  f(x) = \frac{f(x - d) + f(x + d)}{2} \ .
  $$

- Liouville's Property: The only *bounded* affine function on the real line is the constant function $f(x) = b$. If $a \neq 0$, an affine function will always be unbounded, with $|f(x)| \to \infty$ as $|x| \to \infty$.

All of these properties turn out to hold for higher-dimensional harmonic functions as well. We'll focus on three dimensions here. In three dimensions we state the above properties as follows:

- Maximum Principle: Inside any closed region, the maximum (and minimum) value of any harmonic function $\phi(\mathbf{x})$ will always occur along the boundary of that region.

- Mean Value Property: At any point $\mathbf{x}$, the value of a harmonic function $\phi(\mathbf{x})$ at that point is equal to the average value of $\phi(\mathbf{x})$ on any sphere centered at that point. That is, for any sphere of radius $R$ centered at $\mathbf{x}$ we have
  $$
  \phi(\mathbf{x}) = \frac{1}{4\pi} \oint d\Omega' \ \phi(\mathbf{x}') \ .
  $$

- Liouville's Property: The only bounded harmonic function in 3-dimensional space is a constant function. That is, either $|\phi(\mathbf{x})| \to \infty$ as $r \to \infty$ or $\phi(\mathbf{x})$ is constant.

Let's quickly prove these. Suppose $\phi(\mathbf{x})$ is harmonic inside some region $\mathcal{V}$ bounded by a surface $\mathcal{S}$, so $\nabla^2 \phi(\mathbf{x}) = 0$ in $\mathcal{V}$.



- Prove: The "soap film" fact about harmonic functions: A harmonic function that's constant on a boundary curve is the surface of minimum surface area connecting the curve.

- Prove: Given two points, choose two balls with the given points as centers and of equal radius. If the radius is large enough, the two balls will coincide except for an arbitrarily small proportion of their volume. Since *f* is bounded, the averages of it over the two balls are arbitrarily close, and so *f* assumes the same value at any two points.
- The descriptor "harmonic" in the name "harmonic function" originates from a point on a taut string which is undergoing [harmonic motion](https://en.wikipedia.org/wiki/Simple_harmonic_motion). The solution to the differential equation for this type of motion can be written in terms of sines and cosines, functions which are thus referred to as "harmonics." [Fourier analysis](https://en.wikipedia.org/wiki/Fourier_analysis) involves expanding functions on the unit circle in terms of a series of these harmonics. Considering higher dimensional analogues of the harmonics on the unit [*n*-sphere](https://en.wikipedia.org/wiki/N-sphere), one arrives at the [spherical harmonics](https://en.wikipedia.org/wiki/Spherical_harmonics). These functions satisfy Laplace's equation and, over time, "harmonic" was [used to refer to all](https://en.wikipedia.org/wiki/Synecdoche) functions satisfying Laplace's equation.
- You may need to abandon this or move it, since some of the proofs assume things we haven't yet covered (multipole expansion or Green's third identity, i.e. the "surface term" of the formal solution).



















