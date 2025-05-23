# Magnetostatics

Now that we've spent a considerable amount of time covering the topic of electrostatics and the basic concepts of electric fields, we will now move to the topic of magnetostatics and the concepts of magnetic fields. Magnetostatics can informally be thought of as the magnetic analogue of electrostatics. Whereas in electrostatics we were interested in the behavior of *electric fields* due to static *charges*, in magnetostatics we're interested in the behavior of *magnetic fields* due to static *currents*. We will approach the subject here by first defining the notion of electric current and current density, before proceeding to define the magnetic field through the empirical Biot-Savart law, as well as the empirical force law for magnetism, the Lorentz force law. We will then proceed to derive the field equations of magnetostatics and discuss their implications.

## Current

If this were all there was to magnetism we wouldn't have much more to say about the subject. However, it turns out that ferromagnets are not the only things that generate magnetic fields. It turns out electric currents also produce magnetic fields. Before discussing how this phenomenon arises though we first need to discuss the concept of electric current.

### Definition

Up until now we've always assumed that charges were *static*. Now we will allow them to move around. This movement of charge is called electric *current*. By convention, if a set of *positive* charges are moving in some direction, we say there's a *current* in that direction. Equivalently, if a set of *negative* charges are moving in some direction, we say there's a current in the opposite direction. Informally, the current through a point is defined as the rate of change of charge through that point, or
$$
I \equiv \frac{dq}{dt} \ .
$$
Current must have dimensions of charge per unit time in any system of units. In Gaussian units, current is measured in units of esu per second, which is also called a *statampere*. In SI units, current is measured in units of Coulombs per second, which is called an *Ampere*, often shortened to *amp*. The two units are related by $1 \ \text{statamp} \approx 10^{-12} \ \text{A}$.

Current was perhaps first understood in the context of conducting wires. When a potential difference is created across a wire, for example by hooking the wire up to a battery, the charges inside the wire experience an *electromotive force*, causing the charges to move in the direction of lowest potential, thus creating an electric current through the wire.

If a wire has a line charge density $\lambda$ and the charges inside the wire move with an average *drift velocity* $\mathbf{v}$, the current $I$ at any point in the wire is given by the product
$$
I = \lambda |\mathbf{v}| \ .
$$
If we like, we can assign a direction to the current through the wire by making it a vector,
$$
\mathbf{I} = \lambda \mathbf{v} \ .
$$
The current will always flow in the direction the positive charges are moving through the wire. Of course it's really the negatively charged electrons that move through the wire, in the opposite direction of the current. This means if the drift velocity is in the $\mathbf{v}$ direction, the electrons are really moving through the wire in the $-\mathbf{v}$ direction. This convention, that the current flows opposite to the flowing electrons, is unfortunate, but it agrees with the convention practically always used in the subject.

So far we've only defined the current through a conducting wire, but we can generalize the definition to arbitrary moving charge distributions as well. Suppose some charge distribution with charge density $\rho(\mathbf{x},t)$ is flowing through space with some flow velocity $\mathbf{v}(\mathbf{x},t)$. Intuitively, we can think of this moving distribution as a bunch of wires of current flowing through space each with its own velocity. We define the *current density* $\mathbf{J}(\mathbf{x},t)$ at each point in space by the product
$$
\mathbf{J} \equiv \rho \mathbf{v} \ .
$$
Evidently, the current density has dimensions of charge times velocity, or equivalently current per unit area. In Gaussian units, the current density thus carries units of $\text{statamp} / \text{cm}^2$. Unlike the charge density, the current density is a vector whose direction is the average direction of charge flow at any given point.

From the current density we can define a more general notion of current. Suppose some charge distribution is flowing through some surface $\mathcal{S}$ with some given current density $\mathbf{J}$. We define the *current* flowing through $\mathcal{S}$ to be the flux integral
$$
I \equiv \int_\mathcal{S} \mathbf{J} \cdot d\mathbf{a} \ .
$$
Notice that the current defined this way depends on the direction of the outward surface normal. If the direction of the outward normal is reversed, the current changes sign.

We can also define notions of current density for lower dimensional distributions analogously. Suppose a charge distribution with surface charge density $\sigma(\mathbf{x},t)$ is flowing across some 2-dimensional surface with some flow velocity $\mathbf{v}(\mathbf{x},t)$. Then we define the *surface current density* $\mathbf{K}(\mathbf{x},t)$ at each point along the surface by the project
$$
\mathbf{K} \equiv \sigma \mathbf{v} \ .
$$
As with the volume current density $\mathbf{J}$, the surface current density $\mathbf{K}$ is also a vector pointing in the direction of charge flow along the surface. The surface current density evidently carries dimensions of current per unit length.

From the surface current density we can define a notion of current flowing through some curve on a surface. If a surface $\mathcal{S}$ carries some current density $\mathbf{K}$ and $\mathcal{C}$ is some curve on the surface, we define the current passing through the curve by
$$
I \equiv \int_\mathcal{C} \mathbf{K} \cdot d\boldsymbol{\ell} \ .
$$
Finally, we'll consider the 1-dimensional case. In this case there is no meaningful notion of line current density, since the current would just be the flow of line current density through a point. That is, line current density is the same thing as current for charge flowing along a curve. The closest thing to a line current density would be the current vector defined above for a wire. If a charge distribution with line density $\lambda(\mathbf{x},t)$ is moving along some curve with flow velocity $\mathbf{v}(\mathbf{x},t)$, we define the current vector
$$
\mathbf{I} \equiv \lambda \mathbf{v} \ .
$$
From the current vector, we can easily see the current $I$ at any point along the curve is just $I = \lambda |\mathbf{v}|$, as we defined before.

FIGURE (show current densities)



### Conservation of Charge

The most fundamental law of classical electromagnetism is that charge is *conserved*. Charge can neither be created nor destroyed in a given system. The total charge must always remain constant. We can express this mathematically by saying if $Q_{\text{enc}}$ is the total charge inside some closed volume $\mathcal{V}$, the only way that $Q_{\text{enc}}$ can change with time is if it flows into or out of the volume with some current $I_{\text{out}}$. That is, if
$$
\frac{dQ_{\text{enc}}}{dt} = -I_{\text{out}} \ .
$$
The minus sign expresses the fact that a current flowing out of the closed surface decreases the amount of enclosed charge inside the enclosed region. This statement of conservation of charge is known as a *global* conservation law.

However, conservation of charge satisfies an even stronger condition. It must also be conserved *locally*. That is, for any infinitesimal volume we might choose, the above conservation law must still hold. We can express this idea using densities. If $\rho(\mathbf{x},t)$ is the charge density and $\mathbf{J}(\mathbf{x},t)$ is the current density inside a fixed volume $\mathcal{V}$, then by definition we have
$$
Q_{\text{enc}} = \int_\mathcal{V} d^3 \mathbf{x} \ \rho(\mathbf{x},t) \quad , \quad I_{\text{out}} = \oint_\mathcal{S} \mathbf{J}(\mathbf{x},t) \cdot d\mathbf{a} \ .
$$
The global conservation law above can then be expressed as
$$
\frac{d}{dt} \int_\mathcal{V} d^3 \mathbf{x} \ \rho(\mathbf{x},t) = - \oint_\mathcal{S} \mathbf{J}(\mathbf{x},t) \cdot d\mathbf{a} \ .
$$
Pulling the time derivative inside the integral on the left-hand side and using the divergence theorem on the right-hand side, we then have
$$
\int_\mathcal{V} d^3 \mathbf{x} \ \frac{\partial\rho(\mathbf{x},t)}{\partial t} = - \int_\mathcal{V} d^3 \mathbf{x} \ \nabla \cdot \mathbf{J}(\mathbf{x},t) \ .
$$
Since the volume $\mathcal{V}$ is arbitrary, the only way this relationship can hold for any volume is if the integrands equal, or equivalently
$$
\boxed{
\frac{\partial\rho}{\partial t} + \nabla \cdot \mathbf{J} = 0
} \ .
$$
This is known as the *continuity equation*. It expresses the fact that charge must be conserved locally, not just globally. As we'll see in future chapters, other important conserved quantities like energy and momentum will also have continuity equations that take different forms.

In this chapter we'll only be interested in *steady currents*. A steady current is one where $\mathbf{J} = \mathbf{J}(\mathbf{x})$ is time-independent. The study of the electromagnetism of steady currents is known as *magnetostatics*. Magnetostatics is the magnetic analogue of electrostatics, where we study the behavior of time-independent magnetic fields in the presence of time-independent currents.

Since $\mathbf{J} = \rho \mathbf{v}$, when the steady current condition holds it must immediately follow that both the charge density and the flow velocity are also time-independent, with $\rho = \rho(\mathbf{x})$ and $\mathbf{v} = \mathbf{v}(\mathbf{x})$. By the continuity equation, this then implies that the current density must be divergence-free, with
$$
\boxed{
\nabla \cdot \mathbf{J} = 0
} \ .
$$
Note that the time-independence of the charge density doesn't necessarily imply that charges must be stationary, as they were in electrostatics. Charges can freely move around, but they must do so in a way such that the charge *density* in a given region doesn't change. The only way this can be true is if any charges flowing out of a given region are being replaced by charges flowing back into the region at the same rate. Formally speaking, this can only be true for a continuum of charge. No finite collection of charge can satisfy the steady current condition.

To see why this is the case, consider the case of a point charge $q$ moving through space with some trajectory $\mathbf{x}_p(t)$. The charge density of this moving charge is then
$$
\rho(\mathbf{x},t) = q \delta\big(\mathbf{x} - \mathbf{x}_p(t)\big) \ .
$$
This means the density of a point charge is necessarily time-dependent, which also implies that any sum of finitely many moving charges will also be time-dependent. Thus, for the charge density to remain time-independent we need a continuum of charge. This means that in magnetostatics we must necessarily contend with a continuum of charge from the beginning. We can't build up the theory using point charges the way we did in electrostatics.

It's fair to ask if the steady current condition is a valid physical assumption given that a continuum of charge is required. We know that in nature charges always come in discrete sets. As long as there are large numbers of charges moving around, in many cases of interest this condition will at least approximately be true. The canonical example is current flowing through a wire. In reality there are only finitely many charge carriers moving through any segment of wire at a given time. However, on typical scales of observation these charges are so close together that for all practical purposes they constitute a continuum of steady current.

## Magnetic Fields

Magnetism as a qualitative subject is at least as old as electricity. In the days of Ancient Greece, Thales observed that rocks of iron ore, or lodestones, tended to attract small pieces of iron. He called this force *magnetism*, named after the ancient town of Magnesia, an area where lodestone was commonly found at the time. By the 11th century, the Chinese had discovered that iron needles could be used to create compasses for navigation, suggesting that the Earth itself had a magnetic force of its own. In the 16th century, Gilbert discovered was able to magnetic forces and electric forces must be distinctly different forces, though they appeared to be related to each other in a way that remained mysterious for a few hundred more years.

In the 19th century, it was discovered that electric current gives rise to magnetic fields. The first discovery in this direction was by Oersted, who noticed that if he placed a compass in the vicinity of a current carrying wire that the needle no longer pointed north. He noticed that as he moved the needle around the wire, it tended to point azimuthally to the wire, suggesting that somehow the current in the wire was altering the magnetic forces acting on the needle.

Around the same time, Ampere observed that when a current is run through two parallel wires that they tended to attract or repel each other in a similar way that two charges attract or repel each other according to Coulomb's law. He deduced an empirical relation to characterize this force, now known as Ampere's force law. Eventually, Biot and Savart were able to generalize Ampere's force law to characterize the relation between the magnetic field and the current flowing through a substance, from which they established the important Biot-Savart law.

### Ampere's Current Law

In a series of experiments, Ampere established that two parallel current carrying wires exert a force on each other. In particular, he observed that the when two parallel wires have a current running through each of them that they tend to attract or repel each other, and the force per unit length of wire is proportional to the product of their currents and inversely proportional to the distance between the wires. If the currents are aligned the wires repel, and if they're anti-aligned the wires attract. If no current is running through either wire, no force is measured at all.

More formally, suppose we have two parallel wires with constant currents $I_1$ and $I_2$ each of length $L$ separated by some distance $d \ll L$. Then the force strength $F$ per unit length $L$ between the wires is given by the *Ampere's Current Law*,
$$
\frac{F}{L} = 2k_m \frac{I_1 I_2}{d} \ .
$$
This mathematical relation fully encapsulates what Ampere observed. First, the force per unit length $F/L \sim 1/d$, meaning the force per unit length is inversely proportional to their distance. Second, if the two currents run in the same direction, $I_1 I_2$ will be *positive*, which means the wires will *repel*. Third, If they run in opposite directions, $I_1 I_2$ will be *negative*, which means they'll *attract*. Last, if $I_1 = 0$ or $I_2 = 0$, then $F = 0$, so the wires will feel no force between.

For comparison, let's compare Ampere's force law to its electrostatic equivalent, Coulomb's law. If two charges $q_1$ and $q_2$ are separated by a distance $d$, they attract or repel each other with a force strength
$$
F = k_e \frac{q_1 q_2}{d^2} \ .
$$
The Coulomb force is also directed along the line joining the two charges. Unlike Coulomb's law though, Ampere's force law states that the *force strength per unit length of wire* falls off like $1/d$, not like $1/d^2$.

The proportionality constant in Ampere's force law is traditionally written $2k_m$, and like $k_e$ is defined according to the choice of units. From dimensional analysis, $k_m$ must have dimensions of
$$
[k_m] = [F] \frac{[t]^2}{[q]^2} \ .
$$
Fixing the unit of charge thus fixes the units of $k_m$. In Gaussian units, charge has dimensions of $[q] = [F]^{1/2} [L]$, which means that $k_m$ must have units of inverse velocity squared to be dimensionally consistent. We thus define
$$
k_m \equiv \frac{1}{c^2} \ ,
$$
where $c$ is some constant that has units of velocity. This constant $c$ was later found to be the *speed of light*. The speed of light has been measured ever more precisely over the years since. Its value is now given *exactly* by
$$
c = 2.99792458 \cdot 10^{10} \ \frac{\text{cm}}{\text{s}} \ .
$$
It turns out the speed of light is one of the most fundamental constants in physics. That it's a constant is established by the laws of special relativity, which we'll get into in a later chapter. For now we just take this fact as a given to the theory. In future chapters we'll see why exactly it is that light is involved so intimately with electromagnetism.

In Gaussian units, Ampere's force law is thus written
$$
\frac{F}{L} = 2 \frac{I_1 I_2}{c^2d} \ .
$$
In SI units a different convention is chosen to define $k_m$. In this system, current *by definition* has units of Amperes, which is assumed to be a completely independent unit. This means $k_m$ will have dimensions of $[k_m] = [F]/[I]^2$, and hence units of $\text{N}/\text{A}^2$. By convention one defines a new constant $\mu_0$, known as the *permeability of free space*, given exactly by the value
$$
\mu_0 \equiv 2\pi k_m \equiv 4\pi \cdot 10^{-7} \ \frac{\text{N}}{\text{A}^2} \ .
$$
In SI units, Ampere's force law thus has the form
$$
\frac{F}{L} = \frac{\mu_0}{2\pi} \frac{I_1 I_2}{d} \ .
$$
To convert any formula in magnetostatics from Gaussian to SI units, one need only make the substitution $c \to \mu_0/4\pi$ to make the formulas consistent. Just be aware that the *dimensions* in the two units are different as well.

So which force exactly is giving rise to Ampere's current law? That is, what kind of field is causing the wires to attract or repel each other? One might initially suspect this force to be electrostatic. But this can't be true. If the force were electrostatic, we'd have
$$
\frac{F}{L} = \frac{\lambda_1 \lambda_2}{d} \ ,
$$
where $\lambda_1$ and $\lambda_2$ are the line charge densities in each wire. While this force still goes like $F \sim 1/d$, it does not go like $F \sim I_1 I_2$, since this also must imply that $F \sim v_1 v_2$, where $v_1$ and $v_2$ are the flow velocities of the charges in each wire. The product of flow velocities $v_1 v_2$ is why we see zero force when there are no currents running through each wire. Indeed, the wires also satisfy the steady current condition, which means $\lambda_1$ and $\lambda_2$ must be time-independent, hence even if $v_1 v_2 = 0$ we'd still have $F \neq 0$. That is, if the force were electrostatic, we'd see a force even if the charges were stationary, which is not what we observe. Thus, whatever causes the wires to attract or repel cannot be due to electrostatic forces. In fact, as we'll see in the next section, this force must be due to a *magnetic field*.

### Lorentz Force

Ampere's current law only gives the force between two parallel wires of current. We'd now like to analyze the behavior of this force in more detail and understand how it is that one wire exerts a force on another. This leads us to the Lorentz force law and its relationship to the magnetic field, which we'll define in this section.

FIGURE (show two current carrying wires)

To that end, let's suppose the two wires are oriented along the $z$-axis and separated by some distance $d$ along the $y$-axis, with the first wire passing through the origin. Ampere's current law then says the force on the second wire due to the first wire per unit length can be written
$$
\frac{d\mathbf{F}}{d\ell} = \frac{2I_1 I_2}{c^2 d} \mathbf{e}_y \ .
$$
For reasons that don't seem obvious at the moment, we'll write $\mathbf{e}_y = \mathbf{e}_z \times \mathbf{e}_x$ and multiply both sides by $d\ell$ to write
$$
d\mathbf{F} = \frac{2I_1 I_2}{c^2 d} (\mathbf{e}_z \times \mathbf{e}_x) = \frac{1}{c} (I_2 \mathbf{e}_z) \times \bigg(\frac{2I_1}{cd} \mathbf{e}_x\bigg) d\ell \ .
$$
Now, $\mathbf{I}_2 \equiv I_2 \mathbf{e}_z$ is just the current vector of the second wire, and $\mathbf{B}_1 \equiv 2I_1 / cd \ \mathbf{e}_x$ is some vector that depends only on the behavior of the first wire. Thus, the differential force on the second wire due to the first wire has the form
$$
d\mathbf{F} = \frac{\mathbf{I}_2}{c} \times \mathbf{B}_1 d\ell \ .
$$
More generally, we could ask what force the first wire running through the origin would exert on *any* parallel wire, not just a single second wire at a distance $d$ from it along the $y$-axis. We can do this by generalizing $\mathbf{B}_1$ to a vector field. Define
$$
\mathbf{B}(\mathbf{x}) \equiv \frac{2I_1}{c\varrho} \mathbf{e}_{\varphi} \ ,
$$
Then the force exerted by the first wire on *any* parallel wire with current $\mathbf{I}$ that intersects the $xy$-plane at $\mathbf{x} = \varrho \mathbf{e}_\varrho$ is given by
$$
d\mathbf{F} = \frac{\mathbf{I}}{c} \times \mathbf{B}(\mathbf{x}) d\ell \ .
$$
As one might already suspect, this field $\mathbf{B}(\mathbf{x})$ is what we call the *magnetic field*, or *B-field*. Effectively, we've just derived the B-field of a wire of current using Ampere's current law. Of course, the magnetic field is much more general than this. Any current source can create a magnetic field. We'll discuss this in more detail later.

It's tempting to ask how general the above force law is. For instance, suppose instead of a wire of constant current we instead had a single point charge $q$ moving through space with some velocity $\mathbf{v}$ in the presence of some *arbitrary* external B-field $\mathbf{B}(\mathbf{x})$. We can then write $\mathbf{I} d\ell = q d\mathbf{v}$, which means if we integrate both sides we end up with the formula
$$
\boxed{
\mathbf{F} = q \frac{\mathbf{v}}{c} \times \mathbf{B}
} \ .
$$
That is, the force on a point charge moving in some external B-field is proportional to the cross product $\mathbf{v} \times \mathbf{B}$. This is known as the *Lorentz force law*. Note there's absolutely nothing we've said so far that should give us any reason to expect this law to hold. We just took a simple guess. But it turns out the Lorentz force law is indeed correct and very general. This law was established empirically by Faraday and others, and later formalized by Lorentz. We thus take this law from here as a given empirical fact, and yet another component we must add to the theory on top of Coulomb's law.

The Lorentz force law also provides us a way to *define* what the magnetic field is. Recall this is how we defined the electric field back in electrostatics. We defined the E-field by the formula $\mathbf{F} = q\mathbf{E}$. Similarly, we'll define the B-field as whatever vector field $\mathbf{B}(\mathbf{x})$ can be inserted into the Lorentz force law such that $\mathbf{F} \propto q \mathbf{v} \times \mathbf{B}$. It's an experimental fact that there will always be such a field that satisfies this force law, so long as no other fields or forces are present to account for.

The factor $1/c$ is inserted in the Lorentz force law to make sure the law has the correct dimensions in Gaussian units. From this force law, we see the dimensions of the B-field in Gaussian units must be
$$
[B] = \frac{[c] [F]}{[I]} = [E] \ .
$$
That is, the electric and magnetic fields have the *same dimensions* in Gaussian units. While the E-field has units of $\text{statvolt}/\text{cm}$, by convention we call the unit of magnetic field the *Gauss*, with $1 \ \text{G} \equiv \text{statvolt}/\text{cm}$.

In SI units, the B-field has different dimensions. Instead of $[B] = [E]$ it turns out $[B] = [E]/[c]$. This means the B-field in SI units is effectively reduced by a factor of the speed of light. The SI unit for magnetic field is known as the *Tesla*, with $1 \ \text{T} = 10^4 \ \text{G}$.

To get an idea for scales, the Earth's magnetic field strength at the surface is about $0.5 \ \text{G}$. A typical refrigerator magnet has a field strength of $\sim 50 \ \text{G}$. An MRI machine might have a field strength of at least $\sim 30 \ \text{kG}$, or $\sim 3 \ \text{T}$. The strongest continuous magnet produced in a lab thus far has a field strength of $\sim 450 \ \text{kG}$, or $\sim 45 \ \text{T}$.

Since the Lorentz force law says that $\mathbf{F} \propto \mathbf{v} \times \mathbf{B}$, we can immediately conclude that the force caused by a B-field at a given point will always be perpendicular to *both* the particle's trajectory as well as the B-field line at that point. In particular, this means we must have that $\mathbf{F} \cdot \mathbf{v} = 0$ for magnetic forces. That is, the Lorentz force can only change the direction of a moving charge. It can ever speed a charge up or slow it down. That is, magnetic forces do no work, since work is proportional to $\mathbf{F} \cdot \mathbf{v}$, which is zero.

##### Example: Charged particle in a magnetic field

Suppose a particle with charge $q$ and mass $m$ is moving at some velocity $\mathbf{v}$ in the presence of some B-field $\mathbf{B}$, which we'll assume to be uniform for simplicity. Assuming no other forces are present, the only force on the charge will be the Lorentz force

$$
\mathbf{F} = q\frac{\mathbf{v}}{c} \times \mathbf{B} \ .
$$
Suppose the B-field is directed along the $z$-direction, so that $\mathbf{B} = B \mathbf{e}_z$. Then in Cartesian coordinates we have
$$
\mathbf{v} \times \mathbf{B} = B(\dot y \mathbf{e}_x - \dot x \mathbf{e}_y) \ .
$$
Now, by Newton's second law we must have $\mathbf{F} = m \mathbf{\ddot x}$, which means
$$
\ddot x \mathbf{e}_x + \ddot y \mathbf{e}_y + \ddot z \mathbf{e}_z = \frac{qB}{mc} (\dot y \mathbf{e}_x - \dot x \mathbf{e}_y) \ .
$$
Notice that the quantity $\omega \equiv qB/mc$ must have units of frequency. We call this constant the *cyclotron frequency*. As we'll see in a moment, it characterizes the particle's speed of motion.

Collecting together each component, we thus end up with the following three equations of motion for the charged particle,
$$
\ddot x = \omega \dot y \quad , \quad \ddot y = -\omega \dot x \quad , \quad \ddot z = 0 \ .
$$
The last equation $\ddot z = 0$ implies the particle will maintain its initial velocity in the $z$-direction. This is just a reflection of the fact that magnetic forces do no work. B-fields can only deflect a particle's trajectory. We can see this deflection happening in the first two equations, which are coupled to each other. 

We can decouple the first equation for $\ddot x$ by differentiating both sides again and substituting in the equation for $\ddot y$, and similarly for the second equation. We then end up with two decoupled equations of the form
$$
\ddot x + \omega^2 x = 0 \quad , \quad \ddot y + \omega^2 y = 0 \ .
$$
Clearly we now have two simple harmonic oscillators to solve, which is easy. The solutions to these equations can be written
$$
x(t) = \varrho \cos(\omega t - \delta) \quad , \quad y(t) = \varrho \sin(\omega t - \delta) \ .
$$
Note the amplitude $\varrho$ for $x(t)$ and $y(t)$ must be the same and their phases must differ by $\pi/2$. These follow from the fact that each trajectory must also satisfy the coupling conditions $\ddot x = \omega \dot y$ and $\ddot y = -\omega \dot x$.

Now, observe that these trajectories together imply that the motion in the $xy$-plane must lie on a circle of radius $\varrho$, since
$$
x^2 + y^2 = A^2 \cos^2(\omega t - \delta) + \varrho^2 \sin^2(\omega t - \delta) = \varrho^2 \ .
$$
Thus, if the charged particle has zero velocity in the $z$-direction, it will just orbit in a circle about the origin in the $xy$-plane with a radius $\varrho$ determined by the particle's initial radius from the origin. If the particle *does* have an initial velocity in the $z$-direction, it will maintain that velocity while still orbiting in a circle in the $xy$-plane, resulting in a helical motion.

FIGURE (charge in a uniform B-field, orbiting in a circle/helix)

For a general B-field that isn't necessarily uniform, a charged particle will move along the B-field lines in a helical motion, either towards or away from the field lines depending on the particle's initial tangential velocity.

Since the motion transverse to the B-field is circular, the orbital speed of the charged particle is
$$
v = \omega \varrho = \frac{qB}{mc} \varrho \ .
$$
This means a charged particle will orbit faster if the B-field is stronger, the charge to mass ratio $q/m$ is higher, or the radius $\varrho$ is larger. Since the kinetic energy of the particle is $mv^2/2$, this also means the same factors above increase the kinetic energy.

Commonly, this kind of orbit of a charged particle in an external B-field is known as *cyclotron motion*. A *cyclotron* is a device commonly used to accelerate charged particles. The idea is to use a B-field to keep the particle confined to a circular path, while applying a varying E-field perpendicular to the B-field, which forces the particle to accelerate outward in a spiral motion. This technique was used in the early days of nuclear physics to build particle accelerators, and is still used today in nuclear medicine.

---

More generally, if a charge is moving in the presence of *both* an E-field $\mathbf{E}(\mathbf{x})$ and a B-field $\mathbf{B}(\mathbf{x})$, we can obtain the total force on the moving charge simply by adding the two forces together. Since the electric force is $\mathbf{F} = q\mathbf{E}$, the combined force is evidently
$$
\boxed{
\mathbf{F} = q \bigg(\mathbf{E} + \frac{\mathbf{v}}{c} \times \mathbf{B}\bigg) 
} \ .
$$
This is the *generalized* Lorentz force law for a moving charge. Notice that the E-field can act to accelerate a moving charge while at the same time the B-field can change its direction. This combination of the two fields together is what produces cyclotron motion.

The generalized Lorentz force law can be extended to cover arbitrary charge and current distributions as well. Using the usual trick of expressing the charge density of a point charge as a delta function and converting the sum over charges to an integral, the generalized Lorentz force law for an arbitrary distribution of charge and current can be written
$$
\boxed{
\mathbf{F} = \int d^3\mathbf{x} \ \bigg[\rho(\mathbf{x}) \mathbf{E}(\mathbf{x}) + \frac{1}{c} \mathbf{J}(\mathbf{x}) \times \mathbf{B}(\mathbf{x}) \bigg] 
} \ .
$$
The integrand is evidently the force per unit volume or *force density*, which we'll usually denote by $\mathbf{f}$. In this more general formulation, we define both the electric and magnetic fields as whatever vector fields are needed to satisfy this force law for a given charge and current distribution, assuming no other forces are present.

Now, one could well argue that this isn't a satisfactory way to define these important fields. After all, shouldn't we think of the fields as being the *cause* of this force and not the other way around? In fact, it's more *natural* and correct to think of the electric and magnetic fields as a unified *electromagnetic field* encapsulated by a single object that transforms a certain way according to the rules of special relativity. This object, which turns out to be a rank-2 tensor, known as the *Faraday tensor*, should then be thought of as the *cause* of the Lorentz force. However, we can't discuss this until we cover special relativity and the field formulation of the principle of least action. We'll discuss those topics in much more detail in a future chapter.

### Biot-Savart Law

We'll now present the important Biot-Savart law, which is the analogue of Coulomb's law for magnetostatics. As we'll see, this law looks somewhat more cumbersome than Coulomb's law, partly due to the fact that we have to work from the outset with a continuous current distribution for the reasons we described before.

Suppose an infinitesimal length of wire $d\ell$ has some current $\mathbf{I}(\mathbf{x}')$ at a source point $\mathbf{x}'$. The *Biot-Savart Law* says that the magnetic field $d\mathbf{B}(\mathbf{x})$ at a field point $\mathbf{x}$ due to this current is proportional to the current, inversely proportional to the square of the distance between the source and field points, and points in a direction perpendicular to both the current and the separation vector $\mathbf{x} - \mathbf{x}'$ according to the right-hand rule. In Gaussian units, this says
$$
d\mathbf{B} = \frac{1}{c} \mathbf{I}(\mathbf{x}') \times \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} d\ell' \ .
$$
To find the full B-field due to the entire wire of current we need only integrate over the length of the wire to get
$$
\mathbf{B}(\mathbf{x}) = \frac{1}{c} \int_\mathcal{C} d\ell' \ \mathbf{I}(\mathbf{x}') \times \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \ .
$$
Of course, this is only true for a one-dimensional wire. What about an arbitrary current distribution? We can generalize the result to higher dimensions in the usual way. By replacing $\mathbf{I} d\ell'$ with $\mathbf{K} da'$ we get the Biot-Savart law for surfaces of current, 
$$
\mathbf{B}(\mathbf{x}) = \frac{1}{c} \int_\mathcal{S} da' \ \mathbf{K}(\mathbf{x}') \times \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \ .
$$
Most importantly, by replacing $\mathbf{I} d\ell'$ with $\mathbf{J} d^3\mathbf{x}'$ we get the Biot-Savart law for volumes of current,
$$
\boxed{
\mathbf{B}(\mathbf{x}) = \frac{1}{c} \int_\mathcal{V} d^3 \mathbf{x}' \ \mathbf{J}(\mathbf{x}') \times \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3}
} \ .
$$
It's worth comparing the Biot-Savart law above to the integral form of Coulomb's law in electrostatics. There, we had
$$
\mathbf{E}(\mathbf{x}) = \int_\mathcal{V} d^3 \mathbf{x}' \ \rho(\mathbf{x}') \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \ .
$$
Notice that the two laws look exactly the same, except with $\rho \to \mathbf{J}/c \times \bullet$. As we saw in electrostatics, calculating the E-field directly from the integral was already difficult except in simple cases. Having this extra cross product to deal with in magnetostatics makes it even more difficult to calculate the B-field directly from the integral. There are a few relatively simple cases where we can do so though, which we show in the examples below.

##### Example: Conducting loop of constant current

The canonical charge distribution in magnetostatics is the loop of constant current. Suppose a loop of radius $R$ carries a constant current $I$ in the counterclockwise direction. To achieve this, we'll suppose the loop is centered at the origin in the $xy$-plane. Our goal will be to use the Biot-Savart law to calculate the B-field $\mathbf{B}(z)$ along the $z$-axis.

FIGURE (loop of current)

With this setup, it's not hard to see that $\mathbf{x}' = R \mathbf{e}_\varrho$ and $\mathbf{x} = z \mathbf{e}_z$, which means
$$
\mathbf{x} - \mathbf{x}' = z \mathbf{e}_z - R \mathbf{e}_\varrho \ .
$$
Since the current is constant and flows counterclockwise along the loop, we have $\mathbf{I} = I \mathbf{e}_\varphi$. This means we have
$$
\mathbf{I} \times (\mathbf{x} - \mathbf{x}') = Iz (\mathbf{e}_\varphi \times \mathbf{e}_z) - IR (\mathbf{e}_\varphi \times \mathbf{e}_\varrho) = Iz \mathbf{e}_\varrho + IR \mathbf{e}_z \ .
$$
Now consider an infinitesimal element $d\ell' = R d\varphi'$ of the loop. By the Biot-Savart law, we have
$$
d\mathbf{B} = \frac{1}{c} d\ell' \ \mathbf{I} \times \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} = R d\varphi' \ \frac{I}{c} \bigg[ \frac{z}{(R^2 + z^2)^{3/2}} \mathbf{e}_\varrho + \frac{R}{(R^2 + z^2)^{3/2}} \mathbf{e}_z \bigg] \ .
$$
Integrating along the entire loop, we thus have
$$
\mathbf{B}(z) = \frac{IR}{c} \int_0^{2\pi} d\varphi' \ \bigg[ \frac{z}{(R^2 + z^2)^{3/2}} \mathbf{e}_\varrho + \frac{R}{(R^2 + z^2)^{3/2}} \mathbf{e}_z \bigg] \ .
$$
At this point we need to be a bit careful, since cylindrical basis vectors are functions of position. It's helpful to write $\mathbf{e}_\varphi$ in terms of the Cartesian vectors to avoid this issue,
$$
\mathbf{e}_\varphi = \cos\varphi' \mathbf{e}_x + \sin\varphi' \mathbf{e}_y \ .
$$
If we plug this into the first integral, we see it must vanish since the integrand is independent of $\varphi'$ and $\cos\phi'$ and $\sin\varphi'$ are each $2\pi$-periodic functions. The second integral is also independent of $\varphi'$. Since $\mathbf{e}_z$ is constant, we finally get
$$
\mathbf{B}(z) = \frac{2\pi IR^2}{c(R^2 + z^2)^{3/2}} \mathbf{e}_z \ .
$$
Thus, along the $z$-axis the B-field points only in the $z$-direction. This should make sense by symmetry. After all, the current along the loop is constant, which means any segment of field in the $\varrho$-direction must cancel with an opposite segment of field, leaving only the $z$-component to contribute anything.

Let's now check the far field limit $z \gg R$. In this limit, $(R^2 + z^2)^{-3/2} \approx 1/z^3$, and so
$$
\mathbf{B}(z) \approx \frac{2\pi IR^2}{cz^3} \mathbf{e}_z \ .
$$

Since the far field falls off like $1/r^3$, in this limit the B-field seems to behave like a dipole field.

---

In fact, the lowest non-vanishing moment of the B-field will *always* be at least a dipole field, as we'll see later. There will never be a monopole field contribution. Said equivalently, there is no such thing as a magnetic monopole, as far as we can tell based on all experiments done up to this day. More advanced theories predict that they could exist, but experiments have never found them. Until found, we're left to assume based on all experimental evidence that no magnetic monopoles exist in nature.

It's tempting to ask whether we can use the Biot-Savart law to calculate the B-field generated by a moving point charge. If we naively attempted to apply the Biot-Savart law to a point charge $q$ moving at constant velocity $\mathbf{v}$, we'd find that
$$
\mathbf{B}(\mathbf{x}) = q \frac{\mathbf{v}}{c} \times \frac{\mathbf{x} - \mathbf{v}t}{|\mathbf{x} - \mathbf{v}t|^3} \ .
$$
But this can't be true, since the Biot-Savart law already assumes a steady current, and point charges can't have a steady current. Thus, the only way to calculate the B-field of a moving point charge is to use electrodynamics, which we'll do in a later chapter.

##### Example: Infinite conducting wire of constant current

We already used Ampere's current law to deduce that the B-field for a long conducting wire is given by
$$
\mathbf{B}(\mathbf{x}) = \frac{2I}{c\varrho} \mathbf{e}_\varphi \ .
$$
We'll now derive this formula again directly from the Biot-Savart law. Suppose an infinitely long wire is oriented along the $z$-axis, and has a constant current $\mathbf{I} = I \mathbf{e}_z$ running through it. We'll find it natural to work in cylindrical coordinates. This means we'll write $\mathbf{x} = \varrho \mathbf{e}_\varrho + z \mathbf{e}_z$ and $\mathbf{x}' = z' \mathbf{e}_z$ so that the separation vector has the form
$$
\mathbf{x} - \mathbf{x}' = \varrho \mathbf{e}_\varrho + (z-z') \mathbf{e}_z \ .
$$
The cross product of the current vector with this separation vector is thus
$$
\mathbf{I} \times (\mathbf{x} - \mathbf{x}') = I\varrho (\mathbf{e}_z \times \mathbf{e}_\varrho) = I\varrho \mathbf{e}_\varphi \ .
$$
The line element along the wire is clearly just $d\ell' = dz'$, which means
$$
d\mathbf{B} = \frac{1}{c} d\ell' \ \mathbf{I} \times \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} = \frac{I\varrho}{c} \mathbf{e}_\varphi dz' \ \frac{1}{\big(\varrho^2 + (z-z')^2\big)^{3/2}}  \ .
$$
Notice we pulled $\varrho$ and $\mathbf{e}_\varphi$ out of the integral since neither depend on $z'$. We now need to integrate this along the length of the wire, which is infinite,
$$
\mathbf{B}(\mathbf{x}) = \frac{I\varrho}{c} \mathbf{e}_\varphi \int_{-\infty}^\infty \frac{dz'}{\big(\varrho^2 + (z-z')^2\big)^{3/2}} \ .
$$
Evaluating this integral can be done using elementary methods we've seen before in the course. In the end we simply get
$$
\mathbf{B}(\mathbf{x}) = \frac{2I}{c\varrho} \mathbf{e}_\varphi \ .
$$
As expected, the B-field of a long wire of constant current falls off like $1/\varrho$, just like the E-field of an infinite wire of constant charge density. However, unlike the E-field, the B-field is directed *azimuthally* around the wire.

## Field Equations

Just as it wasn't convenient or illuminating in electrostatics to use Coulomb's law to calculate and study electric fields, it's not convenient in magnetostatics to use the Biot-Savart law to calculate or study magnetic fields. We'll want to instead re-cast the Biot-Savart law as a set of field equations.

### Divergence of Magnetic Field

By the Biot-Savart law, the B-field created by a volume of steady current is given by
$$
\mathbf{B}(\mathbf{x}) = \frac{1}{c} \int d^3 \mathbf{x}' \ \mathbf{J}(\mathbf{x}') \times \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \ .
$$
Now, we know from electrostatics that the gradient with respect to $\mathbf{x}$ is given by
$$
\nabla \frac{1}{|\mathbf{x} - \mathbf{x}'|} = -\frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \ .
$$
Indeed, we used this fact to derive the scalar potential $\phi(\mathbf{x})$. We also know from vector calculus that any curl of a scalar field $f(\mathbf{x})$ times a vector $\mathbf{v}$ can be rewritten in the form
$$
\nabla \times \big(f(\mathbf{x})\mathbf{v}\big) = -\mathbf{v} \times \nabla f(\mathbf{x}) \ .
$$
If this isn't obvious, just write the left-hand side in index notation and do the algebra. Together, these imply that
$$
\mathbf{J}(\mathbf{x}') \times \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} = -\mathbf{J}(\mathbf{x}') \times \nabla \frac{1}{|\mathbf{x} - \mathbf{x}'|} = \nabla \times \frac{\mathbf{J}(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
Plugging this into the Biot-Savart law and pulling the curl operator outside the integral, we thus have
$$
\mathbf{B}(\mathbf{x}) = \nabla \times \frac{1}{c} \int d^3 \mathbf{x}' \ \frac{\mathbf{J}(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
The argument inside the curl is evidently some vector field $\mathbf{A}(\mathbf{x})$ given by the integral
$$
\mathbf{A}(\mathbf{x}) \equiv \frac{1}{c} \int d^3 \mathbf{x}' \ \frac{\mathbf{J}(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
We call this the *vector potential*. We'll study this in more detail in the next section. For now, we've established that we can write
$$
\mathbf{B} = \nabla \times \mathbf{A} \ .
$$
Since the divergence of a curl must vanish, the first field equation of magnetostatics immediately follows,
$$
\boxed{
\nabla \cdot \mathbf{B} = 0 
} \ .
$$
Given the similarity to Gauss's law for electricity, this field equation is sometimes called Gauss's law for magnetism.

### Curl of Magnetic Field

To derive the remaining field equation let's now look at the curl of the B-field. Recall from vector calculus that
$$
\nabla \times (\nabla \times \mathbf{A}) = \nabla (\nabla \cdot \mathbf{A}) - \nabla^2 \mathbf{A} \ .
$$
Clearly the left-hand side is just $\nabla \times \mathbf{B}$, what we seek to find. Let's now simplify the right-hand side, starting with the first term. Plugging in the integral for $\mathbf{A}(\mathbf{x})$ and moving the divergence inside the integral, we have
$$
\nabla (\nabla \cdot \mathbf{A}) = \nabla \int d^3 \mathbf{x}' \ \nabla \cdot \frac{\mathbf{J}(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
To simplify this expression, notice first that the integrand can using the vector calculus identity
$$
\nabla \cdot \frac{\mathbf{J}(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} = \mathbf{J}(\mathbf{x}') \cdot \nabla \frac{1}{|\mathbf{x} - \mathbf{x}'|}
$$
Next, we'll use a useful fact that we'll see a few times in the rest of this course. Namely, the gradient of $1/|\mathbf{x} - \mathbf{x}'|$ with respect to $\mathbf{x}$ is just minus its gradient with respect to $\mathbf{x}'$,
$$
\nabla \frac{1}{|\mathbf{x} - \mathbf{x}'|} = -\nabla' \frac{1}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
If we apply this trick to the above integral and then integrate by parts to move the derivatives from $1/|\mathbf{x} - \mathbf{x}'|$ to $\mathbf{J}'(\mathbf{x}')$, we get
$$
\int d^3 \mathbf{x}' \ \nabla \cdot \frac{\mathbf{J}(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} = -\int d^3 \mathbf{x}' \ \mathbf{J}(\mathbf{x}') \cdot \nabla' \frac{1}{|\mathbf{x} - \mathbf{x}'|} = \int d^3 \mathbf{x}' \ \frac{\nabla' \cdot \mathbf{J}(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
Of course, for this to be true we require that the surface term vanishes as $r' \to \infty$. This will be true so long as $\mathbf{J}(\mathbf{x}')$ goes to zero at infinity faster than $1/r'^2$, which will be the case at least for all localized current distributions.

Now, in magnetostatics we require that the steady current condition hold, which means we must have $\nabla' \cdot \mathbf{J}(\mathbf{x}') = 0$. This means the integrand must vanish for all $\mathbf{x}'$, which means the integral also must vanish, which means $\nabla \cdot \mathbf{A} = 0$, which means that $\nabla (\nabla \cdot \mathbf{A}) = 0$ as well.

We now need to simplify $\nabla^2 \mathbf{A}$. Plugging in the integral for $\mathbf{A}(\mathbf{x})$ and moving $\nabla^2$ inside the integral, we have
$$
\nabla^2 \mathbf{A} = \frac{1}{c} \int d^3 \mathbf{x}' \ \nabla^2 \frac{\mathbf{J}(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
Since $\nabla^2 \ 1/|\mathbf{x} - \mathbf{x}'| = -4\pi \delta(\mathbf{x} - \mathbf{x}')$ the integral is trivial, giving $\nabla^2 \mathbf{A} = -4\pi/c \ \mathbf{J}$.

Thus, in magnetostatics, the curl of the B-field is evidently proportional to the current density, with
$$
\boxed{
\nabla \times \mathbf{B} = \frac{4\pi}{c} \mathbf{J}
} \ .
$$
This result is known as *Ampere's Law* in differential form. We'll study it in more detail shortly.

Summarizing what we've found, we've established the following two field equations of magnetostatics,
$$
\nabla \cdot \mathbf{B} = 0 \quad , \quad \nabla \times \mathbf{B} = \frac{4\pi}{c} \mathbf{J} \ .
$$
So what do these tell us? Let's compare these with the field equations we found for electrostatics,
$$
\nabla \cdot \mathbf{E} = 4\pi \rho \quad , \quad \nabla \times \mathbf{E} = 0 \ .
$$
The electrostatic field equations can be interpreted as saying that the E-field is caused only by static charges, and the E-field is *conservative* and hence the gradient of a scalar potential. Similarly, the magnetostatic field equations can be interpreted as saying that the B-field is caused only by *electric currents*, and this B-field is *solenoidal* and hence the curl of some kind of vector field (called the vector potential, which we'll discuss later). 

Most importantly, there is no notion of *magnetic charge* that is the cause of the B-field. That is, as far as we know, these so-called *magnetic monopoles* do not exist. We've never seen one in a lab or in observations. There are some more advanced theories in quantum mechanics that suggest magnetic monopoles *could* in principle exist, but we've never seen evidence for them. Thus, classical electromagnetism is formulated under an assumption they don't exist, which must be our null hypothesis until we find one. Even if we ever find one we still know they must be extremely rare, so even then this classical theory still appears to be a good approximation of reality as we see it.

## Ampere's Law

In electrostatics, we were able to use the integral form of Gauss's law to easily find the electric field of several charge distributions with high degrees of symmetry. It turns out we can do something similar with Ampere's law, but to do that we first need to convert the differential form of Ampere's law into its integral form.

To do this, we'll choose some arbitrary surface $\mathcal{S}$ and integrate both sides of Ampere's law over this surface,
$$
\int_{\mathcal{S}} (\nabla \times \mathbf{B}) \cdot d\boldsymbol{\ell} = \frac{4\pi}{c} \int_{\mathcal{S}} \mathbf{J} \cdot d\mathbf{a} \ .
$$
Now, notice that the path integral on the right-hand side is just the total enclosed current $I_\text{enc}$ flowing through the closed loop,
$$
I_\text{enc} = \int_{\mathcal{S}} \mathbf{J} \cdot d\mathbf{a} \ .
$$
The integral on the left-hand side can be rewritten as a surface integral using Stokes' theorem. Suppose $\mathcal{C}$ is the closed loop that bounds the surface $\mathcal{S}$ chosen above. Then by Stokes' theorem we have
$$
\int_{\mathcal{S}} (\nabla \times \mathbf{B}) \cdot d\mathbf{a}  = \oint_{\mathcal{C}} \mathbf{B} \cdot d\boldsymbol{\ell} \ .
$$
Putting these together, we have the integral form of Ampere's law,
$$
\boxed{
\oint_{\mathcal{C}} \mathbf{B} \cdot d\boldsymbol{\ell} = \frac{4\pi}{c} I_\text{enc}
} \ .
$$
In words, the integral form of Ampere's law says that the total *circulation* of magnetic field through any closed loop is proportional to the enclosed current flowing through that loop.

The power of this form of Ampere's law lies in the fact that for a given current distribution, Ampere's law must be true for *any* closed loop $\mathcal{C}$ we choose. This means if we need to calculate the B-field of an enclosed current distribution then we can choose any closed loop we like to do so. We call any such choice of closed loop an *Amperian loop*. Indeed, this is very similar to Gauss's law, which says we're allowed to choose any closed surface, or *Gaussian surface*, we like to calculate the electric field of an enclosed charge distribution.

Suppose for a given current distribution we know that it has a certain type of symmetry that enables us to choose an Amperian loop such that the magnetic field strength along this loop is constant. If the field is constant along some section of the loop with length $L$, then we'd have
$$
\oint_{\mathcal{C}} \mathbf{B} \cdot d\boldsymbol{\ell} = |\mathbf{B}| \oint_{\mathcal{C}} d\ell = |\mathbf{B}| L \ .
$$
This means the magnetic field strength $|\mathbf{B}|$ along this loop is evidently just
$$
|\mathbf{B}| = \frac{4\pi}{c} \frac{I_\text{enc}}{L} \ .
$$
Of course, for this to work we need to easily be able to identify the symmetry of a given current distribution and find an Amperian loop that matches this symmetry. Just as with Gauss's law, there are only a handful of distributions in which this is really possible. Those are the infinite wire, the infinite sheet, and the solenoid. Let's look at each of these one by one.

##### Infinite conducting wire of current

Consider again the infinite conducting wire of uniform current $I$. We calculated the B-field of this wire before using the Biot-Savart law. Now we'll do the same using Ampere's law. We'll again suppose the wire is oriented along the $z$-axis.

FIGURE

From symmetry it's clear that the B-field of the wire should only be a function of the cylindrical radius $\varrho$, and the field should point in the $\varphi$-direction by the right-hand rule. We thus need only to find the field strength $B(\varrho)$, where
$$
\mathbf{B}(\mathbf{x}) = B(\varrho) \mathbf{e}_\varphi \ .
$$
Now, $B(\varrho)$ is clearly constant along any counterclockwise circular loop of radius $\varrho$ around the wire. We'll thus choose these circular loops as the Amperian loop. Inside such a loop the enclosed current is clearly just the current flowing through the wire, meaning $I_\text{enc} = I$. Since such a loop has a length $L = 2\pi \varrho$, we evidently have
$$
B(\varrho) = \frac{4\pi}{c} \frac{I_\text{enc}}{L} = \frac{4\pi}{c} \frac{I}{2\pi \varrho} \ .
$$
Thus, the B-field of the infinite wire of current is just
$$
\mathbf{B}(\mathbf{x}) = \frac{2I}{c\varrho} \mathbf{e}_\varphi \ ,
$$
which is the same result we found before using the Biot-Savart law directly. Just as we saw with the infinite wire of charge in electrostatics, the field doesn't fall off like $1/r^2$ due to the assumption that the wire is infinite. Unlike with electrostatics though, the B-field points azimuthally, while the E-field points radially.

##### Infinite conducting sheet of current

Consider now an infinite conducting sheet of uniform surface current density $K$. The B-field of this sheet can also be easily calculated using Ampere's law.

We'll suppose the sheet is oriented in the $xy$-plane, with the current flowing in the $x$-direction, so $\mathbf{K} = K \mathbf{e}_x$. From symmetry, it's clear that the magnetic field of the sheet can only be a function of $z$, and the field should point in the negative $y$-direction by the right-hand rule. We thus need only to find the field strength $B(z)$, where
$$
\mathbf{B}(\mathbf{x}) = -B(z) \mathbf{e}_y \ .
$$
It's also clear from symmetry that we must have $B(-z) = -B(z)$, meaning the field changes direction crossing the $z$-axis.

Now, $B(z)$ is clearly constant along any section of loop parallel to the $xy$-plane. We'll thus define an Amperian loop $\mathcal{C}$ as follows.

- $\mathcal{C}_1$: A directed line segment of length $L$ from $(0,-L/2,z)$ to $(0,L/2,z)$.
- $\mathcal{C}_2$: A directed line segment of length $2|z|$ from $(0,L/2,z)$ to $(0,L/2,-z)$.
- $\mathcal{C}_3$: A directed line segment of length $L$ from $(0,L/2,-z)$ to $(0,-L/2,-z)$.
- $\mathcal{C}_4$: A directed line segment of length $2|z|$ from $(0,-L/2,-z)$ to $(0,-L/2,z)$.

See the figure below for a visual of the loop along with the flow of current along the sheet.

FIGURE (show sheet of current with loop)

Then, the circulation integral over the entire loop $\mathcal{C}$ is just the circulation integral over each of the four segments,
$$
\int_\mathcal{C} \mathbf{B} \cdot d\boldsymbol{\ell} = \int_{\mathcal{C}_1} \mathbf{B} \cdot d\boldsymbol{\ell} + \int_{\mathcal{C}_2} \mathbf{B} \cdot d\boldsymbol{\ell} + \int_{\mathcal{C}_3} \mathbf{B} \cdot d\boldsymbol{\ell} + \int_{\mathcal{C}_4} \mathbf{B} \cdot d\boldsymbol{\ell} \ .
$$
Now, notice that the integrals over the vertical segments $\mathcal{C}_2$ and $\mathcal{C}_4$ must be equal and opposite since the field depends only on $z$ and not $x$ and $y$. This means only the horizontal segments contribute anything, giving $B(z) L$ over $\mathcal{C}_1$ and $B(-z) L$ over $\mathcal{C}_3$. Thus,
$$
\int_\mathcal{C} \mathbf{B} \cdot d\boldsymbol{\ell} = L B(z) + L B(-z) = 2L B(z) \ .
$$
The enclosed current through the loop is just the current flowing through the line segment joining $(0,-L/2,0)$ to $(0,L/2,0)$. Since this segment has length $L$ and the current density through it is a constant $K$, the enclosed current is just $I_\text{enc} = K L$. 

Putting these together, by Ampere's law we have
$$
B(z) = \frac{2\pi K}{c} \ ,
$$
which means the magnetic field of the infinite sheet of current is evidently
$$
\mathbf{B}(\mathbf{x}) = \begin{cases}
2\pi K/c \ \mathbf{e}_y & z > 0 \ , \\
-2\pi K/c \ \mathbf{e}_y & z < 0 \ .
\end{cases}
$$
Thus, the B-field strength is constant at any point above or below the sheet, just as the electric field of an infinite sheet of charge is constant. Since $B(-z) = -B(z)$, the field strength experiences a discontinuity when crossing the sheet. The B-field strength changes discontinuously by exactly $\Delta B = 4\pi K/c$. We saw this behavior in electrostatics as well, where the E-field through an infinite sheet of charge changes by a discontinuous amount $\Delta E = 4\pi \sigma$ when crossing the sheet.

##### Solenoid

The final current distribution we'll consider is the *solenoid*. A solenoid is a tightly wound coil of conducting wire through which a current is pumped, so tightly wound that the current always points azimuthally along the coil. Provided the coil is wound tightly enough, the B-field inside the coil will be constant and point cylindrically outward from the coil, while outside the wire the field will more or less vanish. To see why, suppose we have an infinitely long coil of wire oriented along the $z$-axis. We'll assume that each coil is a loop of radius $a$, and that there are exactly $n$ coils per unit length of wire. Through this coil we imagine some constant current $I$ is flowing azimuthally.

Now, if the current is moving azimuthally, there can be no azimuthal component to the field since the B-field is always perpendicular to the current. But there also can't be a radial direction to the field either. To see why, suppose we choose a B-field point inside the solenoid. Since reversing the direction of the current through the solenoid shouldn't alter the radial current of the field due to symmetry. This means the B- field of the solenoid must point in the $z$-direction. Moreover, the field strength cannot depend on $\varphi$ or $z$ since the solenoid is cylindrically symmetric. We thus must conclude that
$$
\mathbf{B}(\mathbf{x}) = B(\varrho) \mathbf{e}_z \ .
$$
Let's now look more closely at the $\varrho$-dependence of the field strength. To analyze this dependence we'll need to consider two cases, field points lying either inside or outside the radius of the solenoid.

FIGURE (solenoid with two loops, inner and outer rectangles)

To that end let's first suppose we have an Amperian loop lying completely outside the solenoid consisting of a rectangle of height $\ell$ oriented along the $z$-axis, as shown in the above figure. Since there is no enclosed current flowing through this loop, and since for each horizontal segment of loop we have $\mathbf{B} \cdot d\boldsymbol{\ell} = 0$, by Ampere's law we must have
$$
\int_\mathcal{C} \mathbf{B} \cdot d\boldsymbol{\ell} = B(a) \ell - B(b) \ell = 0 \ .
$$
This means $B(a) = B(b)$, which means the field strength also doesn't depend on $\varrho$, and hence must be constant. Now, outside of the solenoid we expect the field should go to zero at infinity as it would for any wire. But since the B-field is independent of $\varrho$, the only way this can be true is if $B = 0$ outside the solenoid, i.e. when $\varrho \geq a$.

By the same argument, the field also must be constant inside the solenoid, when $\varrho < a$, but it need not vanish. To find its value inside the solenoid,  we'll take the same Amperian loop defined above, but translate it inward so the inner vertical segment lies inside the solenoid. If we now look at the circulation integral again, we find that only the vertical segment inside the solenoid contributes anything to the circulation since the outer vertical segment must vanish, giving
$$
\int_\mathcal{C} \mathbf{B} \cdot d\boldsymbol{\ell} = B \ell \ .
$$
But now this new loop contains an enclosed current consisting of the product of the current $I$ with the number of coils $n \ell$ passing through the enclosed surface of the loop, $I_\text{enc} = n\ell I$. By Ampere's law, inside the wire we thus have
$$
B = \frac{4\pi}{c} n I \ .
$$
In summary then, the B-field of an infinitely long solenoid of radius $a$ is thus
$$
\mathbf{B}(\mathbf{x}) = 
\begin{cases}
4\pi n I/c \ \mathbf{e}_z & \varrho < a \ , \\
\mathbf{0} & \varrho \geq a \ .
\end{cases}
$$
Evidently, the solenoid is able to produce a uniform B-field inside the coils. In this sense, the solenoid is to magnetostatics what the parallel plate capacitor is to electrostatics, a simple device for producing a uniform field inside a closed volume. This makes the solenoid a very useful and practical means for generating magnetic fields in the lab and in many engineering devices.

As we saw with the infinite sheet of current, the B-field changes discontinuously when crossing outside the solenoid. In fact, since $K = nI$, the field strength also changes by exactly $\Delta B = 4\pi K/c$. This is due to the unstated assumption that the coils are infinitely thin, which means we can effectively think of a solenoid as a hollow cylinder with surface density $K = nI$.

## Vector Potential

In electrostatics, we saw that we could always write the E-field as the gradient of the scalar potential. Something similar exists in magnetostatics. We cannot write the B-field as the gradient of a scalar potential, but we can write it as the curl of a vector potential. Indeed, the need for a vector potential leads to the many differences between electricity and magnetism.

### Definition

In the previous section, we showed that we can express the B-field in terms of the curl of a *vector potential*,
$$
\boxed{
\mathbf{B} = \nabla \times \mathbf{A}
} \ ,
$$
where the vector potential $\mathbf{A}(\mathbf{x})$ is given by the integral
$$
\boxed{
\mathbf{A}(\mathbf{x}) = \frac{1}{c} \int d^3 \mathbf{x}' \ \frac{\mathbf{J}(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|}
} \ .
$$
Notice that this is a vector integral, meaning that there will be three component integrals to calculate. Also, notice that $\mathbf{A}$ will always point in the same direction as the current density $\mathbf{J}$, not in the direction of the field itself.

Let's compare this to the equivalent statement in electrostatics. In that setting, we found we could express the electric field as the *gradient* of a scalar potential,
$$
\mathbf{E} = -\nabla \phi \ ,
$$
where the scalar potential $\phi(\mathbf{x})$ could be expressed via the integral
$$
\phi(\mathbf{x}) = \int d^3 \mathbf{x}' \ \frac{\rho(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
Notice the similarities and differences between these two settings. In electrostatics, the *electric* field is the *gradient* of a *scalar* potential, while in magnetostatics the *magnetic* field is the *curl* of a *vector* potential. In a sense, the differences between the two are what gives rise to the differences in behavior we see between electric and magnetic fields. But on another hand the two expressions for the potentials look quite similar, except with $\rho$ replaced by $\mathbf{J}/c$. 

Since $\rho$ and $\mathbf{J}/c$ have the same dimensions, evidently the scalar potential and the vector potential must also have the same dimensions in Gaussian units, or units of statvolts. In practice though, we tend to express the units of vector potential in $\text{G} \cdot \text{cm}$, which is equivalent to statvolts. In SI units, the vector potential and scalar potential unfortunately have different dimensions. In those units, the scalar potential has units of volts, while the vector potential has units of $\text{T} \cdot \text{m}$.

### Gauge Transformations

In electrostatics, we saw that we could add any constant to the scalar potential and it wouldn't effect the E-field, which is the essential physical quantity of interest since the E-field is what gives rise to forces. A similar concept exists in magnetostatics, except it's more subtle. What physically matters is the B-field, since it's the B-field that gives rise to forces.

Suppose we have a vector potential $\mathbf{A}$ whose magnetic field is $\mathbf{B} = \nabla \times \mathbf{A}$. What operations can we do to $\mathbf{A}$ so that $\mathbf{B}$ itself doesn't change? Clearly we can add any constant vector to $\mathbf{A}$, but that's not all. Generally speaking we can add anything we like to $\mathbf{A}$ whose curl vanishes. The most general thing we can add would be the gradient of some scalar field. Suppose we transform $\mathbf{A}$ by adding to it the gradient of some scalar field $\chi(\mathbf{x})$,
$$
\mathbf{A}' = \mathbf{A} + \nabla \chi \ .
$$
Since the curl of a gradient must always vanish we have
$$
\mathbf{B} = \nabla \times \mathbf{A} = \nabla \times \mathbf{A}' \ .
$$
We call such a transformation $\mathbf{A} \to \mathbf{A}'$ a *gauge transformation*, and the scalar field $\chi(\mathbf{x})$ a *gauge potential*. Evidently, there is no physical information contained in the gauge potential. We're free to choose any $\chi$ we like without changing $\mathbf{B}$. An interesting consequence of this is that two vector potentials may look very different from each other, yet still give rise to the same B-field. When this happens, we say $\mathbf{A}$ and $\mathbf{A}'$ are *gauge equivalent*.

Since we're free to choose or *fix* whatever gauge we wish, we might as well choose a gauge that simplifies our theory. Typically, when fixing a gauge potential in a given theory, for example in magnetostatics, we don't specify a gauge potential directly like this. Instead, we specify a condition on the *divergence* of the vector potential. This isn't one-to-one equivalent to choosing a gauge potential, but it's usually good enough for our purposes. From the Helmholtz theorem, we know we can uniquely specify any vector field in terms of its divergence and its curl. With the vector potential we specify the curl by requiring that $\mathbf{B} = \nabla \times \mathbf{A}$, but we still have freedom to choose $\nabla \cdot \mathbf{A}$. If we fix the divergence, we thus fix what $\mathbf{A}$ can be for all useful purposes.

In magnetostatics, we can always just choose the vector potential given by the integral
$$
\mathbf{A}(\mathbf{x}) = \frac{1}{c} \int d^3 \mathbf{x}' \ \frac{\mathbf{J}(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
It's thus natural in magnetostatics to fix a gauge whose divergence is the same as the divergence of this integral. We showed in the previous section that such a vector potential satisfies $\nabla \cdot \mathbf{A} = 0$, at least for finite current distributions. It's thus natural to choose a gauge satisfying this same condition as well. This choice of gauge is called the *Coulomb gauge*,
$$
\boxed{
\nabla \cdot \mathbf{A} = 0
} \ .
$$
If for some reason we have a vector potential that doesn't satisfy the Coulomb gauge, we can always do a gauge transformation to convert it into a form that does. To see how we might do this, suppose $\nabla \cdot \mathbf{A}' = 0$, where $\mathbf{A}' = \mathbf{A} + \nabla \chi$ is some gauge transformation. Then
$$
0 = \nabla \cdot \mathbf{A}' = \nabla \cdot (\mathbf{A} + \nabla \chi) = \nabla \cdot \mathbf{A} + \nabla^2 \chi \ .
$$
Thus for any given vector potential $\mathbf{A}$, as long as we can find a gauge potential $\chi$ that solves the Poisson equation
$$
\nabla^2 \chi = - \nabla \cdot \mathbf{A} \ ,
$$
then we can find a new vector potential $\mathbf{A}'$ that satisfies the Coulomb gauge.

The gauge invariance of the vector potential makes it much more complicated to interpret physically what exactly the vector potential is. This wasn't the case in electrostatics, where we found we could interpret the scalar potential naturally as the potential energy per unit charge of a distribution. The vector potential is much more subtle. Sometimes the vector potential can be thought of as a kind of momentum per unit charge, but not always. Despite its difficulty to physically interpret though, the vector potential still has great theoretical importance in the theory of electromagnetism, as we'll see.

### Poisson's Equation

In electrostatics, we saw that we could combine the two first order field equations for the E-field into a single second order field equation for the scalar potential,
$$
\begin{cases}
\nabla \cdot \mathbf{E} = 4\pi\rho \ , \\
\nabla \times \mathbf{E} = \mathbf{0}
\end{cases}
\quad \Longrightarrow \quad 
\nabla^2 \phi = -4\pi\rho \ .
$$
In magnetostatics, we can also combine the two first order field equations for the B-field into a single second order field equation for the vector potential. Starting with the two field equations for the B-field, we have
$$
\begin{cases}
\nabla \cdot \mathbf{B} = 0 \ , \\
\nabla \times \mathbf{B} = \frac{4\pi}{c} \mathbf{J} \ .
\end{cases}
$$
By writing $\mathbf{B} = \nabla \times \mathbf{A}$, we automatically get the first field equation for free. All we need to do now is plug the vector potential into Ampere's law. To do that, we'll use the identity
$$
\nabla \times \mathbf{B} = \nabla \times (\nabla \times \mathbf{A}) = \nabla(\nabla \cdot \mathbf{A}) - \nabla^2 \mathbf{A} \ .
$$
The left-hand side is just $\nabla \times \mathbf{B}$, which by Ampere's law is $4\pi/c \ \mathbf{J}$. This means in general we have
$$
\nabla^2 \mathbf{A} - \nabla(\nabla \cdot \mathbf{A}) = -\frac{4\pi}{c} \mathbf{J} \ .
$$
Now we can see why specifying the divergence of $\mathbf{A}$ is a sensible way to fix a gauge, and why the Coulomb potential is so natural in magnetostatics. For if we fix $\nabla(\nabla \cdot \mathbf{A})$, then the above equation reduces to
$$
\boxed{
\nabla^2 \mathbf{A} = -\frac{4\pi}{c} \mathbf{J}
} \ .
$$
This is just a Poisson equation in each component of $\mathbf{A}$, which is analogous to what we saw in electrostatics where we had
$$
\nabla^2 \phi = -4\pi\rho \ .
$$
In particular, this means the Green's function for the vector potential (in the Coulomb gauge) is the same as the Green's function for the scalar potential in electrostatics,
$$
G(\mathbf{x} - \mathbf{x}') = \frac{1}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
Any particular solution to Poisson's equation will be the convolution of the Green's function with $\mathbf{J}/c$, which of course gives back the integral we derived before,
$$
\mathbf{A}(\mathbf{x}) = \frac{1}{c} \int d^3 \mathbf{x}' \ \frac{\mathbf{J}(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
For a given boundary value problem, the general solution will be this particular solution summed with any solution to the vector Laplace's equation $\nabla^2 \mathbf{A} = 0$ subject to any given boundary conditions.

Unfortunately, unlike Poisson's equation for the scalar potential, solving Poisson's equation directly for the vector potential is rarely useful as a means to solve a given problem. This is due to the fact that we now have a *coupled* vector differential equation to solve, which is much more difficult. The coupling comes from the fact that any solution must *also* satisfy the Coulomb gauge condition $\nabla \cdot \mathbf{A} = 0$. Even worse, the boundary conditions for magnetostatics problems are often much less trivial. For instance, the B-field on the surface of a conductor need not vanish, nor is it physically realistic to fix a constant vector potential on the surface of a given material. We'll cover some ways to calculate the vector potential using other methods below.

### Surface Boundary Conditions

We saw in a few earlier examples in the chapter that the magnetic field across a surface of current changes discontinuously by an amount $4\pi / c \ |\mathbf{K}|$. We will now prove this fact more generally. Specifically, we'll show that only the *tangential* part of the B-field changes discontinuously when crossing a surface of current, while the *normal* part of the B-field remains continuous.

FIGURE (surface of current with normal and tangential B-field)

Suppose $\mathcal{S}$ is some smooth surface of current with a surface current density $\mathbf{K}(\mathbf{x})$, where $\mathbf{x}$ is some point on the surface. The magnetic field $\mathbf{B}(\mathbf{x})$ at this point can be decomposed into two vectors, one vector $\mathbf{B}^\perp(\mathbf{x})$ normal to the surface, and another vector $\mathbf{B}^\parallel(\mathbf{x})$ tangential to the surface,
$$
\mathbf{B}(\mathbf{x}) = \mathbf{B}^\perp(\mathbf{x}) + \mathbf{B}^\parallel(\mathbf{x}) \ .
$$
Let's first show the normal vector is continuous across the surface. Since $\nabla \cdot \mathbf{B} = 0$, by the divergence theorem the surface integral of the B-field through any Gaussian surface must always satisfy
$$
\oint \mathbf{B} \cdot d\mathbf{a} = 0 \ .
$$
We can now apply Gauss's law exactly the same way we did with the E-field before. Choose an infinitesimally high and very thin pillbox with top and bottom areas $\delta A$ as the Gaussian surface, where $\delta A$ is so small that any deviations in the curvature of the surface $\mathcal{S}$ are negligible inside the Gaussian surface. If $B_+$ is the value of the B-field above the surface and $B_-$ is the value of the B-field below the surface, by Gauss's Law we must have
$$
(B_+^\perp - B_-^\perp) \delta A \approx \int \mathbf{B} \cdot d\mathbf{a} = 0 \ .
$$
Assuming $\delta A$ is infinitesimal, we thus have $B_+^\perp(\mathbf{x}) = B_-^\perp(\mathbf{x})$. That is, the normal component of the B-field remains continuous across the surface of current.

Let's now deal with the tangential vector. This time we'll apply Ampere's law. For the Amperian loop we choose a square with infinitesimal side lengths $\delta\ell$, oriented with the face of the perpendicular to the direction of $\mathbf{K}$ as shown below.

FIGURE (show amperian loop)

When we calculate the circulation integral, only the sides parallel to the surface contribute. Since $I_{\text{enc}} \approx |\mathbf{K}| \delta\ell$, by Ampere's law we thus have
$$
(B_+^\parallel - B_-^\parallel) \delta\ell \approx \int \mathbf{B} \cdot d\boldsymbol{\ell} = \frac{4\pi}{c} |\mathbf{K}| \delta\ell \ .
$$
Assuming $\delta\ell$ is infinitesimal, we thus have
$$
B_+^\parallel(\mathbf{x}) - B_-^\parallel(\mathbf{x}) = \frac{4\pi}{c} |\mathbf{K}(\mathbf{x})| \ .
$$
That is, the tangential part of the B-field changes discontinuously across the surface by an amount $\frac{4\pi}{c} |\mathbf{K}|$.

We can combine these results together into a single equation. Notice both conditions are equivalent to the statement that
$$
\mathbf{B}_+(\mathbf{x}) - \mathbf{B}_-(\mathbf{x}) = \frac{4\pi}{c} \mathbf{K}(\mathbf{x}) \times \mathbf{n} \ .
$$
In a similar manner, one can show that the vector potential $\mathbf{A}(\mathbf{x})$ across the surface is always continuous, both its tangential and normal parts. That is, for the vector potential we have
$$
\mathbf{A}_+(\mathbf{x}) = \mathbf{A}_-(\mathbf{x}) \ .
$$
That the tangential part remains continuous follows from the fact that $\mathbf{B} = \nabla \times \mathbf{A}$. The normal part is only continuous in the Coulomb gauge, since we require $\nabla \cdot \mathbf{A} = 0$ for this to be true.

We can also express the discontinuity of the B-field across the surface using the normal derivative of the vector potential. We'll define the normal derivative of the vector potential in terms of its components by
$$
\frac{\partial A_i}{\partial n} \equiv \partial_j A_i n_j \ .
$$
One can then show that the B-field relations above are equivalent to the statement that
$$
\frac{\partial}{\partial n} \mathbf{A}_+(\mathbf{x}) - \frac{\partial}{\partial n} \mathbf{A}_-(\mathbf{x}) = -\frac{4\pi}{c} \mathbf{K}(\mathbf{x}) \ .
$$
Together, we thus have the following boundary conditions for the vector potential across a surface of current,
$$
\begin{align*}
\mathbf{A}_+(\mathbf{x}) - \mathbf{A}_-(\mathbf{x}) &= \mathbf{0} \ , \\
\frac{\partial}{\partial n} \mathbf{A}_+(\mathbf{x}) - \frac{\partial}{\partial n} \mathbf{A}_-(\mathbf{x}) &= -\frac{4\pi}{c} \mathbf{K}(\mathbf{x}) \ .
\end{align*}
$$
While these boundary conditions for the vector potential are nice to know, we rarely use them in practice since we rarely solve the vector Poisson equation for reasons described in the previous section.

### Calculating Vector Potentials

Unlike in electrostatics, it's typically much less helpful to solve problems in magnetostatics by first calculating the potential and then using that to calculate the B-field. The reason for this is that the integral for $\mathbf{A}(\mathbf{x})$ is still a vector equation, which can often be as difficult to solve as finding $\mathbf{B}(\mathbf{x})$ from the Biot-Savart law directly. Nevertheless, when an expression for the vector potential is needed, there are a few ways to calculate them. One way is to use the integral directly,
$$
\mathbf{A}(\mathbf{x}) = \frac{1}{c} \int d^3 \mathbf{x}' \ \frac{\mathbf{J}(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
If the magnetic field is already known, we can calculate the vector potential another way. In magnetostatics, we can write
$$
\nabla^2 \mathbf{A} = -\nabla \times \mathbf{B} \ .
$$
Notice this equation looks like the Poisson equation $\nabla^2 \phi = -4\pi\rho$ in electrostatics, except with three components. This means $\nabla^2 \mathbf{A}$ must have the same Green's function as we had in electrostatics, namely $1/|\mathbf{x} - \mathbf{x}'|$. We know then that the solution of the equation $\nabla^2 \mathbf{A} = -4\pi \mathbf{F}$ can be expressed as the convolution of $\mathbf{F}$ with the Green's function. If we set $\mathbf{F} = 1/4\pi \ \nabla \times \mathbf{B}$, we thus immediate get that
$$
\mathbf{A}(\mathbf{x}) = \frac{1}{4\pi} \int d^3\mathbf{x}' \ \frac{\nabla' \times \mathbf{B}(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
This provides a way to calculate the vector potential of some current distribution if we already know the magnetic field. Note that this formula implicitly assumes that the current distribution is localized. If it's infinite we need to do something else to find $\mathbf{A}$. In these cases, we can instead calculate the circulation of $\mathbf{A}$ around some Amperian loop. By Stoke's theorem, we have
$$
\oint_\mathcal{C} \mathbf{A} \cdot d\boldsymbol{\ell} = \int_\mathcal{S} (\nabla \times \mathbf{A}) \cdot d\mathbf{a} = \int_\mathcal{S} \mathbf{B} \cdot d\mathbf{a} \ .
$$
The integral on the right-hand side is just the *magnetic flux* through the surface $\mathcal{S}$, which we'll denote $\Phi_B$, so we have
$$
\oint_\mathcal{C} \mathbf{A} \cdot d\boldsymbol{\ell} = \Phi_B \ .
$$
Notice how similar this expression looks to Ampere's law, except with $\mathbf{B}$ replaced by $\mathbf{A}$ and $4\pi/c \ \mathbf{J}$ replaced by $\Phi_B$. This means if the symmetry of a problem permits, we can often use the same tricks we used with Ampere's law to find $\mathbf{A}$.

##### Example: Vector potential of a uniform magnetic field

Suppose some current distribution gives rise to a uniform magnetic field $\mathbf{B}$. We'd like to find the vector potential $\mathbf{A}$. First, it's clear that no localized current distribution can give rise to a constant magnetic field $\mathbf{B}$, since the field would go to zero at infinity for any localized current distribution. We thus need to use the modified Ampere's law to find $\mathbf{A}$,
$$
\oint_\mathcal{C} \mathbf{A} \cdot d\boldsymbol{\ell} = \Phi_B \ .
$$
Suppose the magnetic field is oriented in the positive $z$-direction, with $\mathbf{B} = B \mathbf{e}_z$. This means $\mathbf{A}$ must then be oriented in the $xy$-plane. In fact, it's not too hard to see that $\mathbf{A}$ must be azimuthal, with $\mathbf{A} = A \mathbf{e}_\varphi$.

With this in mind, consider as an Amperian loop a counterclockwise circle of radius $\varrho$ centered in the $xy$-plane. Along this loop the vector potential must be constant, and $\Phi_B = \pi\varrho^2 B$. Thus, we get
$$
\oint_\mathcal{C} \mathbf{A} \cdot d\boldsymbol{\ell} = 2\pi \varrho A = \pi\varrho^2 B \ .
$$
This means we have
$$
\mathbf{A}(\mathbf{x}) = \frac{1}{2} \varrho B \mathbf{e}_\varphi = -\frac{1}{2} (\varrho\mathbf{e}_\varrho \times B\mathbf{e}_z) = -\frac{1}{2} \mathbf{x} \times \mathbf{B} \ .
$$
The vector potential of a uniform B-field can thus be expressed in the form
$$
\mathbf{A}(\mathbf{x}) = -\frac{1}{2} \mathbf{x} \times \mathbf{B} \ .
$$
One can easily verify this gives the answer by confirming that $\mathbf{B} = \nabla \times \mathbf{A}$. This is perhaps one of the few vector potentials worth actually remembering. It's the magnetic analogue of the similar statement that $\phi(\mathbf{x}) = -\mathbf{x} \cdot \mathbf{E}$ for a uniform E-field.

##### Example: Vector potential of a rotating charged sphere

Suppose a sphere of radius $R$ is rotating with some constant angular velocity $\boldsymbol{\omega}$ about some axis. On the sphere is a uniform surface charge density $\sigma$. We'd like to calculate the vector potential outside this rotating sphere, when $r > R$.

FIGURE (rotating sphere)

To calculate the vector potential, we need to evaluate the vector integral
$$
\mathbf{A}(\mathbf{x}) = \frac{1}{c} \int da' \ \frac{\mathbf{K}(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
Now, the area element in this case is $da' = R^2 \sin\theta' d\theta'd\varphi'$, and since $|\mathbf{x}'| = R$ we have
$$
|\mathbf{x} - \mathbf{x}'| = \sqrt{r^2 + R^2 - 2 \mathbf{x} \cdot \mathbf{x}'} \ .
$$
By definition $\mathbf{K}(\mathbf{x}') = \sigma \mathbf{v}'$. Since the sphere is rigid and rotating with the same angular velocity $\boldsymbol{\omega}$, the velocity $\mathbf{v}'$ is given by
$$
\mathbf{v}' = \boldsymbol{\omega} \times \mathbf{x}' \ .
$$
Since the surface charge density $\sigma$ is constant on the sphere, we thus have
$$
\mathbf{A}(\mathbf{x}) = \frac{R^2\sigma}{c} \int_0^\pi \sin\theta' d\theta' \int_0^{2\pi} d\varphi' \ \frac{\boldsymbol{\omega} \times\mathbf{x}'}{\sqrt{r^2 + R^2 - 2 \mathbf{x} \cdot \mathbf{x}'}} \ .
$$
At this point we need to choose how we'd like to align the coordinate axes to perform the integration. While it seems natural to align axes such that the axis of rotation is the $z$-axis, it turns out to be much easier to evaluate the integral if we let $\mathbf{x}$ lie on the $z$-axis instead, so that
$$
\mathbf{x} \cdot \mathbf{x}' = rR \cos\theta' \ .
$$
But this still leaves a choice as to how to align the axes in the $xy$-plane. It'll be most convenient to orient the $xy$-plane such that the axis of rotation lies in the $xz$-plane. If $\boldsymbol{\omega}$ lies at a constant angle $\gamma$ from the $z$-axis, we have
$$
\boldsymbol{\omega} \times \mathbf{x}' = R\omega[-\cos\gamma\sin\theta'\sin\varphi' \mathbf{e}_x + (\cos\gamma\sin\theta'\cos\varphi' - \sin\gamma\cos\theta') \mathbf{e}_y + \sin\gamma\sin\theta'\sin\varphi' \mathbf{e}_z] \ .
$$
Now, notice that each component of $\mathbf{A}$ containing a $\sin\varphi'$ or $\cos\varphi'$ will vanish when integrated over $\varphi'$. The only component without such a term will be $A_y$, which upon integrating over $\varphi'$ reduces to
$$
A_y(\mathbf{x}) = -\frac{2\pi R^3\omega\sigma}{c} \sin\gamma \int_0^\pi d\theta' \ \frac{\sin\theta'\cos\theta'}{\sqrt{r^2 + R^2 - 2 \cos\theta'}} \ .
$$
The remaining integral over $\theta'$ can be done by substituting $u = \cos\theta'$. For $r > R$, the result will be $2R/3r^2$. We thus have
$$
A_y(\mathbf{x}) = -\frac{4\pi R^4\sigma}{3cr^2} \omega\sin\gamma \ .
$$
Now, notice that in our choice of coordinates we have $\boldsymbol{\omega} \times \mathbf{x} = -\omega r \sin\gamma \mathbf{e}_y$. This means we can write the vector potential as
$$
\mathbf{A}(\mathbf{x}) = \frac{4\pi R^4 \sigma}{3cr^3} \boldsymbol{\omega} \times \mathbf{x} \ .
$$
In this notation we can now easily rotate the coordinate axes if we like so that $\boldsymbol{\omega}$ is along the $z$-axis. Then we have
$$
\mathbf{A}(\mathbf{x}) = \frac{4\pi R^4 \sigma\omega}{3cr^2} \sin\theta\mathbf{e}_\varphi \ .
$$
Thus, the vector potential of a rotation sphere moves in the direction the sphere is rotating, and falls off like $1/r^2$ outside the sphere. In fact, this is exactly the behavior of a magnetic dipole field, which we'll study in the next section. From the multipole expansion we'll soon derive, the magnetic dipole moment $\mathbf{m}$ for this rotating sphere can easily be identified as
$$
\mathbf{m} = \frac{4\pi R^4 \sigma}{3c} \boldsymbol{\omega} \ .
$$
One can also show the vector potential inside the sphere is the same, except multiplied by $r^3/R^3$. This means the magnetic field inside the sphere will be constant and pointed along the axis of rotation.

## Multipole Expansion

We saw that it is generally much more difficult to calculate the vector potential than it was the scalar potential in electrostatics. For this reason, it's even more useful in magnetostatics than it was in electrostatics to find approximate solutions for the vector potential. We already know that one useful way to do that is to do a *multipole expansion*, which provides good approximations to the potential when far away from the source distribution. We'll derive an expansion of this type for magnetostatics as well.

### Derivation

Recall that in magnetostatics we can express the vector potential via the integral
$$
\mathbf{A}(\mathbf{x}) = \frac{1}{c} \int d^3 \mathbf{x}' \ \frac{\mathbf{J}(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
Since the Green's function inside this integral is the same as the one in electrostatics, deriving this expansion will be fairly simple. Recall from the derivation of the multipole expansion in electrostatics that we can expand the Green's function as
$$
\frac{1}{|\mathbf{x} - \mathbf{x}'|} = \frac{1}{r} + \frac{\mathbf{x} \cdot \mathbf{x}'}{r^3} + \cdots \ .
$$
We only expanded up to the dipole term, but of course there will be a quadrupole term after that, and so on. Up to the dipole term then, each component $A_i$ of the vector potential $\mathbf{A}$ can be expanded in index notation as
$$
A_i(\mathbf{x}) = \frac{1}{r} \int \frac{d^3 \mathbf{x}'}{c} \ J_i(\mathbf{x}') + \frac{x_j}{r^3} \int \frac{d^3 \mathbf{x}'}{c} \ x_j' J_i(\mathbf{x}') + \cdots \ .
$$
Notice that neither of these integrals depends on the field point $\mathbf{x}$, only the source point $\mathbf{x}'$. Similar to what we did with the multipole expansion in electrostatics, we call these integrals *magnetic multipole moments*. The first integral is evidently the *magnetic monopole moment*, and the second integral is evidently the *magnetic dipole moment*. If we included more terms, the next term would be the magnetic quadrupole moment, and so on.

We can calculate what those moments are most easily by first proving the following identity. For any two scalar fields $f(\mathbf{x})$ and $g(\mathbf{x})$ and any localized current density $\mathbf{J}(\mathbf{x})$ in the Coulomb gauge, we must have
$$
\int d^3 \mathbf{x} \ (f \mathbf{J} \cdot \nabla g + g \mathbf{J} \cdot \nabla f) = 0 \ .
$$
To prove this we'll use integration by parts on the second term. Assuming the current is localized it must be zero at infinity, which means when we use integration by parts on the second term, the surface term will vanish leaving us with
$$
\int d^3 \mathbf{x} \ g \mathbf{J} \cdot \nabla f = -\int d^3 \mathbf{x} \ (\nabla \cdot g \mathbf{J}) f \ .
$$
Finally, since $\nabla \cdot g \mathbf{J} = \nabla g \cdot \mathbf{J} + g \nabla \cdot \mathbf{J}$ and $\nabla \cdot \mathbf{J} = 0$ in the Coulomb gauge, the identity is proved.

For our uses below it'll be helpful to write the above identity in index notation in terms of the source point $\mathbf{x}'$,
$$
\int d^3 \mathbf{x}' \ (f J_i \partial_i' g + g J_i \partial_i' f) = 0 \ .
$$
First, observe if we set $f=1$ and $g = x_i$, the second term vanishes and the first term reduces $J_i$. We thus get
$$
\int d^3 \mathbf{x}' \ \mathbf{J}(\mathbf{x}') = 0 \ .
$$
But these are just the components of the magnetic monopole moment. Thus, the vector potential has no monopole moment, and hence no monopole potential or field. This is a formal proof if we like of the statement that magnetic monopoles do not exist. It all follows directly from the fact that $\nabla \cdot \mathbf{B} = 0$, which is what allows us to define the vector potential in the first place.

### Magnetic Dipole Moment

Let's now look at the of the dipole potential, which we can write in vector form as
$$
\mathbf{A}^{(1)}(\mathbf{x}) = \frac{1}{cr^3} \int d^3\mathbf{x}' \ (\mathbf{x} \cdot \mathbf{x}') \mathbf{J}(\mathbf{x}') \ .
$$
We'll find it most convenient to express this in index notation,
$$
A_i^{(1)} = \frac{x_j}{cr^3} \int d^3 \mathbf{x}' \ x_j' J_i \ .
$$
If we instead set $f = -x_i/2$ and $g = -x_j/2$ in the above identity we get
$$
-\frac{1}{2} \int d^3 \mathbf{x}' \ (x_i' J_j + x_j' J_i) = 0 \ .
$$

Since this integral vanishes, we can add it to the dipole integral without changing its value. If we do that, we get
$$
\int d^3 \mathbf{x}' \ x_j' J_i = \int d^3 \mathbf{x}' \ \bigg(x_j' J_i - \frac{1}{2} (x_i' J_j - x_j' J_i)\bigg) = -\frac{1}{2} \int d^3 \mathbf{x}' \ (x_i' J_j - x_j' J_i) \ .
$$
This integral is identical to the original one, just written differently. If we now add it to the integral in the dipole potential, we get
$$
A_i^{(1)} = -\frac{x_j}{2cr^3} \int d^3 \mathbf{x}' \ (x_i' J_j - x_j' J_i) \ .
$$
Now, recall that any expression of the form $x_i' J_j - x_j' J_i$ can be related to the cross product $\mathbf{x}' \times \mathbf{J}$ by
$$
x_i' J_j - x_j' J_i = \varepsilon_{ijk} (\mathbf{x}' \times \mathbf{J})_k \ .
$$
This means the dipole potential can also be rewritten as
$$
A_i^{(1)} = -\frac{1}{2cr^3} \varepsilon_{ijk} x_j \int d^3 \mathbf{x}' \ (\mathbf{x}' \times \mathbf{J})_k \ .
$$
Finally, observe that $\varepsilon_{ijk} x_j (\mathbf{x}' \times \mathbf{J})_k$ is just the $i$<sup>th</sup> component of the triple product $\mathbf{x} \times (\mathbf{x}' \times \mathbf{J})$. In vector notation, the dipole potential can thus evidently be written as
$$
\mathbf{A}^{(1)}(\mathbf{x}) = \frac{\mathbf{x}}{r^3} \times \frac{1}{2c} \int d^3 \mathbf{x}' \ (\mathbf{J} \times \mathbf{x}') \ .
$$
From this, we can see that the magnetic dipole moment, usually denoted $\mathbf{m}$, has the form

$$
\boxed{
\mathbf{m} \equiv \frac{1}{2c} \int d^3\mathbf{x}' \ \mathbf{x}' \times \mathbf{J}(\mathbf{x}') 
} \ .
$$

From this definition it's clear that the magnetic dipole moment has dimensions of charge times distance in Gaussian units, or units of $\text{esu} \cdot \text{cm}$, the same dimension and units that the electric dipole moment has. Typically, the magnetic monopole moment is expressed in $\text{erg} / \text{G}$ in Gaussian units, which is equivalent. In SI units, the magnetic monopole moment carries units of $\text{A} \cdot \text{m}^2$.

In general, calculating the magnetic dipole moment can be challenging. But there's one important case where it isn't difficult to calculate, namely a planar loop of current.

##### Example: Dipole moment of a planar loop of constant current

Suppose a planar current loop with interior area $A$ carries a constant current $I$. We want to calculate the magnetic monopole moment of this current loop. Since the loop is 1-dimensional, the dipole moment will be given by

$$
\mathbf{m} = \frac{1}{2c} \oint_\mathcal{C} d\ell' \ \mathbf{x}' \times \mathbf{I}(\mathbf{x}') \ .
$$
We'll orient the loop to lie in the $xy$-plane, which means both $\mathbf{x}'$ and $\mathbf{I}(\mathbf{x}')$ are also in the $xy$-plane. 

Since the current along the loop is constant and $d\mathbf{I}(\mathbf{x}') = I d\boldsymbol{\ell}'$, we can write
$$
\mathbf{m} = \frac{I}{2c} \oint_\mathcal{C} \mathbf{x}' \times d\boldsymbol{\ell}' \ .
$$
Now, observe that $\mathbf{x}' \times d\boldsymbol{\ell}'$ is just twice the area element $d\mathbf{a}'$ inside the loop. Since the area $A$ of the loop is given, we get
$$
\mathbf{m} = \frac{I}{c} \int_\mathcal{S} d\mathbf{a}' = \frac{IA}{c} \mathbf{e}_z \ .
$$
This is the correct dipole moment so long as the loop lies in the $xy$-plane. In general, for a surface normal $\mathbf{n}$ we'd have
$$
\boxed{
\mathbf{m} = \frac{IA}{c} \mathbf{n}
} \ .
$$
Thus, the dipole moment of a planar loop of current is proportional to the product of its current and its area, and points in the direction normal to the loop.

##### Example: Dipole moment of an orbiting point charge

Suppose a charged particle with mass $m$ and charge $q$ is orbiting about some center with velocity $\mathbf{v}$. For instance, this could be an electron orbiting about the nucleus of an atom. We'd like to estimate the magnetic dipole moment of this orbiting charge.

If we model the orbiting charge as a planar loop of current, its magnetic dipole moment is given by the previous example,
$$
\mathbf{m} = \frac{IA}{c} \mathbf{n} \ .
$$
We can estimate the current $I$ as the charge per period $\tau$ of orbit,
$$
I = \frac{q}{\tau} \ .
$$
Note that this strictly speaking isn't a steady current. It's only *on average* a steady current, where we imagine the period $\tau$ is much much smaller than the time period of observation. For small particles this is typically the case. For example, an electron orbiting a hydrogen atom has an orbital period of only $\tau \sim 10^{-15} \ \text{s}$.

To calculate the area of orbit, we recall that an orbiting particle satisfies Kepler's second law, which says
$$
\frac{da}{dt} = \frac{|\mathbf{L}|}{2m} \ ,
$$
where $\mathbf{L} = |\mathbf{L}| \mathbf{n}$ is the particle's angular momentum vector. Since angular momentum is conserved, $\mathbf{L}$ will be constant. If we integrate $da$ over a full period $\tau$ we thus get the full area of the orbit,
$$
A = \frac{|\mathbf{L}|}{2m} \tau \ .
$$
Thus, the magnetic moment of an orbiting point charge is evidently
$$
\mathbf{m} = \frac{q}{2mc} \mathbf{L} \ .
$$
That is, the magnetic dipole moment of an orbiting point charge is proportional to its angular momentum, and points in the direction of the angular momentum vector. Note that this formula only holds in the non-relativistic limit $|\mathbf{v}| \ll c$, since the classical mechanics assumptions we made need to be modified to include special relativity when $|\mathbf{v}| \sim c$.

The proportionality constant $\gamma \equiv q/2mc$ is usually given a name, the *gyromagnetic ratio*. The gyromagnetic ratio depends only on the mass and charge of the orbiting particle, not its position or velocity.

We see a version of this formula arise in quantum mechanics, where among other things we're interested in the magnetic dipole moment of a *spinning* electron. Assuming a spinning particle has a spin angular momentum $\mathbf{S}$, the above formula suggests that the magnetic dipole moment of a spinning electron might be
$$
\mathbf{m} = -\frac{e}{2m_m c} \mathbf{S} \ ,
$$
where $-e$ is the charge of the electron and $m_e$ is the mass of the electron. In fact, what we find in quantum mechanics is that the magnetic dipole moment of a spinning electron is approximately *twice* this value,
$$
\mathbf{m} = -\frac{e}{m_m c} \mathbf{S} \ .
$$
The extra factor of two comes from relativistic quantum mechanics, which we won't go into. In this setting, we typically define a different proportionality constant called the *Bohr magneton* $\mu_B$ defined by
$$
\mu_B \equiv \frac{e \hbar}{2 m_e c} \approx 9.274 \cdot 10^{-21} \ \text{erg} / \text{G} \ .
$$
Notice the inclusion of Planck's constant $\hbar$ in the Bohr magneton. This is because in quantum mechanics the spin is quantized in integer units of $\hbar$, which means $\mathbf{S} / \hbar$ is a dimensionless vector, hence $\mu_B$ has the units of a magnetic dipole moment. We'd thus write the magnetic dipole moment of a spinning electron in quantum mechanics as
$$
\mathbf{m} = -2 \mu_B \frac{\mathbf{S}}{\hbar} \ .
$$
At any rate, it's interesting we could get this far by treating an orbiting charged particle as a classical loop of current.

##### Example: Dipole moment of a rotating disk of uniform charge

Suppose we have a disk with radius $R$ and uniform surface charge density $\sigma$ that's made to rotate about its center with a constant angular velocity $\boldsymbol{\omega}$ normal to the disk.

FIGURE (rotating disk)

Since the disk is 2-dimensional, the magnetic monopole moment will be given by the integral
$$
\mathbf{m} = \frac{1}{2c} \int_\mathcal{S} da' \ \mathbf{x}' \times \mathbf{K}(\mathbf{x}') \ .
$$
Assuming the disk is centered in the $xy$-plane, then each point $\mathbf{x}'$ in the disk will rotate with a velocity
$$
\mathbf{v}' = \boldsymbol{\omega} \times \mathbf{x}' = \omega \varrho' \mathbf{e}_z \times \mathbf{e}_\varrho = \omega \varrho' \mathbf{e}_\varphi \ .
$$
Since the surface charge density on the disk is uniform, this means the surface current density $\mathbf{K}(\mathbf{x}')$ will be
$$
\mathbf{K}(\mathbf{x}') = \sigma \mathbf{v}' = \sigma \omega \varrho' \mathbf{e}_\varphi \ .
$$
This means $\mathbf{x}' \times \mathbf{K}(\mathbf{x}') = \sigma\omega\varrho'^2 \mathbf{e}_z$, and so the magnetic monopole moment will be given by the integral
$$
\mathbf{m} = \frac{\sigma\omega}{2c} \int_0^R \varrho' d\varrho' \int_0^{2\pi} d\varphi' \ \varrho'^2 \mathbf{e}_z = \frac{\pi R^4 \sigma\omega}{4c} \mathbf{e}_z \ .
$$
Incidentally, this same result could be found in a different way by making use of the result we found for the planar current loop in the previous example. The idea is to break the disk up into a bunch of differential rings of charge. For a given ring of radius $\varrho'$, there will be a planar loop with differential current $dI = K d\varrho' = \sigma\omega \varrho' d\varrho'$. Then the ring has a differential dipole moment
$$
d\mathbf{m} = \frac{dI}{c} (\pi \varrho'^2) \mathbf{e}_z \ .
$$
Integrating $d\mathbf{m}$ over the whole disk will then give the same answer obtained above.

---

Up to the dipole term, the vector potential can evidently be expanded as
$$
\mathbf{A}(\mathbf{x}) = \frac{\mathbf{m} \times \mathbf{x}}{r^3} + \cdots \ .
$$

We could keep proceed to find the higher order magnetic multipole terms as well. The next component would be the quadrupole term, falling off like $1/r^3$. But these higher moments are generally less useful in magnetism than in electricity, and far more complicated to write down, so we'll stop at the dipole term. 

Let's compare this multipole expansion with the multipole expansion we found for the scalar potential in electrostatics,
$$
\phi(\mathbf{x}) = \frac{q}{r} + \frac{\mathbf{p} \cdot \mathbf{x}}{r^3} + \cdots \ .
$$
First, as we noted before, the vector potential has no monopole moment. Second, the magnetic dipole term involves a cross product with the dipole moment, instead of a dot product with the dipole moment. This partly reflects the obvious fact that the vector potential is a vector, not a scalar. But it also reflects the fact that the electric dipole term is strongest in the direction of the dipole vector, while the magnetic dipole term is strongest in directions perpendicular to the dipole vector.

By taking the curl of the vector potential and manipulating terms, one can show that the B-field of the dipole potential can be expressed in the form
$$
\mathbf{B}^{(1)}(\mathbf{x}) = \frac{3(\mathbf{m} \cdot \mathbf{x}) \mathbf{x} - r^2 \mathbf{m}}{r^5} \ .
$$
Interestingly, the *dipole field* has the same form for both the electric and magnetic fields. Indeed, this is why they're called dipoles in both cases. The fields look exactly the same, even if the potentials do not. In particular, this means in analogy to electrostatics we could express the dipole field as the gradient of a scalar *pseudo-potential* $\psi$, since
$$
\mathbf{B}^{(1)} = -\nabla \frac{\mathbf{m} \cdot \mathbf{x}}{r^3} \equiv -\nabla \psi \ .
$$
It may seem strange that we can express the B-field as the gradient of a scalar potential. We know we can't do this in general. The reason we can in this case is because we're only considering field points *outside* the current distribution, and outside the current distribution we must have $\nabla \times \mathbf{B} = \mathbf{0}$, which means $\mathbf{B} = -\nabla \psi$ for some scalar field $\psi$. In this special case then we *can* evidently introduce a scalar potential, even though in general we can't. This is why we call it a pseudo-potential.

Just like the lowest non-vanishing moment of the scalar potential is independent of the choice of origin, the same is true of the vector potential. Since the magnetic monopole moment always vanishes, this means the magnetic dipole moment will *always* be independent of the choice of origin. If the dipole moment vanishes, the quadrupole will be independent of origin, and so on.

### Currents in External Magnetic Fields

Thus far we've studied the multipole expansion of a localized current distribution in free space, assuming no external fields are present. Similar to what we did in electrostatics, we now want to ask how the potential energy of localized current distribution depends on the presence of an external B-field, particular its multipole moments. We'll assume the external B-field is strong enough that we can neglect any self fields created by the current distribution of interest.

Suppose we have a localized current distribution $\mathbf{J}(\mathbf{x}')$ about the origin, and in the background we'll suppose there is an external B-field $\mathbf{B}_{\text{ext}}(\mathbf{x})$ acting on this distribution. Assuming we can Taylor expand this field about the origin, we get
$$
\mathbf{B}_{\text{ext}}(\mathbf{x}) = \mathbf{B}_{\text{ext}}(\mathbf{0}) + (\mathbf{x} \cdot \nabla) \mathbf{B}_{\text{ext}}(\mathbf{x}) \bigg|_{\mathbf{x} = \mathbf{0}}  + \cdots \ .
$$
Now, this external field will create a force on the current distribution given by the Lorentz force law,
$$
\mathbf{F} = \frac{1}{c} \int d^3\mathbf{x}' \ \mathbf{J}(\mathbf{x}') \times \mathbf{B}_{\text{ext}}(\mathbf{x}) \ ,
$$
where $\mathcal{V}$ is the enclosed volume of the current distribution. If we plug in the Taylor expansion above into the force law and group terms, we have to leading order
$$
\begin{align*}
\mathbf{F} &= \frac{1}{c} \int d^3\mathbf{x}' \ \mathbf{J}(\mathbf{x}') \times \bigg[\mathbf{B}_{\text{ext}}(\mathbf{0}) + (\mathbf{x} \cdot \nabla) \mathbf{B}_{\text{ext}}(\mathbf{x}) \bigg|_{\mathbf{x} = \mathbf{0}} + \cdots \bigg] \\
&\approx -\frac{1}{c} \mathbf{B}_{\text{ext}}(\mathbf{0}) \times \int d^3\mathbf{x}' \ \mathbf{J}(\mathbf{x}') + \frac{1}{c} \int d^3\mathbf{x}' \ \mathbf{J}(\mathbf{x}') \times(\mathbf{x} \cdot \nabla) \mathbf{B}_{\text{ext}}(\mathbf{x}) \bigg|_{\mathbf{x} = \mathbf{0}} + \cdots \ .
\end{align*}
$$
Now, the first term will vanish, since if $\mathbf{J}$ is a localized steady current we've already shown that
$$
\int d^3\mathbf{x}' \ \mathbf{J}(\mathbf{x}') = \mathbf{0} \ .
$$
We'll thus focus on the second term. To simplify this term it'll be helpful to rewrite the force in index notation as
$$
F_i \approx \frac{1}{c} \varepsilon_{ijk} \int d^3\mathbf{x}' \ J_j (x_\ell \partial_\ell) B_k = \varepsilon_{ijk} \bigg(\frac{1}{c} \int d^3\mathbf{x}' \ J_j x_\ell\bigg) \partial_\ell B_k \ ,
$$
where $B_k$ is the $k$<sup>th</sup> component of $\mathbf{B}_{\text{ext}}(\mathbf{x}) \big|_{\mathbf{x} = \mathbf{0}}$. Now, we've studied the integral in parenthesis already and showed that
$$
\frac{1}{c} \int d^3\mathbf{x}' \ J_j x_\ell = \varepsilon_{\ell j n} m_n \ ,
$$
where $m_n$ is the $n$<sup>th</sup> component of the magnetic dipole moment $\mathbf{m}$. Plugging this in and using the identity to convert the contraction of two Levi-Civita symbols into delta functions, we have
$$
\begin{align*}
F_i &\approx \varepsilon_{ijk} \varepsilon_{\ell j n} m_n \partial_\ell B_k \\
&\approx \varepsilon_{ikj} \varepsilon_{j \ell n} m_n \partial_\ell B_k \\
&\approx (\delta_{i\ell} \delta_{kn} - \delta_{in} \delta_{k\ell}) m_n \partial_\ell B_k \\
&\approx m_k \partial_i B_k - m_i \partial_k B_k \ .
\end{align*}
$$
Notice that the second term is proportional to $\nabla \cdot \mathbf{B}_\text{ext} = 0$, so the second term vanishes. Since the dipole moment $\mathbf{m}$ doesn't depend on $\mathbf{x}$, we can finally pull the derivative out of the product to get
$$
\mathbf{F} \approx \nabla \big(\mathbf{m} \cdot \mathbf{B}_\text{ext}(0)\big) \ .
$$
We now want to convert this into an expansion for the potential energy $U$. Since $\mathbf{F} = -\nabla U$, we immediately get
$$
U \approx - \mathbf{m} \cdot \mathbf{B}_\text{ext}(0) \ .
$$
Thus, to first order the potential energy of a current distribution in the presence of an external B-field is just the negative dot product of the magnetic dipole moment with the external field evaluated at the origin. 

We can also calculate the torque exerted on the current distribution in the presence of an external B-field. By definition, the torque at each source point $\mathbf{x}'$ is given by $d\mathbf{N} = d(\mathbf{x}' \times \mathbf{F})$, which means the total torque is
$$
\mathbf{N} = \frac{1}{c} \int d^3\mathbf{x}' \ \mathbf{x}' \times [\mathbf{J}(\mathbf{x}') \times \mathbf{B}_{\text{ext}}(\mathbf{x})] \ .
$$
By Taylor expanding the external B-field in a similar way as above, one can show that to first order we have
$$
\mathbf{N} \approx \mathbf{m} \times \mathbf{B}_\text{ext}(0) \ .
$$

That is, the torque of a current distribution in an external B-field is approximately its dipole moment times the B-field, and the torque is perpendicular to both the dipole moment and the field according to the right-hand rule.

In fact, this torque formula is a good approximation to how a compass works. We can model the Earth's magnetic field as a constant B-field pointing towards the North Pole, and the compass needle as having a constant magnetic dipole moment pointing along the direction of the needle. When this needle is placed in the Earth's field and allowed to rotate, it will experience a torque, causing the needle to rotate and align itself with the local field line, which points toward the North Pole.

### Spherical Multipole Expansion

Since the Green's function for the vector potential is the same as the one for the scalar potential, we can immediately write down the spherical multipole expansion for the vector potential in magnetostatics. Recall that we could expand the Green's function as
$$
\frac{1}{|\mathbf{x} - \mathbf{x}'|} = \frac{1}{r} \sum_{\ell=0}^\infty \frac{4\pi}{2\ell+1} \bigg(\frac{r'}{r}\bigg)^\ell \sum_{m=-\ell}^\ell Y_{\ell m}(\theta,\varphi) Y_{\ell m}^*(\theta',\varphi') \ .
$$
If we plug this expansion into the integral for the vector potential and group together the source-dependent terms, we get
$$
\mathbf{A}(\mathbf{x}) = \frac{1}{c} \sum_{\ell=0}^\infty \sum_{m=-\ell}^\ell \frac{4\pi}{2\ell+1} \frac{Y_{\ell m}(\theta,\varphi)}{r^{\ell+1}} \int d^3 \mathbf{x}' \ \mathbf{J}(\mathbf{x}') r'^\ell Y_{\ell m}^*(\theta',\varphi') \ .
$$
The terms inside the integral depend only on the source current distribution. These are the *magnetic spherical multipole moments*, which we'll denote by $\mathbf{m}_{\ell m}$,
$$
\mathbf{m}_{\ell m} \equiv \int d^3 \mathbf{x}' \ \mathbf{J}(\mathbf{x}') r'^\ell Y_{\ell m}^*(\theta',\varphi') \ .
$$
Unlike the spherical multipole moments $q_{\ell m}$ in electrostatics, which are scalars, the spherical multipole moments $\mathbf{m}_{\ell m}$ in magnetostatics are *vectors*, and hence will have three components per moment.

We can thus formally express the *magnetic spherical multipole expansion* of the vector potential via the sum
$$
\mathbf{A}(\mathbf{x}) = \frac{1}{c} \sum_{\ell=0}^\infty \sum_{m=-\ell}^\ell \frac{4\pi}{2\ell+1} \frac{Y_{\ell m}(\theta,\varphi)}{r^{\ell+1}} \mathbf{m}_{\ell m} \ .
$$
One can show that the $\ell=0,1$ expansion terms give the same results we found above in the Cartesian expansion.
