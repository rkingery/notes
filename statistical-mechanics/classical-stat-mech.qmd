# Classical Statistical Mechanics

Thus far we've seen the phenomenological description of thermodynamics, along with a derivation of the laws of thermodynamics for the ideal gas starting from the classical equations of motion. We'd like a more general way to relate classical mechanics to thermal equilibrium. Trying to derive equilibrium properties from the dynamical equations of motion for every system is practically impossible. We'll thus now adopt a different approach. Rather than understand *how* it is that a system arrives at equilibrium, we'll simply assume the system is *already* in equilibrium and try to study its properties using the rules of probability theory. This is the approach of statistical mechanics.

## Formal Definition

Suppose we have a system of $N$ particles in equilibrium whose phase space configuration is described by a *microstate* $\boldsymbol{\mu} \equiv \{\mathbf{x}_i, \mathbf{p}_i\}$ . Suppose we're interested in studying some set of macroscopic equilibrium properties described by a *macrostate* $M=(E,X,N)$. For a given macrostate $M$, suppose the equilibrium phase space density for the system to be in some microstate $\boldsymbol{\mu}$ is given by a probability distribution $p_M(\boldsymbol{\mu})$. Let's define **statistical mechanics** as the probabilistic study of the equilibrium macrostates $M$ of a system with a large number of degrees of freedom $N \gg 1$ using the equilibrium probability distribution $p_M(\boldsymbol{\mu})$.

Recall that to be in equilibrium the phase space density should be time independent. By Liouville's equation, this means
$$
\frac{\partial}{\partial t} p_M(\boldsymbol{\mu}) = -\{p_M(\boldsymbol{\mu}), H\} = 0.
$$
In general this will be true so long as $p_M(\boldsymbol{\mu})$ is an explicit function only of the Hamiltonian $H(\boldsymbol{\mu})$ and possibly any other conserved quantities. If there are no other conserved quantities then the equilibrium distribution should be an explicit function of $H(\boldsymbol{\mu})$ alone, i.e.
$$
p_M(\boldsymbol{\mu}) \equiv p_M(H(\boldsymbol{\mu})).
$$
In statistical mechanics we're primarily interested in probability distributions corresponding to specific classes of system constraints, or *ensembles*. We'll focus on the following ensembles, each of which corresponds to a conserved free energy.

- The *microcanonical ensemble*: $p_M(\boldsymbol{\mu}) \propto \delta(H(\boldsymbol{\mu}) - E)$. This corresponds to the energy $E$ being conserved.
- The *canonical ensemble*: $p_M(\boldsymbol{\mu}) \propto e^{-\beta H(\boldsymbol{\mu})}$. This corresponds to the Hemlholtz free energy $F$ being conserved.
- The *Gibbs canonical ensemble*: $p_M(\boldsymbol{\mu}) \propto e^{-\beta (H(\boldsymbol{\mu}) - J \cdot X)}$. This corresponds to the Gibbs free energy $G$ being conserved.
- The *grand canonical ensemble*: $p_M(\boldsymbol{\mu}) \propto e^{-\beta (H(\boldsymbol{\mu}) - \mu \cdot N)}$. This corresponds to the grand potential $\mathcal{G}$ being conserved.

All of these distributions arise from the principle of maximum entropy given certain known constraints, particularly the assumption that the expected values of zero or more quantities are given. We'll study the implications of each ensemble one at a time and discuss when to use which for a given problem.

## Microcanonical Ensemble

Suppose we have an *isolated system*, where the macrostate $M=(E,X,N)$ is assumed to be *constant*. This is called the **microcanonical ensemble**. The corresponding probability distribution is given by the assumption of a-priori probability. We assume all microstates are equally likely so long as $M$ stays fixed. More specifically, the probability distribution is assumed to be *uniform* on phase space manifolds of constant energy,
$$
\boxed{
p(\boldsymbol{\mu}) = \frac{1}{\Omega(M)} \delta\big(H(\boldsymbol{\mu}) - E\big)
} \ ,
$$
The variable $\Omega(M)$ is some normalization constant ensuring the probability integrates to one.  In fact, it's just a count of the total number of microstates corresponding to the macrostate $M$. We'll call it the **multiplicity**. The multiplicity also corresponds to the *surface area* of the phase space manifold of constant energy $E$,
$$
\boxed{\Omega(M) = \int_{H(\boldsymbol{\mu})=E} d \boldsymbol{\mu}} \ .
$$
Given the probability distribution, we can calculate the thermodynamic entropy using the formula $S = -k_B \langle \log p \rangle$,
$$
\begin{align*}
S(M) &= -k_B \int d \boldsymbol{\mu} \ p(\boldsymbol{\mu}) \log p(\boldsymbol{\mu}) \\
&= k_B \int_{H(\mathbf{x},\mathbf{p})=E} d \boldsymbol{\mu} \ \frac{\log \Omega(M)}{\Omega(M)} \\
&= k_B \log \Omega(M). \\
\end{align*}
$$
That is, the entropy is simply proportional to the *logarithm* of the number of microstates,
$$
\boxed{
S = k_B \log \Omega
} \ .
$$


### Laws of Thermodynamics

With a probability distribution and a definition of entropy in hand, we can proceed to *derive* almost all of the laws of thermodynamics from the assumption of a microcanonical ensemble. Let's start with the zeroth law.

**Zeroth Law:** Suppose two otherwise isolated systems $A$ and $B$ are in thermal contact with each other and allowed to exchange energy. When they both reach equilibrium, there will be some *temperature* function such that $T = T_A = T_B$.

**Proof:** Suppose system $A$ has energy $E_A$ and system $B$ has energy $E_B$. The entire system $A+B$ is isolated, which means it has some constant energy that must be given by $E = E_A + E_B$. The multiplicity of the full system is just the *product* of multiplicities of each subsystem, integrated over all energies that sum up to $E$. That is,
$$
\Omega(E) = \int_{E=E_A+E_B} dE \ \Omega(E_A) \Omega(E_B) = \int dE_A \ \Omega(E_A) \Omega(E-E_A).
$$
We can write this in terms of entropies as well. We have
$$
\Omega(E) = \int dE_A \ e^{\frac{1}{k_B} S_A} e^{\frac{1}{k_B} S-S_A} = \int dE_A \ e^{\frac{1}{k_B}(S_A+S_B)}
$$
Now, entropy is an extensive quantity, meaning $S \propto N$. Since $N$ is large we can employ the saddlepoint approximation, evaluating the integrand at the energies $E_A^*$ and $E_B^*$ that maximize the total entropy to get
$$
\Omega(E) \approx e^{\frac{1}{k_B} \big(S(E_A^*) + S(E_B^*)\big)}.
$$
This maximum must occur when the partial derivatives at the maximum energies vanish, i.e.
$$
\frac{\partial }{\partial E_A} S(E_A^*) \bigg|_{X,N} - \frac{\partial }{\partial E_B} S(E_B^*) \bigg|_{X,N} = 0.
$$
When $A$ and $B$ are in equilibrium, the total entropy $S$ must be maximized, meaning the partial derivatives must be equal. This condition defines a function whose values must equal at equilibrium, which by convention is the *inverse temperature*,
$$
\frac{1}{T} \equiv \frac{\partial S}{\partial E_A} \bigg|_{X,N} = \frac{\partial S}{\partial E_B} \bigg|_{X,N}. \quad \text{Q.E.D.}
$$
Notice in the above proof that we paid *no* attention to *how* the system reached equilibrium, only that it *did* eventually reached equilibrium, meaning that it satisfies the microcanonical probability distribution. Let's look now at the first law.

**First Law:** Consider a system having some form of mechanical work done on it by a force $J$. It's also allowed to exchange particles with the environment via a chemical potential $\mu$. If the force causes a differential displacement $dX$ and $dN$ particles are exchanged, then the total change in energy is given in differential form by
$$
dE = TdS + J \cdot dX + \mu \cdot dN.
$$
**Proof:** Let's calculate the change in the system's entropy when a differential amount of work is done on the system. The amount of work done on a system in response to a displacement $\delta X$ and particle exchange $\delta N$ is given by
$$
\delta E = J \cdot \delta X + \mu \cdot \delta N.
$$
Suppose the system is initially at a constant energy $E$ and increased by $\delta E$. Then to first order we have
$$
\begin{align*}
\delta S &= S(E+\delta E, X+\delta X, N+\delta N) - S(E,X,N) \\
&= \frac{\partial S}{\partial E} \bigg|_{X,N} (J \cdot \delta X + \mu \cdot \delta N) + \frac{\partial S}{\partial X} \bigg|_{E,N} \delta X + \frac{\partial S}{\partial N} \bigg|_{E,X} \delta N \\
&= \bigg(\frac{J}{T} - \frac{\partial S}{\partial X} \bigg|_{E,N}\bigg)\delta X + \bigg(\frac{N}{T} - \frac{\partial S}{\partial N} \bigg|_{E,X}\bigg)\delta N. \\
\end{align*}
$$
Now, at equilibrium we must have $\delta S = 0$ for *any* $\delta X$ and $\delta N$. This means each term must vanish, giving
$$
\delta S = \frac{1}{T} \delta E - \frac{J}{T} \delta X - \frac{\mu}{T} \delta N. \quad \text{Q.E.D.}
$$
Using the first law, we can now find any other thermodynamic quantity of interest once we have the entropy. We have
$$
\begin{align*}
\frac{1}{T} &= \frac{\partial S}{\partial E} \bigg |_{X,N} \ , \\
-\frac{J}{T} &= \frac{\partial S}{\partial X} \bigg |_{E,N} \ , \\
-\frac{\mu}{T} &= \frac{\partial S}{\partial N} \bigg |_{E,X} \ . \\
\end{align*}
$$
This gives us a sort of recipe we can use to calculate equations of state for systems in the microcanonical ensemble:

1. Calculate $\Omega(E,X,N)$ and use that to get the entropy via $S = k_B \log \Omega$.

2. Use the first law to get other thermodynamic variables of interest via
   $$
   dS =  \frac{1}{T} dE -  \frac{J}{T} \cdot dX - \frac{\mu}{T} \cdot dN.
   $$

The second law is trivial. We've essentially already proved it.

**Second Law:** The entropy of a system is non-decreasing over time.

**Proof:** We've already shown this. For any two subsystems $A$ and $B$, suppose they start with energies $E_A^0$ and $E_B^0$. Over time the system will move to equilibrium to reach a maximum entropy, with energies of $E_A^*$ and $E_B^*$. It must be the case then that
$$
S(E_A) + S(E_B) \leq S(E_A^*) + S(E_B^*). \quad \text{Q.E.D.}
$$

It turns out that we can't derive the *third law* from classical statistical mechanics alone. For that we'll need quantum statistical mechanics, a topic we'll get to later. Let's go ahead and also check the stability conditions though while we're here. For entropy to be *maximized* at equilibrium, we require the entropy near equilibrium to be concave, i.e.
$$
\frac{\partial^2}{\partial E_A^2} S(E_A^*) \bigg|_{X,N} - \frac{\partial^2}{\partial E_B^2} S(E_B^*) \bigg|_{X,N} \leq 0.
$$
Using the same logic as we did in the thermodynamics lesson, we can then show this implies the heat capacity of the system be non-negative. Moreover, the requirement that any second-order perturbations be non-positive requires $\frac{\partial^2 S}{\partial X_i \partial X_j}$ to be positive-definite at any constant energy $E$.

### Example: Two-State Systems

Let's consider a simple example of a system we can actually solve in the microcanonical ensemble, indeed one of the few we can solve. Suppose we have a collection of particles that can take on only one of two states. We can imagine only caring about the spin of an electron, for example, in which case the two states would be spin-up and spin-down for each electron. Since there are only two states we can't really think in terms of phase space in this case, so we have to cheat a bit. We'll just sum over all states instead of integrating over phase space.

Suppose each particle can take on an energy of the form $\varepsilon n_i$ where $n_i=0,1$. That is, the particle has no energy if the state is down and a constant $\varepsilon$ energy if the spin is up. Then for $N$ particles the Hamiltonian will just be the sum of all these energies,
$$
H = \sum_{i=0}^N \varepsilon n_i \equiv \varepsilon N_1.
$$
On the right we just defined $N_1$ to be the total number of all states that are up. In the microcanonical we assert that $H$ is held to a constant energy $E$. This means we can also write $N_1 = \frac{E}{\varepsilon}$. 

Now, to find $\Omega(E,N)$ observe the following fact: The number of total states with energy $E$ is equivalent to the number of ways of choosing exactly $N_1$ particles with state up out of a total of $N$ particles. Assuming both $N$ and $N_1$ are large, we have
$$
\Omega(E,N) = \binom{N}{N_1} = \frac{N_1!}{N_1!(N-N_1)!} \approx \frac{N^N}{N_1^{N_1}(N-N_1)^{N-N_1}} \ .
$$
The entropy of such a system is thus
$$
\begin{align*}
S &= k_B \log \Omega(E) \\
&= k_B \bigg[\log N - \frac{N_1}{N}\log N_1 - \frac{N-N_1}{N}\log (N-N_1) \bigg] \\
&= -Nk_B \bigg[\frac{E}{N\varepsilon}\log\frac{E}{N\varepsilon} + \bigg(1-\frac{E}{N\varepsilon}\bigg) \log \bigg(1-\frac{E}{N\varepsilon}\bigg) \bigg].
\end{align*}
$$
From this we can get the temperature in terms of the energy,
$$
\frac{1}{T} = \frac{\partial S}{\partial E} \bigg |_N = \frac{k_B}{\varepsilon} \log \frac{E}{N\varepsilon-E}.
$$
If we like, we can then solve for the energy in terms of the temperature to get
$$
E(T) = \frac{N\varepsilon}{1 + e^{\frac{\varepsilon}{k_B T}}}.
$$
One interesting property of the two-state system is that it can in principle take on negative temperatures. This comes from the fact that the energy $E$ can take on any value between $0$ (all states down) and $N\varepsilon$ (all states up). Having $E \leq \frac{1}{2} N\varepsilon$ corresponds to *positive* temperatures, while having $E \geq \frac{1}{2} N\varepsilon$ corresponds to *negative* temperatures. Negative temperatures are counter-intuitive since they implies that entropy increases when energy is taken out of the system, not put in. In practice this isn't an issue, since the system must always be in thermal contact with a heat bath, which forces it to have positive temperature.

If we like we can use $E(T)$ to calculate the heat capacity by differentiating with respect to $T$,
$$
C(T) = \frac{\partial E}{\partial T} \bigg |_{N} = Nk_B \bigg(\frac{\varepsilon}{k_B T}\bigg)^2 \frac{e^{\frac{\varepsilon}{k_B T}}}{\big(1 + e^{\frac{\varepsilon}{k_B T}}\big)^2}.
$$
By looking at the limited cases where $\varepsilon \ll k_B T$ and $\varepsilon \gg k_B T$, it's easy to see that $C(T) \rightarrow 0$ both as $T \rightarrow 0$ and as $T \rightarrow \infty$. Vanishing at low temperatures has to do with the discrete energy gap for each particle, while vanishing at high temperatures has to do with energy saturation due to the finite number of states allowed.

Notice that if we divide $E$ by $\varepsilon$ what's left is dimensionless. In fact, it's just the mean number of particles with state up, i.e.
$$
\langle n \rangle = \frac{N}{1 + e^{\frac{\varepsilon}{k_B T}}}.
$$
It's also worth asking what $p(n)$ is, the *probability* for a given particle to be up or down. Evidently that probability should be $p(0) = \frac{N-N_1}{N}$ and $p(1) = \frac{N_1}{N}$. Plugging in $N_1 = \frac{E(T)}{\varepsilon}$, we can write the expression as
$$
p(n) = \delta(n) \frac{1}{1 + e^{-\frac{\varepsilon}{k_B T}}} + \delta(n-1) \frac{e^{-\frac{\varepsilon}{k_B T}}}{1 + e^{-\frac{\varepsilon}{k_B T}}}.
$$
The shape of this curve depends on the temperature. At low temperatures $p(0) \approx 1$. At high temperatures $p(1) \approx 1$. And when $\varepsilon \approx k_B T$ we get $p(0) \approx p(1) \approx \frac{1}{2}$.

## Distinguishability

We'd like to use the microcanonical ensemble to work out the relations for a more interesting system, like an ideal gas. It turns out however that there's some subtly involved that we need to address in applying statistical mechanics to realistic systems.

### Example: Ideal Gas

Let's start by trying to derive the ideal gas expressions using only what we've covered so far and seeing where things go wrong. Suppose an isolated system of gas particles has the non-interacting Hamiltonian for an ideal gas, namely
$$
H(\mathbf{x}_1,\cdots,\mathbf{x}_N,\mathbf{p}_1,\cdots,\mathbf{p}_N) = \sum_{i=1}^N \frac{\mathbf{p}_i^2}{2m} + V(\mathbf{x}_1,\cdots,\mathbf{x}_N),
$$
where the potential energy $V(\mathbf{x}_1,\cdots,\mathbf{x}_N)$ is zero inside a container of volume $V$ and infinite otherwise. To calculate the equations of state we first need to find $\Omega(E,V,N)$. Integrating over the volume of the box and all valid momenta, we get
$$
\Omega(E,V,N) = \int_{\frac{\mathbf{p}^2}{2m} = E} d^{3N} \mathbf{x} \ d^{3N} \mathbf{p} = V^N  \int_{|\mathbf{p}| = \sqrt{2mE}} d^{3N} \mathbf{p} \equiv V^N \Sigma_{3N}.
$$
The integral $\Sigma_{3N}$ is the surface area of a $3N$-dimensional hypersphere in momentum space of radius $R=\sqrt{2mE}$. 

To make anymore progress we need to figure out what the surface area of a $d$-dimensional hypersphere is. Now, notice we can write the $d$-dimensional volume element as $d^d \mathbf{x} = R^{d-1} dR \ d\Omega_{d-1}$, where $d\Omega_{d-1}$ is the $d-1$ dimensional solid angle. For a hypersphere we can factor the integral. If $S_d \equiv \int d\Omega_{d-1}$, then we have $\Sigma_{d} = S_d R^{d-1}$. Here $S_d$ is a constant that depends only on the dimension $d$. To find $S_d$, the trick is to use the fact that the integral of a $d$-dimensional Gaussian is just
$$
I_d \equiv \int d^d \mathbf{x} \ e^{-\mathbf{x}^2} = \bigg(\int dx \ e^{-x^2}\bigg)^d = \pi^{d/2}.
$$
By changing variables to spherical coordinates, it's easy to show
$$
I_d = \int R^{d-1} dR \ d\Omega_{d-1} \ e^{-R^2} = \frac{1}{2} \bigg(\frac{d}{2}-1\bigg)! \ S_d.
$$
Equating the two expressions, we can solve for $S_d$ and finally get the surface area of a $d$-dimensional hypersphere,
$$
\Sigma_d = \frac{2\pi^{d/2}}{\big(\frac{d}{2}-1\big)!} R^{d-1}.
$$
Back to the problem at hand. Plugging all this in, we finally get a multiplicity of
$$
\Omega(E,V,N) = \frac{2\pi^{\frac{3N}{2}}}{\big(\frac{3N}{2}-1\big)!} V^N (2mE)^{\frac{3N-1}{2}} \approx 2 V^N \bigg(\frac{4\pi m E}{3N}\bigg)^{3N/2}.
$$
The right–hand side is simplified using Stirling's approximation $N! \sim N^N e{-N}$. The entropy is then $S = k_B \log \Omega$. If we ignore terms of order less than $O(N)$, up to an added constant we get the same result we found using kinetic theory, namely
$$
S = Nk_B \log V\bigg(\frac{4\pi emE}{3N}\bigg)^{3/2}.
$$
**Aside:** Suppose we didn't know the energy $E$ exactly, but only within some range $E \pm \delta E$. In that case, the hypersphere radius would have an uncertainty $\delta R = \sqrt{\frac{m}{2E}} \delta E$. The effect of this is that $\Omega$ now gains a multiplicative factor of $\delta R$. This causes the entropy to then gain an additive factor of $k_B \log \delta R \propto \log \frac{\delta E}{\sqrt{E}}$. Since energy is extensive, this new added factor will be $O(\log N)$, which is small compared to the original terms of $O(N)$, and can hence be neglected. The net effect of all this is that none of the thermodynamic variables get materially affected by the uncertainty. For this reason we'll ignore it from now on.

Using the entropy we can now proceed to calculate the temperature, pressure, and chemical potential. The equation for temperature gives the usual energy relation for a monoatomic ideal gas,
$$
\frac{1}{T} = \frac{\partial S}{\partial E} \bigg |_{X,N} = \frac{3Nk_B}{2E} \quad \Longrightarrow \quad E = \frac{3}{2} Nk_B T.
$$
The equation for the pressure gives the usual ideal gas law,
$$
P = T \frac{\partial S}{\partial V} \bigg |_{E,N} = \frac{Nk_B T}{V} \quad \Longrightarrow \quad PV = Nk_B T.
$$
Both of these seem perfectly fine. The problem, however, comes when we try to evaluate the chemical potential. We'd get
$$
\mu = -T \frac{\partial S}{\partial N} \bigg |_{E,V} = - k_B T \bigg[\log V\bigg(\frac{4\pi mE}{3N}\bigg)^{3/2} - \frac{3}{2} \bigg].
$$
Now, the problem here is that the chemical potential should be *intensive*, but it's not. It's proportional to $\log V$. The same problem showed up in the entropy as well. The entropy should be *extensive*, yet it's proportional to $V\log N$. It seems like we should have to divide by something else extensive inside the logarithm to cancel the effect of the $V$.

### Gibbs' Paradox

To resolve this issue let's look at another toy problem. Consider the *mixing entropy* of a container containing two distinct ideal gases of different types. Suppose the container initially split into two components, the first a gas with configuration $(S_1,N_1,V_1)$ and the second a gas with configuration $(S_2,N_2,V_2)$. Assume the system is at equilibrium, so both systems have the same temperature $T$. An adiabatic wall is then removed, so the two gases are allowed to mix and come to a new equilibrium of the same temperature. The *initial* total entropy $S_i$ in the container is evidently given by $S_i = S_1 + S_2$, i.e.
$$
S_i = k_B \bigg( N_1 \log V_1 + \frac{3}{2} N_1 \log 2\pi e m_1 k_B T\bigg) + k_B \bigg(N_2 \log V_2 + \frac{3}{2} N_2 \log 2\pi e m_2 k_B T\bigg),
$$
where we've used the fact that $E = \frac{3}{2} N k_B T$. To find the *final* total entropy $S_f$, observe that at the new equilibrium both gases should fill up the entire box uniformly, meaning $V_1 = V_2 = V$, hence
$$
S_f = k_B \bigg( N_1 \log V + \frac{3}{2} N_1 \log 2\pi e m_1 k_B T\bigg) + k_B \bigg(N_2 \log V + \frac{3}{2} N_2 \log 2\pi e m_2 k_B T\bigg).
$$
All together, this means the *change* in total entropy is given by
$$
\Delta S = S_f - S_i = k_B \bigg(N_1 \log \frac{V}{V_1} + N_2 \log \frac{V}{V_2}\bigg).
$$
So what's the problem here? Well, suppose the two gases were the *same*, and we opened the adiabatic wall and allowed them to mix? What should happen physically? Nothing. They're the same gas, at the same temperature. The thermodynamic variables shouldn't change at all, meaning we should have $\Delta S = 0$. On the other hand, if the two gases were *distinct*, we *should* expect the total entropy of the system to increase like shown. This conundrum is known as the **Gibbs Paradox**.

The solution to this paradox is to notice that we have to treat *identical* systems separately from *distinguishable* systems. If a system is distinguishable we're fine as is. But if a system is identical we have to account for the fact that we're *overcounting* $\Omega$ any time we count two identical systems as distinct. The way to fix this is pretty easy. Just divide $\Omega$ by the number of ways to permute the particles in each identical system. 

To resolve the above paradox and the issue with extensively, notice that if we have an ideal gas of $N$ particles then we're overcounting $\Omega$ by a factor of $N!$, the number of ways to permute a set of $N$ identical particles. Then $\Omega$ for an ideal gas becomes
$$
\Omega(E,V,N) = \frac{V^N}{N!}\frac{2\pi^{\frac{3N}{2}}}{\big(\frac{3N}{2}-1\big)!} (2mE)^{\frac{3N-1}{2}} \approx 2\bigg(\frac{Ve}{N}\bigg)^N \bigg(\frac{4\pi m E}{3N}\bigg)^{3N/2}.
$$
This means the entropy $S$ then becomes
$$
S = Nk_B \bigg[\log \frac{V}{N}\bigg(\frac{4\pi mE}{3N}\bigg)^{3/2} + \frac{5}{2}\bigg],
$$
and hence that the chemical potential $\mu$ becomes
$$
\mu = - k_B T \log \frac{V}{N}\bigg(\frac{4\pi mE}{3N}\bigg)^{3/2}.
$$
Now it appears that we're dividing $V$ by $\frac{N}{e}$ inside the logarithm, which makes $S$ is properly extensive and $\mu$ properly intensive.

To resolve the Gibbs paradox, notice that if the two gases are *distinct*, we have to divide $\Omega$ by $N_1!N_2!$. This ultimately gives
$$
\Delta S = k_B \bigg(N_1 \log \frac{V}{V_1} + N_2 \log \frac{V}{V_2}\bigg),
$$
which is of course what we had before. If the two gases are *identical*, we instead have to divide $\Omega$ by $N!$. This ultimately gives
$$
\Delta S = k_B \bigg[(N_1+N_2) \log \frac{V}{N_1+N_2} - N_1 \log \frac{V_1}{N_1} - N_2 \log \frac{V_2}{N_2}\bigg] = 0
$$
since at equilibrium (both initially and finally) we must have $\frac{V}{N}=\frac{V_1}{N_1}=\frac{V_2}{N_2}$. The paradox is thus resolved.

This resolves one of the problems we had with the expressions for an ideal gas, but there's one more. If we look careful, we can see that the expression inside the logarithm isn't dimensionless, as it should be. In fact, it has units of *action* to some power. Recall that action has units of position times momentum, or energy times time. The dimensionality issue ultimately arises from the fact that we're working with a continuous system and integrating over phase space. But phase space has units. To fix this problem, all we have to do is divide the phase space measure $d \mathbf{x} d\mathbf{p}$ by some constant with units of action cubed. We'll call this constant $h$. Its value turns out to be largely immaterial for classical purposes. We'll see what it is when we get to quantum statistical mechanics. At any rate, to fix the measure we just need to make the substitution
$$
d^3 \mathbf{x} d^3 \mathbf{p} \rightarrow \frac{d^3 \mathbf{x} d^3 \mathbf{p}}{h^3}.
$$
These two facts together resolve our problems. For $N$ particles all of the same type, we substitute the following measures
$$
d^{3N} \mathbf{x} \ d^{3N} \mathbf{p} \rightarrow
\begin{cases}
\frac{d^{3N} \mathbf{x} \ d^{3N} \mathbf{p}}{h^{3N}} & N \ \text{distinguishable particles}, \\
\frac{d^{3N} \mathbf{x} \ d^{3N} \mathbf{p}}{N! \ h^{3N}} & N \ \text{identical particles}. \\
\end{cases}
$$

For an ideal gas, the right measure to use is the second one. Plugging this in, we finally get an entropy of
$$
S = Nk_B \bigg[\log \frac{V}{N}\bigg(\frac{4\pi mE}{3Nh^2}\bigg)^{3/2} + \frac{5}{2}\bigg].
$$
This result, the correct entropy of a classical ideal gas, is known as the *Sakur-Tetrode equation*. The chemical potential is then
$$
\mu = - k_B T \log \frac{V}{N}\bigg(\frac{4\pi mE}{3Nh^2}\bigg)^{3/2}.
$$
To finish up this section, it's worth mentioning that statistical mechanics gives us even more information than thermodynamics gives us. Not only does it tell us what the variables are, but it can also tell us how variables are distributed. For example, we can derive the distribution for the momentum of a single ideal gas particle. We have
$$
\begin{align*}
p(\mathbf{p}) &= \frac{V^N}{\Omega(E,V,N)} \int_{|\mathbf{p}| = \sqrt{2mE}} d^{3N-1} \mathbf{p} \\
&= V\frac{\Omega\big(E-\frac{\mathbf{p}^2}{2m},V,N-1\big)}{\Omega(E,V,N)} \\
&= \bigg(1 - \frac{\mathbf{p}^2}{2mE}\bigg)^{3N/2-2} \frac{1}{(2\pi m E)^{3/2}} \frac{(\frac{3N}{2}-1)!}{(\frac{3(N-1)}{2}-1)!} \\
&\approx \bigg(\frac{3N}{4\pi m E}\bigg)^{3/2} \exp\bigg(-\frac{3N\mathbf{p}^2}{4mE}\bigg). \\
\end{align*}
$$
The last line follows from the fact that $E$ is extensive and $N \gg 1$, hence we can use the identity $e^x \approx \big(1+\frac{x}{N}\big)^{N}$. Using the relation $E = \frac{3}{2} N k_B T$ then gives the usual form of this distribution, known as the **Maxwell-Boltzmann distribution**.

### Example: Ultrarelativistic Ideal Gas

A similar example is the ultrarelativistic ideal gas. Recall from special relativity that the kinetic energy of a particle is given by the relativistic energy formula
$$
E^2 = m^2c^4 + \mathbf{p}^2 c^2.
$$
In the limit where $|\mathbf{p}| \ll mc$ we recover the classical kinetic energy $E=\frac{\mathbf{p}^2}{2m}$. We can also ask about the limit where $|\mathbf{p}| \gg mc$. This is called the *ultrarelativistic* limit. This limit includes massless particles like photons or neutrinos that move at or near the speed of light. In this limit the kinetic energy is just $E=|\mathbf{p}| c$.

Let's again suppose we have a gas of $N$ non-interacting particles, but that they're ultrarelativistic. In that case, the Hamiltonian is
$$
H(\mathbf{x}_1,\cdots,\mathbf{x}_N,\mathbf{p}_1,\cdots,\mathbf{p}_N) = \sum_{i=1}^N |\mathbf{p}_i| c + V(\mathbf{x}_1,\cdots,\mathbf{x}_N).
$$
We'll again assume the potential is zero inside a container of volume $V$ and infinite otherwise. We proceed as usual by trying to find $\Omega(E,V,N)$. Supposing we're dealing with a gas of $N$ identical particles, we have
$$
\Omega(E,V,N) = \frac{1}{N!h^{3N}} \int_{E=|\mathbf{p}| c} d^{3N} \mathbf{x} \ d^{3N} \mathbf{p} = \frac{V^N}{N!h^{3N}} \int_{E=|\mathbf{p}| c} d^{3N} \mathbf{p}.
$$
Again note that the momentum space integral is over a $3N$-dimensional hypersphere, this time of radius $R=\frac{E}{c}$. Thus,
$$
\Omega(E,V,N) = \frac{V^N}{N!h^{3N}} \Sigma_{3N} \approx 2 \bigg[\frac{eV}{N} \bigg(\frac{2\pi e E^2}{3h^2c^2 N}\bigg)^{3/2}\bigg]^N.
$$
Again keeping terms only to $O(N)$, the entropy is thus given by
$$
S = N k_B \bigg[\log \frac{V}{N} \bigg(\frac{2\pi E^2}{3h^2c^2 N}\bigg)^{3/2} + \frac{5}{2}\bigg].
$$
It's worth noting that the entropy in this case is no longer properly extensive, as it contains a term of order $O(N \log N)$ due to the presence of the $E^2$ in the logarithm. There's no obvious way to fix this problem. In fact, an ultrarelativistic gas is *super-extensive*. It's in a class of systems with so-called *anonomous scaling behaviors*. In practice this isn't a huge deal.

We can calculate the temperature the usual way. We have
$$
\frac{1}{T} = \frac{\partial S}{\partial E} \bigg |_{V,N} = \frac{3Nk_B}{E} \quad \Longrightarrow \quad E = 3Nk_B T.
$$
Notice the entropy depends on volume in the same way as it does for the classical ideal gas. Indeed, we have
$$
\frac{P}{T} = \frac{\partial S}{\partial V} \bigg |_{E,N} = \frac{Nk_B}{V} \quad \Longrightarrow \quad PV = Nk_B T.
$$
The chemical potential follows similarly. Following the same kind of calculation as before, we get
$$
\mu = - k_B T \log \frac{V}{N}\bigg(\frac{2\pi E^2}{3c^2h^2N}\bigg)^{3/2}.
$$
Since the entropy isn't properly extensive, the chemical potential evidently isn't properly intensive as we'd expect. It's not hard to show that the distribution of momenta is now longer a Gaussian either. It's in fact a Laplace distribution, with
$$
p(\mathbf{p}) = \frac{3Nc}{2E} \exp\bigg(-\frac{3N|\mathbf{p}|c}{E}\bigg) = \frac{c}{2k_B T} \exp\bigg(-\frac{|\mathbf{p}| c}{k_B T}\bigg).
$$

### Example: Hard Sphere Gas

Let's look at another problem similar to the ideal gas. Suppose that we have a gas of $N$ non-interacting solid spheres each of volume $\omega \ll V$, where $V$ is again the volume of the container. The Hamiltonian otherwise remains the same as for the ordinary ideal gas. If we assume the spheres are identical, following the same logic as for the ordinary ideal gas we can write the multiplicity as
$$
\Omega(E,V,N) = \frac{1}{N!}\frac{2\pi^{\frac{3N}{2}}}{\big(\frac{3N}{2}-1\big)!} (2mE)^{\frac{3N-1}{2}} \mathcal{V}_{N}.
$$
Here $\mathcal{V}_{N}$ represents the volume integral over all $N$ particles. For the ordinary ideal gas we just had $\mathcal{V}_{N} = V^N$. Now, imagine putting the spheres into the container one at a time. The first one could occupy the volume $V$. The second would be the full volume minus the volume of the first sphere, so $V-\omega$. The third would be the full volume minus the volumes of the first two spheres, so $V-2\omega$. And so on until the last sphere, which would have an available volume of $V-(N-1)\omega$. Assuming $\omega \ll V$, we can approximate $\mathcal{V}_N$ as
$$
\begin{align*}
\mathcal{V}_N &= V\big(V-\omega\big)\big(V-2\omega\big)\cdots\big(V-(N-1)\omega\big) \\
&= V^N \prod_{j=1}^{N-1}\bigg(1-j\frac{\omega}{V}\bigg) \\
&\approx V^N \bigg(1-\frac{N(N-1)}{2}\frac{\omega}{V}\bigg) \\
&\approx V^N \bigg(1-\frac{N^2}{2}\frac{\omega}{V}\bigg) \\
&\approx \bigg(V-\frac{N\omega}{2}\bigg)^N. \\
\end{align*}
$$
Effectively, this says the total *available* volume for each particle in the container to explore gets reduced from $V$ to $V-\frac{N\omega}{2}$. The term $\frac{N\omega}{2}$ is called the *excluded volume*. The multiplicity is evidently then
$$
\Omega(E,V,N) = \frac{\big(V-\frac{N\omega}{2}\big)}{N!}\frac{2\pi^{\frac{3N}{2}}}{\big(\frac{3N}{2}-1\big)!} (2mE)^{\frac{3N-1}{2}} \approx 2\bigg(\frac{\big(V-\frac{N\omega}{2}\big)e}{N}\bigg)^N \bigg(\frac{4\pi m E}{3N}\bigg)^{3N/2}.
$$
This is exactly what we had for the ordinary ideal gas, except with $V$ replaced by $V-\frac{1}{2}N\omega$. This means the entropy is just
$$
S = Nk_B \bigg[\log \frac{V-\frac{N\omega}{2}}{N}\bigg(\frac{4\pi mE}{3N}\bigg)^{3/2} + \frac{5}{2}\bigg].
$$
Clearly the equation for temperature isn't affected at all. We still have $E = \frac{3}{2} N k_B T$. The equation for pressure though does change though. Since we're differentiating $S$ with respect to $V$ and not $V-\frac{1}{2}N\omega$, we have
$$
\frac{P}{T} = \frac{\partial S}{\partial V} \bigg |_{E,N} = \frac{Nk_B}{V-\frac{N\omega}{2}} \quad \Longrightarrow \quad P\bigg(V-\frac{N\omega}{2}\bigg) = Nk_B T.
$$
The ideal gas law is thus slightly modified by reducing the volume from $V$ to the available volume $V-\frac{N\omega}{2}$. 

Incidentally, the hard sphere gas is *almost* a good model of a real interacting gas away from the dense limit. One change that can make it even more accurate is to reduce not just the *volume*, but also the *pressure*, to account for the fact that interactions tend to make particles slightly less likely to be near the walls of the container instead of around the center. This slight generalization will give us the *van der Waals* equation, which we'll derive when we get to interacting particles.

## Canonical Ensemble

While the microcanonical ensemble is easy to understand, it's usually not the easiest ensemble to work with for most problems. Usually finding the multiplicity $\Omega(M)$ directly isn't easy since it involves a high level of combinatorial insight. Another approach we can take is to not take $M=(E,X,N)$, but to instead take $M=(T,X,N)$. That is, we consider a system with a fixed *temperature*, not a fixed *energy*. Physically, this means considering not an *isolated system*, but a *closed system*. We assume our system of interest is placed in contact with a large environment, or *heat bath*, and allowed to come to equilibrium. The system inherits its temperature from the heat bath and is allowed to exchange heat with it.

### Boltzmann Distribution

To derive the probability distribution for a canonical system let's first consider the combined system of our system of interest plus the heat bath. We'll suppose the combined system is *isolated*, meaning it follows the microcanonical ensemble. Denote the system of interest as $S$, the heat bath as $R$, and the combined system as $RS$. The total energy $E$ is just the sum of the Hamiltonians of $S$ and $R$ at a given point in their respective phase spaces,
$$
E = H_R(\boldsymbol{\mu}_R) + H_S(\boldsymbol{\mu}_S).
$$
In the microcanonical ensemble the probability of any given state $(\boldsymbol{\mu}_R,\boldsymbol{\mu}_S)$ is then just
$$
p_{RS}(\boldsymbol{\mu}_R,\boldsymbol{\mu}_S) = \frac{1}{\Omega_{RS}} \delta\big(E-H_R(\boldsymbol{\mu}_R)-H_S(\boldsymbol{\mu}_S)\big).
$$
To get the probability we seek, the probability of *system* states we need to find $p_S(\boldsymbol{\mu}_S)$. By marginalizing, we have
$$
\begin{align*}
p_S(\boldsymbol{\mu}_S) &= \int d \boldsymbol{\mu}_R \ p_{RS}(\boldsymbol{\mu}_R,\boldsymbol{\mu}_S) \\
&= \frac{1}{\Omega_{RS}} \Omega_R\big(E-H_S(\boldsymbol{\mu}_S)\big) \\
&= \frac{1}{\Omega_{RS}}\exp\bigg(\frac{1}{k_B}S_R\big(E-H_S(\boldsymbol{\mu}_S)\big)\bigg).
\end{align*}
$$
Now, we assume the heat bath is much larger than the system of interest. This means the $S_{RS} \approx S_R$ and the total energy $E \gg H_S$. If we Taylor expand $S_R$ about $E$, to first order we thus have
$$
S_R\big(E-H_S(\boldsymbol{\mu}_S)\big) \approx S_{RS}(E) - \frac{\partial S_{RS}}{\partial E} H_S(\boldsymbol{\mu}_S).
$$
Since the heat bath is fixed at a temperature $T$, we can write the partial derivative as $\frac{\partial S_R}{\partial E} = \frac{1}{T}$. Plugging back in, we have
$$
p_S(\boldsymbol{\mu}_S) \approx \frac{e^{\frac{1}{k_B} S_{RS}(E)}}{\Omega_{RS}}e^{-\frac{1}{k_B T} H_S(\boldsymbol{\mu}_S)}.
$$
For convenience we'll define $\beta \equiv \frac{1}{k_B T}$. Notice the first term above is just some normalization constant that we'll denote as $\frac{1}{Z(\beta)}$. Dropping the explicit $S$ subscripts and ignoring the presence of the heat bath we finally have our canonical ensemble probability, called the **Boltzmann distribution**,
$$
\boxed{p(\boldsymbol{\mu}) = \frac{1}{Z(T,X,N)}e^{-\beta H(\boldsymbol{\mu})}} \ .
$$


### Partition Function

The normalization constant $Z(T,X,N)$ is so important it has a special name. It's called the canonical **partition function**. We can find an expression for it by asserting that the probability density integrate to one. Evidently, we get
$$
\boxed{Z(T,X,N) = \int d \boldsymbol{\mu} \ e^{-\beta H(\boldsymbol{\mu})}} \ .
$$
The partition function turns out to be very important to statistical mechanics, as it essentially encodes all the statistical mechanical information contained in the system. To see why it's helpful to re-write the partition function as an integral (or sum) over all possible system energies $E$. To do that multiple microstates can have the same energy. That means we need to multiply the integrand by a multiplicity $\Omega(E)$. We thus have
$$
Z = \int dE \ \Omega(E) \ e^{-\beta E} = \int dE \ e^{\frac{1}{k_B} S} e^{-\frac{1}{k_B T} E} = \int dE \ e^{-\frac{1}{k_B T}(E-TS)}.
$$
Recall from thermodynamics though that $E-TS$ is just the Helmholtz free energy $F$. Now, since $F$ is extensive we can again employ the saddlepoint approximation about the maximum energy $E^*$ to get
$$
Z = \int dE \ e^{-\beta F} \approx e^{-\beta F(E^*)} \sqrt{\frac{2\pi}{|F''(E^*)|}}.
$$
Taking the logarithm of both sides and solving for $F$, we evidently have
$$
F = -k_B T \log Z + O\big(\log N\big).
$$
Since $N$ is large, we can neglect the dependence on $\log N$. We thus have a nice expression for the free energy as
$$
\boxed{F = -k_B T \log Z} \ .
$$
Why is this important? We already know $F$ encodes all of the thermodynamic information in the system because
$$
dF = -S dT + J \cdot dX + \mu \cdot dN.
$$
This formula gives a way to find the entropy, force, and chemical potential of the system just from $\log Z$. For example,
$$
\begin{align*}
J &= \frac{\partial F}{\partial X} \bigg |_{T,N} = -\frac{1}{\beta} \frac{\partial \log Z}{\partial X}, \\
\mu &= \frac{\partial F}{\partial N} \bigg |_{T,X} = -\frac{1}{\beta} \frac{\partial \log Z}{\partial N}. \\
\end{align*}
$$
We can also derive a convenient expression for the energy $E$ by looking at the expected value of the Hamiltonian. We have
$$
\langle H \rangle = \int d \boldsymbol{\mu} \ H(\boldsymbol{\mu}) p(\boldsymbol{\mu}) = \int d \boldsymbol{\mu} \ H(\boldsymbol{\mu}) \frac{e^{-\beta H(\boldsymbol{\mu})}}{Z} = -\frac{1}{Z} \frac{\partial Z}{\partial \beta} = - \frac{\partial \log Z}{\partial \beta}.
$$
Assuming we can equate the macrostate energy $E$ with $\langle H \rangle$, an issue we'll discuss in a moment, we can thus write
$$
\boxed{E = \langle H \rangle = - \frac{\partial \log Z}{\partial \beta}} \ .
$$
Using the formula $F = E - TS$ we can also get a convenient formula for the entropy. We have
$$
S = \frac{E}{T} - \frac{F}{T} = k_B \big(\beta E + \log Z \big).
$$

For systems of $N$ non-interacting particles, it's generally the case that the partition function can be factored into a product of single-particle partition functions. That is, $Z = Z_1^N$. If the particles are identical we have to be sure to divide by $N!$ as well. This trick will be useful in solving for equations of state in many examples.

### Fluctuations

But why can we assert that the thermodynamic energy $E$ is the same thing as the expected value of the Hamiltonian $\langle H \rangle$? The reason for this has to do almost entirely with the fact that $N$ is really large. To see why, let's ask the following question: How much can we expect the energy to *fluctuate* about its mean $\langle H \rangle$? 

To answer this, we just need to find the variance $\sigma_E^2$. Using the same trick as before, the $k$<sup>th</sup> moment of $H$ is given by
$$
\langle H^k \rangle = \int d \boldsymbol{\mu} \ H^k(\boldsymbol{\mu}) p(\boldsymbol{\mu}) = \int d \boldsymbol{\mu} \ H^k(\boldsymbol{\mu}) \frac{e^{-\beta H(\boldsymbol{\mu})}}{Z} = (-1)^k\frac{1}{Z} \frac{\partial^k Z}{\partial \beta^k}.
$$
From this formula, it's not hard to see the *cumulants* of $H$ are simply given by
$$
\langle H^k \rangle_c = (-1)^k \frac{\partial^k \log Z}{\partial \beta^k}.
$$
In particular, this means the variance is given by
$$
\sigma_E^2 = \frac{\partial^2 \log Z}{\partial \beta^2} = - \frac{\partial \langle H \rangle}{\partial \beta} = k_B T^2 \frac{\partial \langle H \rangle}{\partial T} \bigg |_{X,N} \ .
$$
To the extent we can write $E \approx \langle H \rangle$, the right-hand derivative is just the heat capacity $C_X$. The variance of $H$ is thus
$$
\boxed{\sigma_E^2 = k_B T^2 C_X} \ .
$$
Now, recall the heat capacity is in general *extensive*. This means the variance (and in fact all cumulants of $H$) are extensive as well. Thus, roughly speaking, we expect the energy $E$ to fluctuation about the mean by an amount
$$
\sigma_E = \sqrt{k_B T^2 C_X} = O(\sqrt{N}).
$$
This means that the energy $E$ will with high probability lie within a few $\sigma_E$ of the mean,
$$
E \approx \langle H \rangle \pm \sigma_E = \langle H \rangle \pm O(\sqrt{N}).
$$
Since $\langle H \rangle = O(N)$ and $N$ is large, we can neglect the $O(\sqrt{N})$ fluctuations in the thermodynamic limit and just write
$$
E \approx \langle H \rangle.
$$
Note that the energy distribution can have pretty much any curve we like. All that matters is that it be extensive. It can even have multiple peaks. Due to extensivity, the global maximum $E^*$ will always be exponentially larger than the other maxima. Around that maximum we can fit a Gaussian with mean $E^* \approx \langle H \rangle$ and variance $\sigma_E^2$. That Gaussian will be sharply peaked about $E^*$ with a negligible fluctuation, meaning we can safely write $E \approx E^* \approx \langle H \rangle$.

![](.../resources/image-20230708092353295.png){width=350 fig-align=center}

This is in essence the magic of thermodynamics. When $N$ is really really large, at equilibrium we can pretty much ignore the shape of the distribution and just assume $E = E^* = \langle H \rangle$. This holds for other extensive variables as well, not just energy. For all practical purposes, thermodynamic variables are deterministic due to the character of the thermodynamic limit.

As an example to see that fluctuations don't really matter, if we looked at one mole of air at STP, we'd expect the energy to be about $E \approx \frac{5}{2} RT \approx 6100 \ \text{J}$. On the other hand, the energy is expected to fluctuate as $\sigma_E = \sqrt{k_B T^2 \frac{5}{2} R} \approx 3 \cdot 10^{-10} \ \text{J}$. That is, the fluctuations $\sigma_E$ are a full 13 orders of magnitude smaller than $E$, hence completely negligible.

### Example: Ideal Gas

Frequently, the canonical ensemble is much easier to work with than the microcanonical ensemble. Perhaps the best example of this is comparing both methods for solving the ideal gas problem. Consider again a gas with Hamiltonian
$$
H(\mathbf{x}_1,\cdots,\mathbf{x}_N,\mathbf{p}_1,\cdots,\mathbf{p}_N) = \sum_{i=1}^N \bigg(\frac{\mathbf{p}_i^2}{2m} + V(\mathbf{x}_i)\bigg),
$$
where $V(\mathbf{x}_i)$ is zero inside a container of volume $V$ and infinite otherwise. Since this Hamiltonian factors into a product of single-particle terms, we can most easily calculate $Z$ by first calculating the single particle partition function $Z_1$. We have
$$
\begin{align*}
Z_1 &= \frac{1}{h^3} \int d^{3} \mathbf{x} \ d^{3} \mathbf{p} \ \exp\bigg[-\beta \bigg(\frac{\mathbf{p}^2}{2m} + V(\mathbf{x})\bigg)\bigg] \\
&= \frac{V}{h^3} \int d^3 \mathbf{p} \ \exp\bigg[-\beta \bigg(\frac{\mathbf{p}^2}{2m}\bigg)\bigg] \\
&= \frac{V}{h^{3}} \bigg(\frac{2\pi m}{\beta}\bigg)^{3/2} \\
&= \frac{V}{\lambda_T^3}.
\end{align*}
$$
Here we've defined a useful quantity $\lambda_T \equiv \frac{h}{\sqrt{2\pi m k_B T}}$ known as the *thermal DeBroglie wavelength*. For now this is just a convenience, but we'll see in quantum statistical mechanics that this wavelength has physical meaning. It says something about how tightly packed particles in a gas need to be for quantum effects to become important. In classical statistical mechanics it won't matter, since temperatures are assumed to be so large that particles are well-approximated as point particles.

Now that we have $Z_1$, we can find the full partition function by multiplying them together $N$ times and dividing by $N!$,
$$
Z = \frac{1}{N!} Z_1^N = \frac{V^N}{N! \lambda_T^{3N}} = \frac{V^N}{N! h^{3N}} \bigg(\frac{2\pi m}{\beta}\bigg)^{3N/2} \ .
$$
We can now get everything of interest from here by looking at the logarithm of the partition function,
$$
\log Z = N \log \frac{Ve}{N} \bigg(\frac{2\pi m}{\beta h^2}\bigg)^{3/2}.
$$
For example, the energy is given by
$$
E = - \frac{\partial \log Z}{\partial \beta} = \frac{3N}{\beta} = \frac{3}{2} N k_B T,
$$
and the pressure is given by
$$
P = \frac{1}{\beta} \frac{\partial \log Z}{\partial V} = \frac{N}{\beta V} = \frac{Nk_B T}{V}.
$$
One way to see how useful the canonical ensemble can be is by calculating the distribution of momentum in the gas. The Maxwell-Boltzmann distribution pretty much falls right out of the Boltzmann factor. Indeed, we have
$$
\begin{align*}
p(\mathbf{p}_1) &= \frac{1}{N! Z} \frac{1}{h^{3N}} \int d^{3N} \mathbf{x} \ d^{3N-1} \mathbf{p} \ p(\mathbf{x}_1,\cdots,\mathbf{x}_N,\mathbf{p}_1,\cdots,\mathbf{p}_N) 
\\
&= \bigg(\frac{\lambda_T^{3}}{V}\bigg)^N \bigg(\frac{V}{\lambda_T^{3}}\bigg)^{N-1} \frac{V}{h} \exp\bigg[-\beta \bigg(\frac{\mathbf{p}_1^2}{2m}\bigg)\bigg] \\
&= \frac{1}{(2\pi m k_B T)^{3/2}} \exp\bigg[-\frac{1}{2}\bigg(\frac{\mathbf{p}_1^2}{mk_B T}\bigg) \bigg].
\end{align*}
$$

### Equipartition Theorem

Recall from thermodynamics that we have a quick rule of thumb for finding the energy of certain gases. Look at the Hamiltonian of the gas and count number of quadratic degrees of freedom (both momenta plus positions). If the gas has $d$ quadratic degrees of freedom, then the energy of the gas is just
$$
E = \frac{d}{2} N k_B T.
$$
For example, a monoatomic ideal gas has just $d=3$ quadratic degrees of freedom per molecule, since each molecule has a total energy proportional to $p_x^2 + p_y^2 + p_z^2$. This means the total energy is $E=\frac{3}{2} Nk_B T$, as we've already derived multiple times. Let's use the canonical ensemble to quickly prove the most general case of the equipartition theorem.

Suppose a system of $N$ particles has a joint Hamiltonian $H$ consisting of the sum of single-particle Hamiltonians $H_i$. Each single-particle contains $d$ degrees of freedom $\boldsymbol{\xi}=(\xi_1,\xi_2,\cdots,\xi_d)$. Suppose each single-particle Hamiltonian has the same form $H_i = \sum_{k=1}^d c_k |\boldsymbol{\xi}|^s$ for some positive power $s$. Then the joint Hamiltonian is given by
$$
H = \sum_{i=1}^N \sum_{k=1}^d c_k |\boldsymbol{\xi}_{ik}|^s.
$$
**Equipartition Theorem:** In equilibrium, the total thermodynamic energy $E = \langle H \rangle$ is given by
$$
E = \frac{d}{s} N k_B T.
$$
In particular, when $s=2$ we recover the usual equipartition theorem for quadratic degrees of freedom.

**Proof:** Without loss of generality, suppose the system has all its degrees of freedom in the momenta, so we can write
$$
H = \sum_{i=1}^N \sum_{k=1}^{d} c_k |\mathbf{p}_{ik}|^s.
$$
It's convenient here to work in the canonical ensemble. Since all we're interested in is the energy, for simplicity we'll assume all particles are distinguishable and ignore factors of $h$. The partition function is then
$$
Z = \int d^{dN} \mathbf{x} \ d^{dN} \mathbf{p} \ \exp\bigg[-\beta \sum_{i=1}^N \sum_{k=1}^{d} c_k |\mathbf{p}_{ik}|^s\bigg].
$$
Suppose the particles are confined to some $d$-dimensional hypervolume $V_d$. Factoring the exponentials by particle, we have
$$
Z = V_d^N \bigg(\prod_{k=1}^d \int d^{d} \mathbf{p} \ e^{-\beta c_k |\mathbf{p}|^s}\bigg)^N.
$$
We can write the $d$-dimensional volume element $d^d \mathbf{p}$ as a product of the $d$-dimensional solid angle $d^d\Omega$ and a radial term $r^{d-1} dr$,
$$
d^d \mathbf{p} = r^{d-1} dr d^d \Omega.
$$
Since the integral for $Z$ is spherically symmetric, we can integrate each solid angle to just get the surface area of a $d$-dimensional hypersphere, which we'll recall is given by $S_d$. What remains inside the integral is just the factorial function up to a change of variable. We thus have
$$
\begin{align*}
Z &= V_d^N \bigg(\prod_{k=1}^d \int d^d\Omega \int_0^{\infty} dp \ p^{d-1} e^{-\beta c_k p^s}\bigg)^N \\
&= V_d^N \bigg(\prod_{k=1}^d S_d \int_0^{\infty} dp \ p^{d-1} e^{-\beta c_k p^s}\bigg)^N \\
&= V_d^N \bigg(\prod_{k=1}^d\frac{S_d\big(\frac{d}{s}-1\big)!}{s(\beta c_k)^{1/s}}\bigg)^N. \\
\end{align*}
$$
In particular, notice that $Z$ is proportional to $\beta^{-Nd/s}$, which means $\log Z \sim -\frac{Nd}{s} \log \beta$. The energy is thus just
$$
E = -\frac{\partial \log Z}{\partial \beta} = \frac{Nd}{s\beta} = \frac{d}{s} N k_B T. \quad \text{Q.E.D.}
$$
The equipartition theorem is a useful shortcut for quickly figuring out how the partition function depends on temperature since we can use it to avoid having to do any integration, provided the degrees of freedom are all of the same power. For example, we saw for an ultrarelativistic ideal gas that $H = \sum_{i=1}^N |\mathbf{p}_i|c$. In this case $s=1$ and $d=3$, so $E=3Nk_B T$, which we've seen.

### Example: Diatomic Gas

Let's now consider a slightly more interesting variant of the ideal gas, namely one where the particles in question aren't point particles anymore, but rather *diatomic*. That is, each particle consists of two masses that strongly interact with each other. Think of these particles as dumbbells with masses at each end. Except when these dumbbells are heated up enough, the bar holding them together becomes a spring that can oscillate at some frequency. While this may seem academic, diatomic molecules are actually very common in nature. Many atoms, like hydrogen, oxygen, nitrogen, etc only exist in nature in diatomic form because they're more chemically stable. For example, each "particle" of hydrogen gas is actually a *pair* of interacting hydrogen atoms.

We'll assume each diatomic gas particle does not interact with other particles, so there's no external potential energy associated with each dumbbell. We'll assume the two masses inside interact via some radial potential energy $u$ undergoing small oscillations near some minimum energy. We can describe the Hamiltonian for each individual particle by
$$
H_1 = \frac{\mathbf{p}_1^2}{2m_1} + \frac{\mathbf{p}_2^2}{2m_2} + u(|\mathbf{x}_1-\mathbf{x}_2|).
$$
As usual when working with pairs of masses, it's helpful to re-express the Hamiltonian in center of mass and relative coordinates. We'll also assume the potential is approximately harmonic at some distance $d$, with $u(r) \approx \frac{1}{2}\mu\omega^2 r^2 + u(d)$ to get
$$
H_1 = \frac{\mathbf{P}^2}{2M} + \frac{\mathbf{p}^2}{2\mu} + \frac{1}{2}\mu\omega^2 r^2 + u(d).
$$
Now, before turning the crank, it's worth stopping to take a look at what we're doing. We've assumed that the two masses only undergo oscillations about some equilibrium distance $d$. We've also assumed each particle oscillates at the same constant frequency $\omega$, not a horrible assumption for a large number of particles in equilibrium at sufficiently high temperatures. Since we're assuming harmonic oscillations around this distance $d$ there will be an added constant $u(d)$ that we can ignore.

Notice that each term in the Hamiltonian contributes quadratic degrees of freedom. This means we should be able to use the equipartition theorem to predict what the energy should be. Since each particle has $3+3+1=7$ quadratic degrees of freedom, with no work we can predict the energy of this system to be $E=\frac{7}{2} k_B T$. Now we'll verify this the hard way.

Assuming the particles don't interact, the partition function $Z$ factors into a product of one-particle partition functions $Z_1$. For indistinguishable particles, we'd thus have $Z = \frac{1}{N!} Z_1^N$. Writing out $Z_1$ and integrating each term, we have
$$
\begin{align*}
Z_1 &= \frac{1}{h^6} \int d^3 \mathbf{X} \ d^3 \mathbf{P} \ d^3 \mathbf{x} \ d^3 \mathbf{p} \ e^{-\beta H_1} \\
&= \frac{1}{h^6} \int d^3 \mathbf{X} \int d^3 \mathbf{P} \ e^{-\beta \frac{\mathbf{P}^2}{2M}} \int 4\pi r^2 dr \ e^{-\frac{\beta\mu\omega^2}{2} r^2} \int d^3 \mathbf{p} \ e^{-\beta \frac{\mathbf{p}^2}{2\mu}} \\
&= \frac{4\pi V}{h^6} \bigg(\frac{2\pi M}{\beta}\bigg)^{3/2} \bigg(\frac{2\pi \mu}{\beta}\bigg)^{3/2} \bigg(\frac{2\pi}{\mu\omega^2\beta}\bigg)^{1/2} \\
&= \frac{16\pi^4 M^{3/2}}{h^6} \frac{V}{\beta^{7/2}} \ .
\end{align*}
$$
From this expression we can easily read off the energy and pressure. As predicted by the equipartition theorem, we indeed have
$$
E=\frac{7}{2} Nk_B T.
$$
We can also easily see that the non-interacting diatomic gas has the same ideal gas law $PV=Nk_B T$. If we like, we can also calculate the heat capacity $C$, which turns out to be
$$
C = \frac{\partial E}{\partial T} \bigg |_{V,N} = \frac{7}{2} N k_B \ .
$$
This value for heat capacity is a precise prediction of classical statistical mechanics that we can test in the lab for any diatomic gas. In fact, at room temperature the measured heat capacity of most gases tends to be about $C = \frac{5}{2} Nk_B$. Essentially what's going on is that at room temperature the vibrational mode gets *frozen out*, leaving only the translational and rotational modes to contribute to the energy. The reason for this behavior we'll only be able to answer later with quantum statistical mechanics.

## Higher Ensembles

While the microcanonical ensemble is perhaps the most intuitive, and the canonical ensemble is perhaps the most useful, there are other ensembles we can imagine as well. In fact, each free energy has its own ensemble. We've already seen the ensembles corresponding to the energy $E$ and Helmholtz free energy $F$. We'll now look at two more ensembles corresponding to the last two free energies, the Gibbs free energy $G$ and the grand potential $\mathcal{G}$. While all ensembles are in some sense equivalent, each ensemble has its advantages in certain situations. In particular, we'll see the grand canonical ensemble arise in our treatment of quantum statistical mechanics.

### Gibbs Canonical Ensemble

Similar to the canonical ensemble, the Gibbs canonical ensemble arises from considering a system in equilibrium with a much larger heat bath, except now we also allow for the possibility that work is done on the system as well. That is, we now take $M=(T,J,N)$ and assume the total energy has the form $E = H(\boldsymbol{\mu}) + J \cdot X$. Then the probability of achieving a given microstate $\boldsymbol{\mu}$ at a particular displacement $X$ is given by
$$
p(\boldsymbol{\mu},X) = \frac{1}{Z_G(T,J,N)}e^{-\beta \big(H(\boldsymbol{\mu})-J \cdot X\big)},
$$
where $Z_G=Z_G(T,J,N)$ is again a normalization constant, this time called the **Gibbs partition function**. It's given by integrating over all microstates $\boldsymbol{\mu}$ and displacements $X$,
$$
Z_G(T,J,N) \equiv \int dX \ d \boldsymbol{\mu} \ e^{-\beta \big(H(\boldsymbol{\mu})-J \cdot X\big)}.
$$
By factoring the dependences on $\boldsymbol{\mu}$ and $X$ we can write the Gibbs partition function in terms of the canonical partition function $Z(T,X,N)$ as
$$
Z_G(T,J,N) = \int dX \ e^{-\beta J \cdot X} \ Z(T,X,N).
$$
Since the displacement $X$ is now a random variable, we can ask how it varies about its mean $\langle X \rangle$. Following the same logic as we did with the energy, it's easy to see that
$$
\langle X \rangle = \frac{\partial}{\partial (\beta J)} \log Z_G.
$$
The cumulants of $X$ are similarly given by
$$
\langle X^k \rangle_c = \frac{\partial^k \log Z_G}{\partial (\beta J)^k} = \frac{\partial^{k-1} \langle X \rangle}{\partial (\beta J)^{k-1}}.
$$
In particular, all cumulants of $X$ are extensive. This means the variance is proportional to $\langle X \rangle$, which means the fluctuations in $X$ go like $\sigma_X = \sqrt{\langle X \rangle}$. This means we can again assert that $X = X^* = \langle X \rangle$ when $N$ is really large.

We can relate the partition function to the *Gibbs* free energy by observing
$$
Z_G = \int dX \ dE \ e^{-\beta(E-J \cdot X)} \Omega(E,X) = \int dX \ dE \ e^{-\beta(E-TS-J \cdot X)}.
$$
Here $G \equiv E-TS-\mu \cdot N$ is of course the Gibbs free energy. Using the saddlepoint approximation, in the thermodynamic limit we can write
$$
Z_G \approx e^{-\beta G(E^*, \ X^*)}.
$$
Solving for $G$ we have the familiar expression
$$
G = -k_B T \log Z_G.
$$
From here all other thermodynamic variables we seek follow in the usual way using the identity
$$
dG = -S dT - X \cdot dJ + \mu \cdot dN.
$$
In this ensemble the canonical energy formula no longer applies. Instead that formula gives the *enthalpy* $H = E - J \cdot X$,
$$
H = -\frac{\partial \log Z_G}{\partial \beta}.
$$


### Grand Canonical Ensemble

The grand canonical ensemble follows exactly the same logic as the Gibbs ensemble did, except now we imagine the system is in equilibrium with a heat bath and allowed to exchange particles with it via chemical work. That is, $M = (T,X,\mu)$ and the energy has the form $E = H(\boldsymbol{\mu}) + \mu \cdot N$. Then the probability of a given microstate $\boldsymbol{\mu}$ and a given particle number $N$ is given as
$$
p(\boldsymbol{\mu},N) = \frac{1}{\mathcal{Z}(T,X,\mu)}e^{-\beta \big(H(\boldsymbol{\mu})-\mu \cdot N\big)},
$$
where $\mathcal{Z}(T,X,\mu)$ is another normalization constant gotten by integrating over all possible $\boldsymbol{\mu}$ and summing over all possible $N$. This is called the **grand canonical partition function**, given by
$$
\mathcal{Z}(T,X,\mu) \equiv \sum_{N=0}^\infty \int d \boldsymbol{\mu} \ e^{-\beta \big(H(\boldsymbol{\mu})-\mu \cdot N\big)}.
$$
We can again factor the $\boldsymbol{\mu}$ and $N$ dependences apart and write just
$$
\mathcal{Z}(T,X,\mu) = \sum_{N=0}^\infty e^{\beta\mu \cdot N} Z(T,X,N).
$$
The dimensionless variable $\log z \equiv \beta\mu = \frac{\mu}{k_B T}$ is sometimes called the *log fugacity*, where $z \equiv e^{\beta\mu}$ is the **fugacity**. The fugacity turns out to be important in quantum statistical mechanics since its size says something about the limiting behaviors of the equations of state at low temperatures.

While not necessarily obvious, more mathematical care is needed to interpret the grand canonical ensemble due to the fact that $N$ is no longer fixed, but allowed to vary. This means we can't a priori just assume that $N$ is large and the thermodynamic limit applies. Moreover, the phase spaces being integrated over aren't even of the same dimensions since each $d=6N$. 

Instead of interpreting things in terms of $N$, a random variable, we instead need to interpret things in terms of $\langle N \rangle$. Following the same logic as we did with the energy, it's easy to see that
$$
\langle N \rangle = \frac{\partial}{\partial (\beta\mu)} \log \mathcal{Z}.
$$
The cumulants of $N$ are similarly given by
$$
\langle N^k \rangle_c = \frac{\partial^k \log \mathcal{Z}}{\partial (\beta\mu)^k} = \frac{\partial^{k-1} \langle N \rangle}{\partial (\beta\mu)^{k-1}}.
$$
In particular, all cumulants of $N$ are proportional to $\langle N \rangle$. In particular, this means the variance is proportional to $\langle N \rangle$, which means the fluctuations in $N$ go like $\sigma_N = \sqrt{\langle N \rangle}$. By the same usual logic, this means we can assert that $N = N^* = \langle N \rangle$ provided $N^*$ is very large, which will typically be the case in thermodynamics.

Again using the same logic as before, we can relate the partition function to the free energy by observing
$$
\mathcal{Z} = \sum_{N=0}^\infty \int dE \ e^{-\beta(E-\mu \cdot N)} \Omega(E,N) = \sum_{N=0}^\infty \int dE \ e^{-\beta(E-TS-\mu \cdot N)}.
$$
Here $\mathcal{G} \equiv E-TS-\mu \cdot N$ is of course the grand potential. Using the saddlepoint approximation, in the thermodynamic limit we can write
$$
\mathcal{Z} \approx e^{-\beta\mathcal{G}(E^*,N^*)}.
$$
Solving for $\mathcal{G}$ we again have the familiar expression
$$
\mathcal{G} = -k_B T \log \mathcal{Z}.
$$
From here all other thermodynamic variables we seek follow in the usual way using the identity
$$
d\mathcal{G} = -S dT + J \cdot dX - N \cdot d\mu.
$$


### Example: Ideal Gas

As an example, we'll work out the equations of state again for the ideal gas, both in the Gibbs canonical and the grand canonical ensembles. Starting with the Gibbs canonical ensemble, the Gibbs partition function can be calculated by observing that the integral over $V$ is almost a factorial function. We have
$$
\begin{align*}
Z_G &= \int_0^\infty dV e^{-\beta PV} Z \\
&= \frac{1}{N! h^{3N}} \bigg(\frac{2\pi m}{\beta}\bigg)^{3N/2} \int_0^\infty dV e^{-\beta PV} V^N \\
&= \frac{1}{N! h^{3N}} \bigg(\frac{2\pi m}{\beta}\bigg)^{3N/2} \frac{N!}{(\beta P)^{N+1}} \\
&= \bigg(\frac{2\pi m}{h^2 \beta}\bigg)^{3N/2} (\beta P)^{-(N+1)}. \\
\end{align*}
$$
Taking the logarithm of both sides, we have
$$
\log Z_G \approx \frac{3N}{2} \log \frac{2\pi m}{h^2 \beta} - N \log \beta P.
$$
We can get the mean volume $V \approx \langle V \rangle$ by differentiating both sides with respect to $-\beta P$,
$$
V \approx \frac{\partial \log Z_G}{\partial (-\beta P)} = \frac{N}{\beta P} = \frac{Nk_B T}{P}.
$$
This is of course the usual equation of state, with $PV = N k_B T$. We can easily find the enthalpy as well,
$$
H = -\frac{\partial \log Z_G}{\partial \beta} = \frac{3N}{2\beta} + \frac{N}{\beta} = \frac{5}{2} N k_B T.
$$
Since $H = E + PV$, we can immediately read off the usual formula for energy, $E = \frac{3}{2} N k_B T$.

Moving onto the grand canonical ensemble, the grand partition function is given by noting that the sum over $N$ is just the Taylor series of an exponential function. We have
$$
\begin{align*}
\mathcal{Z} &= \sum_{N=0}^\infty dV e^{\beta \mu N} Z(\beta) \\
&= \sum_{N=0}^\infty e^{\beta \mu N} \frac{V^N}{N! h^{3N}} \bigg(\frac{2\pi m}{\beta}\bigg)^{3N/2} \\
&= \sum_{N=0}^\infty \frac{1}{N!} \bigg[\frac{Ve^{\beta\mu}}{h^3} \bigg(\frac{2\pi m}{\beta}\bigg)^{3/2}\bigg]^N \\
&= \exp \bigg[\frac{Ve^{\beta\mu}}{h^3} \bigg(\frac{2\pi m}{\beta}\bigg)^{3/2}\bigg]. \\
\end{align*}
$$
This means $\log \mathcal{Z}$ is just
$$
\log \mathcal{Z} = \frac{Ve^{\beta\mu}}{h^3} \bigg(\frac{2\pi m}{\beta}\bigg)^{3/2}.
$$
It's helpful to first find $N \approx \langle N \rangle$. We have
$$
N \approx \frac{\partial \log \mathcal{Z}}{\partial (\beta\mu)} = \frac{Ve^{\beta\mu}}{h^3} \bigg(\frac{2\pi m}{\beta}\bigg)^{3/2} = \log \mathcal{Z}.
$$
This means all cumulants of $N$ will be $\log \mathcal{Z}$ as well. Recall all cumulants being equal implies that $N$ must be Poisson distributed. The grand potential is evidently just $\mathcal{G} = -N k_B T$. But by extensivity $\mathcal{G} = -PV$. We thus get the ideal gas law,
$$
PV = N k_B T.
$$
Getting the energy is slightly trickier. It's not too hard to show that
$$
E - \mu N = -\frac{\partial \log \mathcal{Z}}{\partial \beta} = N \bigg(\frac{3}{2} k_B T - \mu\bigg).
$$
Cancelling $\mu N$ from both sides, we again get $E = \frac{3}{2} N k_B T$. Finally, if we like we can solve for the chemical potential by inverting the formula for $N$. As expected, we have
$$
\mu = k_B T \log \frac{N}{V} \bigg(\frac{2\pi m k_B T}{h^2}\bigg)^{3/2}.
$$
