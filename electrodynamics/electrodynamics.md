# Electrodynamics

In the previous chapter we started moving away from statics, and started our study of electrodynamics, the electromagnetism of time-varying electric and magnetic fields. We showed that the electric field couples with time-varying magnetic fields according to Faraday's law. In this chapter we will show that the magnetic field also couple with a time-varying electric field by generalizing Ampere's law. This will finally lead us to the important Maxwell's equations, which are four vector field equations that completely capture the behavior of classical electromagnetic fields. Next, we'll derive the conservation laws for field energy and momentum, and then proceed to discuss the wave equation and how Maxwell's equations imply the existence of electromagnetic waves.

From now on in this course, we'll assume that all fields and distributions depend explicitly on time unless otherwise stated. That is, we'll assume that $\mathbf{E} = \mathbf{E}(\mathbf{x},t)$, $\mathbf{B} = \mathbf{B}(\mathbf{x},t)$, $\rho = \rho(\mathbf{x},t)$ and $\mathbf{J} = \mathbf{J}(\mathbf{x},t)$. This finally pulls us away from statics and puts us squarely in the realm of electrodynamics. An immediate implication of this is that many of the important relations we derived in electrostatics and magnetostatics will no longer apply, in particular Coulomb's law and the Biot-Savart law.

## Maxwell's Equations

Before studying the implications of Maxwell's equations we first need to finalize them by introducing the *displacement current*, which modifies the equation for $\nabla \times \mathbf{B}$ to allow for a time-varying E-field. 

### Displacement Current

In the 1860s, Maxwell observed that the quasistatic field equations were mathematically inconsistent with the most fundamental principle of electromagnetism, namely conservation of charge. Specifically, Maxwell noticed that Ampere's law was inconsistent with the continuity equation
$$
\frac{\partial \rho}{\partial t} + \nabla \cdot \mathbf{J} = 0 \ .
$$
To see why this is the case, recall that the differential form of Ampere's states that
$$
\nabla \times \mathbf{B} = \frac{4\pi}{c} \mathbf{J} \ .
$$
If we take the divergence of both sides of this equation, we get
$$
\nabla \cdot (\nabla \times \mathbf{B}) = \frac{4\pi}{c} \nabla \cdot \mathbf{J} \ .
$$
Now, the divergence of a curl must always vanish, which means the left-hand side must be zero. We thus must evidently conclude from Ampere's law that
$$
\nabla \cdot \mathbf{J} = 0 \ .
$$
But, as we saw in the chapter on magnetostatics, this can only be consistent with conservation of charge when the current density is time-independent. Of course, there's no reason at all to assume the current density must always be time-independent. In fact if it is we necessarily get a steady current, which means the B-field must be time-independent, which necessarily conflicts with Faraday's law.

To resolve this problem, Maxwell proposed adding a new term to Ampere's law, which he called the *displacement current*,
$$
\nabla \times \mathbf{B} = \frac{4\pi}{c} (\mathbf{J} + \mathbf{J}_d) \ .
$$
If we now take the divergence of both sides as we did above, we get
$$
0 = \nabla \cdot \mathbf{J} + \nabla \cdot \mathbf{J}_d \ .
$$
We can now make this equation consistent with the continuity equation by insisting that
$$
\nabla \cdot \mathbf{J}_d = \frac{\partial \rho}{\partial t} \ .
$$
But since Gauss's law requires that $\nabla \cdot \mathbf{E} = 4\pi\rho$, we also have
$$
\nabla \cdot \mathbf{J}_d = \frac{1}{4\pi} \frac{\partial}{\partial t} \nabla \cdot \mathbf{E} \ .
$$
This means, up to an additive constant that we can set to zero, the displacement current must then be
$$
\mathbf{J}_d = \frac{1}{4\pi} \frac{\partial \mathbf{E}}{\partial t} \ .
$$
Plugging this into the modified Ampere's law above, we finally have
$$
\boxed{
\nabla \times \mathbf{B} = \frac{4\pi}{c} \mathbf{J} + \frac{1}{c} \frac{\partial \mathbf{E}}{\partial t}
} \ .
$$
With this modification, Maxwell managed to make the field equations consistent with the conservation of charge. Just as Faraday's law allows $\nabla \times \mathbf{E}$ to depend on a time-varying E-field, this modified Ampere's law allows $\nabla \times \mathbf{B}$ to depend on a time-varying E-field, thus coupling together the four field equations and making them self-consistent.

So why wasn't the displacement current noticed in the experiments that established Ampere's law? Why did it take Maxwell's use of theory to establish its existence? Fundamentally, the reason has to do with the fact that the displacement current in typical lab settings is much smaller than the ordinary current. To see why this is the case, consider the following dimensional analysis.

Suppose we observe the EM fields at some characteristic distance scale $L$ and time scale $T$. That is, when we do experiments, the experiments typically happen on distance scales of $L$ and time scales of $T$. In terms of these dimensions, the generalized Ampere's law morally says that
$$
\frac{B}{L} \sim \frac{J}{c} + \frac{E}{cT} \ .
$$
Similarly, Faraday's law says that
$$
\frac{E}{L} \sim \frac{B}{cT} \ .
$$
Now, in typical experimental settings we have $B/L \sim J/c$. That is, the distance scale of measurement $L$ is such that measurements of the current $J$ are significant. Putting all of this information together we then have
$$
\frac{B}{L} \sim \bigg[1 + \bigg(\frac{L}{cT}\bigg)^2\bigg] \frac{B}{L} \ .
$$
Thus, for the displacement current to be experimentally significant in a lab setting we'd need $L/cT \sim 1$, or
$$
L \sim cT \ .
$$
Now, in a typical lab setting the distance scales of measurement are often fairly small, usually on the order of meters or less, and the time scales of measurement are usually on the order of seconds. This means $L/T$ is usually on the order of $1 \ \text{m}/\text{s}$ or so. But the speed of light $c$ is on the order of $10^{8} \ \text{m}/\text{s}$, meaning $L/T \ll c$. Thus, for all practical purposes, in typical lab experiments we can practically neglect the displacement current and just use the quasistatic equations instead.

There are two situations where we can't neglect the displacement current. One is when doing measurements on large distance scales, say on the order of miles. Eventually, $L$ will be large enough so that $L \sim cT$, which means far enough away from the source we should be able to detect a displacement current effect, provided our devices are sensitive enough. This, as we'll see, is electromagnetic radiation, or light. The other scenario is when $L/T \sim c$, which can occur even at short distance scales if we can force the fields to oscillate quickly enough. This is the relativistic limit, when the effects of special relativity become important.

### Maxwell's Equations

With the final modification to Ampere's law in place, we're finally able to state *Maxwell's Equations*, the fundamental field equations of classical electrodynamics. In a nutshell, these equations say that E-fields are caused by exactly two things: charges and changing B-fields. Similarly, B-fields are caused by exactly two things: currents and changing E-fields. 

In differential form, Maxwell's equations are

$$
\boxed{
\begin{align*}
&\nabla \cdot \mathbf{E} = 4\pi \rho \\
&\nabla \times \mathbf{E} = -\frac{1}{c} \frac{\partial \mathbf{B}}{\partial t} \\
&\nabla \cdot \mathbf{B} = 0 \\
&\nabla \times \mathbf{B} = \frac{4\pi}{c} \mathbf{J} + \frac{1}{c} \frac{\partial \mathbf{E}}{\partial t} \\
\end{align*}
} \ .
$$

We can also state Maxwell's equations in integral form if we like by applying the divergence and Stokes theorems to get
$$
\begin{align*}
&\oint_\mathcal{S} \mathbf{E} \cdot d\mathbf{a} = 4\pi Q_{\text{enc}} \ , \\
&\oint_\mathcal{C} \mathbf{E} \cdot d\boldsymbol{\ell} = -\frac{1}{c} \frac{d\Phi_B}{dt} \ , \\
&\oint_\mathcal{S} \mathbf{B} \cdot d\mathbf{a} = 0 \ , \\
&\oint_\mathcal{C} \mathbf{B} \cdot d\boldsymbol{\ell} = \frac{4\pi}{c} I_{\text{enc}} + \frac{1}{c} \frac{d\Phi_E}{dt} \ . \\
\end{align*}
$$
Here $Q_{\text{enc}}$ refers to the total net charge enclosed by a closed surface $\mathcal{S}$ and $I_{\text{enc}}$ to the currents enclosed inside a closed loop $\mathcal{C}$, while $\Phi_E$ and $\Phi_B$ refers to the flux of electric and magnetic fields through any surface bounded by a closed loop $\mathcal{C}$.

Maxwell's equations provide us with eight linear partial differential equations for the EM fields, two equations from the divergences and six equations from the curls. The entire dynamics of the EM fields is contained in these equations.

In fact, Maxwell's equations almost complete the theory of classical electromagnetism. There are only a few other things we need to add to complete the theory. First, we need to say how the fields modify the dynamics of moving particles. This coupling between particles and fields is of course is done via the Lorentz force law,
$$
\mathbf{F} = q\mathbf{E} + q\frac{\mathbf{v}}{c} \times \mathbf{B} \ .
$$
Second, we need to say something about how the fields get modified in the presence of electromagnetic materials. This we will spend a whole chapter on. Last, we need to say something about how exactly the source charges give rise to the fields. This is known as *causality*. It's one of the most fundamental principles in physics. Causality states that past actions can impact future actions, but future actions can never impact past actions.

### Time Reversal Invariance

To see why causality is an issue we will now show that Maxwell's equations have no sense of the arrow of time, of what causes what. That is, they're *time-reversal invariant*, meaning they remain unchanged under a *time reversal* transformation $t \to -t$. To show this is the case, we first need to figure out how the fields and distributions behave under time reversal.

First let's ask how the position $\mathbf{x}$ changes under time reversal. Since the position is only a function of the underlying coordinate system, under a time reversal the position $\mathbf{x}(t)$ of any particle must remain unchanged. That is, $\mathbf{x}(t) \to \mathbf{x}(-t)$. In particular, this means that the *velocity* $\mathbf{v}(t)$ of a particle must transform under time reversal as
$$
\mathbf{v}(t) = \frac{d\mathbf{x}(t)}{dt} \to \frac{d\mathbf{x}(-t)}{d(-t)} = -\frac{d\mathbf{x}(t)}{dt} = -\mathbf{v}(-t) \ .
$$
Similarly, the *acceleration* $\mathbf{a}(t)$ of a particle must transform under time reversal as
$$
\mathbf{a}(t) = \frac{d^2\mathbf{x}(t)}{dt^2} \to \frac{d^2\mathbf{x}(-t)}{d(-t)^2} = \frac{d^2\mathbf{x}(t)}{dt^2} = \mathbf{a}(-t) \ .
$$
Thus, the position and acceleration of a particle remain *invariant* under time-reversal, while the velocity of a particle changes sign.

What about scalar quantities like the mass $m$ or charge $q$ of a moving particle? Since both mass and charge are conserved (at least in classical physics), they can't suddenly change with time, meaning these must also be invariant under time reversal. By implication, this means the charge density $\rho(\mathbf{x},t)$ must be invariant as well since it's proportional to charge. In fact, *all* scalar quantities must be time-reversal invariant.

The current density $\mathbf{J}(\mathbf{x},t)$, however, is a slightly different. Since $\mathbf{J} = \rho\mathbf{v}$ and $\rho$ is time-reversal invariant, the current density must transform like the velocity $\mathbf{v}$ under time reversal,
$$
 \mathbf{J}(\mathbf{x},t) \to -\mathbf{J}(\mathbf{x},-t) \ .
$$
Now that we know how the distributions behave under time reversal, we can now ask how the fields behave. By Gauss's law we must have $\nabla \cdot \mathbf{E} = 4\pi\rho$. Since both position and charge density are invariant, the E-field must evidently be invariant as well,
$$
\mathbf{E}(\mathbf{x},t) \to \mathbf{E}(\mathbf{x},-t) \ .
$$
We might suspect the B-field to be invariant as well, but surprisingly that's not the case. By the generalized Ampere's law we have
$$
\nabla \times \mathbf{B} = \frac{4\pi}{c} \mathbf{J} + \frac{1}{c} \frac{\partial \mathbf{E}}{\partial t} \ .
$$
Since $\mathbf{J}$ reverses direction under time reversal and $\mathbf{B}$ is proportional to $\mathbf{J}$, it too must reverse sign,
$$
\mathbf{B}(\mathbf{x},t) \to -\mathbf{B}(\mathbf{x},-t) \ .
$$
We've thus now established how the distributions and fields behave under time reversal, which means we can now ask how Maxwell's equations themselves behave. For Gauss's law, we have
$$
\nabla \cdot \mathbf{E}(\mathbf{x},-t) = 4\pi \rho(\mathbf{x},-t) \ .
$$
This means Gauss's law is invariant under time reversal, meaning it has the same functional from.

Next we have Faraday's law, which under a time reversal transformation gives
$$
\nabla \times \mathbf{E}(\mathbf{x},-t) = -\frac{1}{c} \frac{\partial}{\partial(-t)} \big[-\mathbf{B}(\mathbf{x},-t)\big] \ .
$$
Since the minus signs cancel, we see that Faraday's law is invariant under time reversal as well.

Next we have Gauss's law for magnetism, which under time reversal gives
$$
-\nabla \cdot \mathbf{B}(\mathbf{x},-t) = 0 \ .
$$
Since we can multiply both sides by $-1$, we see that this equation is also invariant.

Finally we have the generalized Ampere's law, which under time reversal says
$$
-\nabla \times \mathbf{B}(\mathbf{x},-t) = \frac{4\pi}{c} \big[-\mathbf{J}(\mathbf{x},-t)\big] + \frac{1}{c} \frac{\partial}{\partial(-t)} \mathbf{E}(\mathbf{x},-t) \ .
$$
Again, multiplying both sides by $-1$ we see that this equation is invariant as well. We've thus managed to show that all six of Maxwell's equations are time-reversal invariant, and by implication that the continuity equation is also invariant.

For what it's worth, the Lorentz force law is also time-reversal invariant, since by Newton's second law we have
$$
m\mathbf{a}(\mathbf{x},-t) = q\mathbf{E}(\mathbf{x},-t) + q\frac{\mathbf{v}(\mathbf{x},-t)}{c} \times \mathbf{B}(\mathbf{x},-t) \ .
$$
Here, everything is invariant except $\mathbf{v}$ and $\mathbf{B}$, but the minus signs in $\mathbf{v}$ and $\mathbf{B}$ cancel out, leaving the Lorentz force law invariant. 

Taken together, these mean that neither Maxwell's equations nor the Lorentz force law contain any understanding of the arrow of time, of what causes what. That is, they have no notion of causality. However, we intuitively expect that it's the source charges that should give rise to the fields and not the other way around. If we want to bake this requirement into the theory we'll need to do it in some other way, which we'll discuss later.

## Conservation Laws

We'll now derive the important conservation laws of electrodynamics. We've already shown, rather required, that the conservation of charge be satisfied in electrodynamics via the continuity equation
$$
\frac{\partial \rho}{\partial t} + \nabla \cdot \mathbf{J} = 0 \ .
$$
We now want to see what the conservation laws look like for the other quantities of interest, namely electromagnetic energy,  momentum, and angular momentum. 

Before exploring these, it'll be helpful to analyze the general form of a local conservation law. Suppose $Q(t)$ is the amount of some scalar quantity of interest enclosed in some given closed region $\mathcal{V}$ of space at a given time $t$. This could be for instance the total charge inside the region, the total energy, or a component of a field's momentum. Now, $Q(t)$ can only change in one of two possible ways, either $Q$ flows out of (or into) the region, or $Q$ gets created (or destroyed) inside the region via some source. In mathematical terms, we can express this conservation law by writing
$$
\frac{dQ}{dt} = -(\text{rate of flow out}) + (\text{rate of creation}) \ .
$$
The minus sign reflects the fact that $Q$ will decrease if it flows out of the region. Now, assuming we can define $Q$ in terms of some density function $\rho_Q(\mathbf{x},t)$, we can write
$$
Q(t) = \int_\mathcal{V} d^3\mathbf{x} \ \rho_Q(\mathbf{x},t) \ .
$$
Similarly, if $Q$ flows out of the volume with some flow velocity $\mathbf{v}_Q(\mathbf{x},t)$, we can express the rate of flow of $Q$ out of the region in terms of a flux density vector $\mathbf{J}_Q(\mathbf{x},t)$ defined by $\mathbf{J}_Q \equiv \rho_Q \mathbf{v}_Q$. Then we have
$$
\text{rate of flow out} = \int_\mathcal{S} \mathbf{J}_Q \cdot d\mathbf{a} \ .
$$
If we now define $R_Q(\mathbf{x},t)$ to be the creation of $Q(t)$ per unit volume inside $\mathcal{V}$, we can write the conservation law above as
$$
\frac{d}{dt} \int_\mathcal{V} d^3\mathbf{x} \ \rho_Q(\mathbf{x},t) = -\int_\mathcal{S} \mathbf{J}_Q \cdot d\mathbf{a} + \int_\mathcal{V} d^3\mathbf{x} \ R_Q(\mathbf{x},t) \ .
$$
Moving the time derivative inside the integral on the left and then using the divergence theorem to rewrite the surface integral on the right as a volume integral, we finally arrive at the following continuity equation for $Q(t)$,
$$
\frac{\partial \rho_Q}{\partial t} + \nabla \cdot \mathbf{J}_Q = R_Q \ .
$$
This continuity equation looks exactly like the one for conservation of charge, except we generalize it by allowing for the possibility that $Q$ can be spontaneously created inside the region due to some source. For charge, we require that charge can never be spontaneously created since there's no way to create charge in classical physics. However, for other quantities like energy or momentum there are indeed sources that can create them.

### Conservation of Energy

Recall from the previous chapter that the potential energy $\mathcal{U}$ stored in an EM field is given by
$$
\mathcal{U} = \frac{1}{8\pi} \int d^3\mathbf{x} \ (\mathbf{E}^2 + \mathbf{B}^2) \ .
$$
The energy density $u(\mathbf{x},t)$ of the EM field is of course
$$
u = \frac{1}{8\pi}(\mathbf{E}^2 + \mathbf{B}^2) \ .
$$
Let's look at the time derivative of the energy density and see what we find. By the product rule, we can write
$$
\frac{\partial u}{\partial t} = \frac{1}{4\pi} \bigg(\mathbf{E} \cdot \frac{\partial \mathbf{E}}{\partial t} + \mathbf{B} \cdot \frac{\partial \mathbf{B}}{\partial t}\bigg) \ .
$$
From Maxwell's equations, we know that
$$
\frac{\partial \mathbf{E}}{\partial t} = c \nabla \times \mathbf{B} - 4\pi \mathbf{J} \quad , \quad \frac{\partial \mathbf{B}}{\partial t} = -c \nabla \times \mathbf{E} \ .
$$
Substituting these back in, we have
$$
\frac{\partial u}{\partial t} = \frac{c}{4\pi} \bigg(\mathbf{E} \cdot (\nabla \times \mathbf{B}) - \mathbf{B} \cdot (\nabla \times \mathbf{E})\bigg) - \mathbf{J} \cdot \mathbf{E} \ .
$$
Now, one can easily show using index notation that the following vector calculus identity holds,
$$
\nabla \cdot (\mathbf{E} \times \mathbf{B}) = -\mathbf{E} \cdot (\nabla \times \mathbf{B}) + \mathbf{B} \cdot (\nabla \times \mathbf{E}) \ .
$$
We thus evidently have the following conservation law for the potential energy stored in an EM field,
$$
\frac{\partial u}{\partial t} + \nabla \cdot \bigg(\frac{c}{4\pi}\mathbf{E} \times \mathbf{B}\bigg) = - \mathbf{J} \cdot \mathbf{E} \ .
$$
Inside the divergence must be the energy flux density, which we call the *Poynting vector* $\mathbf{S}$,
$$
\boxed{
\mathbf{S} \equiv \frac{c}{4\pi}\mathbf{E} \times \mathbf{B}
} \ .
$$
By definition, the Poynting vector has dimensions of energy flux density, or energy per unit time per unit area, or power per unit area. This is true in every system of units, which means $\mathbf{S}$ has units $\text{erg}/\text{s} \cdot \text{cm}^2$ in Gaussian units, and units of $\text{W}/\text{m}^2$ in SI units.

The Poynting vector represents the direction of EM field energy flow. Since $\mathbf{S} \propto \mathbf{E} \times \mathbf{B}$, the field energy will always flow in a direction perpendicular to the plane spanned by $\mathbf{E}(\mathbf{x},t)$ and $\mathbf{B}(\mathbf{x},t)$ at a given instant of time. This flow of EM energy we call *electromagnetic radiation*. As we'll see later, EM energy is propagated in the form of EM waves. The total amount of energy radiated through a fixed volume per unit time, or *total power radiated*, is given by the closed surface integral
$$
P = \oint_\mathcal{S} \mathbf{S} \cdot d\mathbf{a} \ .
$$
The conservation law for electromagnetic potential energy is known as *Poynting's theorem*, given by
$$
\boxed{
\frac{\partial u}{\partial t} + \nabla \cdot \mathbf{S} = - \mathbf{J} \cdot \mathbf{E} 
} \ .
$$
Unlike with conservation of charge, conservation of energy contains a creation term $R = -\mathbf{J} \cdot \mathbf{E}$ on the right-hand side, reflecting the fact that the energy inside a given volume can change if currents are running through it. If $R < 0$ then energy is being dissipated inside the volume. We saw this, for instance, when discussing Ohmic heating, where a resistor dissipates heat when a current is pumped through it. If $R > 0$ then energy is being created inside the volume. This happens, for instance, when charging a capacitor. Let's look at both of these examples in more detail.

##### Example: Energy dissipation in a resistor

In the previous chapter, we showed that when an Ohmic material is hooked up to a voltage source it undergoes Ohmic heating. As a current is pumped through the resistor, it dissipates energy according to the formula $P = IV = I^2 R$. We can prove this is the case using the conservation of energy as well.

To that end, suppose we have a cylindrical Ohmic material hooked up to a voltage source in the manner shown below.

FIGURE (resistor cylinder with all the fields and currents shown)





##### Example: Energy storage in a capacitor

blah

### Conservation of Momentum

Let's now turn our attention to conservation of EM field momentum. It may be surprising that EM fields have momentum. After all, in classical mechanics momentum is defined as mass times velocity. EM fields don't have mass, but they do indeed have momentum. This surprising fact is a direct consequence of insisting that momentum be conserved when charges move in the presence of an EM field.

Recall that the force acting on a charge $q$ moving at a velocity $\mathbf{v}$ in an external EM field is given by the Lorentz force law,
$$
\mathbf{F} = q\mathbf{E} + q\frac{\mathbf{v}}{c} \times \mathbf{B} \ .
$$
According to Newton's second law, this force is also the time derivative of the mechanical momentum $\mathbf{P}_\text{mech}$,
$$
\mathbf{F} = \frac{d\mathbf{P}_\text{mech}}{dt} \ .
$$
If we insist that momentum be conserved, then there must be some other added momentum to compensate the field momentum. This extra momentum $\mathbf{P}_\text{field}$ we call the momentum of the EM field. For the total momentum to be conserved, we thus require that
$$
\frac{d\mathbf{P}_\text{mech}}{dt} + \frac{d\mathbf{P}_\text{field}}{dt} = 0 \ .
$$
That is, we require that
$$
\frac{d\mathbf{P}_\text{field}}{dt} = -\mathbf{F} \ .
$$
For an arbitrary charge distribution, the Lorentz force law becomes
$$
\mathbf{F} = \int d^3\mathbf{x} \ \bigg(\rho\mathbf{E} + \frac{\mathbf{J}}{c} \times \mathbf{B}\bigg) \ ,
$$
where the integrand $\mathbf{f}(\mathbf{x},t)$ is the force per unit volume or *force density*
$$
\mathbf{f} \equiv \rho \mathbf{E} + \frac{\mathbf{J}}{c} \times \mathbf{B} \ .
$$
We thus have that
$$
\frac{d\mathbf{P}_\text{field}}{dt} = -\int d^3\mathbf{x} \ \mathbf{f}(\mathbf{x},t) \ .
$$
That is, the momentum in the EM field is being created or destroyed inside a given volume via the creation function $\mathbf{R} = -\mathbf{f}$, which is now evidently a vector instead of a scalar.

Let's now analyze this force density more closely. If we apply Maxwell's equations, we can write
$$
\begin{align*}
\mathbf{f} &= \frac{1}{4\pi} (\nabla \cdot \mathbf{E}) \mathbf{E} + \frac{1}{c} \bigg(\frac{c}{4\pi}\nabla \times \mathbf{B} - \frac{1}{4\pi} \frac{\partial \mathbf{E}}{\partial t} \bigg) \times \mathbf{B} \\
&= \frac{1}{4\pi} \bigg[(\nabla \cdot \mathbf{E}) \mathbf{E} + (\nabla \times \mathbf{B}) \times \mathbf{B} - \frac{1}{c} \frac{\partial \mathbf{E}}{\partial t} \times \mathbf{B} \bigg] \\
&= \frac{1}{4\pi} \bigg[(\nabla \cdot \mathbf{E}) \mathbf{E} + (\nabla \cdot \mathbf{B}) \mathbf{B} + (\nabla \times \mathbf{B}) \times \mathbf{B} - \frac{1}{c} \frac{\partial \mathbf{E}}{\partial t} \times \mathbf{B} \bigg]
\end{align*}
$$
In the last step we used the fact that $\nabla \cdot \mathbf{B} = 0$ to insert a vanishing term $(\nabla \times \mathbf{B}) \times \mathbf{B}$. This will be useful in a moment. Next, notice we can simplify the cross product $(\partial_t \mathbf{E}) \times \mathbf{B}$ by applying the product rule along with Faraday's law to get
$$
\frac{\partial\mathbf{E}}{\partial t} \times \mathbf{B} = \frac{\partial}{\partial t} (\mathbf{E} \times \mathbf{B}) - \mathbf{E} \times \frac{\partial \mathbf{B}}{\partial t} = \frac{\partial}{\partial t} (\mathbf{E} \times \mathbf{B}) - c (\nabla \times \mathbf{E}) \times \mathbf{E} \ .
$$
Plugging this into $\mathbf{f}$, we now have
$$
\mathbf{f} = \frac{1}{4\pi} \big[(\nabla \cdot \mathbf{E}) \mathbf{E} + (\nabla \cdot \mathbf{B})\mathbf{B} - \mathbf{B} \times (\nabla \times \mathbf{B}) - \mathbf{E} \times (\nabla \times \mathbf{E})\big] - \frac{1}{4\pi c} \frac{\partial}{\partial t} (\mathbf{E} \times \mathbf{B}) \ .
$$
Now, notice the right-most term has the units of force density. It's the partial time derivative of a vector field $\mathbf{g}(\mathbf{x},t)$ carrying units of momentum per unit volume, or *momentum density*,
$$
\boxed{
\mathbf{g} \equiv \frac{1}{4\pi c} \mathbf{E} \times \mathbf{B}
} \ .
$$
We can thus interpret $\mathbf{g}$ as being the density of the field momentum $\mathbf{P}_\text{field}$,
$$
\mathbf{P}_\text{field} = \int d^3\mathbf{x} \ \mathbf{g}(\mathbf{x},t) = \frac{1}{4\pi c} \int d^3\mathbf{x} \ (\mathbf{E} \times \mathbf{B}) \ .
$$
We thus now know that the density of the field momentum is $\mathbf{g}$ and its creation function is $-\mathbf{f}$. Notice that $\mathbf{g}$ is also directly proportional to the Poynting vector or energy flux density $\mathbf{S}$, with
$$
\mathbf{g} = \frac{\mathbf{S}}{c^2} \ .
$$
This implies that the momentum will flow through the volume as an EM wave in the same direction as the energy does, perpendicular to the directions of both the E-field and the B-field.

All that remains now is to figure out what the flux density of the field momentum is. To do that, consider now the remaining term in the conservation law above,
$$
\nabla \cdot \mathbf{T} \equiv \frac{1}{4\pi} \big[(\nabla \cdot \mathbf{E}) \mathbf{E} + (\nabla \cdot \mathbf{B})\mathbf{B} - \mathbf{B} \times (\nabla \times \mathbf{B}) - \mathbf{E} \times (\nabla \times \mathbf{E})\big] \ .
$$
The goal is to extract from this remaining piece the divergence of some quantity $\mathbf{T}$ that we can identify as a momentum flux density. Since $\mathbf{g}$ is a vector, there will be one flux density vector per component of $\mathbf{g}$, or equivalently a rank-2 tensor.

At this point it makes sense to proceed in index notation. Observe that
$$
\begin{align*}
[(\nabla \cdot \mathbf{E}) \mathbf{E} - \mathbf{E} \times (\nabla \times \mathbf{E})]_i &= E_i \partial_j E_j - \varepsilon_{ijk} \varepsilon_{k\ell m} E_j \partial_\ell E_m \\
&= E_i \partial_j E_j - (\delta_{i\ell} \delta_{jm} - \delta_{im} \delta_{j\ell}) E_j \partial_\ell E_m \\
&= E_i \partial_j E_j - E_j \partial_i E_j + E_j \partial_j E_i \\
&= \partial_j (E_i E_j) - E_j \partial_j E_i - E_j \partial_i E_j + E_j \partial_j E_i \\
&= \partial_j (E_i E_j) - E_k \partial_i E_k \\
&= \partial_j \bigg(E_i E_j - \frac{1}{2} E_k E_k \delta_{ij} \bigg) \ .
\end{align*}
$$
Similarly, we have
$$
[(\nabla \cdot \mathbf{B}) \mathbf{B} - \mathbf{B} \times (\nabla \times \mathbf{B})]_i = \partial_j \bigg(B_i B_j - \frac{1}{2} B_k B_k \delta_{ij} \bigg) \ .
$$
Putting these together, we have
$$
(\nabla \cdot \mathbf{T})_i = \frac{1}{4\pi} \partial_j \bigg[E_i E_j - B_i B_j - \frac{1}{2} (E_k E_k + B_k B_k) \delta_{ij} \bigg] \ .
$$
We've thus managed to reduce the remaining term in the conservation law to the divergence of a rank-2 tensor, which we've denoted by $\mathbf{T}$. That $\mathbf{T}$ is in fact a valid tensor follows from the fact that it's a sum of outer products with a scalar multiplied by the identity tensor. In component notation, this tensor is given by
$$
T_{ij} = \frac{1}{4\pi} \bigg[E_i E_j + B_i B_j - \frac{1}{2}(E_k E_k + B_k B_k) \delta_{ij}\bigg] \ .
$$
We call $\mathbf{T}$ the *Maxwell stress tensor*. In abstract notation, we can write
$$
\boxed{
\mathbf{T} = \frac{1}{4\pi} \bigg[\mathbf{E} \otimes \mathbf{E} + \mathbf{B} \otimes \mathbf{B} - \frac{\mathbf{E}^2 + \mathbf{B}^2}{2} \mathbf{1}\bigg]
} \ .
$$
Since $\mathbf{T}$ is a linear combination of valid rank-2 tensors, it must indeed be a valid rank-2 tensor as we claimed. Writing $\mathbf{T}$ out as a matrix in terms of its Cartesian components, we have
$$
\mathbf{T} = \frac{1}{4\pi} 
\begin{pmatrix}
E_x^2 + B_x^2 - \frac{1}{2}(\mathbf{E}^2 + \mathbf{B}^2) & E_x E_y + B_x B_y & E_x E_z + B_x B_z \\
E_y E_x + B_y B_x & E_y^2 + B_y^2 - \frac{1}{2}(\mathbf{E}^2 + \mathbf{B}^2) & E_y E_z + B_y B_z \\
E_z E_x + B_z B_x & E_z E_y + B_z B_y & E_z^2 + B_z^2 - \frac{1}{2}(\mathbf{E}^2 + \mathbf{B}^2) \\
\end{pmatrix} \ .
$$
Notice that $\mathbf{T}$ is a symmetric tensor, meaning $T_{ij} = T_{ji}$. This means the stress tensor only has six independent components. It also means that the divergence operator $\nabla \cdot \mathbf{T}$ is unique, since
$$
\nabla \cdot \mathbf{T} = \partial_j T_{ij} = \partial_i T_{ij} = \partial_j T_{ij} \ .
$$
Also, notice that the trace of the stress tensor is in fact the energy density $u$, since
$$
T_{ii} = \frac{1}{4\pi} \bigg(\mathbf{E}^2 + \mathbf{B}^2 - \frac{1}{2}(\mathbf{E}^2 + \mathbf{B}^2)\bigg) = \frac{1}{8\pi}(\mathbf{E}^2 + \mathbf{B}^2) = u \ .
$$
The stress tensor has dimensions of energy density, or equivalently dimensions of *pressure*, carrying units of $\text{dyne}/\text{cm}^2$ in Gaussian units or $\text{N}/\text{m}^2$ in SI units. In fact, the components of $\mathbf{T}$ implies that EM fields contain pressure. The diagonal components of $\mathbf{T}$ represent pressures, while the off-diagonal components represent shearing. For example, $T_{xx}$ represents the pressure exerted by the $x$-components of the fields on surfaces in the $x$-direction, and $T_{xy}$ represents the tendency of the $x$-components of the fields to shear surfaces along the $y$-direction.

This pressure even shows up in electrostatics, where it's known as *electrostatic pressure*. In that setting the B-fields vanish and the E-fields become time-independent, but the stress tensor doesn't vanish. As an example, consider two parallel capacitor plates with opposite surface charge densities $\pm \sigma$ separated by a distance $d$ in the $z$-direction. Consider the force the field exerted by the positively charged plate on the negatively charged plate. Since the positively charged plate has a field $\mathbf{E} = 2\pi\sigma \mathbf{e}_z$, the negatively charged plate will be attracted toward the positively charged plate with pressure
$$
T_{zz} = \frac{1}{8\pi} \mathbf{E}^2 = \frac{(2\pi\sigma)^2}{8\pi} = \frac{\pi}{2} \sigma^2 \ .
$$
At any rate, we've managed to show that the conservation law for field momentum is given by
$$
\boxed{
\frac{\partial\mathbf{g}}{\partial t} - \nabla \cdot \mathbf{T} = -\mathbf{f} 
} \ .
$$
This says that the field momentum can change in one of two ways, either by flowing into or out of a fixed volume according to the divergence of the stress tensor $\mathbf{T}$, or by being created or dissipated through the field's coupling with particles inside the volume via the Lorentz force law.

- Consider working an example, e.g. Coulomb's law the hard way (or more interesting examples from Griffiths/Jackson)

### Conservation of Angular Momentum

Finally, we'll consider the remaining quantity that's often conserved in classical mechanics, angular momentum. When a charged particle is moving in an EM field, it will also experience a torque $\mathbf{N}$ given by
$$
\mathbf{N} = \mathbf{x} \times \mathbf{F} = \mathbf{x} \times \bigg(q\mathbf{E} + q\frac{\mathbf{v}}{c} \times \mathbf{B}\bigg) \ .
$$
The torque is also the time derivative of the mechanical angular momentum $\mathbf{L}_\text{mech}$,
$$
\mathbf{N} = \frac{d\mathbf{L}_\text{mech}}{dt} \ .
$$
If we insist that angular momentum be conserved, then there must be some other angular momentum to compensate. This extra angular momentum $\mathbf{L}_\text{mech}$ we call the angular momentum of the EM field. For the *total* angular momentum of the system to be conserved, we thus require that
$$
\frac{d\mathbf{L}_\text{mech}}{dt} + \frac{d\mathbf{L}_\text{field}}{dt} = 0 \ ,
$$
or equivalently that
$$
\frac{d\mathbf{L}_\text{field}}{dt} = -\mathbf{N} \ .
$$
For an arbitrary charge distribution, we can write the torque as an integral
$$
\mathbf{N} = \int d^3\mathbf{x} \ \mathbf{x} \times \bigg(\rho\mathbf{E} + \frac{\mathbf{J}}{c} \times \mathbf{B}\bigg) \ ,
$$
where the integrand is the torque per unit volume or *torque density*
$$
\mathbf{x} \times \mathbf{f} = \mathbf{x} \times \bigg(\rho \mathbf{E} + \frac{\mathbf{J}}{c} \times \mathbf{B}\bigg) \ .
$$
We thus have that
$$
\frac{d\mathbf{L}_\text{field}}{dt} = -\int d^3\mathbf{x} \ \mathbf{x} \times \mathbf{f}(\mathbf{x},t) \ .
$$
That is, the angular momentum in the EM field is being created or destroyed inside a given fixed volume through the coupling of the field with a particle inside the volume via the torque.

Now, according to the conservation of momentum law we found in the previous section, we can write
$$
\mathbf{f} = \frac{1}{4\pi} \big[(\nabla \cdot \mathbf{E}) \mathbf{E} + (\nabla \cdot \mathbf{B})\mathbf{B} - \mathbf{B} \times (\nabla \times \mathbf{B}) - \mathbf{E} \times (\nabla \times \mathbf{E})\big] - \frac{\partial \mathbf{g}}{\partial t} \ .
$$
This means we have
$$
\mathbf{x} \times \mathbf{f} = \frac{1}{4\pi} \mathbf{x} \times \big[(\nabla \cdot \mathbf{E}) \mathbf{E} + (\nabla \cdot \mathbf{B})\mathbf{B} - \mathbf{B} \times (\nabla \times \mathbf{B}) - \mathbf{E} \times (\nabla \times \mathbf{E})\big] - \frac{\partial}{\partial t} (\mathbf{x} \times\mathbf{g}) \ .
$$
The partial derivative of $\mathbf{x} \times\mathbf{g}$ must evidently have dimensions of torque density, when means $\mathbf{x} \times\mathbf{g}$ itself must evidently have dimensions of an angular momentum density. We thus define
$$
\boldsymbol{\mathcal{L}} \equiv \mathbf{x} \times \mathbf{g} \ ,
$$
and interpret $\boldsymbol{\mathcal{L}}(\mathbf{x},t)$ as the density of the field angular momentum $\mathbf{L}_\text{field}$,
$$
\mathbf{L}_\text{field} = \int d^3\mathbf{x} \ \boldsymbol{\mathcal{L}}(\mathbf{x},t) \ .
$$
All that remains in the conservation law is the term
$$
\nabla \cdot \mathbf{M} \equiv \frac{1}{4\pi} \mathbf{x} \times \big[(\nabla \cdot \mathbf{E}) \mathbf{E} + (\nabla \cdot \mathbf{B})\mathbf{B} - \mathbf{B} \times (\nabla \times \mathbf{B}) - \mathbf{E} \times (\nabla \times \mathbf{E})\big] \ .
$$
One can show that $\mathbf{M}$ is a rank-2 *pseudo-tensor* given by the tensor curl $\mathbf{M} = \mathbf{T} \times \mathbf{x}$, which is abstract notation for the rank-2 pseudo-tensor whose components $M_{ij}$ are given by
$$
M_{ij} = \varepsilon_{jk\ell} T_{ik} x_\ell \ . 
$$
The term pseudo-tensor is used here instead of tensor because, like any cross product, the result doesn't transform normally under spatial rotations. Instead of having $\mathbf{M} \to \mathbf{R} \cdot \mathbf{M}$ under a spatial rotation $\mathbf{R}$, we instead have $\mathbf{M} \to -\mathbf{R} \cdot \mathbf{M}$.

Letting $\nabla \cdot \mathbf{M}$ denote the vector whose components are $-\partial_j M_{ij}$, we can thus express the conservation law for angular momentum as
$$
\frac{\partial \boldsymbol{\mathcal{L}}}{\partial t} + \nabla \cdot \mathbf{M} = -\mathbf{x} \times \mathbf{f} \ .
$$
In this form, the conservation law for angular momentum looks analogous to the one we derived for ordinary momentum, except that each quantity now contains a cross product with $\mathbf{x}$.

Just as the ordinary mechanical momentum can always be composed into two components, an *orbital angular momentum* and a *spin angular momentum*, the same is true for the field momentum. That is, we can write
$$
\boldsymbol{\mathcal{L}} = \boldsymbol{\mathcal{L}}_\text{orb} + \boldsymbol{\mathcal{L}}_\text{spin} \ ,
$$
where $\boldsymbol{\mathcal{L}}_\text{orb}$ is the orbital angular momentum density given by
$$
\boldsymbol{\mathcal{L}}_\text{orb} \equiv \frac{1}{4\pi c} E_\ell (\mathbf{x} \times \nabla) A_\ell \ ,
$$
where $\mathbf{A}$ is the usual vector potential, and $\boldsymbol{\mathcal{L}}_\text{spin}$ is the spin angular momentum density given by
$$
\boldsymbol{\mathcal{L}}_\text{spin} \equiv \frac{1}{4\pi c} \mathbf{E} \times \mathbf{A} \ .
$$
Deriving this decomposition is cumbersome and not terribly insightful to the theory, so we won't show the derivation here. Notice the spin component depends only on the intrinsic vector character of the field itself. Meanwhile, the orbital component depends on the spatial variation of the field via the operator $\mathbf{x} \times \nabla$. The appearance of this operator in $\boldsymbol{\mathcal{L}}_\text{orb}$ is no accident. Up to a factor of $-i\hbar$, the operator $\mathbf{x} \times \nabla$ is in fact the *definition* of the orbital angular momentum operator in quantum mechanics.

## Waves

Fundamentally, the study of electrodynamics turns out to be in large part about the study of *waves*. We'll see in this chapter and future chapters that the solutions to Maxwell's equations can be characterized by waves, i.e. solutions to the wave equation. Before discussing how this happens we will first review the study of the behavior of waves more generally.

### Waves in One Dimension

- Rewrite to define a wave starting from the wave equation, and deducing its solutions.

Intuitively, a *wave* can be thought of as any disturbance whose shape propagates in some direction at a given speed. Mathematically, a one-dimensional wave can be thought of as any time-dependent function of the form
$$
\phi(x,t) = f(x \pm vt) \ .
$$
If $\phi(x,t) = f(x - vt)$ we say the wave is moving to the *right* with speed $v$, and if $\phi(x,t) = f(x + vt)$ we say the wave is moving to the *left* at speed $v$. If the speed $v$ is constant, the wave will maintain its shape as it propagates. If not the wave will *disperse*, meaning its shape will spread out or contract over time.

Observe that both left and right propagating waves satisfy the following partial differential equation,
$$
\frac{\partial^2 \phi}{\partial x^2} - \frac{1}{v^2} \frac{\partial^2 \phi}{\partial t^2} = 0 \ .
$$
This second order linear PDE is known as the *wave equation*. In fact, any solution to the wave equation must be a wave propagating either to the left or to the right at speed $v$, or both. That is, the general solution to this equation must have the form
$$
\phi(x,t) = f(x - vt) + g(x + vt) \ ,
$$
where $f$ is an arbitrary right-propagating wave and $g$ is an arbitrary left-propagating wave, both moving at the same speed $v$. That this must be true can be seen using the *method of characteristics*. First, we factor the wave equation to write
$$
\bigg(\frac{\partial \phi}{\partial x} + \frac{1}{v} \frac{\partial \phi}{\partial t}\bigg) \bigg(\frac{\partial \phi}{\partial x} - \frac{1}{v} \frac{\partial \phi}{\partial t}\bigg) = 0 \ .
$$
Now, the wave equation will be satisfied provided at least one of these products is zero. If the first product is zero, we can reduce the wave equation into a first order linear PDE of the form
$$
\frac{\partial \phi}{\partial x} + \frac{1}{v} \frac{\partial \phi}{\partial t} = 0 \ .
$$
The solution $\phi(x,t)$ must always be constant along any curve where $d\phi = 0$. Assuming the above PDE holds, this says
$$
d\phi = \frac{\partial \phi}{\partial x} dx + \frac{\partial \phi}{\partial t} dt = \frac{\partial \phi}{\partial x} (dx - vdt) = 0 \ .
$$
Assuming $\phi(x,t)$ isn't a trivial constant, it can only be constant along curves where $dx - vt = 0$, or equivalently along curves where $x - vt$ is constant. The only way this can be true is if $\phi(x,t) = f(x-vt)$ for some function $f$. 

By the exact same argument, the second product can only be zero provided $\phi(x,t) = g(x + vt)$ for some function $g$. Since the wave equation requires only one of these products to be zero, for either to be zero $\phi(x,t)$ can be the sum of the two forms,
$$
\phi(x,t) = f(x - vt) + g(x + vt) \ .
$$
Thus, any general solution to the wave equation be a sum of left and right propagating waves. Note the exact shape of $f$ and $g$ will depend on the initial and boundary conditions of a given problem.

Perhaps the most intuitive example of a 1-dimensional wave in physics is the vibrating string. Suppose a long taut string with some tension $T$ runs along the $x$-axis. Suppose the string is displaced from equilibrium by some amount in the $y$-direction, with the displacement in this direction characterized by some time-dependent scalar field $y = y(x,t)$. For any point $x$ along this strong, an infinitesimal displacement $dy$ will take place of the form
$$
dy = y(x + dx,t) - y(x,t) \ .
$$
This displacement will be caused by a force proportional to the tension. The force $dF$ needed to displace the string between the points $x$ and $x + dx$ by an amount $dy$ will be given by
$$
dF = T dy = T \frac{\partial}{\partial x} [y(x + dx,t) - y(x,t)] = T \frac{\partial^2 y}{\partial x^2} dx \ .
$$
If $\mu$ is the mass per unit length, then $dm = \mu dx$ is the mass of the string along this infinitesimal interval. By Newton's second law, we must then have $dF = \ddot y dm$, or equivalently
$$
\mu dx \frac{\partial^2 y}{\partial t^2} = T \frac{\partial^2 y}{\partial x^2} dx \ .
$$
Canceling the $dx$ from both sides, we find the displacement of the string satisfies the wave equation with a velocity $v$ given by
$$
v = \sqrt{\frac{T}{\mu}} \ .
$$
Its general solution will depend on the initial and boundary conditions, but will still have the general form
$$
y(x,t) = f(x - vt) + g(x + vt) \ .
$$
In this case, the wave displacement is along the $y$-direction, even though the wave propagates along the $x$-direction. A wave whose displacement is perpendicular to the direction of propagation is called a *transverse wave*. If the displacement were instead along the direction of propagation instead we'd call it a *longitudinal wave*. Some waves can even have both transverse as well as longitudinal components.

### Sinusoidal Waves

In general, the shape of $f$ and $g$ could be essentially anything. Different shapes correspond to waves with different names. Some of the more common wave shapes we might encounter in one dimension are sinusoidal waves, rectangular waves, triangular waves, sawtooth waves, pulse waves, and so on. The most theoretically important class of waves, however, are the *sinusoidal waves*. After all, the theory of Fourier series guarantees we can build any shape of periodic wave as a series of sinusoids. 

In one dimension, a sinusoidal wave has the general form
$$
\phi(x,t) = A \cos(kx - \omega t + \delta) \ ,
$$
where $A$ is called the *amplitude* of the wave, $\delta$ the *phase constant*, $k$ the *wavenumber*, and $\omega$ the *angular frequency*. Graphically, the amplitude $A$ represents the maximum height of the wave relative to the $x$-axis, while the phase constant $\delta$ represents the argument of the wave at position $x=0$ and time $t=0$,
$$
\phi(0,0) = A \cos\delta \ .
$$
The wavenumber $k$ is related to the *wavelength* $\lambda$ of the wave, which is the *length* of one full oscillation at a fixed time,
$$
k = \frac{2\pi}{\lambda} \ .
$$
The angular frequency $\omega$ is related to the *period* $T$ of the wave, which is the *time* of one full oscillation at a fixed spatial position,
$$
\omega = \frac{2\pi}{T} \ .
$$
For the sinusoid to satisfy the wave equation above, we require that $k$ and $\omega$ be related by the equation
$$
v = \frac{\omega}{k} \ .
$$
Here $v$ represents the speed at which the argument of the cosine, called the *phase* of the wave, propagates. For this reason we call $v$ the *phase velocity* of the wave, sometimes denoted $v_p$. The phase velocity is named to contrast it with a different type of wave velocity we'll discuss later known as the *group velocity* $v_g$. For the sinusoid it turns out they're the same, $v_p = v_g = v$.

FIGURE (represent the different wave components above)

Frequently we'll find it useful to express sinusoid waves as complex exponentials to simplify mathematical manipulations. We can do this thanks to two facts. First, Euler's identity says
$$
e^{ix} = \cos x + i \sin x \ .
$$
Second, observe $\phi(x,t) = A \cos(kx - \omega t + \delta)$ solves the wave equation if and only if its complex exponential also does,
$$
\Phi(x,t) \equiv \mathcal{A} e^{i(kx - \omega t)} \ .
$$
Here $\mathcal{A} \equiv A e^{i\delta}$ is known as the *complex amplitude*. It's just the ordinary real amplitude rotated counterclockwise in the complex plane by an angle $\delta$. The complex sinusoid $\Phi(x,t)$ is sometimes called the *analytic wave* of the *real wave* $\phi(x,t)$. We thus lose no information by treating sinusoids as complex exponentials. We can do all mathematical manipulations with complex exponentials, and in the end recover the real-valued sinusoid by taking its real part,
$$
\phi(x,t) = \text{Re} \ \Phi(x,t) \ .
$$
For this reason, in this course we'll frequently abuse notation by using the same notation for both the real-valued and complex-valued versions of a wave. It will always be understood that to get the *physical* wave we take the real part in the end.

### Waves in Three Dimensions

In electromagnetism we almost always find ourselves interested in waves in three dimensions, not in one dimension. We can extend our discussion above to three dimensions fairly easily. A scalar field $\phi(\mathbf{x},t)$ will be called a *wave* provided it satisfies the 3-dimensional wave equation for some constant velocity $v$,
$$
\nabla^2 \phi - \frac{1}{v^2} \frac{\partial^2 \phi}{\partial t^2} = 0 \ .
$$
Notice that the only difference between the 3-dimensional and 1-dimensional wave equation is the replacement
$$
\frac{\partial^2 \phi}{\partial x^2} \to \nabla^2 \phi \ .
$$
This one subtle change does make a difference: We can no longer characterize the solutions to the wave equation as a linear superposition of left and right propagating waves. Instead the general solutions will be much more complex, depending on both the initial conditions of the wave as well as any imposed boundary conditions.

The 3-dimensional generalization of the sinusoid wave are functions of the form
$$
\phi(\mathbf{x},t) = A \cos(\mathbf{k} \cdot \mathbf{x} - \omega t + \delta) \ .
$$
Most terms remain the same as the 1-dimensional sinusoid, except now the wavenumber $k$ is replaced by a *wavevector* $\mathbf{k}$ and the product $kx$ is replaced by the dot product $\mathbf{k} \cdot \mathbf{x}$. Notice the Laplacian of this function is given by
$$
\nabla^2 \phi = \partial_i \partial_i \phi = k_i k_i \phi = -|\mathbf{k}|^2 \phi \ ,
$$
while its second partial time derivative is given by
$$
\frac{\partial^2 \phi}{\partial t^2} = -\omega^2 \phi \ .
$$
Plugging these into the wave equation, we see that the sinusoid can only be a valid solution provided we have
$$
v = \frac{|\mathbf{k}|}{\omega} \ .
$$
We can thus identify $k \equiv |\mathbf{k}|$ as the usual wavenumber which can be related to the wavelength $\lambda$ in the usual way.

Just as we could equivalently express 1-dimensional sinusoid waves in terms of complex exponentials, we can do the same for 3-dimensional sinusoids. Given a real sinusoidal wave $\phi(\mathbf{x},t)$ defined as above, we define its analytic wave equivalent by
$$
\Phi(\mathbf{x},t) \equiv \mathcal{A} e^{i(\mathbf{k} \cdot \mathbf{x} - \omega t)} \ ,
$$
where $\mathcal{A} \equiv A e^{i\delta}$ is again the complex amplitude. It's easy to see the real wave is again the real part of the analytic wave,
$$
\phi(\mathbf{x},t) = \text{Re} \ \Phi(\mathbf{x},t) \ .
$$
Now, $\phi(\mathbf{x},t)$ will be a valid solution to the wave equation if and only if $\Phi(\mathbf{x},t)$ is a valid solution. This means we can work in either form equivalently. Since exponentials are more mathematically convenient we usually choose to work with the analytic wave. We'll often abuse notation by writing $\phi(\mathbf{x},t)$ for both forms, and assume it's understood that we must take the real part at the end to recover the standard sinusoidal solution.

In the special case that the wave is spherically symmetric we have $\phi = \phi(r,t)$, which means the 3-dimensional wave equation simplifies to the form
$$
\frac{1}{r^2} \frac{\partial}{\partial r} \bigg(r^2 \frac{\partial \phi}{\partial r}\bigg) - \frac{1}{v^2} \frac{\partial^2 \phi}{\partial t^2} = 0 \ .
$$
This can be converted into a standard 1-dimensional wave equation by substituting $u = r\phi$ and simplifying to get
$$
\frac{\partial^2 u}{\partial r^2} - \frac{1}{v^2} \frac{\partial^2 u}{\partial t^2} = 0 \ .
$$
Since we know the solutions to this equation are of the form
$$
u(r,t) = f(r - vt) + g(r + vt) \ ,
$$
the solutions to the original equation must be
$$
\phi(r,t) = \frac{f(r - vt)}{r} + \frac{g(r + vt)}{r} \ .
$$
Solutions of this type are known as *spherical waves*. The first term represents a wave propagating outward from the origin to infinity in a spherical shape with speed $v$, while the second term represents a wave propagating inward toward the origin from infinity with the same speed $v$. These are the 3-dimensional analogue of the left and right propagating waves in one dimension.

FIGURE (show spherical wave behavior)



### Vector Waves

Thus far we've focused on *scalar waves*, i.e. scalar fields that satisfy the wave equation. However, vector fields can behave as waves as well. These are *vector waves*. A vector wave is any vector field $\mathbf{F}(\mathbf{x},t)$ that satisfies the 3-dimensional vector wave equation for some constant speed $v$,
$$
\nabla^2 \mathbf{F} - \frac{1}{v^2} \frac{\partial^2 \mathbf{F}}{\partial t^2} = 0 \ .
$$
This is equivalent to the statement that each component of $\mathbf{F}(\mathbf{x},t)$ satisfies its own scalar wave equation. The primary difference between scalar waves and vector waves is that vector waves have a directionality associated to them, which we usually call the *polarization* of the wave.



## Electromagnetic Waves

No doubt the most profound impact of Maxwell's equations is that they imply the existence of electromagnetic radiation, or light. We will study electromagnetic radiation in much more detail in later chapters. For now we will show that in the absence of sources Maxwell's equations imply that the fields must satisfy the wave equation, which will imply the existence of electromagnetic waves that propagate at the speed of light.

### Maxwell's Equations in Free Space

Far away from the source charges generating an EM field we can treat Maxwell's equations as being source-free. In this setting they reduce to the *free space* Maxwell equations
$$
\begin{align*}
&\nabla \cdot \mathbf{E} = 0 \ , \qquad \nabla \times \mathbf{E} = -\frac{1}{c} \frac{\partial \mathbf{B}}{\partial t} \ ,& \\
&\nabla \cdot \mathbf{B} = 0 \ , \qquad \nabla \times \mathbf{B} = \frac{1}{c} \frac{\partial \mathbf{E}}{\partial t} \ .& \\
\end{align*}
$$
It turns out that the free space solutions can be reduced to two second order PDEs. To see why this is the case, suppose we take the curl of both $\nabla \times \mathbf{E}$ and $\nabla \times \mathbf{B}$. By the properties of the curl, we have
$$
\nabla \times (\nabla \times \mathbf{E}) = \nabla (\nabla \cdot \mathbf{E}) - \nabla^2 \mathbf{E} \ .
$$
Applying the free space equations above and interchanging derivatives, the left-hand side can be written
$$
\nabla \times (\nabla \times \mathbf{E}) = -\frac{1}{c} \nabla \times \frac{\partial \mathbf{B}}{\partial t} = -\frac{1}{c} \frac{\partial}{\partial t} (\nabla \times \mathbf{B}) = -\frac{1}{c^2} \frac{\partial^2 \mathbf{E}}{\partial t^2}  \ .
$$
Since $\nabla \cdot \mathbf{E} = 0$, we thus have
$$
\nabla^2 \mathbf{E} - \frac{1}{c^2} \frac{\partial^2 \mathbf{E}}{\partial t^2} = 0 \ .
$$
In an analogous manner, for the B-field we have
$$
\nabla \times (\nabla \times \mathbf{B}) = \nabla (\nabla \cdot \mathbf{B}) - \nabla^2 \mathbf{B} \ .
$$
Applying the free-space equations and interchanging derivatives, the left-hand side can be written
$$
\nabla \times (\nabla \times \mathbf{B}) = \frac{1}{c} \nabla \times \frac{\partial \mathbf{E}}{\partial t} = \frac{1}{c} \frac{\partial}{\partial t} (\nabla \times \mathbf{E}) = -\frac{1}{c^2} \frac{\partial^2 \mathbf{B}}{\partial t^2}  \ .
$$
Since $\nabla \cdot \mathbf{B} = 0$, we thus have
$$
\nabla^2 \mathbf{B} - \frac{1}{c^2} \frac{\partial^2 \mathbf{B}}{\partial t^2} = 0 \ .
$$
We've thus managed to the four coupled first-order PDEs of free space to two uncoupled second-order PDEs of identical form,
$$
\boxed{
\begin{align*}
\nabla^2 \mathbf{E} - \frac{1}{c^2} \frac{\partial^2 \mathbf{E}}{\partial t^2} = 0 \\
\nabla^2 \mathbf{B} - \frac{1}{c^2} \frac{\partial^2 \mathbf{B}}{\partial t^2} = 0
\end{align*}
} \ .
$$
Note that we haven't completely been able to completely decouple $\mathbf{E}$ and $\mathbf{B}$ from each other. While these fields must both satisfy the wave equation in free space, they must *also* still satisfy the curl equations
$$
\nabla \times \mathbf{E} = -\frac{1}{c} \frac{\partial \mathbf{B}}{\partial t} \quad , \quad \nabla \times \mathbf{B} = \frac{1}{c} \frac{\partial \mathbf{E}}{\partial t} \ .
$$
The requirement that the fields also satisfy these constraints will imply something important about the *directional* relation between $\mathbf{E}$ and $\mathbf{B}$.






- Consider working a standing wave example, perhaps mentioning separation of variables somewhere.
- Talk about monochromatic EM waves and EM polarization.
- Talk about the radiation spectrum somewhere?


$$
\mathbf{E}(\mathbf{x},t) = \mathbf{E}_0 e^{i(\mathbf{k} \cdot \mathbf{x} - \omega t)}
$$

$$
\mathbf{B}(\mathbf{x},t) = \mathbf{B}_0 e^{i(\mathbf{k} \cdot \mathbf{x} - \omega t)}
$$

$$
\omega = c|\mathbf{k}|
$$

$$
\mathbf{E}_0 = E_0 \mathbf{n} = E_a \mathbf{e}_a + E_b \mathbf{e}_b + E_k \mathbf{e}_k
$$

$$
\mathbf{B}_0 = \mathbf{k} \times \mathbf{E}_0 = B_0 (\mathbf{e}_k \times \mathbf{n}) = kE_0 (\mathbf{e}_k \times \mathbf{n})
$$

$$
\phi(\mathbf{k}) = A(\mathbf{k}) e^{i(\mathbf{k} \cdot \mathbf{x} - \omega t)} + B(\mathbf{k}) e^{i(\mathbf{k} \cdot \mathbf{x} + \omega t)}
$$

$$
\phi(\mathbf{x},t) = \int \frac{d^3\mathbf{k}}{(2\pi)^3} [A(\mathbf{k}) e^{i(\mathbf{k} \cdot \mathbf{x} - \omega t)} + B(\mathbf{k}) e^{i(\mathbf{k} \cdot \mathbf{x} + \omega t)}]
$$

>“The velocity of transverse undulations in our hypothetical medium, calculated from the electro-magnetic experiments of MM. Kohlrausch and Weber, agrees so exactly with the velocity of light calculated from the optical experiments of M. Fizeau, that we can scarcely avoid the inference that light consists in the transverse undulations of the same medium which is the cause of electric and magnetic phenomena” - J.C. Maxwell

