# Circuits and Electromotive Force

Thus far, we've only discussed the theory electrostatics and magnetostatics. In these settings, we concerned ourselves only with time-independent electric or magnetic fields produced by time-independent charge or current distributions. We will now start moving in the direction of *electrodynamics* by introducing time-dependence into the theory. Instead of speaking of just electric fields or magnetic fields, we will now speak of both together as *electromagnetic fields*, or *EM fields*.

In this chapter, we will take our first steps in this direction by introducing electromotive force and from that Faraday's law, which describes how a time-varying magnetic field can induce an electric field even in the absence of charges. We will also provide a basic introduction to electric circuits by introducing Ohm's law and the basics of circuit theory. Indeed, the topics presented in this chapter will introduce what are no doubt the practically useful aspects of electromagnetism.





## Ohm's Law

When a material is brought into contact with external electromagnetic fields, these fields will cause any unbound electrons inside the material to move in response to the fields, creating an induced current inside the material. If a material is placed in the vicinity of an external E-field $\mathbf{E}$ and an external B-field $\mathbf{B}$, there will be an induced current density $\mathbf{J} = \mathbf{J}(\mathbf{E},\mathbf{B})$ that's some function of these fields. Assuming the material is in electrostatic equilibrium before these fields are turned on, we can Taylor expand $\mathbf{J}$ to get a power series in $\mathbf{E}$. The $j$<sup>th</sup> component of the current density can then be written
$$
J_i = \sigma_{ij}(\mathbf{B}) E_i + \frac{1}{2}\sigma_{ijk}(\mathbf{B}) E_j E_k + \cdots \ ,
$$
where the coefficients are some function of $\mathbf{B}$. If the applied E-field is sufficiently weak we can truncate to leading order to get
$$
J_i \approx \sigma_{ij}(\mathbf{B}) E_i \ .
$$
The coefficients $\sigma_{ij}(\mathbf{B})$ together form a $3 \times 3$ matrix, called the *conductivity matrix*. In general this matrix can be arbitrarily complicated. In the special case that the material is macroscopically *isotropic*, or uniform, and if $\mathbf{B} = \mathbf{0}$, this matrix becomes diagonal with $\sigma_{ij} = \sigma \delta_{ij}$, where $\sigma$ is some scalar constant. When this is true we get one version of *Ohm's Law*,
$$
\boxed{
\mathbf{J} = \sigma \mathbf{E}
} \ .
$$
The scalar $\sigma$ is an empirical constant that depends on the material. It's known as the electrical *conductivity*. As the name suggests, it's a measure of how much a given material is able to conduct current in response to an external E-field. It's precisely materials with a very high conductivity that we call conductors, since in a good conductor we expect that the smallest applied E-field would create the highest induced current. Materials with low conductivity are similarly called insulators, since in a good insulator we expect that a large applied E-field is needed to produce even the slightest amount of induced current. A perfect conductor would have an infinite, meaning *any* non-zero E-field would produce an infinitely high induced current, while a perfect insulator would have a zero conductivity, meaning no amount of E-field would produce an induced current.

In applied settings, one commonly defines $\rho \equiv 1/\sigma$, which is called the electrical *resistivity* of the material. In this case Ohm's law takes the form $\rho \mathbf{J} = \mathbf{E}$. Be careful not to confuse $\rho$ in this case with the charge density, as unfortunately the same notation is commonly used for both. Materials with low resistivity make good conductors, while those with high resistivity make good insulators. A perfect conductor would have a zero resistivity, while a perfect insulator has an infinite resistivity.

In Gaussian units, dimensional analysis requires that conductivity have dimensions of inverse time. This means that resistivity must have dimensions of time, or units of seconds in Gaussian units. In SI units, resistivity is typically given in units of Ohm-meters, or $\Omega \cdot \text{m}$, with $1 \ \Omega \cdot \text{m} \approx 10^{-10} \ \text{s}$. One Ohm is defined to be one volt per amp, and is a measure of electrical *resistance*, a related quantity we'll come back to below.

Most tables of materials list a material's resistivity rather than its conductivity, which is just the reciprocal of resistivity. Real life materials of course are neither perfect insulators nor perfect conductors, but many materials can be approximated as such. For example, good conductors like copper, gold, silver, and aluminum have resistivities of $\rho \sim 10^{-8} \ \Omega \cdot \text{m}$ or $\rho \sim 10^{-18} \ \text{s}$. Meanwhile, good insulators like quartz, glass, or wood have resistivities in the range $\rho \sim 10^{8} - 10^{16} \ \Omega \cdot \text{m}$ or $\rho \sim 10^{-2} - 10^{6} \ \text{s}$.

Notice from Ohm's law that as long as we have a steady current there can be no charge buildup anywhere inside the material. Indeed, since $\nabla \cdot \mathbf{J} = 0$ for steady currents and $\nabla \cdot \mathbf{E} = 4\pi\rho$, by Ohm's law we must have
$$
\rho = \frac{1}{4\pi} \nabla \cdot \mathbf{E} = \frac{1}{4\pi\sigma} \nabla \cdot \mathbf{J} = 0 \ .
$$
This means inside an Ohmic material with steady current we can assume $\rho = 0$ inside the material. This then means that the inside of the material satisfies Laplace's equation $\nabla^2 \phi = 0$, which means all the tools we derived before can be used to find the potential and E-field inside the material. On the surface, however, things are much more complicated since any excess free charge must accumulate on the surface of the material.

### V = IR

Of course, the version of Ohm's law given above isn't the one most of us are probably familiar with. We're used to seeing Ohm's law in terms of voltage and current, not E-field and current density. To see how we get the more familiar version of Ohm's law, suppose we have a piece of cylindrically symmetric conducting material with some cross-sectional area $A$ and length $L$. We now take this material and hook both ends up to voltage terminals held at fixed potentials $\phi_\pm$.

Since no charges can accumulate inside the conductor, the potential inside the conductor must satisfy Laplace's equation $\nabla^2 \phi = 0$. This means we can formulate the problem as a boundary value problem as we did in electrostatics. Supposing the cylinder lies along the $z$-axis with one end located at the origin, we have
$$
\begin{cases}
\nabla^2 \phi = 0 \ , \\
\phi(\varrho,\varphi,0) = \phi_+ \ , \\
\phi(\varrho,\varphi,L) = \phi_- \ .
\end{cases}
$$
We will also assume that $\phi(\mathbf{x}) = 0$ outside the conductor. This can be done, for instance, by wrapping the sides of the conducting cylinder in a good insulating material like rubber. Solving this BVP is a trivial matter. By the uniqueness theorem, if we can guess a correct solution satisfying the boundary conditions, it must be *the* unique solution. An obvious guess inside the conductor is
$$
\phi(\mathbf{x}) = \frac{\phi_+ - \phi_-}{L} z + \phi_- \ .
$$
This choice of potential turns out to satisfy both boundary conditions, and hence must be the unique solution. Now, this potential will give rise to an induced electric field inside the conductor of the form
$$
\mathbf{E}(\mathbf{x}) = -\nabla \phi(\mathbf{x}) = -\frac{\phi_+ - \phi_-}{L} \mathbf{e}_z = -\frac{V}{L} \mathbf{e}_z \ .
$$
Evidently then, the induced E-field inside the conductor will be uniform along the axis of the cylinder, and be proportional to the potential difference $V \equiv \phi_+ - \phi_-$ across the two terminals. The field strength is thus constant inside the conductor, with
$$
|\mathbf{E}| = \frac{V}{L} \ .
$$
Now, the presence of this induced E-field will cause the free charges inside the conductor to move, creating a current density $\mathbf{J}$ inside the conductor that at least approximately satisfies Ohm's law,
$$
\mathbf{J} = \sigma \mathbf{E} \ .
$$
Since the E-field is uniform, the current density will clearly be uniform as well. This means the current $I$ flowing through each cross-sectional area $A$ inside the cylinder will be also be uniform, with
$$
I = \int \mathbf{J} \cdot d\mathbf{a} = |\mathbf{J}| A \ .
$$
If we now substitute these formulas into Ohm's law and solve for $V$, we get
$$
V = \frac{L}{\sigma A} I \ .
$$
That is, the voltage across the material is proportional to the current flowing through the material. The proportionality constant is called the electrical *resistance* of the material, usually denoted $R$, with
$$
R \equiv \frac{L}{\sigma A} \ .
$$
We've thus derived the more familiar form of Ohm's law,
$$
\boxed{
V = IR
} \ .
$$
Though minor, it is worth pointing out that while this equation seems to suggest it's really the flowing current that causes the voltage across the material, it's really the opposite. It's the voltage that causes the current. If we wanted to be pedantic about it, we should really write $I = V/R$ instead. But nobody does this, so we won't either. Just keep this in mind.

Notice the resistance $R$ depends on both the material's conductivity as well as its geometric properties (that is, its length and cross-sectional area). The more conductive the material, the lower its resistance. The longer the length of the material or the lower its cross sectional area, the higher its resistance.

In Gaussian units, resistance has dimensions of time over distance, or units of $\text{s}/\text{cm}$. In SI units, resistance has units of volts per amp, which is commonly called an *Ohm*, denoted $\Omega$, with $1 \ \Omega \approx 10^{-12} \ \text{s}/\text{cm}$. As an example, a copper wire with a length of $1 \ \text{m}$ and a cross-sectional area of $1 \ \text{mm}$ would have a resistance of $R \approx 10^{-2} \ \Omega \approx 10^{-14} \ \text{s}/\text{cm}$. In contrast, an insulating glass tube with the same length and cross-sectional area would have a much higher resistance of $R \approx 10^{14} \ \Omega \approx 100 \ \text{s}/\text{cm}$.

It's worth briefly saying a few words about what would happen outside the conductor. The free charges inside will always arrange themselves so that the E-field inside the conductor is uniform to satisfy Laplace's equation, but we can still have free charges that accumulate on the surface of the cylinder, creating a surface charge density. Calculating this surface charge density can be done, but it's quite difficult to do. At any rate, the presence of surface charges will produce an E-field outside the conductor that falls off approximately like $1/r$. This can all be mitigated, for instance, by coating the wires in insulating material like rubber.

### Drude Model

Ohm's law is a phenomenological law, meaning it's a relation that happens to sometimes hold for many materials in ideal conditions. It's not a fundamental law of physics. It's thus fair to ask whether we can derive Ohm's law from more fundamental physics. To do this properly we will need to cover a little bit of solid state physics first. 

Strictly speaking, one should use quantum mechanics to truly understand the properties of solids, but it turns out we can get away with deriving Ohm's law from a purely classical theory of solids. This is known as the *Drude model* of a solid. The idea is to model a solid as an imperfect lattice of stationary atoms, or *defects*, along with a classical gas of free electrons that are allowed to flow freely throughout the solid. The free electrons are allowed to scatter with the defects and respond to an external field.

More formally, we make the following assumptions in Drude model:

1. The free electrons are allowed to scatter with defects according to a Poisson process. Suppose $\tau$ is the average time between collisions. It's an empirically measured constant that depends on the solid, known as the *mean free time*. We require that in any infinitesimal time interval $dt$, the probability of an electron scattering with a defect be a uniform value $dt/\tau$.
2. Once an electron scatters with a defect, we assume it immediately comes to rest with velocity $\mathbf{v} = \mathbf{0}$.
3. In between scattering events, the free electrons can only interact *classically* with an external applied force field $\mathbf{F}$. 
4. The electrons do not interact with each other at all.

Suppose an electron is moving through the solid with velocity $\mathbf{v}(t)$. We want to know what the velocity will be at an infinitesimally later time $t+dt$. But this velocity will depend on whether or not the electron scatters in the time interval $[t,t+dt]$. If the electron *does* scatter, by assumption (2) we must have $\mathbf{v}_{\text{scat}}(t+dt) = \mathbf{0}$.

By assumption (3), if the electron *does not* scatter in the time interval $[t,t+dt]$, its motion in this time interval will be given by Newton's second law. If $\mathbf{v}_{\text{no}}(t+dt)$ is the velocity when there is no scattering, we'd have
$$
m_e \frac{d}{dt} \mathbf{v}_{\text{no}}(t+dt) = \mathbf{F} \ .
$$
If we multiply both sides by $dt/m_e$ and write $d\mathbf{v}(t+dt) = \mathbf{v}(t+dt) - \mathbf{v}(t)$, we then get
$$
\mathbf{v}_{\text{no}}(t+dt) = \mathbf{v}(t) + \frac{\mathbf{F}}{m_e}dt \ .
$$
Now, what we'd like to know is the *expected*, or average, velocity $\langle\mathbf{v}\rangle$ of all the free electrons, not the velocity of any single electron. At time $t$ we assume $\mathbf{v}(t)$ is known, which means $\langle\mathbf{v}(t)\rangle = \mathbf{v}(t)$ exactly. At time $t+dt$ the expected velocity will be the weighted average of $\mathbf{v}_{\text{scat}}(t+dt)$ and $\mathbf{v}_{\text{no}}(t+dt)$, where the weights are the probability each possibility occurs,
$$
\langle \mathbf{v}(t+dt) \rangle = p_{\text{scat}} \mathbf{v}_{\text{scat}}(t+dt) + p_{\text{no}} \mathbf{v}_{\text{no}}(t+dt) \ .
$$
By assumption (1), we have $p_{\text{scat}} = dt/\tau$, ,which means $p_{\text{no}} = 1-dt/\tau$. We thus have
$$
\langle \mathbf{v}(t+dt) \rangle = \frac{dt}{\tau} \mathbf{0} + \bigg(1 - \frac{dt}{\tau}\bigg) \bigg[\mathbf{v}(t) + \frac{\mathbf{F}}{m_e} dt\bigg] \ .
$$
Assuming we know the velocity at time $t$, the expected velocity at time $t$ is just $\langle\mathbf{v}(t)\rangle = \mathbf{v}(t)$. If we now move $\mathbf{v}(t)$ to the left-hand side, drop any terms of order $dt^2$ on the right-hand side, and divide through by $dt$, we get
$$
\frac{\langle \mathbf{v}(t+dt) \rangle - \langle \mathbf{v}(t) \rangle}{dt} = \frac{\mathbf{F}}{m_e} - \frac{\langle\mathbf{v}(t)\rangle}{\tau} \ .
$$
Since $dt$ is infinitesimal, the left-hand side is just the time derivative $d\langle \mathbf{v} \rangle/dt$. We'll now drop the brackets from $\mathbf{v}$ since we won't need them anymore, in which case we can write
$$
\frac{d \mathbf{v}}{dt} = \frac{\mathbf{F}}{m_e} - \frac{\mathbf{v}}{\tau} \ .
$$
Now, in principle the applied force could be any force field. If the field is purely electromagnetic, the force is given by the Lorentz force law, in which case we'd have

$$
\frac{d \mathbf{v}}{dt} = -\frac{e}{m_e}\bigg[\mathbf{E} + \frac{\mathbf{v}}{c} \times \mathbf{B}\bigg] - \frac{\mathbf{v}}{\tau} \ .
$$
Note the minus sign on the charge, since electrons are negatively charged with $q=-e$. We now need to figure out what the current density is. If we suppose there are on average $n$ free electrons per unit volume inside the solid, then the electrons will have a uniform charge density $\rho = -en$, which means there will be a current density
$$
\mathbf{J} = \rho \mathbf{v} = -ne\mathbf{v} \ .
$$
Substituting this into the differential equation, we get
$$
\boxed{
\frac{d \mathbf{J}}{dt} = -\frac{ne^2}{m_e}\mathbf{E} + \frac{e}{m_ec} \mathbf{J} \times \mathbf{B} - \frac{\mathbf{J}}{\tau} 
} \ .
$$
This differential equation is known as the *generalized Ohm's law*. In principle it describes how the current density responds to the external electromagnetic fields at any point in time. On the right-hand side, we have a driving term plus a relaxation term $-\mathbf{J}/\tau$. 

In practice we don't really care about the transient behavior of the current, only its steady state behavior. One major reason for this is that the transient behavior dies off fast, on time scales of $\tau$. For pretty much all solids $\tau$ is very tiny. For example, many metals have relaxation times of order $\tau \sim 10^{-14} \ \text{s}$. This means a steady state current is reached almost instantly.

At steady state we can set $d\mathbf{J}/dt = \mathbf{0}$, which means the generalized Ohm's law reduces to
$$
\mathbf{0} = -\frac{ne^2}{m_e}\mathbf{E} + \frac{e}{m_ec} \mathbf{J} \times \mathbf{B} - \frac{\mathbf{J}}{\tau} \ .
$$
At this point it will be more convenient to solve for $\mathbf{E}$, in which case we get
$$
\mathbf{E} = \frac{m_e}{ne^2 \tau} \mathbf{J} + \frac{1}{nec} \mathbf{J} \times \mathbf{B} \ .
$$
Notice that this equation is linear in $\mathbf{J}$, which means the right-hand side must be some matrix multiple of $\mathbf{J}$. We'll call this matrix the *resistivity matrix* $\boldsymbol{\rho}$. It's not hard to show that the resistivity matrix can be written
$$
\boldsymbol{\rho} \equiv \begin{pmatrix}
m_e / ne^2 \tau & B_z / nec & -B_y / nec \\
-B_z / nec & m_e / ne^2 \tau & B_x / nec \\
B_y / nec & -B_x / nec & m_e / ne^2 \tau
\end{pmatrix} \ .
$$
This matrix will generally be invertible, in which case we can define a conductivity matrix $\boldsymbol{\sigma}$ as the matrix inverse of $\boldsymbol{\rho}$. We can then express the components of the current density in terms of the components of the E-field as
$$
J_i = \sigma_{ij} E_j \ .
$$
This is exactly what we wrote down at the beginning of the section. In the special case where $\mathbf{B} = \mathbf{0}$, the conductivity matrix becomes diagonal with $\sigma_{ij} = ne^2\tau/m_e \ \delta_{ij}$. Evidently, the conductivity $\sigma$ is given by
$$
\sigma = \frac{ne^2 \tau}{m_e} \ .
$$
Plugging this in, we finally arrive at Ohm's law, which is what we sought to derive,
$$
\mathbf{J} = \sigma \mathbf{E} \ .
$$
This derived expression for $\sigma$ hopefully makes sense. After all, the more free electrons there are, the higher $n$ will be, and thus the higher $\sigma$ will be. The longer the time between collisions, the faster the free electrons can move, which means $\sigma$ will be higher.

In this setting, one sometimes defines $\omega_p^2 \equiv 4\pi ne^2/m_e$, where $\omega_p$ is called the *plasma frequency*. The plasma frequency is a measure of the natural frequency of oscillations of electrons inside the electron gas. In terms of the plasma frequency, the conductivity is given by $\sigma = \tau\omega_p^2 / 4\pi$. Thus, the higher the plasma frequency, the higher the conductivity will be.

We can also use the Drude model to ask how to estimate how fast the free electrons are moving through the solid in response to the applied E-field. Since $\mathbf{J} = -ne\mathbf{v}$ and $\sigma = ne^2\tau / m_e$, the average velocity of these electrons at steady state will evidently be
$$
\mathbf{v} = -\frac{e\tau}{m_e} \mathbf{E} \ .
$$
Notice that, on average, the free electrons flow in the direction *opposite* the direction of the applied E-field, as we'd expect since electrons are negatively charged. Their average *speed* $v_d \equiv |\mathbf{v}|$ is known as the *drift velocity*, which is evidently
$$
v_d = \frac{e\tau}{m_e} |\mathbf{E}| \ .
$$
It's worth plugging in some numbers to get a feel for how fast this drift velocity is in a typical scenario. Supposing we apply an E-field of strength $|\mathbf{E}| = 1 \ \text{V}/\text{m}$ across a piece of copper with a mean free time of $\tau \approx 3 \cdot 10^{-14} \ \text{s}$, we'd have $v_d \approx 0.5 \ \text{cm}/\text{s}$. Thus, the free electrons are responding to the E-field very slowly. This is primarily due to all the collisions taking place as they move through the solid. These collisions cause the electrons to move through the material in a random walk, but with a slight drift in the direction of the E-field. The random walk velocities will average to zero, leaving only this tiny drift velocity to contribute to the average. Yet, this tiny drift velocity alone is entirely responsible for any induced currents measured in the material.

Since we derived the generalized Ohm's law assuming a B-field might also be present, it's worth briefly asking what happens in that case.  If $\mathbf{B} \neq \mathbf{0}$, the resistivity matrix won't be diagonal, and the off-diagonal terms will be a function of $\mathbf{B}$. This will cause the induced current to be deflected by the B-field away from its usual trajectory. For example, if the E-field is oriented in the $x$-direction, there will now be a component of current that moves along the $y$ and $z$ directions as well. This is known as the *Hall effect*. We can actually use the Hall effect to build a sensor to measure B-field strength. The idea is to use a material whose conductivity is known, apply a known voltage across the material (which gives $\mathbf{E}$), and use these to measure $\mathbf{B}$. These kinds of sensors are known as *Hall sensors*, and are commonly used nowadays to measure B-field strength.

### Ohmic Heating

- Rewrite this to emphasize the general energy dissipation before saying anything about Ohmic materials and heating.
- Consider moving Ohm's law to a later section and introducing energy dissipation in section with magnetic field energy.

The presence of the drag term $\mathbf{J}/\tau$ in the generalized Ohm's law above necessarily means that energy is being dissipated through the material as heat. After all, drag is not a conservative force, which means energy is not conserved unless heat also gets taken into account. Fundamentally the heat loss is due to the random collisions, which causes the free electrons to lose kinetic energy, which gets converted into thermal energy and causes the material to warm up. This is known as *Ohmic heating*.

In fact, Ohmic heating is just a special case of the more general phenomenon of electromagnetic energy dissipation. While Ohmic materials exhibit Ohmic heating, any EM field can dissipate energy. To see why this is the case, suppose a free charge $q$ is moving through the material at a velocity $\mathbf{v}$ in response to external electric or magnetic fields. The work $W$ done on this charge by the fields along the charge's path of motion $\mathcal{C}$ is given by
$$
W = \int_\mathcal{C} d\ell \ \mathbf{F} \cdot d\boldsymbol{\ell} = \int dt \ \mathbf{F} \cdot \mathbf{v} \ .
$$
The power $P$ dissipated by the charge in the presence of these fields is the time derivative of work, or
$$
P = \frac{dW}{dt} = \mathbf{F} \cdot \mathbf{v} \ .
$$
The force $\mathbf{F}$ is given by the generalized Lorentz force law. Plugging this in, we see the power dissipated by the charge is then
$$
P = q\bigg(\mathbf{E} + \frac{\mathbf{v}}{c} \times \mathbf{B}\bigg) \cdot \mathbf{v} = q\mathbf{E} \ .
$$
In a similar manner, the power dissipated by a charge distribution $\rho(\mathbf{x})$ in the presence of these fields is given by
$$
P = \int d^3\mathbf{x} \ \rho(\mathbf{x}) \mathbf{E}(\mathbf{x}) \cdot \mathbf{v}(\mathbf{x}) \ .
$$
Since the current density is $\mathbf{J} = \rho \mathbf{v}$, this can also be written
$$
\boxed{
P = \int d^3\mathbf{x} \ \mathbf{J}(\mathbf{x}) \cdot \mathbf{E}(\mathbf{x}) 
} \ .
$$
Thus, the total power dissipated by a charge distribution in the presence of an EM field is proportional to $\mathbf{J} \cdot \mathbf{E}$. When $\mathbf{J} \cdot \mathbf{E}$ is positive, $P$ is positive, which means the charges *dissipate* energy into the fields. When $\mathbf{J} \cdot \mathbf{E}$ is negative, $P$ is negative, which means the charges *absorb* energy from the fields.

What we've derived so far is a completely general fact about electromagnetic energy. Let's now specialize the discussion specifically to Ohmic materials experiencing a current given by Ohm's law $\mathbf{J} = \sigma \mathbf{E}$. Plugging this in, we have
$$
P = \sigma \int d^3\mathbf{x} \ |\mathbf{E}(\mathbf{x})|^2 = \frac{1}{\sigma} \int d^3\mathbf{x} \ |\mathbf{J}(\mathbf{x})|^2 \ .
$$
Notice this integral will always be positive. This means an Ohmic material will always dissipate energy into the fields, never absorb energy from the fields. So where does this energy go? In fact it gets dissipated into the material in the form of heat. This is why we call it Ohmic heating. Ohmic materials will always heat up when a current is run through them.

In the special case where a cylindrical Ohmic material with cross-sectional area $A$ and length $L$ is hooked up to terminals creating a voltage $V$ across the length of the material, we end up with the more familiar expressions, known as the *Joule heating law*,
$$
P = IV = \frac{V^2}{R} = I^2R \ .
$$
Of course, we still haven't answered an important question: If energy is being dissipated as heat, how is it we're able to maintain a steady current inside the material? The only way this can happen is if energy is being pumped into the system from somewhere. This added energy is known as electromotive force, which we'll discuss in detail in the next section.

## Electromotive Force

In the previous section, we showed that the energy flowing through a material gets dissipated as heat. This raises an interesting question though. How is it we're able to maintain a steady current through a material if energy is being dissipated? After all, wouldn't the free charges eventually come to rest, resulting in zero current? 

We can see what the source of any steady current must be by looking at the generalized Ohm's law we derived before. Provided there are no B-fields present inside an Ohmic material, we have
$$
\frac{d \mathbf{J}}{dt} = -\frac{ne^2}{m_e}\mathbf{E} - \frac{\mathbf{J}}{\tau} \ .
$$
From this equation, we can see that the drag term $-\mathbf{J}/\tau$ causes the current to settle into a steady state fairly quickly. If there is no applied E-field, the current would indeed quickly decay to zero as we'd expect. What's keeping the current from vanishing even at steady state is the driving force of this E-field. This driving force is called an *electromotive force* or *EMF*.

### Definition

Suppose we have a closed loop of some kind hooked up to some power source capable of inducing a potential difference between two points $\mathbf{a}$ and $\mathbf{b}$ on the loop, called the *negative terminal* and *positive terminal* respectively. If $q$ is some free charge moving across the circuit, the work per unit charge to move the free charge all the way around the circuit is
$$
\mathcal{E} \equiv \frac{1}{q} \oint \mathbf{F} \cdot d\boldsymbol{\ell} \ .
$$
We call this work done the *electromotive force* or *EMF*. We now want to relate the EMF to the potential difference across the terminals of the power source. To that end, let's analyze the force on the charge as it moves from terminal $\mathbf{a}$ to terminal $\mathbf{b}$.

FIGURE (show power source hooked up to a circuit, with the forces and currents shown)

For the free charge to be moving at all, there must be some induced E-field $\mathbf{E}$ inside the circuit. This field will act on a moving charge at any point in the circuit with a force $q\mathbf{E}$. When the free charge is between the terminals, there will also be another source force $\mathbf{F}_s$ acting on the charge due the power source itself. Inside the power source, the total force is then the sum
$$
\mathbf{F} = \mathbf{F}_s + q \mathbf{E} \ .
$$
Provided the E-field is electrostatic it will also be conservative, which means the closed loop integral of $q\mathbf{E}$ vanishes, leaving only the source force $\mathbf{F}_s$ to contribute anything to the EMF. Since $\mathbf{F}_s$ only acts between $\mathbf{a}$ and $\mathbf{b}$, we have
$$
\mathcal{E} = \frac{1}{q} \int_\mathbf{a}^\mathbf{b} \mathbf{F}_s \cdot d\boldsymbol{\ell} \ .
$$
That is, the EMF can be thought of as the work done by the power source on free charges moving across the power source. It's perhaps for this reason that EMF is given its name. It's the "force" that causes free charges to move through a circuit. Despite the name though, one should not think of EMF as a force in the usual sense. Clearly EMF is a scalar that has dimensions of potential, not a vector that has dimensions of force.

It's more useful to express the EMF in terms of the induced E-field rather than the source force. To do that we'll make a useful assumption that's often approximately true but not exactly true. We'll assume the power source is *ideal*, meaning it has infinite conductivity. We can easily correct for this assumption later. If the power source is ideal, then between the points $\mathbf{a}$ and $\mathbf{b}$ the total force on a moving free charge must be zero, which means $\mathbf{F}_s = -q\mathbf{E}$. We thus have
$$
\boxed{
\mathcal{E} = -\int_\mathbf{a}^\mathbf{b} \mathbf{E} \cdot d\boldsymbol{\ell} 
} \ .
$$
That is, the EMF produced by the power source is just the potential difference or voltage produced by the power source. We can thus think of EMF as the *cause* of current flow through a circuit. The EMF comes solely from the power source and nothing else. In fact this is the whole purpose of a power source, to create an EMF, which itself creates an induced E-field across the circuit, which by Ohm's law then creates a current through the circuit.

- Continue on with Griffiths here.
- Maybe talk in some brief depth about the different types of power supplies
- Don't forget to correct for the realistic case where the power source has resistance: $V = \mathcal{E} - Ir$





Notice in defining the EMF we've said nothing about the internals of the power source itself. The source of the EMF could be essentially anything that creates an E-field. If this source is a battery, the EMF is caused by chemical reactions taking place inside the battery. If the source is  a Van de Graaf machine, the EMF is caused by a belt sweeping up free charges and placing them on the circuit directly. If the source is a generator, the EMF is caused by a wire moving through a magnetic field. This last source is the one we'll focus on now. When the source is a generator, we say that the EMF is a *motional EMF*.

### Motional EMF

- Move a wire through a uniform B-field. Force will be a Lorentz force. Show how Faraday's law falls out.

- Redo above section, trying to avoid focusing so much on a fixed circuit with two distinct terminals.
- EMF == The total voltage across the circuit *excluding* the power source
- Consider briefly mentioning Kirkhoff's rules and maybe doing a couple examples under Ohm's law section (series, parallel?)
  - $\sum V_i = 0$ (follows from a conservative E-field)
  - $I_{in} = I_{out}$ through any node (follows from charge conservation)
  - Series: $R = R_1 + \cdots + R_n$
  - Parallel: $1/R = 1/R_1 + \cdots + 1/R_n$
  - RC Circuit: $V = IR + Q/C$ or $V/R = \dot Q + Q/RC$

## Faraday's Law

In the early 19th century, Faraday studied the behavior of current flowing through an electric circuit. In doing so he accidentally stumbled on one of the most important facts of electromagnetism, that electric and magnetic fields are related. Specifically, Faraday observed that he could measure a brief transient current flowing through a circuit under the following conditions:

- If the steady current in a second nearby circuit is turned on or off.
- If the second circuit is moved relative to the first circuit while a steady current is flowing through it.
- If a bar magnet is thrust into or out of the first circuit.

- If none of these things is taking place, no current is measured to flow through the first circuit.

Faraday interpreted the transient current flow as being due to a changing magnetic flux through the first circuit, with the changing magnetic flux inducing an electric field around the circuit via an *electromotive force*. He called this phenomenon *electromagnetic induction*.

---

Nowadays we interpret Faraday's results mathematically as follows. Suppose a closed circuit is running along some closed loop $\mathcal{C}$ containing a bounded open surface $\mathcal{S}$ with unit normal $\mathbf{n}$. In the background we suppose there is some magnetic field $\mathbf{B}$. Then there will be a magnetic flux $\Phi_B$ through the circuit given by the integral
$$
\Phi_B = \int_\mathcal{S} da \ \mathbf{B} \cdot \mathbf{n} \ .
$$
Suppose an electric field $\mathbf{E}$ is present at each point along the circuit. Then we define the *electromotive force* or *EMF* $\mathcal{E}$ around the circuit as the closed loop integral
$$
\mathcal{E} \equiv \oint_\mathcal{C} \mathbf{E} \cdot d\boldsymbol{\ell} \ .
$$
Notice that despite its name, EMF is not a force. It doesn't even have dimensions of force, but instead dimensions of scalar potential or voltage. The EMF should be thought of as a *source voltage* created across the circuit due to some power source. For instance, if a circuit is hooked up to a battery, the EMF is the source voltage created by the battery itself. If the power source is some changing magnetic field as Faraday suggests, it's the changing magnetic field that creates the EMF.

Faraday's observations can now be expressed mathematically by saying the induced EMF around a circuit is proportional to the time derivative of the magnetic flux through the circuit,
$$
\mathcal{E} = -k \frac{d\Phi_B}{dt} \ .
$$
The proportionality constant $k$ depends only on the choice of units. It is not an empirical constant. From dimensional analysis, it's clear that if we want $\mathbf{E}$ and $\mathbf{B}$ to have the same units then $k$ must have units of inverse velocity. Since the speed of light $c$ is the only characteristic velocity available to us, we choose $k \equiv 1/c$, so that in Gaussian units we have
$$
\boxed{
\mathcal{E} = -\frac{1}{c} \frac{d\Phi_B}{dt}
} \ .
$$
This relation between EMF and magnetic flux is known as *Faraday's Law*.

- Consider first doing sections on Ohm's law and EMF first, similar to Griffiths
- Talk about the sign in Faraday's law, and use Lenz' law as a rule to find the directions
- Lenz' Law: nature abhors a change in (magnetic) flux
- Lenz's law also implies a Lorentz force opposing the motion
- Show how analogy between Ampere and Faraday laws can be used to find E-fields for various problems

## Inductance



## Energy in Magnetic Fields

- Mention quasistatics case, where we assume both E and B fields are time independent
- Mention (mutual) inductance, $\mathcal{E} = -L \dot I$ where $L$ is geometrical (units of Oersted)
- Use Faraday's law to derive energy stored in B-fields, $u = 1/2c \ \mathbf{J} \cdot \mathbf{A} = 1/2 \ \mathbf{B}^2$
- Show how electromagnetic induction (generator) works by an example where circuit is rotated in a constant B-field
- Mention eddy currents, induced currents created in a material passed through a magnetic field to oppose motion



$$
\mathcal{E} = - \frac{1}{c} \frac{\partial \Phi_B}{\partial t}
$$

$$
\nabla \times \mathbf{E} = -\frac{1}{c} \frac{\partial \mathbf{B}}{\partial t}
$$

$$
\mathcal{E} = \frac{L I}{c}
$$

## Circuits

In practice, when we create electrical devices we usually do so through the use of electrical *circuits*. It's thus a good idea to spend a little bit of time talking about the basics of circuit behavior before continuing on with the theory of electromagnetism. We'll discuss some of the more common components that make up a circuit, and illustrate some of their behaviors with a few standard examples. We'll also mention Kirkhoff's laws, which are commonly used to analyze circuits.

### Circuit Elements

An electrical *circuit* can be thought of as a set of electrical components with fixed properties that are connected together by conducting wires. The electrical components include things like power supplies, resistors, capacitors, inductors, gates, diodes, transistors, and so on. In this section we'll focus only on basic circuits with simple components just to get a basic understanding of the ideas involved. For a more in depth overview of circuit analysis, see the relevant course on that topic.

#### Wires

The most fundamental element of a circuit is conducting wire. Typically we assume the wire is a perfect conductor, which insures it has negligible resistance, though in practice a wire will have some small resistance. For example, a 1-millimeter thick copper wire that's one centimeter long has a resistance of around $R \approx 50 \ \mu\Omega \approx 5 \cdot 10^{-17} \ \text{s}/\text{cm}$. Compared to other circuit elements this resistance is usually quite negligible, which means we can safely treat the wire as a perfect conductor. This resistance is no longer negligible, however, for very long or very thick wires, like one might find in power lines.



![](../resources/image-20250124120825875.png)



#### Voltage Sources

The second electrical element is a *voltage source*. A voltage source is a type of power supply capable of producing a voltage or potential difference in a circuit. The power source can be anything, for instance a battery, an electric generator, or an electrical outlet attached to the wall. What matters is that the voltage source is somehow capable of producing a potential difference across the circuit, which then drives a current through the circuit according to Ohm's law or some other dynamics. The source of this potential difference is the *electromotive force* of the voltage source, something we'll discuss more in the next section.



![](../resources/Voltage-Sources-Schematic-Symbol.jpg)



#### Resistors

The third important element of a circuit is a *resistor*. A resistor is some type of Ohmic material capable of creating a specified fixed resistance, though one can have resistors with variable resistance as well. The primary purpose of a resistor is to regulate the amount of current flowing through part of the circuit. An ideal resistor with some fixed resistance $R$ will always satisfy Ohm's law $V = IR$, at least at typical temperatures and currents. The canonical example of a resistor we saw above. It's a cylinder with some cross-sectional area $A$, length $L$, and resistivity $\rho$. In that case $R$ is given by the formula
$$
R = \frac{\rho L}{A} \ .
$$
In practice, resistors are often made out of carbon-based materials like graphite.

![](../resources/1280px-Resistor_symbol_America.svg.png)



#### Capacitors

The fourth important circuit element is a *capacitor*. A capacitor is any device capable of storing charge when a potential difference is applied across it. The canonical example of a capacitor is the parallel plate capacitor
$$
C = \frac{A}{d}
$$



![](../resources/images.png)



#### Inductors



![](../resources/1200px-Inductor_symbol.svg.png)

$$
L = \frac{4\pi n^2 \ell A}{c^2}
$$

$$
V = -L \frac{dI}{dt}
$$

$$
\Phi = cLC
$$



### Common Circuits

- R, C, L, RC, RL, RLC



### Kirkhoff's Laws





