# Electrostatics

As is custom, we'll begin our study of electromagnetism with *electrostatics*. Electrostatics is the study of stationary charges and the forces they exert on each other. From this simple setup we'll see that many of the important concepts of electromagnetism arise, including fields, potentials, and eventually Maxwell's equations. In this and future chapters, we'll define the electric field and use an increasingly intricate set of mathematical tools to solve increasingly complex problems.

We can approach the subject in several ways, for instance by stating Maxwell's equations as fact and studying their implications, or by starting from special relativity and the principle of least action. Instead we'll bow to historical convention and build the theory empirically, starting from some experimental facts about electrical charges and the forces between them.

## Coulomb's Law

Electrostatic phenomena have been known about for millennia. In Ancient Greek times, it was known that when an amber stone was polished that small objects tended to cling to it via what we now commonly call static electricity or electrostatic attraction. Indeed, the Ancient Greek word for amber is *elektron*, from which we've derive the words *electricity* and even *electron*.

Little else was known about electricity until the 17th century when scientists such as Priestly, Franklin, and Coulomb started to rigorously investigate the properties of charged objects. Within a few decades, the laws of electrostatics were largely worked out, though it took many more decades before they were recast into their modern form.

### Coulomb's Law

Electrostatics rests on two important facts about nature: the existence of and the conservation of charge, and Coulomb's law. We postulate that aside from mass, every physical body has associated to it another scalar quantity known as *electric charge*, where charge can be positive, negative, or zero. Moreover, we postulate that in a closed system charge is *conserved*. It cannot be created or destroyed, but only transferred between particles within the system.

Next, we postulate that the force between charged objects is given by *Coulomb's Law*. Through a series of experiments, Coulomb was able to deduce the following facts about the forces between charged objects:

- The force between the two charges depends linearly on the magnitude of each charge. The larger the magnitude, the stronger the force between them.
- The force obeys an inverse square law nature similar to gravity. That is, the strength of the force between the two charges varies with the inverse square of the distance between them.
- As with gravity, the force is directed along the line of force joining the two charges.
- The force is *attractive* if the two bodies have charges of *opposite* sign, and *repulsive* if the two bodies have charges of the *same* sign. If either body has zero charge there is no force between them.

Let's now formulate this as a mathematical law. Suppose two charged objects with charges $q_1$ and $q_2$ are located at fixed positions in space $\mathbf{x}_1$ and $\mathbf{x}_2$ respectively. Then the force $\mathbf{F}_{12}$ charge $q_1$ experiences due to charge $q_2$ is given by
$$
\mathbf{F}_{12} = k_e \frac{q_1 q_2}{r_{12}^2} \mathbf{e}_{12} \ ,
$$
where $r_{12} \equiv |\mathbf{x}_1 - \mathbf{x}_2|$ is the distance between the charges and $\mathbf{e}_{12}$ is the unit vector in the $\mathbf{x}_1 - \mathbf{x}_2$ direction,
$$
\mathbf{e}_{12} \equiv \frac{\mathbf{x}_1 - \mathbf{x}_2}{|\mathbf{x}_1 - \mathbf{x}_2|} \ .
$$
This formula captures all of the observations made by Coulomb. Since $\mathbf{F}_{12} \propto q_1$ and $\mathbf{F}_{12} \propto q_2$, the force depends linearly on each individual charge. Since $\mathbf{F}_{12} \propto 1/r_{12}^2$, the force is inversely proportional to the squared distance between the charges. Since $\mathbf{F}_{12} \propto \mathbf{e}_{12}$, the force is directed along the line joining the two charges. If $q_1 q_2 > 0$ then the force between them is positive, meaning charges with like sign repel each other, and if $q_1 q_2 < 0$ then the force between them is negative, meaning charges of opposite sign attract each other. Last, if either $q_1$ or $q_2$ is zero then there is no electrostatic force between the two charges.

From Coulomb's law and the general properties of forces we can immediately deduce a few important facts:

- The Coulomb force is *conservative* since $\mathbf{F}_{12}$ doesn't depend explicitly on time. In particular, this means we can define a potential energy $U$ such that $\mathbf{F}_{12} = -\nabla_1 U$, where $U$ is given by
  $$
  U(\mathbf{x}_1, \mathbf{x}_2) = k_e \frac{q_1 q_2}{r_{12}} \ .
  $$

- The Coulomb force is a *central force*, meaning $\mathbf{F}_{12}$ depends only on the relative distance $r_{12}$ between the two charges and not their absolute positions in space. This also means $U = U(r_{12})$, which can be seen above.

- The force of charge $q_1$ on charge $q_2$ is equal and opposite to the force of $q_2$ on $q_1$, with $\mathbf{F}_{21} = -\mathbf{F}_{12}$.

- Since Coulomb's law is a statement about forces, it obeys the *principle of superposition*, meaning the net Coulomb force on any one charge due to any set of other charges is just the vector sum of the Coulomb force on that charge due to each other individual charge. For example, the total force on charge $q_1$ due to $n$ other charges $q_2, q_3, \cdots, q_n$ is given by the vector sum of each individual force $\mathbf{F}_{1i}$ on $q_1$ due to each other charge $q_i$,

$$
\mathbf{F}_{1} = \mathbf{F}_{12} + \mathbf{F}_{13} + \cdots + \mathbf{F}_{1n} \ .
$$

Note that strictly speaking Coulomb's Law as stated only holds between *point charges*. That is, we implicitly have assumed that the charge of each object brought into contact can each be localized at a single point. They can't be diffused over the object in some non-uniform way. This of course is an abstraction. For simple electrostatic bodies this is a decent assumption to make, but for more complicated bodies it is not. We'll see how to modify Coulomb's law to deal with extended distributions of charge soon.

### Units

We haven't yet said anything about the dimensions or units of charge. In mechanics one can assign units to every mechanical quantity using only units of mass, distance, and time. In electromagnetism however, we now have the freedom to choose the dimensions of charge by fixing the dimensions of the proportionality constant $k_e$ in Coulomb's law. Notice that the product $k_e q_1 q_2$ must necessarily have dimensions of force times area for the law to be dimensionally consistent, or
$$
[k_e] [q]^2 = [F] [L]^2 \ .
$$
Thus, assigning dimensions to $k_e$ is essentially equivalent to specifying what the dimensions of charge should be. As we described in the previous chapter, there are different conventions for doing this, each corresponding to a different system of units. 

In Gaussian units, which are the units we will use in this course, we choose $k_e$ to be dimensionless by setting $k_e \equiv 1$. From the dimensional relation above, this implies that charge must then have dimensions of $[q] = [L] [F]^{1/2}$. In these units, we call the base unit of charge the *electrostatic unit* or *esu*, where evidently $1 \ \text{esu} \equiv \sqrt{\text{dyne} \cdot \text{cm}^2}$. That is, one esu of charge is defined as the amount of charge such that when two charges of one esu are placed a distance of one centimeter apart the force on them is exactly one dyne. In these units, Coulomb's law takes the especially simple form
$$
\mathbf{F}_{12} = \frac{q_1 q_2}{r_{12}^2} \mathbf{e}_{12} \ ,
$$
where it's necessarily understood that charge is measured in esu, distances in centimeters, and forces in dynes.

While Gaussian units are very convenient to study the theory of electromagnetism, they are unfortunately not the units usually used in the lab, largely for historical reasons. In the lab one generally uses SI units. In these units the dimension of charge isn't tied to mechanical units at all, but instead becomes a standalone unit. One defines a new constant $\varepsilon_0$, which is anachronistically called the *permittivity of free space*, where $\varepsilon_0 \approx 8.854 \cdot 10^{-12} \ \text{N}/\text{A}^2$, and sets
$$
k_e \equiv \frac{1}{4\pi\varepsilon_0} \approx 8.987 \cdot 10^9 \ \frac{\text{A}^2}{N} \ .
$$
The unit $A$ is defined to be a new fundamental unit known as the *Ampere*, often abbreviate *amp*. The Ampere is the SI unit of electric current, or charge per unit time. From the Ampere, one then defines the base unit of charge to be the *Coulomb*, where $1 \ \text{C} \equiv 1 \ \text{A} \cdot \text{s}$. In these units, Coulomb's law then takes on the somewhat cumbersome form
$$
\mathbf{F}_{12} = \frac{1}{4\pi\varepsilon_0} \frac{q_1 q_2}{r_{12}^2} \mathbf{e}_{12} \ ,
$$
where it's necessarily understood that charge is measured in Coulomb, distances in meters, and forces in Newtons. Since the dimensions are incompatible, one can't strictly speaking convert charges between the two unit systems. Apart from their dimensions though their numerical values can still be compared. In this sense we can say that $1 \ \text{esu} \approx 3.3 \cdot 10^{-10} \ \text{C}$. When converting between Gaussian and SI units we'll frequently show unit conversions for some quantity in this manner, even though it should always be understood that a given quantity may have different dimensions in the two systems of units.

To get a feel for the scale of everyday charges, the static electricity between two large objects rubbed together may produce a charge of a few $\mu \text{C}$, or $\sim 10^4 \ \text{esu}$. The amount of charge in a bolt of lightning may be as high as $15-350 \ \text{C}$, or $\sim 10^{5}-10^{6} \ \text{esu}$. A modern smartphone battery can hold a huge charge of $10 \ \text{kC}$, or $\sim 10^{8} \ \text{esu}$. Indeed, charge in everyday settings can range from very small to very large, making it difficult for any chosen unit of charge to seem natural.

### Charge Quantization

Today, we know more about the properties of charge than was known at the time of Coulomb. This is largely due to the gradual discovery of atomic theory in the 19th and early 20th centuries. The idea that objects were composed of atoms is very old, going all the way back to Democritus in the 5th century BC. However, this idea wasn't taken seriously by the scientific community until Dalton postulated the idea again around the start of the 19th century. Indeed, Dalton is the one who coined the term *atom* from the Ancient Greek word *atomos*, meaning *indivisible*. As the 19th century progressed, more and more evidence grew to support the atomic hypothesis, eventually culminating in the discoveries of the electron by Thompson and the nucleus by Rutherford in the early 20th century. From these discoveries, quantum theory was introduced to explain the behavior of atoms, which ultimately culminated in the laws of quantum mechanics and eventually the Standard Model of particle physics we have today.

We know today that charge is *quantized* in integer unit of the charge of the proton,
$$
e \approx 4.8 \cdot 10^{-10} \ \text{esu} \approx 1.6 \cdot 10^{-19} \ \text{C} \ .
$$
That is, all charges we measure in nature are integer units of $e$. The only known exception to this fact are the fundamental particles that make up the proton and the neutron, known as *quarks*. Each proton and neutron is composed of three quarks, where each quark has a charge of $\pm e/3$. Due to a nuclear process known as *confinement*, these quarks are bound to the inside of their proton or neutron, meaning it's impossible to isolate them or measure their charges directly in the lab.

Fundamentally, physical objects are composed of atoms bound together by electrical forces. Each atom is composed of some number of protons and neutrons bound tightly inside a nucleus by a nuclear or *strong interaction*, and some number of electrons orbiting the nucleus according to the laws of quantum mechanics. Each proton has a charge of exactly $e$, each neutron has exactly zero charge, and each electron has a charge of exactly $-e$.

In most cases an atom has the same number of protons and electrons, in which case its net charge is zero, or *charge neutral*. Since protons can't easily be removed from a nucleus, the only way atoms typically acquire charge is by exchanging electrons with other neighboring atoms through *ionization*. Those electrons don't just spontaneously appear or disappear. They just move between nearby atoms. It's in precisely this sense that charge is conserved at the atomic level, and fundamentally it's why charge is also conserved at the macroscopic level as well.

This also explains why the charge we observe on macroscopic objects is very tiny. Almost all atoms or molecules inside the object are charge neutral and hence contribute nothing to the object's charge. When we do measure a charge, what it usually means is that some of the surface atoms have become ionized, either exchanging electrons with the air or with a neighboring object via friction. Indeed, a typical charged object might have a net charge of only $\sim 10^4 \ \text{esu}$. Since charge is quantized, this means
$$
n \sim \frac{10^4 \ \text{esu}}{4.8 \cdot 10^{-10} \ \text{esu}} \sim 10^{14}
$$
of its atoms have become ionized. While this might seem like a lot, note that a typical macroscopic object will contain something like $N \sim 10^{23}$ total atoms. This means only $n/N \sim 10^{-9}$, or one part in a billion, of the atoms making up the object have been ionized and thus contributing anything to the object's net charge.

### Conductors and Insulators

Even though all macroscopic objects are composed of atoms, they don't all behave the same. In electromagnetism, we find it useful to separate macroscopic materials into two broad categories that encapsulate much of how they interact with electromagnetic forces, known as *conductors* and *insulators*. Conductors are strong conductors of electric current. Insulators are the polar opposite of conductors, weak conductors of electric current.

At an atomic level, the difference between conductors and insulators lies in whether they have *free electrons*, or electrons not attached to any given atom that are allowed to move freely throughout the material. Conductors typically have many free electrons while insulators have few if any. The canonical examples of conductors are *metals* like iron, copper, or gold. The canonical examples of insulators are non-metallic materials glass, quartz, or rubber. 

There are also materials that act as conductors in some settings but insulators in others. These are known as *semiconductors*. The canonical example of a semiconductor is silicon, which is the material used to build most modern computer chips. While semiconductors are very important, particularly in chip design, we won't spend much time talking about them in this course, since understanding when they conduct and when they don't requires physics well beyond the scope of electromagnetism.

### Comparison with Gravity

It's worth taking a minute to ask how the electrostatic and gravitational forces between two objects compare to each other. After all, in typical lab settings it seems like gravity is much more powerful than electrostatic forces. We could thus be led to the conclusion that gravity is a much stronger force than the electrostatic force, but it turns out this isn't the case.

We'll first restate Coulomb's law. If two charges $q_1$ and $q_2$ are separated by some distance $r_{12}$, the electrostatic force strength $F_e$ between them is given (in Gaussian units) by
$$
F_e = \frac{q_1 q_2}{r_{12}^2} \ .
$$
However, these charges will also have mass, meaning there will be a gravitational attraction between them as well given by Newton's law of gravitation. If the first charge has a mass $m_1$ and the second charge has a mass $m_2$, the gravitational force strength $F_g$ between them will be
$$
F_g = G \frac{m_1 m_2}{r_{12}^2} \ ,
$$
where $G \approx 6.7 \cdot 10^{-8} \ \text{dyne} \cdot \text{cm}^2 / \text{g}^2$ is Newton's gravitational constant.

Notice that Coulomb's law and Newton's law of gravitation have exactly the same form except with $q_1 q_2 \leftrightarrow G m_1 m_2$. This means if we look at the strength ratio $F_e / F_g$ between the two forces the $1/r_{12}^2$ dependence cancels, and we have
$$
\frac{F_e}{F_g} = \frac{q_1 q_2}{G m_1 m_2} \ .
$$
To get a feel for this ratio, let's consider two specific examples. First, let's consider the case of two interacting electrons. Since each electron has a of charge $-e \approx -4.8 \cdot 10^{-10} \ \text{esu}$ and a mass $m_e \approx 9.1 \cdot 10^{-28} \ \text{g}$, we have
$$
\frac{F_e}{F_g} = \frac{(-4.8 \cdot 10^{-10})^2}{(6.7 \cdot 10^{-8}) (9.1 \cdot 10^{-28})^2} \approx 4 \cdot 10^{42} \ .
$$
Thus, for two interacting electrons, the electrostatic force is 42 orders of magnitude greater than their gravitational force. For all practical purposes, when dealing with electrons the electrostatic force is the only force that matters. We can pretty much neglect their gravitational force completely.

This may seem counterintuitive. It's not what we see in everyday experience. To that end let's consider the completely different case of two orbiting planets. We'll assume they both have the properties of the Earth. Roughly speaking, the Earth (when including its atmosphere) is slightly negatively charged, with a charge of about $-10^5 \ \text{esu}$. Since the mass of the Earth is about $6 \cdot 10^{27} \ \text{g}$, for two interacting Earth-like planets we have
$$
\frac{F_e}{F_g} = \frac{(-10^5)^2}{(6.7 \cdot 10^{-8}) (6 \cdot 10^{27})^2} \approx 2.5 \cdot 10^{-34} \ .
$$
Thus, for two orbiting planets, the gravitational force is about 34 orders of magnitude greater than their electrostatic force. For all practical purposes, when dealing with planets the gravitational force is the only one that matters, and we can neglect the electrostatic force completely. This explains why at the atomic level we can usually ignore gravity and focus only on electrostatic forces, and why at the astronomical level we can usually ignore electrostatics and focus only on gravitational forces. 

Evidently, the point where gravitational forces start to overcome electrostatic forces occurs when $|q_1 q_2| \sim G m_1 m_2$. For comparably sized masses and charges, this transition point occurs when
$$
|q|/m \sim \sqrt{G} \approx 3863 \ \text{esu}/\text{g} \ ,
$$
where $|q|/m$ is known as the *charge to mass ratio*. It occurs quite often in whenever electromagnetism and mechanics interact. When $|q|/m$ is large the electrostatic forces dominate, and when $|q|/m$ is small gravitational forces dominate. For example, the charge to mass ratio of the electron is $e/m_e \approx 5 \cdot 10^{17} \ \text{esu}/\text{g}$, which is clearly much larger than $\sqrt{G}$.

## Electric Field

In some sense our understanding of electrostatics is already finished. All of electrostatics is already incapsulated in Coulomb's law. However, we'll find it convenient and insightful to recast Coulomb's law in terms of other quantities that turn out to be much more useful to work with than forces. Indeed, much of the rest of electrostatics is just recasting Coulomb's law in other forms that each illuminate different aspects of the theory. First, we'll recast the law in terms of electric fields.

### Definition

If $q$ and $q'$ are two point charges located at positions $\mathbf{x}$ and $\mathbf{x}'$ respectively, the force $\mathbf{F}$ on $q$ due to $q'$ is given by Coulomb's law,
$$
\mathbf{F} = qq' \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \ .
$$
Notice if we divide both sides by $q$ we get a vector field $\mathbf{E} = \mathbf{E}(\mathbf{x})$ that depends only on $q'$,
$$
\mathbf{E}(\mathbf{x}) \equiv \frac{\mathbf{F}}{q} = q' \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \ .
$$
This vector field we call the *electric field* or *E-field* generated by $q'$. Since $\mathbf{E}$ doesn't depend on $q$, we can think of it as a vector field, taking on a value at each $\mathbf{x}$ in space. By convention, we call $\mathbf{x}$ the *field point* and $\mathbf{x}'$ the *source point*. Notice the source point will always be fixed in space in electrostatics since the location of $q'$ is assumed to be stationary, while the field point is free to move around in space depending on which specific point we're interested in measuring the value of the E-field.

By definition, the electric field has dimensions of force per unit charge, or units of $\text{dyne}/\text{esu}$ in Gaussian units. By convention though, we state the units of electric field in terms of $\text{statvolt}/\text{cm}$ in Gaussian units, where a *statvolt* is defined as one erg per esu. Of course, one statvolt per centimeter is exactly one dyne per esu. It's just a convention. Similarly, in SI units, the units of electric field are conventionally given in $\text{V}/\text{m}$, where $\text{V}$ is the *volt*, defined as one Joule per Coulomb.

Since forces obey the principle of superposition and E-fields are just forces per unit charge, E-fields must also obey the principle of superposition. That is, if $q_1', q_2', \cdots, q_n'$ are $n$ point charges located at positions $\mathbf{x}_1', \mathbf{x}_2', \cdots, \mathbf{x}_n'$ respectively, then total E-field due to the combined set of charges is given by the vector sum
$$
\mathbf{E} = \mathbf{E}_1 + \mathbf{E}_2 + \cdots \mathbf{E}_n \ ,
$$
where each $\mathbf{E}_i$ is what the E-field due to each individual charge $q_i'$ would be in the absence of any other charges, i.e.
$$
\mathbf{E}_i(\mathbf{x}) = q_i' \frac{\mathbf{x} - \mathbf{x}_i'}{|\mathbf{x} - \mathbf{x}_i'|^3} \ .
$$
The total E-field of the combined set of charges is evidently then
$$
\mathbf{E}(\mathbf{x}) = \sum_{i=1}^n q_i' \frac{\mathbf{x} - \mathbf{x}_i'}{|\mathbf{x} - \mathbf{x}_i'|^3} \ .
$$
When another charge $q$ is brought in and placed at some field point $\mathbf{x}$, it will feel a force due to the E-field given by
$$
\boxed{
\mathbf{F} = q \mathbf{E}
} \ .
$$
Notice that this is completely equivalent to Coulomb's law. In this sense, the physics is exactly the same. So why would we bother to introduce a new field if the physics is the same? The reason is that it allows us to assign a different *interpretation* to Coulomb's law. Instead of saying that two charges interact at a distance to produce a force, we think of one charge as producing an E-field at all points in space, and the other charge interacts with the *field* to produce a force instead of with the other charge directly.  The benefit of this *field interpretation* is it allows us to think of Coulomb's law as being *local*. That is, the force felt by a charge is due to its interaction with something nearby, the E-field, rather some far away charge via a so-called "action at a distance".

Indeed, pretty much all of modern physics is cast in terms of local *field theories* like this. Nowadays, we think of these fields as being fundamental physical objects, not just mathematical conveniences. A major benefit of such a local theory is that it allows us to recast many physical laws in terms of differential equations, which makes solving more complicated problems much easier.

As a brief aside, notice that Newton's law of gravitation looks almost identical to Coulomb's law. This means we can define a field interpretation for gravity in an almost identical manner to electrostatics, except with charges replaced by masses. In this setting, the analogue of the E-field is the *gravitational field* $\mathbf{g}$. If a mass $m$ is brought into the presence of a gravitational field, it feels a force $\mathbf{F} = m\mathbf{g}$. Indeed, much of the theory of electrostatics that we'll develop in the next few chapters can be mapped almost one-to-one onto the theory of Newtonian gravity as well.

##### Example: Physical Dipole

Suppose two stationary charges of opposite sign $\pm q$ are separated by a distance $d$ along some axis. A charge configuration of this form is known as a *physical dipole*. We'll let $\mathbf{x}_+$ denote the position of the $+q$ charge and $\mathbf{x}_-$ the position of the $-q$ charge. 

By Coulomb's law, the E-field $\mathbf{E}_+$ created by the positive charge $+q$ alone is given by
$$
\mathbf{E}_+(\mathbf{x}) = q \frac{\mathbf{x} - \mathbf{x}_+}{|\mathbf{x} - \mathbf{x}_+|^3} \ .
$$
Similarly, the E-field $\mathbf{E}_-$ created by the negative charge $-q$ alone is given by
$$
\mathbf{E}_-(\mathbf{x}) = -q \frac{\mathbf{x} - \mathbf{x}_-}{|\mathbf{x} - \mathbf{x}_-|^3} \ .
$$
By the superposition principle then, the combined E-field of the physical dipole is given by their vector sum,
$$
\mathbf{E}(\mathbf{x}) = \mathbf{E}_+(\mathbf{x}) + \mathbf{E}_-(\mathbf{x}) = q \bigg[\frac{\mathbf{x} - \mathbf{x}_+}{|\mathbf{x} - \mathbf{x}_+|^3} + \frac{\mathbf{x} - \mathbf{x}_-}{|\mathbf{x} - \mathbf{x}_-|^3}\bigg] \ .
$$
In this general form it's hard to understand what's going on. To that end, let's make the specific assumption that the charges both lie along the $z$-axis, with $+q$ located at position $\mathbf{x}_+ = (d/2) \mathbf{e}_z$ and $-q$ located at position $\mathbf{x}_- = -(d/2) \mathbf{e}_z$. Suppose further that we're interested only in field points $\mathbf{x}$ that lie directly along the $z$-axis, so that $\mathbf{x} = z\mathbf{e}_z$. Then we have
$$
\mathbf{x} - \mathbf{x}_+ = \bigg(z - \frac{d}{2}\bigg) \mathbf{e}_z \quad , \quad \mathbf{x} - \mathbf{x}_- = \bigg(z + \frac{d}{2}\bigg) \mathbf{e}_z \ .
$$
The distances between the $\mathbf{x}$ and each source point $\mathbf{x}_\pm$ are then just
$$
|\mathbf{x} - \mathbf{x}_+| = \bigg|z - \frac{d}{2}\bigg| \quad , \quad |\mathbf{x} - \mathbf{x}_-| = \bigg|z + \frac{d}{2}\bigg| \ .
$$
Plugging all of this back into the E-field and simplifying, along the $z$-axis we have
$$
\mathbf{E}(z) = q \bigg[\frac{z - d/2}{|z - d/2|^3} - \frac{z + d/2}{|z + d/2|^3}\bigg] \mathbf{e}_z = q \bigg[\frac{\text{sgn}(z - d/2)}{(z - d/2)^2} - \frac{\text{sgn}(z + d/2)}{(z + d/2)^2}\bigg] \mathbf{e}_z \ .
$$
For convenience we've introduced the *sign function* $\text{sgn}(x)$, defined by $\text{sgn}(x) = 1$ if $x > 0$ and $\text{sgn}(x) = -1$ if $x < 0$. 

Notice that for field points along the $z$-axis the E-field vectors will also point along the $z$-axis. Since the E-field is a vector it'll have both a magnitude and direction. The direction of the E-field at each $z$ depends on the signs of $z - d/2$ and $z + d/2$. 

If $z > d/2$ the E-field vector will point *upward* since $\text{sgn}(z - d/2) = \text{sgn}(z + d/2) = 1$ and
$$
\frac{1}{(z - d/2)^2} > \frac{1}{(z + d/2)^2} \ .
$$
If $z < -d/2$ the E-field vector will also point *upward* since $\text{sgn}(z - d/2) = \text{sgn}(z + d/2) = -1$ and
$$
\frac{-1}{(z - d/2)^2} > \frac{-1}{(z + d/2)^2} \ .
$$
In both cases, the magnitude of the E-field vector $E(z) = |\mathbf{E}(z)|$, called the *field strength*, will be given by the absolute value
$$
E(z) = q \bigg|\frac{1}{(z - d/2)^2} - \frac{1}{(z + d/2)^2}\bigg| \ .
$$
Meanwhile, if $-d/2 < z < d/2$ the E-field vector will point *downward* since $\text{sgn}(z - d/2) = -1$, $\text{sgn}(z + d/2) = 1$, and
$$
\frac{-1}{(z - d/2)^2} < \frac{1}{(z + d/2)^2} \ .
$$
In this case, the field strength will instead be given by
$$
E(z) = q \bigg|\frac{1}{(z - d/2)^2} + \frac{1}{(z + d/2)^2}\bigg| \ .
$$
For example, at the origin $z=0$ we'd have $E(z) = 8q/d^2$, with a downward-pointing E-field vector
$$
\mathbf{E}(0) = -\frac{8q}{d^2} \mathbf{e}_z \ .
$$
Notice that we can think of the E-field as pointing *away* from the positive charge and *into* the negative charge. This is a general fact, which we'll say more about in the next section.

Finally, let's look at what happens in the *far field limit*, when $r = |z| \gg d$. What should we expect to happen in this limit? Intuitively, one might expect that if we're far away from the source charges we can treat them both as a single point charge and use Coulomb's law to conclude that $E(z) \sim 1/r^2$. But this isn't the case for the dipole. To see why, let's do a binomial expansion of the field strength $E(z)$ in the case that $r > d/2$. We have
$$
\begin{align*}
E(z) &= q \bigg|\frac{1}{(z - d/2)^2} - \frac{1}{(z + d/2)^2}\bigg| \\
&= \frac{q}{z^2} \bigg|\frac{1}{(1 - d/2z)^2} - \frac{1}{(1 + d/2z)^2}\bigg| \\
&\approx \frac{q}{z^2} \big|(1 + d/z) - (1 - d/z) \big| \\
&\approx \frac{qd}{2r^3} \ .
\end{align*}
$$
Evidently, in the far field limit the E-field falls off like $1/r^3$, not like $1/r^2$. But why did this happen? The reason is because if we did indeed treat both charges as a single point charge then we have to use their *net charge*, and their net charge is $q - q = 0$. Said differently, the E-field of a dipole has no $1/r^2$ dependence because this term vanishes when we expand the E-field in powers of $d/r$. We thus have to go to the next term, which falls off like $1/r^3$. This behavior is characteristic of a dipole. In future chapters we'll show a systematic way to do an expansion of this kind and show that any field that falls off like $1/r^3$ *must* be that of a dipole.

### Field Lines

- Should probably move this discussion to preliminaries section since it's mathematical and general
- Will need to fill in field line discussion above/below (show some plots, E-field is electric flux density, etc)

Thus far we haven't said anything about how to visualize electric fields, or any vector field. Any vector field $\mathbf{F}(\mathbf{x})$ is a function of position, meaning each point $\mathbf{x}$ in space will take on a vector value $\mathbf{F}$. This means each $\mathbf{F}$ will have both a magnitude and a direction associated to it, not just a scalar value. There are two main ways one can visualize vector fields, *quiver plots* and *field line plots*. We'll describe both briefly here, though in this course we'll mainly use field line plots.

One way to visualize a vector field is to choose a bunch of points $\mathbf{x}$ and space. For each $\mathbf{x}$, we then calculate each vector $\mathbf{F} = \mathbf{F}(\mathbf{x})$. At the point $\mathbf{x}$, we then draw its $\mathbf{F}$ as an arrow whose tail sits at $\mathbf{x}$. Provided we do this for enough points in space, we can get an idea what the vector field behavior looks like. This is sometimes known as a *quiver plot*.

The problem with quiver plots is we only get an idea of what the vector field looks like at a few discrete points we choose. It's difficult to see how the vector field actually flows through space. To visualize this flow behavior better we can do something slightly different. Instead of plotting a bunch of vectors at each point, we plot *field lines*.

### Charge Distributions

In classical electromagnetism we find ourselves more often dealing not with a small number of discrete charges, but with macroscopic objects made up of a huge number of charges, for example conducting spheres or long wires of charge. When this is the case it's convenient to model such a *charge distribution* as a continuum of charge. This is an abstraction of course. After all, all macroscopic objects are made of atoms, each with some discrete amount of charge. However, provided we're interested in the behavior of fields at distances much larger than the atomic scale, which is typically the case, modeling the charges as a continuum is a valid approximation.

To that end, suppose a charged, stationary, macroscopic object takes up some volume $\mathcal{V}$ in space. Inside $\mathcal{V}$, each infinitesimal volume $d^3 \mathbf{x}'$ will have some infinitesimal amount of charge $dq'$. We can relate the two by defining a *charge density* $\rho(\mathbf{x}')$ by
$$
dq' = d^3 \mathbf{x}' \ \rho(\mathbf{x}') \ .
$$
Note that the terms *charge density* and *charge distribution* are frequently used interchangeably to refer to this same function.

Loosely speaking, we can think of the charge density $\rho = \rho(\mathbf{x}')$ as the differential charge per unit volume, or
$$
\rho = \frac{dq}{dV} \ .
$$
This means the units of charge density would be $\text{esu}/\text{cm}^3$ in Gaussian units. Note that $\rho$ isn't a "proper" density function in the mathematical sense since it's not non-negative. Since $q$ can be positive or negative, $\rho$ can take on any real value.

The total amount of net charge $Q$ contained inside the macroscopic object will then be given by the volume integral
$$
Q = \int_\mathcal{V} d^3\mathbf{x}' \ \rho(\mathbf{x}') \ .
$$
By convention, we typically extend the charge density function to cover all space by defining $\rho(\mathbf{x}') = 0$ for any $\mathbf{x}'$ not in $\mathcal{V}$. This means we can and will often omit the $\mathcal{V}$ from integrals and implicitly it's non-zero only when $\mathbf{x}'$ is in $\mathcal{V}$.

Now, for a continuous charge distribution each $dq'$ will give rise to an infinitesimal E-field $d\mathbf{E}(\mathbf{x})$ given by
$$
d\mathbf{E}(\mathbf{x}) = dq' \frac{\mathbf{x}-\mathbf{x}'}{|\mathbf{x}-\mathbf{x}'|^3} \ .
$$
By the principle of superposition then, the total E-field overall space will then be given by integrating over each $dq'$. In terms of the charge density this means we have
$$
\boxed{
\mathbf{E}(\mathbf{x}) = \int d^3 \mathbf{x}' \ \rho(\mathbf{x}') \frac{\mathbf{x}-\mathbf{x}'}{|\mathbf{x}-\mathbf{x}'|^3} 
}\ .
$$
We've thus managed to recast Coulomb's law into a form that also works for continuous distributions of charge. When a *test charge* $q$ is placed in the presence of some charge distribution, it will feel a force $\mathbf{F} = q\mathbf{E}$, where $\mathbf{E}$ is given by the integral above.

It turns out we can express the E-field for a point charge in terms of this integral as well by using the Dirac delta function. To see why this is the case, suppose a point charge $q_0'$ is placed at position $\mathbf{x}_0'$. We can then define a charge density for $q_0'$ by
$$
\rho(\mathbf{x}') = q_0' \delta(\mathbf{x}_0' - \mathbf{x}') \ .
$$
If we plug this into the integral above, the delta function will pick out the point $\mathbf{x}_0'$ from the integral and give
$$
\mathbf{E}(\mathbf{x}) = \int d^3 \mathbf{x}' \ q_0' \delta(\mathbf{x}_0' - \mathbf{x}') \frac{\mathbf{x}-\mathbf{x}'}{|\mathbf{x}-\mathbf{x}'|^3} = q_0' \frac{\mathbf{x}-\mathbf{x}_0'}{|\mathbf{x}-\mathbf{x}_0'|^3} \ ,
$$
which is the same E-field for a point charge given before. In this way, we can use the delta function to easily convert integrals into sums or vice versa, and thus avoid the need to state the formulas for discrete and continuous charge distributions separately.

### Line and Surface Charge Distributions

In defining the charge density above, we implicitly assumed that the charges were spread across 3-dimensional space. Sometimes we'll find it convenient to assume the charges are all concentrated along some 1-dimensional *curve* in space, for instance when modeling a wire of charge where the wire has a negligible thickness compared to its length. Other times we'll find it convenient to assume the charges are all concentrated along some 2-dimensional *surface* in space, for instance when modeling a flat sheet of charge where the length and width of the sheet are much larger than its height. In these situations it's thus often much more convenient to define charge distributions in one or two dimensions.

Suppose we have a distribution of charges concentrated along some 1-dimensional curve $\mathcal{C}$ in space. Along each infinitesimal segment $d\ell'$ of the curve there will be some amount of charge $dq'$. We then define the *line charge density* function $\lambda(\mathbf{x}')$ by
$$
dq' = d\ell' \lambda(\mathbf{x}') \ .
$$
To find the total net charge $Q$ contained on the curve we need only integrate over each $dq'$ along the curve to get
$$
Q = \int_\mathcal{C} d\ell' \lambda(\mathbf{x}') \ .
$$
By Coulomb's law, each charge $dq'$ along the curve will give rise to some E-field $d\mathbf{E}(\mathbf{x})$, where
$$
d\mathbf{E}(\mathbf{x}) = dq' \frac{\mathbf{x}-\mathbf{x}'}{|\mathbf{x}-\mathbf{x}'|^3} \ .
$$
By the principle of superposition, the E-field generated by the entire line charge distribution can be found by integrating along the entire length of the curve to get
$$
\boxed{
\mathbf{E}(\mathbf{x}) = \int_\mathcal{C} d\ell' \ \lambda(\mathbf{x}') \frac{\mathbf{x}-\mathbf{x}'}{|\mathbf{x}-\mathbf{x}'|^3} 
} \ .
$$
The dimensions of line charge density must evidently be charge per unit *length*, or units of of $\text{esu}/\text{cm}$ in Gaussian units.

In an analogous manner, suppose now that we have a distribution of charges concentrated along some 2-dimensional surface $\mathcal{S}$ in space. Along this surface, each infinitesimal patch of area $da'$ will have some amount of charge $dq'$. We then define the *surface charge density* $\sigma(\mathbf{x}')$ by
$$
dq' = da' \sigma(\mathbf{x}') \ .
$$
To find the total net charge $Q$ contained on the surface we need only integrate over all $dq'$ along the surface to get
$$
Q = \int_\mathcal{S} da' \sigma(\mathbf{x}') \ .
$$
Each charge $dq'$ along the surface will give rise to some E-field $d\mathbf{E}(\mathbf{x})$ according to Coulomb's law. By the principle of superposition, we can thus find the E-field due to the entire surface charge distribution by integrating over the surface to get
$$
\boxed{
\mathbf{E}(\mathbf{x}) = \int_\mathcal{S} da' \ \sigma(\mathbf{x}') \frac{\mathbf{x}-\mathbf{x}'}{|\mathbf{x}-\mathbf{x}'|^3} 
} \ .
$$
The dimensions of surface charge density must evidently be charge per unit *area*, or units of $\text{esu}/\text{cm}^2$ in Gaussian units.

In this course we'll find ourselves frequently needing to go back and forth between densities of different dimension depending on the given problem at hand. For charge densities, the easiest way to do so is to remember the following equivalence,
$$
\int_\mathcal{C} d\ell' \lambda(\mathbf{x}') \leftrightarrow \int_\mathcal{S} da' \sigma(\mathbf{x}') \leftrightarrow \int_\mathcal{V} d^3\mathbf{x}' \rho(\mathbf{x}') \ .
$$
With charge densities now defined in different dimensions we're now finally in a position to work a few problems. Unfortunately, calculating the E-field directly from this integral is usually quite cumbersome, in part due to the fact that we have to solve an for each of the three components of $\mathbf{E}$. In some cases we can do so, particularly if the charge distribution is highly symmetric in some system of coordinates. We'll illustrate three such examples below, the infinite wire of uniform charge, the infinite sheet of uniform charge, and the sphere of uniform charge.

##### Example: Infinite wire of uniform charge

Suppose we have a very long, straight conducting wire on which we place a uniform charge per unit length $\lambda$. We'll assume the wire is so long that we can approximate its length as infinite, and that the wire is so thin that we can assume it's a one dimensional line of charge with a constant line charge density $\lambda$. 

To calculate the E-field of this wire, we need to evaluate the line integral
$$
\mathbf{E}(\mathbf{x}) = \int d\ell' \ \lambda(\mathbf{x}') \frac{\mathbf{x}-\mathbf{x}'}{|\mathbf{x}-\mathbf{x}'|^3} \ .
$$
Now, the most important observation we need to get started on this problem is to observe this charge distribution has a cylindrical symmetry to it. Suppose the wire is oriented along the $z$-axis. Since the wire is 1-dimensional, its corresponding E-field must necessarily be azimuthally symmetric, meaning $\mathbf{E}(\mathbf{x}) = \mathbf{E}(\varrho, z)$ in cylindrical coordinates. Next, since $\lambda$ is constant along the wire and the wire is infinitely long, the wire must also be cylindrically symmetric, meaning $\mathbf{E}(\mathbf{x}) = \mathbf{E}(\varrho)$. That is, the E-field can only depend on the field point's radial distance from the wire. Moreover, the E-field must always point in the $\varrho$-direction for this exact same reason, since the $z$-component of any $d\mathbf{E}$ at some point the wire will cancel with the $z$-component of another $d\mathbf{E}$ at some other point on the wire, leaving only the $\varrho$-component to contribute, as shown in the figure below. 

FIGURE

We can thus argue by symmetry alone that we must have
$$
\mathbf{E}(\mathbf{x}) = E(\varrho) \mathbf{e}_\varrho \ .
$$
This means to find $\mathbf{E}(\mathbf{x})$ we only need to evaluate the $\varrho$ component of the integral above, or
$$
E(\varrho) = \mathbf{E}(\mathbf{x}) \cdot \mathbf{e}_\varrho = \int d\ell' \ \lambda(\mathbf{x}') \frac{(\mathbf{x}-\mathbf{x}') \cdot \mathbf{e}_\varrho}{|\mathbf{x}-\mathbf{x}'|^3} \ .
$$
We now need to figure out what the separation vector $\mathbf{x}-\mathbf{x}'$ is. Since all the charges lie on the $z$-axis, we can write each source point $\mathbf{x}'$ as $\mathbf{x}' = z' \mathbf{e}_z$, where $z'$ is the $z$-coordinate of the source point on the wire. Since the field point $\mathbf{x}$ could in principle be any point in space, when written out in cylindrical coordinates we'd in general have
$$
\mathbf{x} = \varrho \mathbf{e}_\varrho + z \mathbf{e}_z \ .
$$
However, we can simplify this a little. Since the wire is infinitely long and the E-field is independent of $z$, it suffices to calculate the E-field in the $xy$-plane since this will be the same E-field for all $z$. We can thus assume without loss of generality that $z = 0$, and write $\mathbf{x} = \varrho \mathbf{e}_\varrho$. This means the separation vector becomes
$$
\mathbf{x}-\mathbf{x}' = \varrho \mathbf{e}_\varrho - z' \mathbf{e}_z \ ,
$$
and hence $(\mathbf{x}-\mathbf{x}') \cdot \mathbf{e}_\varrho = \varrho$. The separation distance $|\mathbf{x}-\mathbf{x}'|$ is then simply
$$
|\mathbf{x}-\mathbf{x}'| = \sqrt{\varrho^2 + z'^2} \ .
$$
Since the wire runs along the $z$-axis and $\lambda$ is constant, we can write $d\ell' \ \lambda(\mathbf{x}') = \lambda dz'$. We thus finally end up with the integral
$$
E(\varrho) = \lambda \int_{-\infty}^\infty dz' \ \frac{\varrho}{(\varrho^2 + z'^2)^{3/2}} \ .
$$
This integral can easily be evaluated by substitution. If we let $u = z'/\varrho$, then $du = dz'/\varrho$, and so we have
$$
\begin{align*}
E(\varrho) &= \lambda \int_{-\infty}^\infty dz' \ \frac{\varrho}{(\varrho^2 + z'^2)^{3/2}} \\
&= \frac{\lambda}{\varrho^2} \int_{-\infty}^\infty \frac{dz'}{\big(1 + (z'/\varrho)^2\big)^{3/2}} \\
&= \frac{\lambda}{\varrho} \int_{-\infty}^\infty \frac{du}{(1 + u^2)^{3/2}} \\
&= \frac{\lambda}{\varrho} \frac{u}{\sqrt{1 + u^2}} \bigg|_{u=-\infty}^{u=\infty} \\
&= \frac{2\lambda}{\varrho}
\ .
\end{align*}
$$
Thus, the E-field of an infinitely long wire of with a uniform charge per unit length $\lambda$ is just
$$
\mathbf{E}(\mathbf{x}) = \frac{2\lambda}{\varrho} \mathbf{e}_\varrho \ .
$$
As expected, the E-field depends only on the radial distance from the wire. If the wire is positively charged, then $\lambda > 0$, which means the E-field will point radially *outward* from the wire. If it's negatively charged, then $\lambda < 0$, which means the E-field will point radially *inward* toward the wire. 

FIGURE

Perhaps unexpectedly though, the field falls off like $1/\varrho$ and not like $1/\varrho^2$ as we might expect from Coulomb's law. Why is this the case? The reason is because we assumed the wire was infinitely long. This means the wire will always appear infinitely long no matter how far we are away from the wire. That is, it'll never look like a point charge no matter how far we are away from it, and only point charges obey Coulomb's law. If the wire were finite, which is of course always the case in reality, eventually we would be able to move far enough from the wire that it would behave as a point charge. Then it would fall off like $1/\varrho^2$ far away. However, near the wire the field would still fall off like $1/\varrho$ even if the wire has a finite length.

##### Example: Infinite sheet of uniform charge

Suppose we have a very large square conducting sheet on which we place a uniform charge per unit area $\sigma$. We'll assume that the sheet is so large that its area is infinite, and that the sheet is so thin that we can neglect its depth and model the sheet as having a 2-dimensional charge distribution with a constant surface density $\sigma$.

To calculate the E-field of this infinite sheet, we thus need to evaluate the surface integral
$$
\mathbf{E}(\mathbf{x}) = \int da' \ \sigma(\mathbf{x}') \frac{\mathbf{x}-\mathbf{x}'}{|\mathbf{x}-\mathbf{x}'|^3} \ .
$$
Now, observe that this sheet also has a symmetry, this time a *planar symmetry*. Since the charge per unit area is uniform across the sheet, the E-field must be the same for any points the same distance above or below the sheet. That is, the E-field at any given point must only depend on the point's distance from the sheet. If we suppose the sheet lies in the $xy$-plane, this means we must have that $\mathbf{E}(\mathbf{x}) = \mathbf{E}(z)$.

What about the direction of the E-field at each $z$ though? It's easy to see that the field must always point in the $z$-direction, since the planar components of the field vector $d\mathbf{E}$ at any $(x',y')$ on the sheet must cancel with the planar components of some other field vector at some other point, leaving only their vector sum in the $z$-direction to contribute. Also, since $\sigma$ is constant, the field lines must always point either away from or into the sheet, with the field lines pointing *outward* if $\sigma > 0$ and *inward* if $\sigma < 0$. Thus, the E-field vectors above the sheet will always point in the opposite direction to the E-field vectors below the sheet.

Mathematically, we can express these arguments by saying by symmetry the E-field must satisfy
$$
\mathbf{E}(\mathbf{x}) = \text{sgn}(z) E(z) \mathbf{e}_z \ ,
$$
where we use $\text{sgn}(z)$ to indicate that the direction of the field below the $xy$-plane is opposite the direction of the field above. 

It thus suffices to compute $E(z)$ for some $z > 0$ above the sheet and we're basically done,
$$
E(z) = \mathbf{E}(\mathbf{x}) \cdot \mathbf{e}_z = \int da' \ \sigma(\mathbf{x}') \frac{(\mathbf{x}-\mathbf{x}') \cdot \mathbf{e}_z}{|\mathbf{x}-\mathbf{x}'|^3} \ .
$$
Now, since the sheet is infinite, it suffices to compute $E(z)$ at the point $(0,0,z)$, since by symmetry $E(z)$ will be the same for any other point $(x,y,z)$ at the same height. This means we can set $\mathbf{x} = z \mathbf{e}_z$. Since the source points $\mathbf{x}'$ are in the $xy$-plane at some point $(x',y',0)$, we could write
$$
\mathbf{x}' = x' \mathbf{e}_x + y' \mathbf{e}_y \ .
$$
However, we'll see it's more convenient for the integration to write $\mathbf{x}'$ in cylindrical coordinates as $\mathbf{x}' = \varrho' \mathbf{e}_\varrho$. This means the separation vector is then just
$$
\mathbf{x} - \mathbf{x}' = z \mathbf{e}_z - \varrho' \mathbf{e}_\varrho \ ,
$$
which means $(\mathbf{x} - \mathbf{x}') \cdot \mathbf{e}_z = z$, and
$$
|\mathbf{x} - \mathbf{x}'| = \sqrt{z^2 + \varrho'^2} \ .
$$
Since the sheet is flat and $\sigma$ is constant, in cylindrical coordinates we have $da' \ \sigma(\mathbf{x}') = \sigma \varrho' d\varrho' d\varphi'$. Plugging all of this back into the integral we thus need to solve the following,
$$
E(z) = \sigma \int_0^\infty \varrho' d\varrho' \int_0^{2\pi} d\varphi' \ \frac{z}{(z^2 + \varrho'^2)^{3/2}} \ .
$$
Notice the integrand doesn't depend on the angle $\varphi'$, which means we can immediately evaluate the $\varphi'$ integral to get
$$
E(z) = 2\pi\sigma \int_0^\infty d\varrho' \frac{z\varrho'}{(z^2 + \varrho'^2)^{3/2}} \ .
$$
We can now evaluate the remaining integral by substituting $u = \varrho'/z$ to get
$$
\begin{align*}
E(z) &= 2\pi\sigma \int_0^\infty d\varrho' \frac{z\varrho'}{(z^2 + \varrho'^2)^{3/2}} \\
&= \frac{2\pi\sigma}{z^2} \int_0^\infty d\varrho' \ \frac{\varrho'}{\big(1 + (\varrho'/z)^2\big)^{3/2}} \\
&= 2\pi\sigma \int_0^\infty du \ \frac{u}{(1 + u^2)^{3/2}} \\
&= 2\pi\sigma \frac{-1}{\sqrt{1 + u^2}} \bigg|_{u=0}^{u=\infty} \\
&= 2\pi\sigma
\ .
\end{align*}
$$
Thus, the E-field of an infinite sheet of uniform charge per unit area is given by
$$
\mathbf{E}(\mathbf{x}) = \begin{cases}
2\pi\sigma \mathbf{e}_z \ , & z > 0 \\
-2\pi\sigma \mathbf{e}_z \ , & z < 0
\end{cases} \ .
$$
Notice that perhaps surprisingly the E-field doesn't seem to depend on $z$ at all. The field strength is a constant $2\pi\sigma$ for all $z$, no matter how far we are away from the sheet. The only thing that changes is the direction of the field, depending on whether we're above or below the sheet. Just as in the previous example, the reason for this lies in the assumption that the sheet is infinite. If the sheet had a finite size, then far away from the sheet it would behave as a point charge and fall off like $1/z^2$ in accordance with Coulomb's law. However, close to the sheet the E-field will *still* approximately be constant even for a finite sheet.

Here's something else worth noticing. The E-field changes discontinuously when crossing the sheet. Indeed, if $\mathbf{x}_+$ is some point above the sheet and $\mathbf{x}_-$ is some point below the sheet, then the difference between the E-field vectors of these two points is always a constant,
$$
\Delta\mathbf{E} = \mathbf{E}(\mathbf{x}_+) - \mathbf{E}(\mathbf{x}_-) = 4\pi\sigma \mathbf{e}_z \ .
$$
This is curious… PICK UP HERE DON'T FEEL LIKE IT RIGHT NOW (SEE BELOW FOR HELP)



- Start rewriting here…
- Fill in field lines section above first.
- Infinite line charge, hollow/solid sphere, show there's no electrostatic equilibrium
- Peruse and update the later sections.
- Move capacitance section into field energy section (maybe rename section). Move conductor discussion to potential section.

Note that the requirement that $q$ be an infinitesimal charge in this definition is important. If test charge is high enough, it will distort the background electric field through its presence, in effect making *both* charges source charges for the field. Also, note that this doesn't mean that the charge will move in the direction of the electric field. All that will be true is that its force vector will be tangential to the electric field at that point, pointing in the direction of the field if $q$ is negative, and opposite the field if $q$ is opposite. The path the charge actually follows through the field may be quite complicated.

The most typical way to visualize vector fields in electromagnetism is via *field lines*. We imagine that any positive charge emits from it a bunch of lines, called field lines. These field lines follow the direction of the vector field in space, only terminating at negative charges or at infinity. Field lines should never cross each other. The direction of a field line is always from positive charges to negative charges. The strength of the field is captured by the density of field lines. The more field lines there are surrounding a given point in space, the stronger the field at that point. Indeed, we can informally *define* a vector field as the *flux density* of field lines, i.e. the number of field lines per unit volume.

Here are some examples of electric field line sketches for a few different configurations of point charges. Notice it's usually fairly easy to sketch field lines for a given charge configuration, even if finding an expression for the actual electric field of that configuration might be difficult. We'll see field lines sketched in many figures throughout this course.

FIGURE







This idea can be seen in the figure below. Here the gray blob is some charge distribution, and $dq$ some infinitesimal element of it. Adding up, or integrating, over all these charges will give the full electric field $\mathbf{E}(\mathbf{x})$.



The field lines for the electric fields of continuous distributions work the same way they do for point charges. The main new thing to be aware of is that field lines will always point *normal* to the surface of the charge distribution. Again, the field lines will point away from positive charge distributions, and toward negative charge distributions or out to infinity, never crossing.





##### Example: Hollow sphere of uniform charge

As our last example for this section, suppose now we have a *hollow* conducting sphere of radius $R$ on which we've placed some constant amount of charge $Q$ across the surface, so that its charge per unit area is a constant $\sigma = Q/4\pi R^2$.

Given the symmetry of the problem it's natural to work in spherical coordinates. By symmetry, it's not hard to see that the electric field for the hollow sphere must *always* point in the radial direction. Indeed, notice that any source point we pick on the sphere will have an opposite point $180^\circ$ away at the same altitude. Since the charge is uniform, both source points will cancel all but the radial component of the field when added together. We thus just need to find the single scalar $E(r)$, where
$$
\mathbf{E}(\mathbf{x}) = E(r) \mathbf{e}_r \ .
$$
To find $E(r)$ we need to take the inner product of $\mathbf{E}$ with $\mathbf{e}_r$. In terms of the separation vector $\boldsymbol{\xi} = \mathbf{x} - \mathbf{x}'$, we have
$$
E(r) = \int da' \ \frac{\sigma}{\xi^3} \boldsymbol{\xi} \cdot \mathbf{e}_r \ .
$$
To make headway we need to find the area element $da'$, the relative distance $\xi = |\boldsymbol{\xi}|$, and the dot product $\boldsymbol{\xi} \cdot \mathbf{e}_r$. Starting with the area element, for a sphere it's simply the volume element in spherical coordinates with $r=R$ and without the $dr$ integral,
$$
da' = R^2 \sin\theta' d\theta' d\phi' \ .
$$
Now we need to find $\xi \equiv |\mathbf{x} - \mathbf{x}'|$, which is somewhat trickier. Without loss of generality we can assume that the field point lies on the $z$-axis, so that $\mathbf{x} = r \mathbf{e}_z$. Then an arbitrary source point $\mathbf{x}' = R \mathbf{e}_r$ on the sphere will subtend a polar angle $\theta'$ with the $z$-axis. Using the law of cosines on the triangle shown in the figure below, we can see that
$$
\xi^2 = r^2 + R^2 - 2Rr \cos\theta' \ .
$$


![](../resources/image-20240602122925138.png){fig-align=center width=500}

Next we need to calculate the dot product $\boldsymbol{\xi} \cdot \mathbf{e}_r$. Using the geometric formula for the dot product and the above triangle, we see
$$
\boldsymbol{\xi} \cdot \mathbf{e}_r = \xi \cos\alpha = \frac{r - R\cos\theta'}{\xi} \ .
$$
We can now plug all of these values into the electric field integral and just plug away. We'll integrate over the whole sphere,
$$
\begin{align*}
E(r) &= \int da' \ \frac{\sigma}{\xi^3} \boldsymbol{\xi} \cdot \mathbf{e}_r \\
&= \int \sigma R^2 \sin\theta' d\phi' d\theta' \frac{r - R\cos\theta'}{\xi^3} \\
&= R^2 \sigma \int_0^{2\pi} \sin\theta' d\phi' \int_0^{\pi} d\theta' \frac{r - R\cos\theta'}{(r^2 + R^2 - 2Rr \cos\theta')^{3/2}} \\
&= 2\pi R^2 \sigma \int_0^{\pi} \sin\theta' d\theta' \frac{r - R\cos\theta'}{(r^2 + R^2 - 2Rr \cos\theta')^{3/2}} \ .
\end{align*}
$$
To evaluate the remaining integral we make use of a very common substitution in electrostatics. Supposing $f(\cos\theta)$ is some function we'd like to integrate in spherical coordinates, we can always let $\mu = \cos\theta'$ and $d\mu = -\sin\theta' d\theta'$. Then we have
$$
\int_0^\pi \sin\theta d\theta \ f(\cos\theta) = \int_{-1}^1 d\mu \ f(\mu) \ .
$$
Using this useful trick, the integral for the field simplifies slightly to
$$
E(r) = 2\pi R^2 \sigma \int_{-1}^1 d\mu \ \frac{r - R\mu}{(r^2 + R^2 - 2Rr \mu)^{3/2}} \ .
$$
The remaining integral can be done by breaking up the numerator and doing another substitution. In the end we get
$$
\begin{align*}
E(r) &= \frac{2\pi R^2 \sigma}{r^2} \bigg[\frac{r\mu - R}{\sqrt{r^2 + R^2 - 2R\mu}} \bigg]_{\mu=-1}^1 \\
&= \frac{2\pi R^2 \sigma}{r^2} \bigg[\frac{r-R}{|r-R|} + 1 \bigg] \ .

\end{align*}
$$
Now, notice that the first term in the brackets will always be $\pm 1$ depending on the sign of $r-R$. When we're inside the sphere $r < R$, and so this term is $-1$. This means that inside the sphere the electric field must vanish, with $E(r) = 0$.

Outside the sphere $r > R$, and so the first term is $+1$​. In this case we have
$$
E(r) = \frac{4\pi R^2 \sigma}{r^2} = \frac{Q}{r^2} \ .
$$
Notice that this looks identical to Coulomb's Law for the electric field. Evidently, a hollow sphere behaves as a point charge $Q$​ for any field points outside the sphere.

Using the result we have for the hollow sphere, let's quickly figure out what the electric field should be for a *solid sphere* of uniform charge. The only difference now is that the sphere is 3-dimensional. We can work directly from our previous solution. We just have to replace $\sigma$ with $\rho$ and $R$ by an integration variable $r'$. However we do have to be slightly careful, since the charge density is only nonzero inside the sphere. This means we integrate up to $R$ for field points outside the sphere, and up to $r$ otherwise. We can take care of both cases by integrating up to $r_{\min} \equiv \min(r, R)$. Then we have
$$
E(r) = \frac{4\pi\rho}{r^2} \int_0^{r_{\min}} dr' \ r'^2 = \frac{4\pi\rho}{3} \frac{r_{\min}^3}{r^2} \ .
$$
Now, if $r > R$ we're outside the sphere, and $r_{\min} = R$. In that case we have
$$
E(r) = \frac{4\pi R^3 \rho}{3r^2} = \frac{Q}{r^2} \ .
$$
Here we used the fact that in 3 dimensions the total charge of the sphere becomes $Q = \frac{4\pi}{3} R^3 \rho$​. Notice that we get the same result we got in the hollow sphere. The electric field is again that of a point charge outside the sphere.

Inside the sphere, however, things change. When $r \leq R$ we have $r_{\min} = r$, in which case
$$
E(r) = \frac{4\pi\rho}{3} r = \frac{Qr}{R^3} \ .
$$
Now the electric field inside the sphere is apparently linear in $r$, not zero. It's easy to check that the two results match at the boundary of the sphere where $r=R$. Note that in either case the electric field is still just the enclosed charge $Q_{\text{enc}} = \frac{4\pi}{3} r_{\min}^3 \rho$ divided by $r^2$. This means any charge outside the enclosed sphere contributes nothing to the field. In the figure below we plot the field strengths $E(r)$ for both the hollow and solid spheres to show the difference between the two.

FIGURE

This was clearly a difficult integration problem. We'll see a *much* easier way to find the electric field of a sphere shortly. For now, just be aware that in practice calculating the electric field of a charge distribution straight from the definition is almost always very challenging, and often impossible. Indeed, much of the rest of our study of electrostatics from here on will be about finding simpler ways to calculate the electric field of an arbitrary charge distribution.

## Gauss's Law

While Coulomb's Law is perhaps more directly connected to experiment and the historical progression of electromagnetism, it's usually not the most illuminating nor useful way to understand and calculate electric fields. Just as in classical mechanics we found it useful to express Newton's law as an ordinary differential equation for the trajectory of a particle, in electromagnetism we'll find it more useful to express Coulomb's Law as a set of *partial differential equations* for the electric field.

### Electric Flux

We know from the Helmholtz theorem that any well behaving vector field can be fully characterized by its divergence and its curl. This means if we can find the divergence and curl of the electric field we have an equivalent characterization for the field in terms of two linear partial differential equations. We'll derive the divergence of the electric field in this section, saving the curl of the electric field for the next section before discovering a neat way to combine them both together.

To make a start we need to define the idea of the *flux* of a vector field. Suppose $\mathcal{S}$ is some surface of interest we'd like to calculate the flux through. In electromagnetism we call this surface a *Gaussian surface*. The *flux* $\Phi_E$ through $\mathcal{S}$ due to the field $\mathbf{E}$ is defined by the integral
$$
\Phi_E \equiv \int_\mathcal{S} \mathbf{E} \cdot d\mathbf{a} \ .
$$
Informally, we can think of the flux as the total number of *signed* field lines passing through some specified surface of interest. By signed, we mean that the field lines passing through the positively oriented side of the surface contribute positive flux, while those passing through the negatively oriented side of the surface contribute negative flux. This means that flux itself will be a signed quantity indicating the net tendency of a field to flow into or out of a given surface. In particular, this means if the same field line passes in and out of the same surface it contributes nothing to the flux.

As defined, the flux depends entirely on the surface $\mathcal{S}$ we choose. Different surfaces will have a different flux. However, in practice we'll usually be interested in *closed surfaces*. In that case, we'll show that the flux depends only on the charge distribution enclosed by the surface, not on the geometric properties of the surface itself. To do that we need to find a way to relate the flux of an electric field to the charge distribution in some way.

### Integral Form

Let's start by trying to find the flux through a sphere of radius $r$ centered on a point charge $q$ located at the origin. Since $q$ is located at the origin we have $\mathbf{x}' = \mathbf{0}$, meaning the electric field is simply
$$
\mathbf{E}(\mathbf{x}) = q \frac{\mathbf{x}}{|\mathbf{x}|^3} = \frac{q}{r^2} \mathbf{e}_r \ .
$$
For a sphere of radius $r$ the area element is given by $d\mathbf{a} = r^2 d\Omega \mathbf{e}_r$. Here $d\Omega$ is the differential *solid angle*, which is just a useful shorthand for angular components of the area element, $d\Omega \equiv \sin\theta d\theta d\phi$. To find the flux, we need only now integrate to get
$$
\Phi_E = \oint_\mathcal{S} \mathbf{E} \cdot d\mathbf{a} = \int d\Omega \ r^2 \frac{q}{r^2} \mathbf{e}_r \cdot \mathbf{e}_r = 4\pi q \ .
$$
We've thus shown that the flux of a point charge through a sphere is just proportional to the charge. Notice in this result that the radius of the Gaussian surface didn't enter into the picture at all. No matter what it cancels out. This fact is unique to inverse square fields, like electricity or gravity. Any field of this type will have the property that its flux is proportional to its source "charge".

But thus far we've only shown this holds for the flux through a sphere. What about an arbitrary closed surface? In fact the result is the same. To see why, suppose $\mathcal{S}$ is some arbitrary closed surface containing $q$. Suppose $\alpha$ is the outward angle between $\mathbf{E}$ and the surface normal $\mathbf{n}$. Then we evidently have
$$
\mathbf{E} \cdot d\mathbf{a} = |\mathbf{E}| |\mathbf{n}| \cos\alpha da = \frac{q}{r^2} \cos\alpha da \ .
$$
It now seems like we should get a different flux. However, we have to look closer at the area element $da$ first. Since the surface is no longer spherical we have to divide by another factor of $\cos\alpha$ to account for the fact that we're only interested in the flux through the outward normal component of the surface,
$$
da = \frac{r^2}{\cos\alpha} d\Omega \ .
$$
Putting these together we get exactly what we claimed,
$$
\oint_\mathcal{S} \mathbf{E} \cdot d\mathbf{a} = \int d\Omega \ \frac{r^2}{\cos\alpha} \frac{q}{r^2} \cos\alpha = 4\pi q \ .
$$
This is only true though when the charge is contained *inside* the surface. What if it's *outside* the surface? We already said informally the flux in that case should be zero, since any field lines going into the surface also comes out, offsetting the flux. Indeed, if $\mathbf{E} \cdot d\mathbf{a}$ is some contribution to the flux, there will be a corresponding contribution $-\mathbf{E} \cdot d\mathbf{a}$ on some other part of the Gaussian surface that will cancel out the first contribution. This can be seen geometrically in the figure below.



![](../resources/image-20240616173508660.png){fig-align=center width=600}

Putting these two results together, we've shown that if $q$ is a point charge and $\mathcal{S}$ is some closed surface, then
$$
\oint_\mathcal{S} \mathbf{E} \cdot d\mathbf{a} =
\begin{cases}
4\pi q, & q \ \text{inside} \ \mathcal{S} \\
0, & q \ \text{outside} \ \mathcal{S} \ .
\end{cases}
$$
By the principle of superposition, this result must also hold for some arbitrary distribution of charge, the flux through a closed surface depends *only* on the charge $Q_{\text{enc}}$ enclosed inside the surface,
$$
\boxed{
\oint_\mathcal{S} \mathbf{E} \cdot d\mathbf{a} = 4\pi Q_{\text{enc}}
} \ .
$$
This important result is called the *integral form* of *Gauss's Law*. It says that the total flux of the electric field through a closed surface is proportional to the enclosed charge inside the surface. 

Gauss's Law in this form can be very convenient to directly find the electric field in situations where the charge distribution has a high level of symmetry. As we've shown, as long as two closed surfaces contain the same charge distribution they will also have the same flux. What we can thus do is use this freedom to choose a Gaussian surface that simplifies the problem. 

The simplest thing we could imagine doing is to choose a Gaussian surface such that the electric field strength $|\mathbf{E}|$ is constant along the surface. In that case, we'd have
$$
\oint_\mathcal{S} \mathbf{E} \cdot d\mathbf{a} = |\mathbf{E}| \oint_\mathcal{S} da = |\mathbf{E}| A \ ,
$$
where $A$ is the total surface area of $\mathcal{S}$. Then by Gauss's law, the electric field strength is just
$$
|\mathbf{E}| = 4\pi \frac{Q_{\text{enc}}}{A} \ .
$$
For this to work though the charge distribution really needs to have a high level of symmetry. There are essentially only three situations for where we can do this: infinite lines of charge, infinite sheets of charged, and charged spheres. Let's look at each of these cases one by one, since their solutions turn out to be very useful approximations to many practical problems.

##### Infinite line of Uniform Charge

Consider a line of charge of infinite length and infinitesimal width, so we can treat the line as one-dimensional. We'll suppose the line is oriented along the $z$-axis and carries a constant charge per unit length of $\lambda$​. Our goal is to find its electric field. We could do this the hard way as before, but in this case we can do it much more easily using Gauss's Law, so that's what we'll do.

![](../resources/image-20240616180813782.png){fig-align=center width=400}

By symmetry, the electric field should depend only on the cylindrical radius $\varrho$. To see why, pick a random field point in the $xy$-plane. Now pick a random source point at a height $z'$ along the wire. Then there must also be an opposite source point at a height $-z'$. If we add the two field vectors together, their $z$-components will cancel, leaving only a contribution in the $\varrho$-direction. We thus must conclude that the electric field has the property that
$$
\mathbf{E}(\mathbf{x}) = E(\varrho) \mathbf{e}_\varrho \ .
$$
All that remains thus is to find $E(\varrho)$. Now, the electric field must be constant along cylinders of constant $\varrho$. This means we have a natural Gaussian surface on which to apply Gauss's Law. We'll choose cylinders of radius $\varrho$ and length $z$ centered on the wire. Since only the sides of the cylinder contribute to the flux, we need only consider the area of the sides of the cylinder, ignoring the two caps. This means the flux of the field is
$$
\oint_\mathcal{S} \mathbf{E} \cdot d\mathbf{a} = |\mathbf{E}| A = E(\varrho) \cdot 2\pi \varrho z
$$
Inside this cylinder, the enclosed charge is $Q_{\text{enc}} = \lambda z$. Applying Gauss's Law, we thus have
$$
E(\varrho) \cdot 2\pi \varrho z = 4\pi \lambda z \ .
$$
Solving for $E(\varrho)$, we get
$$
E(\varrho) = \frac{2\lambda}{\varrho} \ .
$$
The electric field of an infinite wire is thus given by
$$
\mathbf{E}(\mathbf{x}) = \frac{2\lambda}{\varrho} \mathbf{e}_\varrho \ .
$$
Clearly the field lines point radially outward from the wire (or inward if $\lambda$ is negative), and fall off like $1/\varrho$. Notice that this seems to contradicts Coulomb's Law, which predicts that far away from the wire the electric field should go like the inverse square of the distance. Why the contradiction? This comes from our assumption that the wire was infinitely long. If the wire had only a finite length, we would indeed recover Coulomb's Law in the far field limit.

##### Infinite sheet of uniform charge

We'll now consider not an infinite *line* of uniform charge, but an infinite *flat sheet* of uniform charge. We'll suppose this sheet is oriented in the $xy$-plane and has infinitesimal thickness, so we can treat the sheet as 2-dimensional with a constant surface charge density $\sigma$​.

![](../resources/image-20240616180900393.png){fig-align=center width=500}

By symmetry, we'll argue that the electric field must always point away from the sheet in the $z$ direction. To see why, pick a random field point at a height $z$ above (or below) the sheet, centered at the origin. Pick a random source point $(r',\varphi')$ along the sheet. Now, there must be an opposite source point at $(r',\varphi'+\pi)$ for which the two field vectors will cancel in all but the $z$-direction. This means
$$
\mathbf{E}(\mathbf{x}) = E(z) \mathbf{e}_z \ .
$$
It's also clear from symmetry that we must have $E(-z) = -E(z)$, meaning the field changes direction crossing the $z$-axis. We can thus focus on finding $E(z)$ when $z > 0$, in which case the $z < 0$ case immediately follows. 

Clearly this field is constant along surfaces of constant $z$. This means that any Gaussian surface with a flat top and bottom will do, since only the field through the top and bottom of the surface contribute anything to the flux. Such a surface is historically called a *pillbox*. Examples of pillboxes include prisms and cylinders. All that matters is that the top and bottom are flat, and the sides are perpendicular to the sheet. We'll thus choose any pillbox with equal top and bottom areas $A$ and some arbitrary height, as shown in the figure.

Since the field is constant on the top and bottom of the Gaussian surface and only points in the $z$-direction, the flux is given by
$$
\oint_\mathcal{S} \mathbf{E} \cdot d\mathbf{a} = |\mathbf{E}| \cdot 2A = E(z) \cdot 2 A \ .
$$
The pillbox encloses a charge given by $Q_{\text{enc}} = \sigma A$. Plugging these into Gauss's Law and solving for $E(z)$, we have
$$
E(z) = 2\pi\sigma \ .
$$
This means the electric field of the infinite sheet is evidently constant, with
$$
\mathbf{E}(\mathbf{x}) = \begin{cases}
4\pi\sigma & z > 0 \ , \\
-4\pi\sigma & z < 0 \ .
\end{cases}
$$
Just as we saw with the infinite line of charge, the infinite sheet of charge also doesn't fall off as we'd expect from Coulomb's law. In fact, it's constant everywhere in space, the only difference being which way the field lines point.

Notice also that the electric field appears to change discontinuously crossing the $xy$-plane. Evidently, the electric field strength changes by exactly $\Delta E = 4\pi\sigma$. This is an interesting result. In fact, this discontinuity arises from the fact that the charge distribution is 2-dimensional. Indeed, all surfaces of charge will have this property, as we'll show later.

##### Sphere with uniform charge

As our final example in this section we'll consider an example we've already seen, the uniformly charged sphere. In a previous section we worked out its electric field with great pain. Here we'll show that Gauss's Law gives a much simpler way. We'll again suppose that the charge lies on a hollow sphere of radius $R$​ centered at the origin.

![](../resources/image-20240616180936896.png){fig-align=center width=500}

As argued before, symmetry requires that the electric field point in the radial $r$-direction, with
$$
\mathbf{E}(\mathbf{x}) = E(r) \mathbf{e}_r \ .
$$
All that thus remains is to find $E(r)$. Since the field is constant along spheres of radius $r$, the natural choice is of Gaussian surface is to choose spheres of radius $r$ centered at the origin. We'll first suppose $r \geq R$​. In that case, the flux is given by
$$
\oint_\mathcal{S} \mathbf{E} \cdot d\mathbf{a} = E(r) \cdot 4\pi r^2 \ .
$$
The enclosed charge $Q_{\text{enc}}$ is just the total charge of the sphere, $Q = \frac{4}{3} \pi R^3 \sigma$. Plugging these into Gauss's Law, we have
$$
E(r) = \frac{Q}{r^2} \ .
$$
This of course is exactly what we expected. The electric field of a uniformly charged sphere behaves as a point charge outside the sphere. What does Gauss's Law say when we're inside the sphere though? In that case there's no enclosed charge, so $Q_{\text{enc}} = 0$. This means Gauss's Law just gives exactly what we've already shown, that there's no electric field inside the sphere,
$$
E(r) = 0 \ .
$$
The electric field of the hollow sphere of charge is thus
$$
\mathbf{E}(\mathbf{x}) = \begin{cases}
Q/r^2 \ \mathbf{e}_r & r \geq R \ , \\
\mathbf{0} & r < R \ .
\end{cases}
$$
Yet again, the electric field seems to change discontinuously when crossing a 2-dimensional surface. In fact, as with the infinite sheet above, since $Q = 4\pi R^2 \sigma$, the field strength is also changing by exactly $\Delta E = 4\pi\sigma$ when crossing through the sphere.

What if the sphere is now solid instead of hollow, with a constant charge density $\rho$? Outside the sphere the result is the same. Inside the sphere though the enclosed charge will be the volume of the Gaussian surface times the charge density, which is just $Q(r) = \frac{4}{3} \pi r^3 \rho$. Plugging this into Gauss's Law, we have
$$
E(r) = \frac{Q(r)}{r^2} = \frac{4\pi\rho}{3} r \ .
$$
That is, inside of a uniformly charged solid sphere the electric field is *linear* $r$. When $r=R$​ of course this will equal the equation for the field outside the sphere, where the field will start to decrease as an inverse square law.

### Differential Form

The enclosed charge can be found by integrating the charge density over the volume $\mathcal{V}$ of the closed surface,
$$
Q_{\text{enc}} = \int_\mathcal{V} d^3\mathbf{x} \ \rho(\mathbf{x}) \ .
$$
Indeed, if we plug this into Gauss's Law we get
$$
\oint_\mathcal{S} \mathbf{E} \cdot d\mathbf{a} = 4\pi \int_\mathcal{V} d^3\mathbf{x} \ \rho(\mathbf{x}) \ .
$$
Also, notice we can use of the divergence theorem to convert the flux integral into a volume integral,
$$
\oint_\mathcal{S} \mathbf{E} \cdot d\mathbf{a} = \int_\mathcal{V} d^3\mathbf{x} \ \nabla \cdot \mathbf{E} \ .
$$
Putting the two integrals together and moving everything to one side, we have
$$
\int_\mathcal{V} d^3\mathbf{x} \ \big[\nabla \cdot \mathbf{E} - 4\pi\rho\big] = 0 \ .
$$
Since this integral must vanish for any valid integrand we must have
$$
\boxed{
\nabla \cdot \mathbf{E} = 4\pi\rho
} \ .
$$
This result is known as the *differential form* of Gauss's Law. It's fully equivalent to the integral form. The only real difference is that the differential form is a statement of the *local* behavior of the electric field, not the *global* behavior.

## Scalar Potential

Recall that we're trying to find a way to fully characterize the electric field with a set of field equations. We know it's sufficient for this purpose to find formulas for the divergence and curl of the field in terms of the source charges. We just found a formula for the divergence, which gave us Gauss's Law. We'll now see what the curl of the electric field should be and see what that implies.

### Curl of Electric Field

From vector calculus, we know that finding the curl of a vector field is in some sense equivalent to finding the line integral of the field around a closed path. More formally, Stoke's theorem says that if $\mathcal{C}$ is some closed loop with interior surface $\mathcal{S}$, we have
$$
\oint_\mathcal{C} \mathbf{E} \cdot d\boldsymbol{\ell} =  \int_\mathcal{S} (\nabla \times \mathbf{E}) \cdot d\mathbf{a} \ .
$$
What we'll thus do is first find the line integral and from that get the curl. As we did with Gauss's Law, we'll start with the simplest case of a point charge $q$ centered at the origin. This means we have
$$
\mathbf{E} \cdot d\boldsymbol{\ell} = \frac{q}{r^2} \mathbf{e}_r \cdot d\boldsymbol{\ell} = \frac{q}{r^2} dr \ .
$$
Here we used the fact that in spherical coordinates the line element is $d\boldsymbol{\ell} = dr \mathbf{e}_r + rd\theta \mathbf{e}_\theta + r \sin\theta d\varphi \mathbf{e}_\varphi$. This means that between any two points on the line $\mathbf{a}$ and $\mathbf{b}$ we have
$$
\int_\mathbf{a}^\mathbf{b} \mathbf{E} \cdot d\boldsymbol{\ell} = \frac{q}{|\mathbf{a}|} - \frac{q}{|\mathbf{b}|} \ .
$$
In particular, if we integrate around a closed loop $\mathcal{C}$ we must conclude that the line integral vanishes. The line integral over a closed loop is often called the *circulation integral*. It represents the total contribution of the field in moving around the closed loop, or equivalently the work per unit charge done in moving around the closed loop. Evidently for a point charge this circulation integral must be zero.

Of course, there is nothing special about a point charge. By the principle of superposition we can consider any arbitrary distribution of charges as well by summing the contribution of each of the point charges inside. We thus conclude that for *any* distribution of charge giving rise to a total electric field $\mathbf{E}$ the circulation integral must vanish in electrostatics,
$$
\boxed{
\oint_\mathcal{C} \mathbf{E} \cdot d\boldsymbol{\ell} = 0
} \ .
$$
We can recover the curl of the field by apply Stoke's theorem, from which we immediately see that the curl vanishes as well,
$$
\boxed{
\nabla \times \mathbf{E} = \mathbf{0}
} \ .
$$
Note that this was perhaps a long-winded way of saying something that should already be obvious to us: We know from classical mechanics that any *conservative force* has the property that its curl vanishes. Since the Coulomb force is a central force we know it must be conservative, and hence its curl must vanish, but since the electric field is just force per unit charge, its curl must vanish as well, which is what we just proved.

### Scalar Potential

From vector calculus, we know that any vector field whose curl vanishes must be the gradient of some scalar field. This follows from the fact that the circulation integral vanishes, and hence the line integral between any two points must be path independent and hence a well defined function of the two endpoints. If we call this scalar field $\phi$, this means we have
$$
\boxed{
\mathbf{E} = - \nabla \phi
}\ .
$$
Note the minus sign is merely a convention. We'll see why we include this in a moment. In electromagnetism we call $\phi$ the *scalar potential*, or more simply the *potential* depending on the context. The dimensions of scalar potential are evidently energy per unit charge. In SI units the scalar potential has units of *volts*, or Joules per Coulomb. In Gaussian units the potential has units of ergs per esu, sometimes called the *statvolt*, with $1 \ \frac{\text{erg}}{\text{esu}} \approx 300 \ \text{V}$.

Using the fundamental theorem of calculus we can invert the previous formula to get the potential in terms of the field. If $\mathbf{x}$ is the field point of interest and $\mathbf{g}$ is some fixed reference point, often called the *ground point*, we have
$$
\phi(\mathbf{x}) = -\int_\mathbf{g}^\mathbf{x} \mathbf{E} \cdot d\boldsymbol{\ell} \ .
$$
In much of theoretical electromagnetism we choose the ground point to be at infinity, where we insist the scalar potential must vanish for localized charge distributions. In this scenario, we then have
$$
\phi(\mathbf{x}) = \int_\mathbf{x}^\infty \mathbf{E} \cdot d\boldsymbol{\ell} \ .
$$
If $\mathbf{a}$ and $\mathbf{b}$ are two points in space, the potential between them, or *potential difference*, is given by
$$
\phi(\mathbf{b}) - \phi(\mathbf{a}) = -\int_\mathbf{a}^\mathbf{b} \mathbf{E} \cdot d\boldsymbol{\ell} \ .
$$
The potential difference is often called the *voltage* in more applied fields since it's measured in volts, often denoted by $V$ or $\Delta V$ when the context is clear. The voltage is what is typically measured in the lab, for example by differencing the potential between the positive and negative terminals of some power source.

Notice that the integral formula for the scalar potential looks an awful lot like the formula for work in terms of force. Recall that the work done in moving a particle from a point $\mathbf{a}$ to a point $\mathbf{b}$ via an exerted force $\mathbf{F}_{\text{ex}}$ is given by
$$
W = \int_\mathbf{a}^\mathbf{b} \mathbf{F}_{\text{ex}} \cdot d\boldsymbol{\ell} \ .
$$
Since the force one must exert to move against the field is just minus the force generated by the field itself, we must evidently have $\mathbf{F}_{\text{ex}} = -q\mathbf{E}$. Plugging this in and factoring out the charge from both sides, we can see that the work done is proportional to the potential difference between the two points,
$$
W = -q \int_\mathbf{a}^\mathbf{b} \mathbf{E} \cdot d\boldsymbol{\ell} = q \big[\phi(\mathbf{b}) - \phi(\mathbf{a})\big] \ .
$$
This means we can think of the scalar potential as the work done in moving a unit charge from infinity to its current location in the presence of an external electric field $\mathbf{E}$. Indeed, this is why we include the minus sign in the definition of the scalar potential as $\mathbf{E} = - \nabla \phi$​, to ensure that the potential has the same sign as the work done on the charge.

Provided we set the ground point at infinity, the work done in moving the charge from infinity to some location $\mathbf{x}$ must evidently be $W = q\phi(\mathbf{x})$. This is of course just the potential energy $U$, provided we define $U(\infty)\equiv 0$. Thus, for a point charge moving in the presence of an external field, its potential energy is just $U = q\phi$. For a general charge distribution we need only use the superposition principle to replace the charge $q$ by a volume integral over the charge density $\rho(\mathbf{x})$, in which case we have
$$
\boxed{
U = \int d^3 \mathbf{x} \ \rho(\mathbf{x}) \phi(\mathbf{x})
} \ .
$$
Remember, this is only true for charges moving in the presence of an external electric field. This is *not* true for the charges used to assemble the distribution giving rise to the field itself. We'll see what that potential energy must be momentarily.

#### Example: Hollow sphere with uniform charge

Let's now try to calculate the scalar potential for the uniformly charged hollow sphere. Since we already know what the electric field should be, all we need to do is calculate the line integral. Recall the electric field for a uniformly charged hollow sphere of radius $R$ and charge $Q$ centered at the origin is given by
$$
\mathbf{E}(\mathbf{x}) = 
\begin{cases}
\mathbf{0} \ , & r < R \ , \\
\frac{Q}{r^2} \mathbf{e}_r \ , & r \geq R \ . \\
\end{cases}
$$
To find the potential at a given field point $\mathbf{x}$ we need to integrate from $\mathbf{x}$ to infinity. Since the field is radially symmetric, we can write $\mathbf{E} \cdot d\boldsymbol{\ell} = E(r) dr$. When the field point lies outside the sphere $r \geq R$, and we get
$$
\begin{align*}
\phi(\mathbf{x}) &= \int_\mathbf{x}^\infty \mathbf{E} \cdot d\boldsymbol{\ell} \\
&= Q \int_r^\infty \frac{dr}{r^2} \\
&= \frac{Q}{r} \ .
\end{align*}
$$
For field points inside the sphere we have to integrate the field inside the sphere as well. When $r > R$ we get
$$
\begin{align*}
\phi(\mathbf{x}) &= \int_\mathbf{x}^\infty \mathbf{E} \cdot d\boldsymbol{\ell} \\
&= \int_r^R dr \ 0 + Q \int_R^\infty \frac{dr}{r^2} \\
&= \frac{Q}{R} \ .
\end{align*}
$$
Thus, the potential for a solid sphere is evidently given by
$$
\phi(\mathbf{x}) = 
\begin{cases}
\frac{Q}{R} \ , & r < R \ , \\
\frac{Q}{r} \ , & r \geq R \ . \\
\end{cases}
$$
We can verify we got the correct answer if we wish by taking the gradient to recover the field. For example, outside the sphere we have
$$
\mathbf{E}(\mathbf{x}) = -\nabla \phi(\mathbf{x}) = - \frac{d}{dr} \frac{Q}{r} \mathbf{e}_r = \frac{Q}{r^2} \mathbf{e}_r \ .
$$
Notice that while the electric field is zero inside the sphere, the potential is not. It's a constant value throughout. Also notice that the two sides match at $r=R$, meaning the potential is continuous even though the field is not at $r=R$.

##### Example: Solid sphere with uniform charge

We can also calculate the potential of the solid sphere if we wish. Outside the sphere the result is the same. Inside the sphere we have to use the fact that the field is no longer zero, but linear in $r$, with $\mathbf{E}(\mathbf{x}) = \frac{Qr}{R^3} \mathbf{e}_r$. When $r < R$ we thus have
$$
\begin{align*}
\phi(\mathbf{x}) &= \int_\mathbf{x}^\infty \mathbf{E} \cdot d\boldsymbol{\ell} \\
&= \frac{Q}{R^3} \int_r^R dr \ r + Q \int_R^\infty \frac{dr}{r^2} \\
&=  \frac{Q}{R^3} \bigg(\frac{R^2}{2} - \frac{r^2}{2}\bigg) + \frac{Q}{R} \\
&= \frac{Q}{2R} \bigg(3 - \frac{r^2}{R^2}\bigg) \ .
\end{align*}
$$
Thus, for a solid sphere the potential is evidently given by
$$
\phi(\mathbf{x}) = 
\begin{cases}
\frac{Q}{2R}\bigg(3 - \frac{r^2}{R^2}\bigg) \ &, & r < R \ , \\
\frac{Q}{r} \ &, & r \geq R \ . \\
\end{cases}
$$
Again, the potential is continuous at $r=R$. In fact so is its gradient since the field is also continuous at $r=R$.

##### Example: Infinite sheet with uniform charge

Let's briefly work an example involving an infinite charge distribution. We'll choose the uniformly charged infinite sheet. In this case we can no longer take infinity as the ground point. Instead we'll choose $\mathbf{g} = \mathbf{0}$ as the ground point. Recall for the infinite sheet the electric field for $z \geq 0$ is given by $\mathbf{E}(\mathbf{x}) = 2\pi\sigma \mathbf{e}_z$. This means $\mathbf{E} \cdot d\boldsymbol{\ell} = E(z) dz$, and so we have
$$
\phi(\mathbf{x}) = -\int_\mathbf{0}^\mathbf{x} \mathbf{E} \cdot d\boldsymbol{\ell} = -2\pi\sigma \int_0^z dz = -2\pi\sigma z \ 
$$
One can quickly check that we'd get the same result when $z < 0$. Thus, the potential for the infinite sheet is just
$$
\phi(\mathbf{x}) = -2\pi\sigma z \ ,
$$
which is what we'd expect since its gradient must be constant.

### Integral Formula

We'll now see what Coulomb's Law looks like in terms of the scalar potential. In the previous chapter we proved the identity
$$
\nabla \frac{1}{|\mathbf{x} - \mathbf{x}'|} = -\frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \ .
$$
Multiplying both sides by the charge density $-\rho(\mathbf{x}')$ and integrating over $\mathbf{x}'$, we have
$$
-\nabla \int d^3 \mathbf{x}' \ \frac{\rho(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} = \int d^3 \mathbf{x}' \ \rho(\mathbf{x}') \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \ .
$$
Recognizing that the righthand side is just the electric field and matching with the formula $\mathbf{E} = - \nabla \phi$, we thus have
$$
\boxed{
\phi(\mathbf{x}) = \int d^3 \mathbf{x}' \ \frac{\rho(\mathbf{x}')}{|\mathbf{x}-\mathbf{x}'|} 
}\ .
$$
This is the generalized form of Coulomb's Law expressed for the scalar potential. Note by replacing $d^3 \mathbf{x}' \ \rho(\mathbf{x}')$ with $da \ \sigma(\mathbf{x}')$ or $d\ell \ \lambda(\mathbf{x}')$ we can get the equivalent integrals for the potential of surface or line charge distributions. Do be advised, however, that these formulas *only* hold for *localized* charge distributions. For charge distributions that extend to infinity we may need to modify these equations, for example by choosing a different ground point than infinity for our calculations.

We can use this formula to calculate the potential directly from the charge density itself rather than having to first calculate the electric field. Indeed this is extremely useful. Recall for the electric field we needed to calculate *three* integrals, one for each component. Since the potential is a scalar we only need to calculate a single integral without needing to worry about the vector $\mathbf{x} - \mathbf{x}'$ at all. Once we have the potential, we can easily calculate the electric field.

Before working a few examples, let's try to get a visual understanding of what the potential of a charge distribution looks like. We already have an idea how to visualize the electric field of a distribution using field lines. Since the field is just the gradient of the potential, we know from vector calculus that the field must always point perpendicular to surfaces of constant potential. These constant potential surfaces are called *equipotentials*. Indeed, it's just as easy to draw equipotentials as it is to draw field lines. For example, the equipotential surfaces of a point charge are shown in the figure below.

FIGURE

Let's now work some examples to show how much nicer this integral formula is to use than the one for the electric field.

##### Example: Finite wire with uniform charge

Let's find the potential of a uniformly charged wire of finite length. Suppose a wire of length $L$ has a uniform charge $Q = \lambda L$. We'll assume that it is oriented along the $z$-axis with its center at the origin.

![](../resources/image-20240811130653319.png){fig-align=center width=400}

Assuming the wire has negligible thickness we can use the $1$-dimensional version of the integral formula for the potential,
$$
\phi(\mathbf{x}) = \int d\ell' \ \frac{\lambda(\mathbf{x}')}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
Since $\lambda$ is constant along the wire and the wire is centered on the $z$-axis we can set $d\ell' = dz'$ and write the integral as
$$
\phi(\mathbf{x}) = \lambda \int_{-L/2}^{L/2} \frac{dz'}{|\mathbf{x} - \mathbf{x}'|} \ .
$$
All that remains now is to find $\xi = |\mathbf{x} - \mathbf{x}'|$. We'll work in cylindrical coordinates. Since each source point is along the $z$-axis we can write $\mathbf{x}' = z' \mathbf{e}_z$. For the field point we'll write $\mathbf{x} = \varrho \mathbf{e}_\varrho + z \mathbf{e}_z$, where $r$ is the radial cylindrical coordinate. This means we have
$$
\xi^2 = \varrho^2 + (z - z')^2 \ .
$$
Plugging this into the integral for the potential, we're left to evaluate the following integral,
$$
\phi(\mathbf{x}) = \lambda \int_{-L/2}^{L/2} \frac{dz}{\sqrt{\varrho^2 + (z - z')^2}} \ .
$$
We can evaluate this integral by making the substitution $x = \frac{z - z'}{\varrho}$ and $dx = -\frac{z'}{\varrho}$ to get
$$
\phi(\mathbf{x}) = -\lambda \int_{\frac{z+L/2}{\varrho}}^{\frac{z-L/2}{\varrho}} \frac{dx}{\sqrt{1 + x^2}} = -\lambda \log(\sqrt{1 + x^2} + x) \bigg |_{x=\frac{z+L/2}{\varrho}}^{\frac{z-L/2}{\varrho}} \ .
$$
Evaluating the endpoints and simplifying a bit, we get
$$
\phi(\mathbf{x}) = \lambda \log\bigg[\frac{\sqrt{\varrho^2 + (z + L/2)^2} - (z - L/2)}{\sqrt{\varrho^2 + (z - L/2)^2} - (z + L/2)}\bigg] \ .
$$
This is the full potential in terms of a general field point $\mathbf{x}$ in cylindrical coordinates. We still don't easily have an idea what this potential looks like. Let's try to find its equipotentials. To do that we'll need to introduce *elliptical coordinates*. Define
$$
\begin{align*}
u &= \frac{1}{2} \bigg( \sqrt{\varrho^2 + (z + L/2)^2} + \sqrt{\varrho^2 + (z - L/2)^2}\bigg)  \ , \\
v &= \frac{1}{2} \bigg( \sqrt{\varrho^2 + (z + L/2)^2} - \sqrt{\varrho^2 + (z - L/2)^2}\bigg) \ .\\
\end{align*}
$$
If we plug these new coordinates into the potential and simplify, a little tedious algebra will show that the potential is given by
$$
\phi(\mathbf{x}) = \lambda \log\bigg[\frac{u + L/2}{u - L/2}\bigg] \ .
$$
Now, we can immediately see from this result that the equipotentials will be the curves such that $u$ is constant. Though perhaps not obvious, the constant surfaces of $u$ are ellipsoids of revolution about the $z$-axis. This means that the equipotentials are just ellipsoids. This should be intuitively obvious. Since the wire has a uniform charge, its equipotentials should be surfaces of constant distance from the wire, which would be ellipsoids. These equipotentials are shown in the figure below.

FIGURE

We can further verify the correctness of this result by considering two limits: the infinite wire limit where $|\mathbf{x}| \ll L$, and the far field limit where $|\mathbf{x}| \gg L$. In the infinite wire limit we have $\varrho, z \ll L$. In that limit we can neglect $z$ and use the binomial approximation then to write
$$
\phi(\mathbf{x}) \approx \lambda \log\bigg[\frac{\sqrt{\varrho^2 + (L/2)^2} + L/2}{\sqrt{\varrho^2 + (L/2)^2} - L/2}\bigg] \approx \lambda \log\bigg[\frac{L/2 + L/2}{L/2 - L/2 + 2\varrho^2/L}\bigg] \approx \lambda \log \frac{L^2}{2\varrho^2} \ .
$$
Simplifying this expression a bit, we get
$$
\phi(\mathbf{x}) \approx -2\lambda \log \frac{\varrho}{L} - \lambda \log 2 \ .
$$
To verify whether this is correct we can take its gradient to recover the electric field, in which case we get
$$
\mathbf{E}(\mathbf{x}) \approx - \frac{\partial \phi}{\partial \varrho} \mathbf{e}_r \approx \frac{2\lambda}{\varrho} \mathbf{e}_\varrho \ .
$$
This is of course exactly what we should expect for an infinite wire of uniform charge, as we've derived before.

In the far field limit we have $r, z \gg L$. For convenience let's suppose $z=0$. In that case, we can neglect the $L/2$ terms inside the roots and use the Taylor series approximation $\log(1+x) \approx x$ when $x$ is small to write
$$
\phi(\mathbf{x}) \approx \lambda \log\bigg[\frac{\sqrt{\varrho^2 + (L/2)^2} + L/2}{\sqrt{\varrho^2 + (L/2)^2} - L/2}\bigg] \approx \lambda \log\bigg[\frac{\varrho + L/2}{\varrho - L/2}\bigg] \approx \lambda \log\bigg[1 + \frac{L}{\varrho}\bigg] \approx \frac{\lambda L}{r} \ .
$$
Since $Q = \lambda L$ is just the total charge of the wire, we get the Coulomb potential $\phi(\mathbf{x}) = \frac{Q}{r}$ in the far field limit, as we'd expect.

### Poisson's Equation

We've now found the following two field equations for the electric field of electrostatics,
$$
\begin{align*}
\nabla \cdot \mathbf{E} &= 4\pi\rho \ , \\
\nabla \times \mathbf{E} &= \mathbf{0} \ .
\end{align*}
$$
We can use the scalar potential to combine these two first-order field equations into a single second-order equation for the scalar potential. We've already shown the curl equation is equivalent to the formula $\mathbf{E} = -\nabla \phi$. Plugging this into Gauss's Law, we get
$$
\nabla \cdot \mathbf{E} = \nabla \cdot (-\nabla \phi) = 4\pi\rho \ .
$$
Recognizing that this is just the Laplacian of the scalar potential, we thus have
$$
\boxed{
\nabla^2 \phi = -4\pi\rho
} \ .
$$
This second-order differential equation is called *Poisson's Equation*. It's fully equivalent to the two field equations we derived before. This means that instead of solving two vector first order differential equations to find the electric field, we need only solve Poisson's equation subject to any boundary conditions and then take the gradient to get the electric field. Indeed, for this reason Poisson's equation is perhaps the most important equation in electrostatics. It's the most generally useful way to find the electric field of a charge distribution. We'll  spend considerable time analyzing and solving this equation in the next chapter.

For now, just observe that Coulomb's Law is indeed a solution of Poisson's equation. If we express Coulomb's law as
$$
\mathbf{E}(\mathbf{x}) = \int d^3 \mathbf{x}' \ \rho(\mathbf{x}') \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \ ,
$$
then the Laplacian of the potential is given by
$$
\begin{align*}
\nabla^2 \phi(\mathbf{x}) &= -\nabla \cdot \mathbf{E}(\mathbf{x}) \\
&= -\nabla \cdot \int d^3 \mathbf{x}' \ \rho(\mathbf{x}') \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \\
&= -\int d^3 \mathbf{x}' \ \rho(\mathbf{x}') \nabla \cdot \frac{\mathbf{x} - \mathbf{x}'}{|\mathbf{x} - \mathbf{x}'|^3} \\
&= -\int d^3 \mathbf{x}' \ \rho(\mathbf{x}') 4\pi \delta(\mathbf{x} - \mathbf{x}') \\
&= -4\pi \rho(\mathbf{x}) \ .
\end{align*}
$$
We've thus shown that Coulomb's law satisfies Poisson's equation, as we'd expect. In fact, if the charge distribution is localized and there are no boundary conditions present, like say a set of background conductors, then Coulomb's law is the only valid solution. If boundary conditions are present we have to modify things slightly. We'll see more on this in the next few chapters.

### Surface Boundary Conditions

Recall from earlier the infinite sheet of charge example. Specifically, we saw that the electric field across the sheet of charge changes discontinuously across the surface by an amount $4\pi\sigma$. In fact this is generally true for E-fields across surfaces of charge. Specifically, when crossing a surface of charge, the normal part of the E-field changes discontinuously, while the tangential part of the E-field changes continuously.

FIGURE (show surface of charge with normal and tangential E-fields)

To see why this is the case, suppose $\mathcal{S}$ is some smooth surface carrying a surface charge density $\sigma(\mathbf{x})$. Suppose $\mathbf{x}$ is some point on this surface. The E-field $\mathbf{E}(\mathbf{x})$ at this point can then be decomposed into two parts, one vector $\mathbf{E}^\perp(\mathbf{x})$ normal to the surface at this point, and another vector $\mathbf{E}^\parallel(\mathbf{x})$ tangential to the surface at this point,
$$
\mathbf{E}(\mathbf{x}) = \mathbf{E}^\perp(\mathbf{x}) + \mathbf{E}^\parallel(\mathbf{x}) \ .
$$
To deal with the normal vector, what we can do is apply Gauss's Law just like we did with the infinite sheet. We'll choose an infinitesimally high and very thin pillbox with top and bottom areas $\delta A$ as the Gaussian surface, where $\delta A$ is so small that any deviations in the curvature of the surface $\mathcal{S}$ are negligible inside the Gaussian surface. If $E_+$ is the value of the E-field above the surface and $E_-$ is the value of the E-field below the surface, by Gauss's Law we must have
$$
(E_+^\perp - E_-^\perp) \delta A \approx \int \mathbf{E} \cdot d\mathbf{a} = 4\pi\sigma \delta A \ .
$$
That is, the normal part of the E-field changes discontinuously across the surface by an amount
$$
E_+^\perp(\mathbf{x}) - E_-^\perp(\mathbf{x}) = 4\pi\sigma(\mathbf{x}) \ .
$$
What about the parallel part? To handle this case, we can place an infinitesimally small closed loop of size $\delta\ell$ on the surface centered at the point $\mathbf{x}$. Since the circulation integral of the E-field is zero, we must have
$$
(E_+^\parallel - E_-^\parallel) \delta\ell = \oint_\mathcal{C} \mathbf{E} \cdot d\boldsymbol{\ell} = 0 \ .
$$
Assuming $\delta\ell$ is infinitesimal, we have $E_+^\parallel(\mathbf{x}) = E_-^\parallel(\mathbf{x})$. That is, the tangential part of the E-field remains continuous when crossing the surface of charge.

We can put these two results together by using the (upward) normal vector $\mathbf{n}$​ to write
$$
\mathbf{E}_+(\mathbf{x}) - \mathbf{E}_-(\mathbf{x}) = 4\pi\sigma(\mathbf{x}) \mathbf{n} \ .
$$
What about the scalar potential? In fact the potential *is* continuous across the surface of charge. To see why, suppose $\mathbf{x}_-$ is some point infinitesimally below the surface and $\mathbf{x}_+$ some other point infinitesimally above the surface. If the two points are separated by a small distance $\delta\ell$, the potential difference between these two points must be given by
$$
\phi_+ - \phi_- = -\int_{\mathbf{x}_-}^{\mathbf{x}_+} \mathbf{E} \cdot d\boldsymbol{\ell} \approx -(E_+  + E_-) \delta\ell \ .
$$
Assuming $\delta\ell$ infinitesimal, the right-hand side will be much much smaller than the left-hand side. In this limit, we thus have
$$
\phi_+(\mathbf{x}) = \phi_-(\mathbf{x}) \ .
$$
Since need them to solve boundary value problems in the next few chapters, let's go ahead and formulate these surface conditions as a set of boundary conditions for the potential. For that purpose it'll be convenient to express the condition for the electric field as a normal derivative of the potential. The *normal derivative* of a scalar field on a surface is defined as the component of the scalar field's gradient in the normal direction,
$$
\frac{\partial \phi}{\partial n} \equiv \nabla \phi \cdot \mathbf{n} \ .
$$
We can thus write the two boundary conditions for the potential across a surface of charge as
$$
\begin{align*}
\phi_+(\mathbf{x}) - \phi_-(\mathbf{x}) &= 0 \ , \\
\frac{\partial}{\partial n} \phi_+(\mathbf{x}) - \frac{\partial}{\partial n} \phi_-(\mathbf{x}) &= -4\pi\sigma(\mathbf{x}) \ .
\end{align*}
$$
Here it's of course understood that $\phi_+(\mathbf{x})$ and $\phi_-(\mathbf{x})$ refer to points infinitesimally above and below the surface, respectively.

## Field Energy

We've already discussed the idea of potential energy in electrostatics. In particular, for a point charge $q$ moving in the presence of an external electric field $\mathbf{E}$ that's generated by some charge distribution $\rho$, its potential energy $U$ is given by
$$
U = \int d^3 \mathbf{x} \ \rho(\mathbf{x}) \phi(\mathbf{x}) \ .
$$
This is not the only form of potential energy we can ask about however when it comes to a field. We can also ask a slightly different question: What is the work done required to assemble the source charge distribution to begin with, or equivalently, what is the potential energy stored in the source charge distribution?

To make a start at answering this question we'll suppose the charge distribution is discrete, so that the total charge $Q$ is just a sum of $N$​ point charges,
$$
Q = \int d^3 \mathbf{x} \ \rho(\mathbf{x}) \approx q_1 + q_2 + \cdots + q_N \ .
$$
We'll suppose that initially all point charges are at infinity, separated from each other by an infinite distance. This means that initially there is no potential present in space. What we'll now do is bring the point charges in from infinity one at a time and place them at their respective locations in space and calculate the work done, hence the potential energy, to assemble each charge in the presence of the charges already in place.

First, suppose we bring in charge $q_1$ from infinity and place it at its source point $\mathbf{x}_1$. Since there is no potential present initially, the work done to move this charge to $\mathbf{x}_1$ must evidently be zero. The work done is evidently thus $U_1 = 0$.

Now, with $q_1$ in position we'll bring in $q_2$. Suppose we bring in $q_2$ from infinity and place it at $\mathbf{x}_2$. This time, however, there is a potential generated by the presence of $q_1$,
$$
\phi_1(\mathbf{x}_2) = \frac{q_1}{|\mathbf{x}_2 - \mathbf{x}_1|} \ .
$$
This means the work done to bring in charge $q_2$ in the presence of $q_1$ is
$$
U_2 = q_2 \phi_1(\mathbf{x}_2) = q_2 \frac{q_1}{|\mathbf{x}_2 - \mathbf{x}_1|} \ .
$$
With $q_1$ and $q_2$ in place we'll now bring in $q_3$ and place it at $\mathbf{x}_3$. This time there are now two potentials we need to deal with, the potentials of both $q_1$ and $q_2$. By superposition, the work done to bring in charge $q_3$ must be
$$
U_3 = q_3 \phi_1(\mathbf{x}_3) + q_3 \phi_2(\mathbf{x}_3) = q_3 \bigg(\frac{q_1}{|\mathbf{x}_3 - \mathbf{x}_1|} + \frac{q_2}{|\mathbf{x}_3 - \mathbf{x}_1|}\bigg) \ .
$$
Hopefully by now we can spot the pattern. If the first $i-1$ charges $q_1, q_2, \cdots, q_{i-1}$ are already in place and we then bring in charge $q_i$ from infinity and place it at position $\mathbf{x}_i$, the work done must be
$$
U_i = q_i \sum_{j<i} \phi_j(\mathbf{x}_i) = q_i \sum_{j=1}^{i-1} \frac{q_j}{|\mathbf{x}_i - \mathbf{x}_j|} \ .
$$
Here the sum over $j < i$ means to sum from $j=1$ to $j=i-1$. This is to make sure we only sum over the point charges already in place, not the ones we haven't brought in yet. 

Now, the *total* potential energy $\mathcal{U}$ to assemble *all* of these charges into place is just the sum of each of these contributions,
$$
\mathcal{U} = \sum_{i=1}^N U_i = \sum_{i=1}^N q_i \sum_{j<i} \phi_j(\mathbf{x}_i) \ .
$$
It'll be useful to rewrite the sum over all $j < i$ in a slightly different way by observing that the potential is symmetric in $i$ and $j$, so that $\phi_j(\mathbf{x}_i) = \phi_i(\mathbf{x}_j)$. This means we can write the same sum by summing over all $j \neq i$ and dividing by two to avoid double counting,
$$
\mathcal{U} = \frac{1}{2} \sum_{i=1}^N q_i \bigg(\sum_{\substack{j=1 \\ j \neq i}}^{N} \phi_j(\mathbf{x}_i)\bigg) \ .
$$
Observe next that the interior sum is just the *total* potential exerted on charge $q_i$ due to all other charges $q_j$. Call this potential $\phi(\mathbf{x}_i)$. We can now transition back to the continuum by making the replacement $\sum q_i \rightarrow \int d^3 \mathbf{x} \ \rho(\mathbf{x})$​ to get
$$
\boxed{
\mathcal{U} = \frac{1}{2} \int d^3 \mathbf{x} \ \rho(\mathbf{x}) \phi(\mathbf{x})
}\ .
$$
This is the potential energy stored in the entire charge distribution. Notice how similar it looks to the potential energy we derived before for a charge distribution in the presence of an external electric field, $U = \int d^3 \mathbf{x} \ \rho(\mathbf{x}) \phi(\mathbf{x})$. On the surface, the only difference between the two evidently is the factor of $\frac{1}{2}$. However, we must keep in mind that the $\rho$ used to find $\mathcal{U}$ is the *source* charge distribution, not an external charge distribution like the one used to find $U$​.

We can think of $\mathcal{U}$ as the potential energy stored in the source charge distribution, but we can also think of it equivalently as the potential energy stored in the electric field itself. To see why it's helpful to rewrite the integral in a slightly different way. From Gauss's Law, we know that $\nabla \cdot \mathbf{E} = 4\pi \rho$. Plugging this into the formula for $\mathcal{U}$ we have
$$
\mathcal{U} = \frac{1}{8\pi} \int d^3\mathbf{x} \ \phi \nabla \cdot \mathbf{E} \ .
$$
As a brief aside, let's recall the following vector calculus identity between a scalar field $f$ and a vector field $\mathbf{F}$,
$$
\nabla (f \mathbf{F}) = \nabla f \cdot \mathbf{F} + f \nabla \cdot \mathbf{F} \ .
$$
Rearranging terms and integrating over some volume $\mathcal{V}$, we have
$$
\begin{align*}
\int_\mathcal{V} d^3\mathbf{x} \ f \nabla \cdot \mathbf{F} &= \int_\mathcal{V} d^3\mathbf{x} \ \nabla (f \mathbf{F}) - \int_\mathcal{V} d^3\mathbf{x} \ \nabla f \cdot \mathbf{F} \\
&= \oint_\mathcal{S} f \mathbf{F} \cdot d\mathbf{a} - \int_\mathcal{V} d^3\mathbf{x} \ \nabla f \cdot \mathbf{F} \ .
\end{align*}
$$
In the last line we used the fundamental theorem of vector calculus to rewrite the volume integral over $\nabla (f \mathbf{F})$ as an integral over $f \mathbf{F}$ evaluated at the volume's surface $\mathcal{S}$. Now, if we send the volume to infinity, we can neglect the surface term so long as $f\mathbf{F}$ vanishes at infinity faster than $\frac{1}{r^2}$. This means if integrating over all space we'd simply have
$$
\int d^3\mathbf{x} \ f \nabla \cdot \mathbf{F} = - \int d^3\mathbf{x} \ \nabla f \cdot \mathbf{F} \ .
$$
Let's now apply this result to our integral expression for the field potential energy $\mathcal{U}$. Since $\mathbf{E} = -\nabla\phi$, we have
$$
\mathcal{U} = - \frac{1}{8\pi} \int d^3\mathbf{x} \ \nabla \phi \cdot \mathbf{E} = \frac{1}{8\pi} \int d^3\mathbf{x} \ \mathbf{E} \cdot \mathbf{E} \ .
$$
Note that this will only be true if the boundary term vanishes. We can be sure this is true so long as the charge distribution is localized, since in that case we expect $\phi \mathbf{E} \sim \frac{1}{r^3}$. It may *not* be true, however, for charge distributions that extend to infinity, in which case we'd have to be more careful with ignoring boundary term. Of course, such cases aren't *really* physical anyway.

At any rate, we've derived the following interesting result, which says the potential energy stored in the source charge distribution depends only on the square of the electric field,
$$
\boxed{
\mathcal{U} = \frac{1}{8\pi} \int d^3\mathbf{x} \ |\mathbf{E}|^2
}\ .
$$
This is why we can think of the potential energy $\mathcal{U}$ as the energy stored in the field. That's all it depends on. It'll be useful to give the integrand a name. It's called the *energy density* $u(\mathbf{x})$. It's the potential energy per unit volume stored in the electric field,
$$
u(\mathbf{x}) \equiv \frac{1}{8\pi} |\mathbf{E}(\mathbf{x})|^2 \ .
$$
We'll find the idea of energy density perhaps most useful in electrodynamics, where we'll need to modify the above result to also account for magnetic field effects as well.

Note that neither the field energy nor the energy density satisfy the principle of superposition since they're quadratic in the field, not linear. For example, the energy density due to two fields $\mathbf{E}$ and $\mathbf{E}'$ would be given by
$$
u = \frac{1}{8\pi} |\mathbf{E} + \mathbf{E}'|^2 = \frac{1}{8\pi}|\mathbf{E}|^2 + \frac{1}{8\pi}|\mathbf{E}'|^2 + \frac{1}{8\pi}\mathbf{E} \cdot \mathbf{E}' \ .
$$
Last, it's worth pointing out a very important but subtle issue that arises in going from
$$
\mathcal{U} = \frac{1}{2} \int d^3 \mathbf{x} \ \rho(\mathbf{x}) \phi(\mathbf{x}) \ \rightarrow \ \frac{1}{8\pi} \int d^3\mathbf{x} \ |\mathbf{E}|^2 \ .
$$
The problem is that of *self energy*. According to Coulomb's Law, a charge does not exert a force on itself. It only exerts a force on other charges. However, the second formula includes forces that a charge exerts on itself. To see why, consider the example of a point charge $q$ centered at the origin. According to the second formula, we have
$$
\mathcal{U} = \int d^3\mathbf{x} \ \frac{1}{8\pi} |\mathbf{E}(\mathbf{x})|^2 = \int_0^\infty 4\pi r^2 dr \ \frac{1}{8\pi} \bigg(\frac{q}{r^2}\bigg)^2 = \infty \ .
$$
However, if we use the first formula we get
$$
\mathcal{U} = \frac{1}{2} \int d^3\mathbf{x} \ \rho(\mathbf{x}) \phi(\mathbf{x}) = \frac{1}{2} \int_0^\infty 4\pi r^2 dr \ q \delta(\mathbf{x}) \frac{q}{r} = 0 \ .
$$
As we've defined the potential energy it's the latter that should be correct. There's no potential energy stored in a single point charge since no work was required to bring it in from infinity and place it at the origin. So what's going on?

We made a subtle error of sorts when we transitioned from a sum over discrete charges to an integral over a charge distribution. Recall that in the sum version we used $j \neq i$ to enforce the requirement that a charge couldn't affect itself. When we moved to the integral form though this distinction got lost. It turns out that this issue only affects the second formula though. In fact, it only affects distributions of *point charges*. For continuous distributions the formulas will generally agree.

This doesn't necessarily mean, however, that the second formula is not *correct*. It's just counting something that the first formula isn't. Namely, it's also counting the energy required to *create* the charges, not just assemble them in place. The first formula only counts the energy to assemble the charges, not create them. In this sense they're both correct, they just mean slightly different things. Indeed, the second formula ties in with the question of whether empty space has energy, the so-called *vacuum energy*. This topic is a major issue in quantum electrodynamics. In classical dynamics we ignore this distinction, but we do occasionally have to be careful when subtleties like this arise.

##### Example: Field energy of a hollow sphere

Recall that the uniformly charged hollow sphere with radius $R$ has an electric field given by
$$
\mathbf{E}(\mathbf{x}) = \frac{Q}{r^2} \ \mathbf{e}_r \ ,
$$
where $Q = 4\pi R^2 \sigma$ when $r \geq R$ and zero otherwise. Thus, according to the second formula for the field energy we have
$$
\mathcal{U} = \frac{1}{8\pi}\int d^3\mathbf{x} \ |\mathbf{E}(\mathbf{x})|^2 = \frac{1}{8\pi}\int_R^\infty 4\pi r^2 dr \ \bigg(\frac{Q}{r^2}\bigg)^2 = \frac{Q^2}{2R} \ .
$$
Since this isn't a point charge, we should expect to get the same result with the first formula as well. Since this is a 2-dimensional distribution we need to replace $\int d^3\mathbf{x} \ \rho(\mathbf{x})$ with $\int \sigma(\mathbf{x}) \ da$. At the surface of the sphere we have 
$$
\phi(\mathbf{x}) = \frac{Q}{R} \ .
$$
Thus, integrating over the surface of the sphere we have
$$
\mathcal{U} = \frac{1}{2} \int \sigma(\mathbf{x}) \phi(\mathbf{x}) \ da = \frac{1}{2} \int \sigma \frac{Q}{R} \ da = \frac{Q}{2R} 4\pi R^2 \sigma = \frac{Q^2}{2R} \ .
$$
As we can see, the two results agree as expected.

## Conductors and Capacitance

Electromagnetic materials can often be thought of one of two types: *conductors* and *insulators*. Both are just materials composed of almost all neutral atoms, and hence charge neutral. They differ in one subtle way. Unlike insulators, conductors have a small fraction of *unbound electrons* that are unbound to their nuclei and free to move around the material, causing the material to *conduct* in the presence of an external field by moving its unbound electrons around. Insulators don't have these unbound electrons. The only way an insulator can respond to an external field is by distorting its electron clouds. We'll talk more about insulators in a future chapter. For now we'll just focus on conductors, which are a bit easier to understand macroscopically.

### Conductors

Suppose we have a conductor with some given charge distribution. We place that conductor in the presence of an external electric field and wait for the system to come to electrostatic equilibrium. Once this happens, the electric field becomes time independent, and hence electrostatic. When this happens, the unbound electrons will move in the direction of the external field, creating an internal field inside the conductor of the same strength as the external field, but in opposite direction. The net result is that once the conductor is in electrostatic equilibrium, the net electric field will vanish. Thus, conductors will have the property that the electric field is zero inside the conductor.

In fact, if there is no electric field inside the conductor it must be the case that all the unbound electrons will reside on the surface of the conductor. Indeed, this follows immediately from Gauss's Law. If there is no internal electric field in the conductor, then any Gaussian surface chosen inside the conductor must have $\rho = 0$​. Thus, the only place left for the charge to go is on the surface, where it will distribute itself such that the internal field vanishes.

This also implies that the surface of a conductor must be an *equipotential surface*. Since the internal field is zero, we must have
$$
\phi(\mathbf{b}) - \phi(\mathbf{a}) = -\int_\mathbf{a}^\mathbf{b} \mathbf{E} \cdot d\boldsymbol{\ell} = 0
$$
for any two points $\mathbf{a}$ and $\mathbf{b}$ on the surface of the conductor, meaning $\phi(\mathbf{a}) = \phi(\mathbf{b})$ is constant on the surface. Since the surface of the conductor is an equipotential, this also means that the field lines at the surface must be perpendicular to the surface, since $\mathbf{E} = -\nabla \phi$​ and we know that gradients are perpendicular to their equipotential surfaces.

![](../resources/image-20240703155651920.png){fig-align=center width=500}

We'll find it convenient to express these results as a set of boundary conditions for conductors. Surface boundary conditions require that $\mathbf{E}_+ - \mathbf{E}_- = 4\pi\sigma \mathbf{n}$. Since the field inside the conductor is zero, $\mathbf{E}_- = \mathbf{0}$. Thus, just outside the surface we must have
$$
\mathbf{E}_+ = 4\pi\sigma \mathbf{n} \ ,
$$
or, in terms of the normal derivative of the potential, we must have
$$
\frac{\partial\phi}{\partial n} = -4\pi\sigma \ .
$$
This gives us a way to find the surface charge on a conductor if we know the potential, something we'll find useful later on.

### Capacitance

When discussing conductors it's typical to also discuss their *capacitance*, or ability to store charge. A conductor with this property is often called a *capacitor*. Suppose we have some conductor with charge $Q$ and potential $V$ relative to some ground point. Since its electric field must be proportional to $Q$, so must the potential. This means we can write
$$
\boxed{
Q = CV
} \ ,
$$
where $C$ is some proportionality constant, called the *capacitance* or *self capacitance*. This means we can also think of the capacitance as the amount of charge stored in a conductor held at unit potential.

The capacitance incapsulates all the geometric information encoded in the conductor needed to relate its charge to its potential. In Gaussian units this is obvious, since by dimensional analysis the capacitance must evidently carry dimensions of *length*. In SI units, capacitance has units of Volts per Coulomb, called the *Farad*, with $1 \ \text{F} \approx 9 \cdot 10^{11} \ \text{cm}$. An implication of this is that a Farad is a very large unit of capacitance. In laboratory settings, most capacitors have capacitances in the range of $10^{-12}$ to $10^{-6}$ Farads.

As a quick example, let's consider a conducting sphere of radius $R$ and total charge $Q$. Since the potential inside the sphere is $\frac{Q}{R}$, we can easily see that $C = R$, meaning the capacitance of a conducting sphere is just its radius.

In practice, it's more common to talk about the capacitance between multiple conductors, usually two conductors. The combined set of conductors becomes the capacitor in this case. Suppose we have two conductors of opposite charge $Q$ and $-Q$ with a potential difference $V$ between them. We again define the capacitance, or *mutual capacitance*, by the formula $Q = CV$.

The classic example of a capacitor involving two conductors is two parallel conducting plates with area $A$ and opposite charges $Q$ and $-Q$ separated by a distance $d$. If we neglect the boundary of the plates by assuming $A \gg d^2$, their electric field strengths are approximately $|\mathbf{E}| \approx 2\pi\sigma$. By superposition, the combined field will have a strength of $|\mathbf{E}| = 4\pi\sigma$ between the plates and zero outside the plates. This means the potential difference between the plates must be $V = 4\pi\sigma d$. 

FIGURE

Since the charges themselves must relate to $\sigma$ via the formula $Q = \sigma A$, we must have
$$
Q = \sigma A = 4\pi\sigma d C = CV \ ,
$$
which means the capacitance between the two plates is given by
$$
C = \frac{A}{4\pi d} \ .
$$
Notice how the capacitance again captures the geometric properties of the conductors, namely the area of the sheets and the distance between them.

Capacitors like the previous example are popular ways to store charge inside of electric circuits. The higher the capacitance, the more charge we say a capacitor can store at a given voltage. The capacitors used in practice usually aren't parallel plates, but more complex designs like overlapping cylinders, but the same idea holds.

We can also derive a formula for the energy stored in a capacitor. We'll focus on a single conductor, though the same results easily carry over to multiple conductors as well. Consider again a single conductor with total charge $Q$ and potential $V$. We've already shown that the energy stored in this conductor must be $\mathcal{U} = \frac{1}{2} QV$. Using the fact that $Q = CV$, we get
$$
\boxed{
\mathcal{U} = \frac{1}{2} C V^2
}\ .
$$
Thus, the energy stored in a capacitor is proportional to the capacitance and the square of the potential. A capacitor that can store more charge also stores more energy. Unlike, say batteries, however, capacitors can only store energy while they're actively charged. If the capacitor discharges, for example by turning off its voltage source, it almost instantly dissipates all its energy.

##### Example: Capacitance between two charged cylinders

Suppose we have oppositely charged cylinders, one inside the other. The inner cylinder has a radius $a$ and a charge $-Q$, while the outer cylinder has a radius $b$ and a charge $Q$.

- Finish this example. See Griffiths or Greiner.

### Mutual Capacitance

Though less common, we can define the mutual capacitance between any number of conductors, not just two. Suppose we have $n$ conductors with charges $Q_i$ and potentials $V_i$ relative to some ground. We can then write
$$
Q_i = \sum_{i=1}^n C_{i j} V_j \ .
$$
Here each coefficient $C_{ij}$ is called the *mutual capacitance* between conductor $i$ and conductor $j$.

We can relate the mutual capacitance between two oppositely charged conductors with the previous definition of capacitance by setting $Q_1 = Q$,  $Q_2 = -Q$, and $V = V_2 - V_1$. It's not hard to see that we get
$$
C = \frac{C_{11} V_1 + C_{12} V_2}{V_2 - V_1} = -\frac{C_{12} V_1 + C_{22} V_2}{V_2 - V_1} \ .
$$
We don't tend to use mutual capacitance as much in practice, nor will we see it again in this course.
