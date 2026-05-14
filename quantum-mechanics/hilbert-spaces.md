# Hilbert Space

We've seen quantum phenomena involve two fundamental ideas: the superposition of probability amplitudes, and the notion of measurement as projection. The mathematical foundation for describing these ideas is linear algebra, specifically the theory of Hilbert spaces, the subject of this chapter.

## Hilbert Spaces

The mathematical setting of quantum mechanics is essentially vector spaces. In physics, we're used to working in vector spaces like ordinary 3-dimensional real space, or 4-dimensional Minkowski spacetime. Quantum mechanics is fundamentally different though. We could be dealing with finite-dimensional vectors of any dimension, not just two or three or four. We could even be dealing with infinite dimensions of sequences, or even continuous spaces of functions. On top of that, in quantum mechanics we're almost always working in *complex* vector spaces, not the real vector spaces we're used to.

For these reasons, in quantum mechanics we'll want to be more intentionally abstract and assume vectors can be essentially anything and live in spaces of any dimension. To deal with this abstraction, quantum mechanics uses a special notation introduced by Paul Dirac, known as *Dirac notation*. This notation makes no assumptions about what kinds of vectors we're dealing with, other than that we have some notion of inner product between vectors. All that's required is states behave abstractly like vectors belonging to some kind of vector space. Dirac notation has become so useful and powerful that it can be thought of as the *language* of quantum mechanics.

### State Vectors

To deal with these more general kinds of vectors, we assume they live in special kind of vector space called a Hilbert space. Mathematically, a *Hilbert space* is a *complete inner product space*. For our purposes, we can think of a Hilbert space as a complex-valued vector space, endowed with an inner product, where every vector in the space has a finite norm. Whether these vectors are 3-dimensional or infinite sequences or continuous functions makes no material difference.

We'll define the postulates of quantum mechanics in a later chapter, so for now we'll assume only a few things for mathematical purposes. First, we'll assume that quantum mechanical states, whatever these are, correspond to vectors that live in some Hilbert space, denoted $\mathscr{H}$. In Dirac notation, we denote state vectors by the symbol $\ket{v}$, called a *ket* vector. To be explicit that a state vector $\ket{v}$ belongs to a specific Hilbert space $\mathscr{H}$, we'll use the notation $\ket{v} \in \mathscr{H}$, which you can read as "$\ket{v}$ is in $\mathscr{H}$".

We require that a Hilbert space satisfy all the properties of a mathematical vector space. It must contain a zero vector, we should be able to add and subtract vectors, we should be able to multiply them by scalars, etc. We can summarize these requirements by requiring that $\mathscr{H}$ contain a zero vector $\ket{\emptyset}$ and be closed under linear superposition. For any two state vectors $\ket{v} \in \mathscr{H}$ and $\ket{u} \in \mathscr{H}$, and any two complex scalars $\alpha$ and $\beta$, we require that the linear superposition $\alpha \ket{u} + \beta \ket{v}$ be in $\mathscr{H}$.

Next, we require that the Hilbert space be endowed with an inner product. That is, $\mathscr{H}$ is not just a vector space, but a vector space that comes with a special function attached to it called an inner product that maps pairs of state vectors to a complex number. Formally, an *inner product* is a function attached to $\mathscr{H}$ that maps any two state vectors $\ket{u}, \ket{v} \in \mathscr{H}$ to a special complex number $\ip{u}{v}$, which you can read as "$u$ bracket $v$", respecting the following properties:

- Positive Definite: For any state vector $\ket{v} \in \mathscr{H}$, $\ip{v}{v} \geq 0$. Moreover, $\ip{v}{v} = 0$ only when $\ket{v} = 0$.
- Anti-Symmetry: For any two state vectors $\ket{u}, \ket{v} \in \mathscr{H}$, $\ip{u}{v} = \ip{v}{u}^*$.

- Linearity: For any three state vectors  $\ket{u}, \ket{v}, \ket{w} \in \mathscr{H}$, and any two complex numbers $\alpha$ and $\beta$,

$$
\ip{u}{\alpha v + \beta w} = \alpha \ip{u}{v} + \beta \ip{u}{w} \ .
$$

The positive definite property says that the inner product of a vector with itself should always be non-negative. The anti-symmetry property says that if we reverse the order of the inner product then we have to complex conjugate it. The linearity property says that the inner product is linear over vectors and scalars, except with one caveat: Due to anti-symmetry, if we reverse the order then we have to complex conjugate the scalars $\alpha$ and $\beta$ when we pull them out of the inner product,
$$
\ip{\alpha v + \beta w}{u} = \alpha^* \ip{v}{u} + \beta^* \ip{w}{u} \ .
$$
Though it's perhaps not obvious, these are exactly the properties we need to define the usual inner products we're used to. The positive definite property is what allows us to define a notion of vector norm or length. The linearity property is what gives us the usual linearity property that inner products satisfy. The anti-symmetry property is a quirk of dealing with complex-valued vectors, where we have to multiply complex numbers by their complex conjugates to get real numbers.

From the inner product, we define the norm of a state vector in the usual way. Given a vector $\ket{v} \in \mathscr{H}$, its *norm* is defined as
$$
\norm{v} \equiv \sqrt{\ip{v}{v}} \ .
$$
We can think of this definition of the norm as the most general form of the Pythagorean theorem. It gives us a notion of length for state vectors. Indeed, the requirement that Hilbert spaces have an inner product is equivalent to requiring that they have a *geometry*, since we can use the inner product to define a notion of length for objects in the space and a notion of angle between objects in the space. If we wanted to, we could define a (complex) angle $\vartheta$ between two state vectors $\ket{u}$ and $\ket{v}$ in the usual way,

$$
\cos\vartheta \equiv \frac{\ip{u}{v}}{\norm{u} \norm{v}} \ ,
$$
but we won't really use this property much in practice since we almost always work with unit vectors, where the inner product just corresponds directly to the cosine of the angle.

We say a vector $\ket{v} \in \mathscr{H}$ is a *unit vector* if $\norm{v} = 1$, or equivalently if $\ip{v}{v} = 1$. Similarly, two vectors $\ket{u}, \ket{v} \in \mathscr{H}$ are called *orthogonal* when $\ip{u}{v} = 0$, and *orthonormal* when both $\norm{u} = \norm{v} = 1$ and $\ip{u}{v} = 0$.

Using the norm, we can finally formally define what it means for a Hilbert space to be complete. We say an inner product space $\mathscr{H}$ is *complete* provided $\norm{v} < \infty$ for any state vector $\ket{v} \in \mathscr{H}$. State vectors that satisfy this property are called *square normalizable*. This may seem like an odd requirement for a Hilbert space, since we're used to working in finite-dimensional vector spaces where norms are always finite. However, the completeness requirement is important in infinite dimensions, as we'll show in the following examples.

##### Example: 2-Dimensional Space

Consider the 2-dimensional complex vector space $\mathbb{C}^2$ consisting of 2-dimensional vectors of complex numbers. We'll show this is a valid Hilbert space. To do so we must first define an inner product on the space, which we'll do in the usual way by defining
$$
\ip{u}{v} \equiv u_1^* v_1 + u_2^* v_2 \ ,
$$
where $(u_1, u_2)$ are the components of $\ket{u}$ in some basis and $(v_1, v_2)$ are the components of $\ket{v}$ in the same basis. Verifying this inner product satisfies the required properties are fairly trivial. Using the properties of complex numbers, we have

- Positive Definite: $\ip{v}{v} = v_1^* v_1 + v_2^* v_2 = |v_1|^2 + |v_2|^2 \geq 0$, and if $\ip{v}{v} = 0$ then $v_1 = v_2 = 0$ must hold.
- Skew Symmetry: $\ip{u}{v} = u_1^* v_1 + u_2^* v_2 = (u_1 v_1^* + u_2 v_2^*)^* = \ip{v}{u}^*$.
- Linearity: $\ip{u}{\alpha v + \beta w} = u_1^* (\alpha v_1 + \beta w_1) + u_2^* (\alpha v_2 + \beta w_2) = \alpha u_1^* v_1 + \alpha u_1^* v_1 + \beta u_2^* v_2 + \alpha u_2^* v_2 = \alpha \ip{u}{v} + \beta \ip{u}{w}$.

We've thus showed that the inner product we defined on $\mathbb{C}^2$ is a valid inner product. This then defines a norm of the form
$$
\norm{v} \equiv \sqrt{\ip{v}{v}} = \sqrt{|v_1|^2 + |v_2|^2} \ ,
$$
which is the usual Pythagorean norm for 2-dimensional vectors, except in terms of complex numbers. Since $v_1$ and $v_2$ are ordinary complex numbers, they'll always be finite, hence $\norm{v} < \infty$ and $\mathbb{C}^2$ thus satisfies the completeness property. We've thus proven that $\mathbb{C}^2$ is a valid Hilbert space.

##### Example: Finite-Dimensional Spaces

We can use our work from the previous example to show that the $d$-dimensional complex vector space $\mathbb{C}^d$ is also a Hilbert space. We'll endow this space with the same inner product above except extended to $d$-dimensional complex vectors,
$$
\ip{u}{v} \equiv \sum_{i=1}^d u_i^* v_i \ ,
$$
where $(u_1, u_2, \cdots, u_d)$ is the component representation of $\ket{u}$ in some basis, and similarly for $(v_1, v_2, \cdots, v_d)$ and $\ket{v}$.

That this is a valid inner product is immediate just from extended the previous example to $d$ dimensions. The norm becomes
$$
\norm{v} \equiv \sqrt{\ip{v}{v}} = \left(\sum_{i=1}^d |v_i|^2\right)^{1/2} \ ,
$$
which is clearly just the Pythagorean norm extended to $d$-dimensional complex vectors. Since this norm will always be finite, we can immediately conclude that $\mathbb{C}^d$ satisfies the completeness property, and hence is also a valid Hilbert space.

##### Example: Infinite-Dimensional Spaces

We'll now extend the previous vector space to infinite dimensions by allowing $d \to \infty$. This results in the infinite-dimensional complex vector space consisting of infinite sequences of complex numbers. The inner product is defined in the same way,
$$
\ip{u}{v} \equiv \sum_{i=1}^\infty u_i^* v_i \ ,
$$
where $(u_1, u_2, u_3, \cdots)$ is a complex infinite sequence representation for $\ket{u}$, and similarly for $(v_1, v_2, v_3, \cdots)$ and $\ket{v}$.

That this inner product is valid follows from exactly the same argument as before. Its norm is given by
$$
\norm{v} \equiv \sqrt{\ip{v}{v}} = \left(\sum_{i=1}^\infty |v_i|^2\right)^{1/2} \ .
$$
We might be tempted to conclude this is a valid Hilbert space, except we have to be careful to check the completeness property. Is it true that $\norm{v} < \infty$ for any infinite complex sequence $(v_1, v_2, v_3, \cdots)$? It's easy to see that this is false. Consider, for example, the simple sequence of ones $\ket{v} = (1, 1, 1, \cdots)$. If we tried to calculate its norm we'd get $\norm{v} = \infty$, violating completeness. 

This means that to form a valid Hilbert space out of $\mathbb{C}^\infty$ we have to exclude any sequence where $\norm{v} = \infty$. It turns out we can do this while still satisfying all the other required properties of a Hilbert space, but in doing so we get a vastly smaller space of allowable sequences to choose from. This much smaller space of *square-normalizable* sequences is often denoted $\ell_2$, and is indeed a valid Hilbert space.

##### Example: Function Spaces

As our final example of a Hilbert space, and indeed the only remaining class of Hilbert spaces we'll see in this course, consider the vector space of complex-valued continuous functions of some real variable $0 \leq x \leq 1$. This is called the space of continuous functions defined on the interval $[0,1]$, and sometimes denoted $\mathcal{C}[0,1]$.

To extend our previous notion of inner product to this space, we'll merely replace the sum by an integral over $x$, defining
$$
\ip{f}{g} \equiv \int_0^1 dx \ f(x)^* g(x) \ ,
$$
where $f(x)$ and $g(x)$ are complex-valued functions of a real variable $x$. Since integrals are linear in the same way that sums are, it's not difficult to verify this definition satisfies the requirements for a valid inner product. This then defines a norm
$$
\norm{f} \equiv \sqrt{\ip{f}{f}} = \left(\int_0^1 dx \ |f(x)|^2\right)^{1/2} \ .
$$
Clearly not every function in this space can have a finite norm. For example, the function $f(x) = 1/x$ has infinite norm since
$$
\norm{f}^2 = \int_0^1 dx \ |f(x)|^2 = \int_0^1 \frac{dx}{x^2} \to \infty \ .
$$
Indeed, just as we did for $\mathbb{C}^\infty$ we have to exclude many functions from this space to make the space complete. Indeed, any function that's bounded inside the interval $0 \leq x \leq 1$ would be valid since its integral would be finite, but any function that's not square-normalizable would have to be excluded from the Hilbert space. This smaller space is often called $L_2$-space and denoted $L_2$ or $L_2[0,1]$. Proving that $L_2$ is indeed a valid Hilbert space is more subtle and not worth our focus here, but we'll assume it is.

The example we gave was specifically for complex-valued functions defined on the interval $0 \leq x \leq 1$, but we can define $L_2$ spaces over any interval $a \leq x \leq b$ as well as the entire real line. The same discussion extends to these cases as well.

### Basis Vectors

We can define the notion of a basis for Hilbert spaces in the usual way. Given a Hilbert space $\mathscr{H}$, we say that a set of state vectors $\{\ket{e_\alpha}\}$ is a *basis* for $\mathscr{H}$ provided we can represent any vector $\ket{v} \in \mathscr{H}$ as a linear superposition of the basis vectors $\ket{e_\alpha}$,
$$
\ket{v} = \sum_\alpha v_\alpha \ket{e_\alpha} \ .
$$
Specifically, the basis must *span* the entire space and be *linearly independent*, meaning we can't represent any $\ket{e_\alpha}$ as a linear superposition of any of the other basis vectors in the set. Here we used the index $\alpha$ to allow for the possibility of a continuous basis, in which case we'd replace the sum by an integral, but otherwise a usual countable index like $i$ is fine. 

Due to subtleties we'll go into later, the rest of this section assumes the Hilbert space is countable with some dimension $d$ which could be infinity. This skirts around the subtle issue of whether the basis vectors themselves belong to the Hilbert space. Indeed, they always do for spaces like $\mathbb{C}^d$ or $\ell_2$, but they almost always don't for function spaces like $L_2$.

For our purposes, the only kind of basis we'll be interested in are orthonormal bases. These are the bases where every basis vector is a unit vector and all the basis vectors are mutually orthogonal. More formally, we say a basis $\{\ket{e_i}\}$ is an *orthonormal basis* for $\mathcal{H}$ provided the inner product between any two basis vectors $\ket{e_i}, \ket{e_j}$ satisfies
$$
\ip{e_i}{e_j} = \delta_{ij} = \begin{cases}
1 & i=j \\
0 & i\neq j \\
\end{cases} \ ,
$$
where $\delta_{ij}$ is the Kronecker delta.

Given an orthonormal basis $\{\ket{e_i} \}$, we can expand any $\ket{v} \in \mathscr{H}$ in that basis as,
$$
\ket{v} = \sum_{i=1}^d v_i \ket{e_i} \ .
$$
We can figure out what the components $v_i$ should be by taking the inner product of some fixed basis vector $\ket{e_j}$ with $\ket{v}$ and working through the algebra. Using the linearity property to pull the sum and scalar outside the bracket, and then using the orthonormality condition above, we have
$$
\ip{e_j}{v} = \bra{e_j} \left(\sum_{i=1}^d v_i \ket{e_i}\right) = \sum_{i=1}^d v_i \ip{e_j}{e_i} = v_i \delta_{ij} = v_j \ .
$$
Thus, we've shown that the basis components of $\ket{v}$ are given by exactly what we'd expect,
$$
v_i = \ip{e_i}{v} \ .
$$

### Dual Vectors

Before moving on, we need to introduce the concept of a *dual vector*. Consider the inner product between two state vectors $\ket{u}$ and $\ket{v}$. Instead of thinking about the inner product as a function mapping two state vectors to a complex number, we can think about it equivalently as a function that maps a vector $\ket{v}$ to the complex number $\ip{u}{v}$. Such a mapping is called a *linear functional*. This functional depends on $\ket{u}$, since $\ip{u}{v}$ depends on both $\ket{u}$ and $\ket{v}$. We'll denote this functional by $\bra{u}$, where
$$
\bra{u}: \mathscr{H} \to \mathbb{C}
$$
is a linear mapping from state vectors $\ket{v}$ to complex numbers $\ip{u}{v}$. The linear functional inherits all the linearity properties of a vector through the linearity property of the inner product. Indeed, for all intents and purposes the linear functional behaves like a vector, except it's not an ordinary state vector since it doesn't belong to the Hilbert space, but rather its *dual* space of linear functionals. For this reason, linear functionals are called *dual vectors*.

Dual vectors obey the same linear superposition property that state vectors do: If $\bra{u}$ and $\bra{v}$ are dual vectors, any linear superposition $\bra{w} = \alpha \bra{u} + \beta \bra{v}$ is also a dual vector. When we discuss representations, we'll show that we can think of state vectors as behaving like the *column* vectors from ordinary linear algebra, while the dual vectors behave like *row* vectors.

In Dirac notation, we call these dual vectors *bra* vectors, and always use the symbol $\bra{u}$ for these dual vectors. Indeed, this is why we denote the inner product as $\ip{u}{v}$ in Dirac notation, and why we call it a *bra-ket* or bracket. Notationally, $\ip{u}{v}$ is literally the application of the *bra* vector $\bra{u}$ on the *ket* vector $\ket{v}$ to produce the *bra-ket* $\bra{u}(\ket{v}) = \ip{u}{v}$. This is one reason Dirac notation is so intuitive and powerful once you get used to it. Going forward we'll use the terms *ket* and *ket vector* interchangeably with *state vector*, and the terms *bra* and *bra vector* interchangeably with *dual vector*.

We can always convert state vectors into dual vectors and vice versa, but when doing so we must respect the anti-symmetry property: Anytime we convert a linear superposition $\alpha \ket{u} + \beta \ket{v}$ into a dual vector or vice versa, we must be sure to complex conjugate all the scalar factors,
$$
\alpha \ket{u} + \beta \ket{v} \quad \leftrightarrow \quad \bra{u} \alpha^* + \bra{v} \beta^* \ .
$$
With this caveat, dual vectors inherit all the usual properties that state vectors have. For example, if $\{\ket{e_\alpha}\}$ is a basis for the space of state vectors, then its dual basis $\{\bra{e_\alpha}\}$ is a state vector for the space of dual vectors. The expansion of any dual vector $\bra{v}$ looks the same except the basis components $v_\alpha = \ip{e_\alpha}{v}$ must be complex conjugated,
$$
\bra{v} = \sum_\alpha \bra{e_\alpha} v_\alpha^* \ .
$$

## Linear Operators

In linear algebra, we know that matrices can act on vectors to produce other vectors. The extension of the notion of a matrix to Hilbert spaces is the *linear operator*. We'll first define the linear operator, introduce a few common operators we'll see a lot of, then show how to represent linear operators as matrices in the next section.

### Definition

An *operator* is a function $\mathcal{O}$ that maps state vectors in the Hilbert space $\mathscr{H}$ to other state vectors in $\mathscr{H}$,
$$
\mathcal{O}: \mathscr{H} \to \mathscr{H} \quad , \quad \ket{w} = \mathcal{O} \ket{v} \ .
$$
*Note*: A common convention in lower-level quantum mechanics texts is to always write operators using hats. For example, they'd typically write an operator $\mathcal{O}$ as $\mathcal{\hat O}$. They prefer this convention to avoid confusing operators with their eigenvalues, which they often like using the same letter for. I find this notation cumbersome and will largely avoid it. When confusion arises in these notes as to whether a given symbol represents an operator or its eigenvalues I'll make it clear which I'm referring to.

The most important class of operators to us are linear operators. A *linear operator* is an operator $\mathcal{L}: \mathscr{H} \to \mathscr{H}$ that satisfies the property of *linearity*. That is, for any two state vectors $\ket{u}, \ket{v} \in \mathscr{H}$ and any two complex numbers $\alpha$ and $\beta$, a linear operator $\mathcal{L}$ must satisfy the property
$$
\mathcal{L} (\alpha \ket{u} + \beta \ket{v}) = \alpha \mathcal{L} \ket{u} + \beta \mathcal{L} \ket{v} \ .
$$
In other words, a linear operator is an operator that distributes over sums and scalars can be factored out from. This is exactly the fundamental property that matrices must satisfy as well. Indeed, linear operators are in a certain sense matrices, as we'll show when we discuss representations shortly.

### Identity and Projection Operators

The most basic example of a linear operator is the *identity operator* $\mathbb{1}$, which always maps a state vector to itself:
$$
\mathbb{1} \ket{v} = \ket{v} \ .
$$
The identity operator is clearly a linear operator, since for any superposition of two state vectors we have
$$
\mathbb{1} (\alpha \ket{u} + \beta \ket{v}) = \alpha \ket{u} + \beta \ket{v} = \alpha \mathbb{1} \ket{u} + \beta \mathbb{1} \ket{v} \ .
$$
Another basic example of a linear operator is the *outer product* between two vectors. In Dirac notation, we denote the outer product of two vectors $\ket{\psi}$ and $\ket{\phi}$ by the symbol $\op{\psi}{\phi}$, called a *ket-bra*. This is opposite to how we'd write the inner product $\ip{\phi}{\psi}$ as a *bra-ket*. When $\op{\psi}{\phi}$ acts on a state vector $\ket{v}$, it picks out the *projection* of $\ket{v}$ along the $\ket{\psi}$ direction,
$$
\big(\op{\psi}{\phi}\big) |v\rangle = \ket{\psi} \ip{\phi}{v} = \ip{\phi}{v} \ket{\psi} \ .
$$
This projection property is why the notation $\op{\psi}{\phi}$ is so useful for the outer product, and another reason why Dirac notation is so useful. We can easily verify that the outer product is a linear operator as well, since
$$
\left(\op{\psi}{\phi}\right) (\alpha \ket{u} + \beta \ket{v}) = \alpha \ip{\phi}{u} \ket{\psi} + \beta \ip{\phi}{v} \ket{\psi} = \alpha \left(\op{\psi}{\phi}\right) \ket{u} + \beta \left(\op{\psi}{\phi}\right) \ket{v} \ .
$$
We can use the outer product to prove a useful identity relating the identity operator to orthonormal basis vectors, known as the *resolution of the identity*. Suppose $\{\ket{e_i} \}$ is an orthonormal basis for the Hilbert space. For any state vector $\ket{v}$, we can decompose it into its basis components as
$$
\ket{v} = \sum_{i=1}^d v_i \ket{e_i} = \sum_{i=1}^d \ip{e_i}{v} \ket{e_i} \ .
$$
Since $\mathbb{1} \ket{v} = \ket{v}$, and since we can rewrite $\ip{e_i}{v} \ket{e_i}$ by moving the scalar $\ip{e_i}{v}$ to the right of $\ket{e_i}$, we have
$$
\mathbb{1} \ket{v} = \sum_{i=1}^d \ket{e_i} \ip{e_i}{v} = \left(\sum_{i=1}^d \op{e_i}{e_i}\right) \ket{v} \ .
$$
Since both sides must equal for any $\ket{v}$, the operators acting on $\ket{v}$ must be equal as well. We've thus proven the following operator identity, known as the *resolution of the identity* or the *insertion of a complete set*,
$$
\boxed{
\mathbb{1} = \sum_{i=1}^d \op{e_i}{e_i}
} \ .
$$
Since each outer product $\op{e_i}{e_i}$ just projects any state vector it acts on onto the $\ket{e_i}$ axis,
$$
\ket{e_i} \ip{e_i}{v} = v_i \ket{e_i} \ ,
$$
we call them *projection operators*. The projection operator $\mathbb{P}_i \equiv \op{e_i}{e_i}$ is the operator that projects any $\ket{v}$ onto the $\ket{e_i}$ axis. We can thus think of the resolution of the identity as a decomposition of the identity into a sum of basis projection operators,
$$
\mathbb{1} = \sum_{i=1}^d \mathbb{P}_i \ .
$$
This identity may seem quaint, but as we'll see it's very useful in quantum mechanics for proving other identities. The reason it's so useful is because we can always insert an identity operator into the middle of some bracket operation and expand it, effectively forcing a basis expansion into the equation, which we can then manipulate to simplify the result.

### Matrix Representations

We've said that linear operators and matrices are closely related to each other and almost equivalent. Let's take a closer look now at how the two are related. To that end, suppose $\mathcal{L}: \mathscr{H} \to \mathscr{H}$ is some linear operator, and $\{\ket{e_i}\}$ is an orthonormal basis for $\mathscr{H}$. Since it doesn't really make sense to represent continuous objects like functions in matrix notation, in this section we'll assume $\mathscr{H}$ is a $d$-dimensional Hilbert space like $\mathbb{C}^d$, where $d$ could be finite or infinity.

In terms of this basis, we can represent any state vector $\ket{v}$ as a column vector in terms its basis components $v_i = \ip{e_i}{v}$,
$$
\ket{v} \doteq \begin{pmatrix}
v_1 \\ v_2 \\ \cdots \\ v_d
\end{pmatrix} \ .
$$
Here we've introduced the $\doteq$ notation to mean "$\ket{v}$ is represented as" to make it clear that the state vector and its basis representation are not the same thing. The state vector itself is basis independent. We can represent $\ket{v}$ in any basis we like. If we changed bases the basis components would look different, and hence the column vector would look different, even though the underlying state vector is still the same object.

Similarly, we can represent any dual vector $\bra{u}$ as a row vector in terms of its conjugated basis components $u_i^* = \ip{u}{e_i}$,
$$
\bra{u} \doteq \begin{pmatrix}
u_1^* \ u_2^* \ \cdots \ u_d^*
\end{pmatrix} \ .
$$
Clearly then, the inner product $\ip{u}{v}$ is given by matrix-multiplying the row and column vectors together in the way we're used to dealing with inner products in linear algebra,
$$
\ip{u}{v} \doteq \begin{pmatrix}
u_1^* \ u_2^* \ \cdots \ u_d^*
\end{pmatrix} 
\begin{pmatrix}
v_1 \\ v_2 \\ \cdots \\ v_d
\end{pmatrix}
= u_1^* v_1 + u_2^* v_2 + \cdots + u_d^* v_d \ .
$$
Similarly, the outer product $\op{v}{u}$ is given by matrix-multiplying the vectors in the opposite order,
$$
\op{v}{u} \doteq 
\begin{pmatrix}
v_1 \\ v_2 \\ \cdots \\ v_d
\end{pmatrix}
\begin{pmatrix}
u_1^* & u_2^* & \cdots & u_d^*
\end{pmatrix}
= \begin{pmatrix}
v_1 u_1^* & v_1 u_2^* & \cdots & v_1 u_d^* \\
v_2 u_1^* & v_2 u_2^* & \cdots & v_2 u_d^* \\
\vdots & \vdots & \ddots & \vdots \\
v_d u_1^* & v_d u_2^* & \cdots & v_d u_d^* \\
\end{pmatrix} \ .
$$
As we'd expect, the matrix representation of the inner product outputs a scalar, while the outer product outputs a $d \times d$ matrix representation whose matrix elements are $v_i u_j^*$.

Suppose now we have some general linear operator $\mathcal{L}$, and we want to know its representation in terms of the same orthonormal basis $\{\ket{e_i}\}$. To figure this out, suppose $\ket{u}$ is some vector with components $u_i = \ip{e_i}{u}$ in the same basis, and suppose $\ket{v} = \mathcal{L} \ket{u}$ is its transformed vector after being acted on by $\mathcal{L}$. If we expand $\ket{v}$ in terms of this basis we get
$$
\ket{v} = \mathcal{L} \ket{u} = \sum_{i=1}^d u_i \mathcal{L} \ket{e_i} \ .
$$
Since the components of $\ket{v}$ are $v_i = \ip{e_i}{v}$ in the same basis, for each component $v_j$ we must have
$$
v_j = \ip{e_j}{v} = \bra{e_j} \sum_{i=1}^d u_i \mathcal{L} \ket{e_i} = \sum_{i=1}^d \bra{e_j} \mathcal{L} \ket{e_i} u_i = \sum_{i=1}^d L_{ji} u_i \ ,
$$
where $L_{ji} \equiv \bra{e_j} \mathcal{L} \ket{e_i}$ is the scalar obtained by taking the inner product of $\ket{e_j}$ with the vector $\mathcal{L} \ket{e_i}$. We thus have
$$
v_j = \sum_{i=1}^d L_{ji} u_i \ .
$$
But this we recognize as the usual matrix-vector product from linear algebra. We've thus found the matrix representation of the linear operator $\mathcal{L}$ in the basis $\{\ket{e_i}\}$. It's the matrix whose components are given by $L_{ij} = \bra{e_i} \mathcal{L} \ket{e_j}$, with
$$
\mathcal{L} \doteq \begin{pmatrix}
L_{11} & L_{12} & \cdots & L_{1d} \\
L_{21} & L_{22} & \cdots & L_{2d} \\
\vdots & \vdots & \ddots & \vdots \\
L_{d1} & L_{d2} & \cdots & L_{dd} \\
\end{pmatrix} \ .
$$
It's in exactly this sense that linear products are like matrices. Matrices are just representations of linear operators in terms of a specific basis. In particular, this means if we chose a new basis, we'd get a different matrix representation for the same linear operator, even though the operator itself didn't change, only its matrix representation did.

##### Example: Matrix Elements of $\mathbb{1}$

As an easy example, let's quickly calculate what that matrix elements of the identity operator $\mathbb{1}$ are in the $\{\ket{e_i}\}$ basis. Since the identity transformation is just $\mathbb{1} \ket{v} = \ket{v}$ for any vector, we have
$$
\bra{e_i} \mathbb{1} \ket{e_j} = \ip{e_i}{e_j} = \delta_{ij} \ .
$$
That is, in this basis, the identity operator is represented by the matrix whose components $\delta_{ij}$, or the matrix whose entries are one along the main diagonal, when $i=j$, and zero otherwise. That is,
$$
\mathbb{1} \doteq \begin{pmatrix}
1 & 0 & \cdots & 0 \\
0 & 1 & \cdots & 0 \\
\vdots & \vdots & \ddots & \vdots \\
0 & 0 & \cdots & 1 \\
\end{pmatrix} \ .
$$
Of course, this is just the usual $d \times d$ identity matrix from linear algebra. In fact, the identity operator is always represented by the identity matrix, in any basis. Said differently, the identity operator is *invariant* to a *change of basis*. Choose any orthonormal basis you like, and the representation of $\mathbb{1}$ will be exactly the same.

##### Example: Matrix Elements of $\op{e_i}{e_j}$

As a slightly more interesting example, let's calculate the matrix components of the outer product $\mathbb{P}_{ij} \equiv \op{e_i}{e_j}$ in the same basis. Here we need to be careful to choose different indices for the matrix components than $i$ and $j$. Consider the $k\ell$<sup>th</sup> matrix element of the outer product $\mathbb{P}_{ij}$, which is given by $\bra{e_k} \mathbb{P}_{ij} \ket{e_\ell}$. Assuming the basis $\{\ket{e_i}\}$ is orthonormal, we get
$$
\bra{e_k} \mathbb{P}_{ij} \ket{e_\ell} = \ip{e_k}{e_i} \ip{e_j}{e_\ell} = \delta_{ki} \delta_{j\ell} \ .
$$
These matrix elements are zero in every slot except the one slot where $k=i$ and $j=\ell$. Thus, the matrix representation of of the outer product $\op{e_i}{e_j}$ is just the matrix that's zero everywhere except in the $ij$<sup>th</sup> slot, where its element is one,
$$
\op{e_i}{e_j} \doteq \begin{pmatrix}
0 & 0 & \cdots & 0 & \cdots & 0 \\
0 & 0 & \cdots & 0 & \cdots & 0 \\
\vdots & \vdots & \ddots & \vdots & \ddots & \vdots \\
0 & 0 & \cdots & 1 & \cdots & 0 \\
\vdots & \vdots & \ddots & \vdots & \ddots & \vdots \\
0 & 0 & \cdots & 0 & \cdots & 0 \\
\end{pmatrix} \ .
$$
What makes this result particularly interesting is that we can think of $\op{e_i}{e_j}$ as a sort of basis for linear operators, since we can imagine taking the matrix elements $L_{ij}$ of some general linear operator $\mathcal{L}$ and expanding it in terms of $\op{e_i}{e_j}$,
$$
\mathcal{L} = \sum_{i=1}^d \sum_{j=1}^d L_{ij} \op{e_i}{e_j} \ .
$$
Expanding linear operators as a basis expansion in terms of its matrix elements like this will often be useful to us.

##### Example: Pauli Operators

In quantum computing, a qubit is a state vector representing a quantum bit, thought of as a quantum superposition of the classical bits $\ket{0}$ and $\ket{1}$. We can represent cubits as state vectors in the Hilbert space $\mathbb{C}^2$. A *qubit* is then a 2-dimensional complex state vector $\ket{v}$ of the form
$$
\ket{v} = \alpha \ket{0} + \beta \ket{1} \ ,
$$
where by convention we normalize $\ip{v}{v} = 1$, which forces $|\alpha|^2 + |\beta|^2 = 1$. We assume the classical bits $\{\ket{0}, \ket{1}\}$ form an orthonormal basis for the Hilbert space $\mathbb{C}^2$, so $\ip{0}{0} = \ip{1}{1} = 1$ and $\ip{0}{1} = 0$.

Using this basis set, we can define the following three useful operators on this Hilbert space known as the *Pauli operators*,
$$
\begin{align*}
\sigma_x &= \op{0}{1} + \op{1}{0} \ , \\
\sigma_y &= -i\op{0}{1} + i \op{1}{0} \ ,\\
\sigma_z &= \op{0}{0} - \op{1}{1} \ .
\end{align*}
$$
We'd like a matrix representation for the Pauli operators in terms of this basis. By convention, we'll assume $\ket{0}$ is represented by the column vector $\binom{1}{0}$ and $\ket{1}$ is represented by the column vector $\binom{0}{1}$. In this basis, each operator $\sigma_i$ has representation
$$
\sigma_i \doteq \begin{pmatrix}
\bra{0} \sigma_i \ket{0} & \bra{0} \sigma_i \ket{1} \\
\bra{1} \sigma_i \ket{0} & \bra{1} \sigma_i \ket{1}
\end{pmatrix} \ .
$$
The matrix elements are easy enough to calculate through direct algebra. In the end, we get
$$
\sigma_x \doteq \begin{pmatrix}
0 & 1 \\
1 & 0
\end{pmatrix} \ , \ 
\sigma_y \doteq \begin{pmatrix}
0 & -i \\
i & 0
\end{pmatrix} \ , \ 
\sigma_z \doteq \begin{pmatrix}
1 & 0 \\
0 & -1
\end{pmatrix} \ .
$$
These are known as the standard *Pauli matrices*. The Pauli operators have many interesting properties. For example, they're Hermitian, unitary, and traceless. The Pauli operators are fundamental to the theory of quantum computing, as well as to the theory of spin-1/2 particles which we'll explore in great detail in a later chapter.

### Operator Algebra

We know from linear algebra that matrices have certain algebraic properties. We can linearly superpose two matrices. We can define a notion of matrix multiplication, which is associative but not commutative. We can take transpose matrices or take their adjoint. And so on. Linear operators share these algebraic operations as well.

Just like matrices, linear operators obey the principle of superposition. That is, we can always linearly superpose two linear operators to get a new linear operator. If $\mathcal{L}$ and $\mathcal{K}$ are two linear operators acting on $\mathscr{H}$, we can get a new linear operator $\mathcal{M}: \mathscr{H} \to \mathscr{H}$ by taking any linear superposition of them,
$$
\mathcal{M} = \alpha \mathcal{L} + \beta \mathcal{K} \ .
$$
Linear operators also have the same notion of multiplication as matrices. We can define the product between two linear operators via function composition on a vector. If $\mathcal{L}$ and $\mathcal{K}$ are two linear operators, we can define their product $\mathcal{L} \mathcal{K}$ by first applying $\mathcal{K}$ to some $\ket{v}$, and then applying $\mathcal{L}$ to the intermediate vector $\mathcal{K} \ket{v}$,
$$
\mathcal{L} \mathcal{K} \ket{v} \equiv \mathcal{L} \big(\mathcal{K} \ket{v} \big) \ .
$$
To see that operator multiplication reduces to matrix multiplication when we represent the operators in some basis, suppose $\{\ket{e_i}\}$ is some basis. The matrix elements of $\mathcal{L} \mathcal{K}$ are of course just $\bra{e_i} \mathcal{L}\mathcal{K} \ket{e_j}$. Now, we can use the resolution of the identity to write $\mathcal{L} \mathcal{K} = \mathcal{L} \mathbb{1} \mathcal{K}$, and then expand $\mathbb{1}$ in the same basis to get
$$
\bra{e_i} \mathcal{L}\mathcal{K} \ket{e_j} = \bra{e_i} \mathcal{L} \left(\sum_k \op{e_k}{e_k} \right)\mathcal{K} \ket{e_j} = \sum_k \bra{e_i} \mathcal{L} \ket{e_k} \bra{e_k} \mathcal{K} \ket{e_j} \ .
$$
This is just matrix multiplication written in Dirac notation. On the left we have the matrix element $(LK)_{ij}$, and on the write we have the product of the two matrix elements $L_{ik}$ and $K_{kj}$, meaning we have the usual matrix multiplication rule
$$
(LK)_{ij} = \sum_k L_{ik} K_{kj} \ .
$$
Just like matrix multiplication, operator multiplication is associative but *non-commutative*. By associative, we mean that for any three operators we can group their products however we like,
$$
(\mathcal{L} \mathcal{K}) \mathcal{M} = \mathcal{L} (\mathcal{K} \mathcal{M}) \ ,
$$
By non-commutative, we mean that operator multiplication is not commutative, meaning we can't swap the order of a matrix product and get the same result,
$$
\mathcal{L} \mathcal{K} \neq \mathcal{K} \mathcal{L} \ .
$$
When it *is* true that $\mathcal{L} \mathcal{K} = \mathcal{K} \mathcal{L}$, which usually won't be the case, we say the operators $\mathcal{L}$ and $\mathcal{K}$ *commute*. For operators that don't commute, we can describe how much they don't commute by defining a new operator called the *commutator*,
$$
[\mathcal{L}, \mathcal{K}] \equiv \mathcal{L} \mathcal{K} - \mathcal{K} \mathcal{L} \ .
$$
Clearly, if $\mathcal{L}$ and $\mathcal{K}$ commute then their commutator must be zero, $[\mathcal{L}, \mathcal{K}] = 0$. As a simple example of two operators that do commute, note that $[\mathcal{L},\mathcal{L}] = 0$ for any $\mathcal{L}$, so an operator will always commute with itself.

In the general non-commutative case, we'd instead have
$$
\mathcal{L} \mathcal{K} = \mathcal{K} \mathcal{L} + [\mathcal{L}, \mathcal{K}] \ .
$$
The commutator turns out to be very important to quantum mechanics since we can use it's essentially the math behind the Heisenberg uncertainty principle. If two observables don't commute, then we can't simultaneously measure both observables exactly. For example, the position and momentum operators don't commute, which means it's impossible to simultaneously measure both the position and momentum of a particle and quantum mechanics. The more precise we measure the particle's position, the less precisely we can measure its momentum, and vice versa. More on this in a later chapter.

The commutator obeys several useful properties that are worth remembering, all of which are easy to prove:

- Linearity: $[\mathcal{L}, \alpha \mathcal{K} + \beta \mathcal{M}] = \alpha [\mathcal{L}, \mathcal{K}] + \beta [\mathcal{L},\mathcal{M}]$.
- Anti-Symmetry: $[\mathcal{L}, \mathcal{K}] = -[\mathcal{K}, \mathcal{L}]$.
- Product Rule: $[\mathcal{L}, [\mathcal{K}, \mathcal{M}]] = [\mathcal{L}, \mathcal{K}] \mathcal{M} + \mathcal{K} [\mathcal{L}, \mathcal{M}]$.
- Jacobi Identity: $[\mathcal{L}, [\mathcal{K}, \mathcal{M}]] + [\mathcal{K}, [\mathcal{M}, \mathcal{L}]] + [\mathcal{M}, [\mathcal{L}, \mathcal{K}]] = 0$.

The linearity property just says the commutator can be split up over linear superpositions of operators in either bracket. The anti-symmetry property just says if we swap the order of the commutator we get a minus sign.

The product rule says that the commutator obeys the same kind of product rule that differentials do, $d(uv) = udv + vdu$. However, since the commutator is an operator, we have to be careful with the operator ordering on the right-hand side.

Last, the Jacobi identity says if we cycle the arguments of $[\mathcal{L}, [\mathcal{K}, \mathcal{M}]]$ and sum them together we get zero. We won't use the Jacobi identity much in practice, but the fact that the commutator satisfies this identity is important theoretically, since it implies the commutator forms a *Lie bracket* on the Hilbert space, which means the Hilbert space becomes a *Lie algebra*. Spaces with Lie algebras are interesting because we can define infinitesimal transformations on these spaces. This is very important to the theory of symmetries in quantum mechanics, which we'll discuss in more detail in a later chapter.

As a final brief mention, we can define a related operator to the commutator called the anti-commutator. The *anti-commutator* between two operators $\mathcal{L}$ and $\mathcal{K}$ is defined by
$$
\{\mathcal{L}, \mathcal{K}\} \equiv \mathcal{L} \mathcal{K} + \mathcal{K} \mathcal{L} \ .
$$
The anti-commutator respects all the properties of the ordinary commutator except it's symmetric: $\{\mathcal{L}, \mathcal{K}\} = \{\mathcal{K}, \mathcal{L}\}$. The anti-commutator seems like an odd operation to even bother defining since it doesn't seem useful for anything, but as we'll see in later chapters it is indeed important for the theory of fermions. The anti-commutator behaves for fermions analogously to how the ordinary commutator behaves for bosons.

##### Example: Pauli Operator Commutation Relations

Let's calculate the commutator and anti-commutator relations between each pair of Pauli operators defined before. This time, we'll use the Pauli matrix representation we found before since the math is a little easier.

First, since an operator always commutes with itself, we can immediately conclude without any work that
$$
[\sigma_x, \sigma_x] = [\sigma_y, \sigma_y] = [\sigma_z, \sigma_z] = 0 \ .
$$
Let's now consider the commutator $[\sigma_x, \sigma_y]$. To calculate this, we first need to calculate the products $\sigma_x \sigma_y$ and $\sigma_y \sigma_x$. We could do this directly with the operators, but this time we'll do it using the Pauli matrices this time. We have
$$
\begin{align*}
\sigma_x \sigma_y &\doteq 
\begin{pmatrix}
0 & 1 \\
1 & 0
\end{pmatrix}
\begin{pmatrix}
0 & -i \\
i & 0
\end{pmatrix}
= \begin{pmatrix}
i & 0 \\
0 & -i
\end{pmatrix} \ , \\
\sigma_x \sigma_y &\doteq 
\begin{pmatrix}
0 & -i \\
i & 0
\end{pmatrix}
\begin{pmatrix}
0 & 1 \\
1 & 0
\end{pmatrix}
= \begin{pmatrix}
-i & 0 \\
0 & i
\end{pmatrix} \ .
\end{align*}
$$
Notice the product $\sigma_x \sigma_y$ is just $i\sigma_z$, and the product $\sigma_y \sigma_x$ is just $-i\sigma_z$. Thus, we have
$$
[\sigma_x, \sigma_y] = \sigma_x \sigma_y - \sigma_y \sigma_x = 2i\sigma_z \ .
$$
From this result we can use anti-symmetry to immediately conclude its reversed commutator is $[\sigma_y, \sigma_x] = -2i\sigma_z$.

We can proceed through the same process to calculate $[\sigma_y, \sigma_z]$ and $[\sigma_z, \sigma_x]$. In the end, we'd get
$$
[\sigma_y, \sigma_z] = 2i\sigma_x \quad , \quad [\sigma_z, \sigma_x] = 2i\sigma_y \ .
$$
Notice all these commutation relations just cycle the loop $x \to y \to z$. We can thus combine them together by writing
$$
[\sigma_i, \sigma_j] = 2i \varepsilon_{ijk} \sigma_k \ ,
$$
where $i=1,2,3$ represents the coordinates $x,y,z$ and $\varepsilon_{ijk}$ is the usual Levi-Civita symbol. Since $\varepsilon_{ijk}$ is zero when any index is repeated, $+1$ under positive permutations of $(i,j,k)$, and $-1$ under negative permutations of $(i,j,k)$, this formula efficiently captures all of the commutation relations we just derived.

It's worth mentioning what the anti-commutator relations for the Pauli operators are as well. We can calculate these the exact same way through the Pauli matrices. In the end, we'd get the similar formula
$$
\{\sigma_i, \sigma_j\} = 2\delta_{ij} \mathbb{1} \ .
$$
Unlike the commutation relations, the anti-commutation relations are only non-zero when $i=j$, not when $i \neq j$.

## Hermitian and Unitary Operators

The two most important classes of linear operators in quantum mechanics are Hermitian operators and unitary operators. Both types of operators have special properties that we'll delve into in this section. In fact, Hermitian and unitary operators are closely related via the theory of Lie groups, as we'll illustrate.

### Adjoints and Inverses

We can use matrix representations to extend the important notions of matrix adjoints and inverses to linear operators. Suppose a linear operator $\mathcal{L}: \mathcal{H} \to \mathcal{H}$ has a matrix representation $L_{ij} = \bra{e_i} \mathcal{L} \ket{e_j}$ in some orthonormal basis $\{\ket{e_i}\}$. We define the *adjoint* of $\mathcal{L}$ as the unique operator $\mathcal{L}^\dagger$ satisfying the following relation between any two vectors $\ket{u}$ and $\ket{v}$,
$$
\bra{u} \mathcal{L}^\dagger \ket{v} = \bra{v} \mathcal{L} \ket{u} \ .
$$
With this definition, we can provide another interpretation of the adjoint of an operator: If $\mathcal{L}$ is a linear operator that acts on state vectors, then $\mathcal{L}^\dagger$ is its *dual* operator that acts on dual vectors,
$$
\mathcal{L} \ket{u} \leftrightarrow \bra{u} \mathcal{L}^\dagger \ .
$$
To relate this definition to the adjoint of a matrix, we can expand both sides in terms of the basis $\{\ket{e_i}\}$. Expanding the left-hand side, we get
$$
\bra{u} \mathcal{L}^\dagger \ket{v} = \left(\sum_{i=1}^d \bra{e_i} u_i^*\right) \mathcal{L}^\dagger \left(\sum_{j=1}^d v_j \ket{e_j}\right) = \sum_{i,j} u_i^* v_j \bra{e_i} \mathcal{L}^\dagger \ket{e_j} \ .
$$
Expanding the right-hand side, being careful to expand each vector with the same indexes as above, we get
$$
\bra{v} \mathcal{L} \ket{u} = \left(\sum_{j=1}^d \bra{e_j} v_j^*\right) \mathcal{L} \left(\sum_{i=1}^d u_i \ket{e_i}\right) = \sum_{i,j} u_i v_j^* \bra{e_j} \mathcal{L} \ket{e_i} \ .
$$
Since these must equal term by term, we have
$$
u_i^* v_j \bra{e_i} \mathcal{L}^\dagger \ket{e_j} = u_i v_j^* \bra{e_j} \mathcal{L} \ket{e_i} \ .
$$
Now, notice that $u_i^* v_j = (u_i v_j^*)^*$. If we conjugate both sides we can thus cancel these terms, getting
$$
\bra{e_i} \mathcal{L}^\dagger \ket{e_j} = \bra{e_j} \mathcal{L} \ket{e_i}^* \ .
$$
That is, the matrix elements of $\mathcal{L}^\dagger$ are just the conjugate transpose of the elements of $\mathcal{L}$,
$$
L_{ij}^\dagger = L_{ji}^* \ .
$$
This of course is the usual way we define the adjoint of a matrix, as its conjugate transpose. In a sense, we can think of the adjoint as the matrix analogue of the complex conjugate of a complex number, something we'll take advantage of in the next section.

We can extend the definition of the inverse of a matrix to operators as well. We define the *inverse* of $\mathcal{L}$ as the unique operator $\mathcal{L}^{-1}$ (if it exists) satisfying the identity
$$
\mathcal{L} \mathcal{L}^{-1} = \mathcal{L}^{-1} \mathcal{L} = \mathbb{1} \ .
$$
That the inverse is unique and two-sided follows from the fact that the inverse of a matrix is unique and two-sided. We'll assume the inverse exists only when its matrix representation exists, i.e. when the determinant of its matrix representation is non-zero.

Finally, the adjoint operator inherits the usual property that the adjoint of a product is equal to the adjoint of each operator, but in reverse order. The same is true for inverses. If, for any two operators $\mathcal{L}$ and $\mathcal{K}$ we have
$$
(\mathcal{L} \mathcal{K})^\dagger = \mathcal{K}^\dagger \mathcal{L}^\dagger \quad , \quad (\mathcal{L} \mathcal{K})^{-1} = \mathcal{K}^{-1} \mathcal{L}^{-1} \ .
$$

This property extends to commutators as well. For example, it's easy to show that $[\mathcal{L}, \mathcal{K}]^\dagger = -[\mathcal{L}^\dagger, \mathcal{K}^\dagger]$.

### Hermitian Operators

We'll now introduce the special class of linear operators known as *Hermitian operators*.  A linear operator $\mathcal{H}: \mathscr{H} \to \mathscr{H}$ is called *Hermitian* or *self-adjoint* if the operator equals its adjoint, i.e.
$$
\mathcal{H}^\dagger = \mathcal{H} \ .
$$
By the definition of the adjoint operation, this says
$$
\bra{u} \mathcal{H} \ket{v} = \bra{v} \mathcal{H} \ket{u} \ .
$$
That is, a Hermitian operator has the property that it acts on both state vectors and dual vectors in the same way,
$$
\mathcal{H} \ket{v} \leftrightarrow \bra{v} \mathcal{H} \ .
$$
In terms of its matrix representation, a Hermitian operator has the property that $H_{ij} = H_{ji}^*$. This means along the main diagonal the elements of aHermitian matrix must always be real-valued, since $H_{ii} = H_{ii}^*$, and each lower diagonal element is just the complex conjugate of its upper diagonal element. That is,
$$
\mathcal{H} \doteq \begin{pmatrix}
H_{11} & H_{12} & \cdots & H_{1d} \\
H_{12}^* & H_{22} & \cdots & H_{2d} \\
\vdots & \vdots & \ddots & \vdots \\
H_{1d}^* & H_{2d}^* & \cdots & H_{dd} \\
\end{pmatrix} \ .
$$
Hermitian operators are very important in quantum mechanics, as they are the operator analogue of real numbers. To see why, recall that a complex number $z$ is real-valued whenever it has the property $z = z^*$. Since the adjoint operation behaves like the operator analogue of complex conjugation, and $\mathcal{H} = \mathcal{H}^\dagger$, Hermitian operators behave like the operator equivalent of real numbers. This is very useful in quantum mechanics, since observables like energy and momentum become operators, and observables must be real-valued.

Another class of operators similar to the Hermitian operator are anti-Hermitian operators. An operator $\mathcal{A}: \mathscr{H} \to \mathscr{H}$ is called *anti-Hermitian* or *skew-Hermitian* if the operator equals its negative adjoint, i.e.
$$
\mathcal{A}^\dagger = -\mathcal{A} \ .
$$
In terms of its matrix representation, an anti-Hermitian operator has the property that $A_{ij} = -A_{ji}^*$. This immediately implies the diagonal elements $A_{ii}$ must all be zero, since $A_{ii} = -A_{ii}^*$ only when $A_{ii} = 0$. Each lower diagonal element is now the *negative* complex conjugate of its upper diagonal element. That is,
$$
\mathcal{A} \doteq \begin{pmatrix}
0 & A_{12} & \cdots & A_{1d} \\
-A_{12}^* & 0 & \cdots & A_{2d} \\
\vdots & \vdots & \ddots & \vdots \\
-A_{1d}^* & -A_{2d}^* & \cdots & 0 \\
\end{pmatrix} \ .
$$
Similar to how Hermitian operators behave like real numbers, anti-Hermitian operators behave like pure imaginary numbers. Recall that any complex number $z$ that's pure imaginary must satisfy the property $z = -z^*$, which is analogous to $\mathcal{A} = -\mathcal{A}^\dagger$. Using the same analogy, anti-Hermitian operators can always be written as $\mathcal{A} = i\mathcal{H}$, where $\mathcal{H}$ is a Hermitian operator.

Indeed, this analogy between complex numbers and linear operators holds generally for any linear operator. Just as we can decompose any complex number $z$ into its real and imaginary parts as $z = x + iy$, where
$$
x = \frac{z + z^*}{2} \quad , \quad y = \frac{z - z^*}{2i} \ ,
$$
we can decompose any linear operator $\mathcal{L}$ into its Hermitian and anti-Hermitian parts as $\mathcal{L} = \mathcal{H} + i\mathcal{A}$, where
$$
\mathcal{H} = \frac{\mathcal{L} + \mathcal{L}^\dagger}{2} \quad , \quad \mathcal{A} = \frac{\mathcal{L} - \mathcal{L}^\dagger}{2i} \ .
$$

### Unitary Operators

The final important class of linear operators we'll discuss here is the *unitary operator*. A linear operator $\mathcal{U}: \mathscr{H} \to \mathscr{H}$ is called *unitary* if its inverse equals its adjoint. That is, $\mathcal{U}^{-1} = \mathcal{U}^\dagger$, or equivalently
$$
\mathcal{U}^\dagger \mathcal{U} = \mathcal{U} \mathcal{U}^\dagger = \mathbb{1} \ .
$$
Unitary operators have the useful property that inner products are preserved under a unitary transformation. That is, if $\mathcal{U}$ is a unitary transformation that sends $\ket{u} \to \ket{\tilde u} = \mathcal{U}\ket{u}$ and $\ket{v} \to \ket{\tilde v} = \mathcal{U}\ket{v}$, then
$$
\ip{\tilde u}{\tilde v} = \bra{u} \mathcal{U}^\dagger \mathcal{U} \ket{v} = \bra{u} \mathbb{1} \ket{v} = \ip{u}{v} \ .
$$
Since $\ip{\tilde u}{\tilde v} = \ip{u}{v}$, this proves that unitary transformations preserve inner products. Since they preserve inner products, they also preserve the norm of vectors and the angle between vectors, meaning they preserve the geometry of the space. In this sense, we can think of unitary transformations as the quantum mechanical generalization of the orthogonal transformations of classical mechanics. In this sense, we can think of unitary transformations as behaving like rotations in Hilbert space.

Since unitary transformations preserve the inner product, they preserve the norm and orthogonality of vectors, which means they also preserve orthonormal bases. If $\{\ket{e_i}\}$ is an orthonormal basis, then $\{\ket{\tilde e_i}\}$ is a also an orthonormal basis, where $\ket{\tilde e_i} = \mathcal{U} \ket{e_i}$ is the unitary transformation of the basis vector $\ket{e_i}$ under $\mathcal{U}$. This provides us with an easy way to calculate the matrix elements of a unitary operator. If $U_{ij} = \bra{e_i} \mathcal{U} \ket{e_j}$ is a matrix element of $\mathcal{U}$ in the $\{\ket{e_i}\}$ basis, then
$$
U_{ij} = \bra{e_i} \mathcal{U} \ket{e_j} = \ip{e_i}{\tilde e_j} \ .
$$
That is, the matrix elements are just the projection of the old basis vectors $\ket{e_i}$ onto the new basis vectors $\ket{\tilde e_i}$. This means the column vectors of the matrix $U_{ij}$ must be orthonormal to each other, and similarly for the row vectors of $U_{ij}$.

Since unitary operators map orthonormal bases to orthonormal bases, we can use them to do a *change of basis*. Given two orthonormal bases $\{\ket{e_i}\}$ and $\{\ket{\tilde e_i}\}$, we define a unitary transformation using the matrix elements $U_{ij} = \bra{e_i} \mathcal{U} \ket{e_j}$ such that
$$
\tilde v_i = \sum_j U_{ij} v_j \ ,
$$
where $v_j$ are the components of $\ket{v}$ in the $\{\ket{e_i}\}$ basis and $\tilde v_i$ are its components in the $\{\ket{\tilde e_i}\}$ basis.

We can also use unitary operators to do a change of basis on operator matrix representations. Suppose a linear operator $\mathcal{L}$ has matrix elements $L_{ij} = \bra{e_i} \mathcal{L} \ket{e_j}$ in the $\{\ket{e_i}\}$ basis and matrix elements $\tilde L_{ij} = \bra{\tilde e_i} \mathcal{L} \ket{\tilde e_j}$ in the $\{\ket{\tilde e_i}\}$ basis. The two sets of matrix elements are then related by
$$
\tilde L_{ij} = \bra{\tilde e_i} \mathcal{L} \ket{\tilde e_j} = 
\bra{e_i} \mathcal{U}^\dagger \mathcal{L} \mathcal{U} \ket{e_j} = 
\sum_{k\ell} \ip{\tilde e_i}{e_k} \bra{e_k} \mathcal{L} \ket{e_\ell} \ip{e_\ell}{\tilde e_j} = 
\sum_{k\ell} U_{ik}^\dagger L_{k\ell} U_{\ell j} \ .
$$
This transformation of the form $\mathcal{L} \to \mathcal{U}^\dagger \mathcal{L} \mathcal{U}$ is called a *similarity transformation*. If we think of $\ket{v} \to \mathcal{U} \ket{v}$ as "rotating" the vector $\ket{v}$, we can think of the similarity transformation $\mathcal{L} \to \mathcal{U}^\dagger \mathcal{L} \mathcal{U}$ as "rotating" the operator $\mathcal{L}$.

For reasons we'll discover in later chapters, unitary operators are fundamental to quantum mechanics. They allow us to apply symmetries to state vectors, like shift them in time, space, or momentum space. It's through unitary transformations that we end up with the quantum mechanical versions of energy, momentum, and angular momentum. Just like in classical mechanics, these conserved quantities relate closely to symmetries in space and time.

Since unitary operators preserve inner products, they can't scale state vectors in the Hilbert space, only rotate them. Indeed, they behave analogously to phases in the complex plane. Recall a *phase* is a complex number of the form $z = e^{i\varphi}$. Since $zz^* = 1$, phases can't scale points in the complex plane, only rotate them by $\varphi$. Having $z z^* = 1$ is analogous to having $\mathcal{U} \mathcal{U}^\dagger = \mathbb{1}$. 

Similar to how we can write a phase as $z = e^{i\varphi}$, we can write unitary operators as $\mathcal{U} = e^{i\mathcal{H}}$ using the *exponential operator*, where $\mathcal{H}$ is a Hermitian operator. The exponential operator $e^{\mathcal{L}}$ is defined by expanding $\mathcal{L}$ in a Taylor series of the same form as the expansion for the ordinary exponential function,
$$
e^{\mathcal{L}} \equiv \sum_{n=0}^\infty \frac{\mathcal{L}^n}{n!} = \mathbb{1} + \mathcal{L} + \frac{1}{2} \mathcal{L}^2 + \cdots \ .
$$
It turns out that any Hermitian operator $\mathcal{H}$ has an associated unitary operator $\mathcal{U}$ given by
$$
\mathcal{U} = e^{i\mathcal{H}} = \sum_{n=0}^\infty \frac{(i\mathcal{H})^n}{n!} = \mathbb{1} + i\mathcal{H} - \frac{1}{2} \mathcal{H}^2 + \cdots \ .
$$
We often say that Hermitian operators *generate* unitary transformations, in the sense that we can think of any infinitesimal shift $\delta\mathcal{H}$ in $\mathcal{H}$ as generating an infinitesimal transformation $\delta\mathcal{U}$ in $\mathcal{U}$ of the form $\delta\mathcal{U} = \mathbb{1} + i\delta\mathcal{H}$. Of course, for this to make sense the Hermitian operator $\mathcal{H}$ needs to be continuous. We'll revisit this topic of *Lie algebras* later when we discuss symmetries.

## Eigenvalues

Recall from linear algebra that any square matrix has associated to it *characteristic* directions that are left invariant when acted on by the matrix. Along these characteristic directions, a square matrix $\mathbf{A}$ can only scale a vector $\mathbf{v}$ along that direction by some complex scalar $\lambda$, not rotate it into a new direction,
$$
\mathbf{A} \mathbf{v} = \lambda \mathbf{v} \ .
$$
For a given matrix $\mathbf{A}$, its characteristic directions are called *eigenspaces* of $\mathbf{A}$, the vectors $\mathbf{v}$ along those directions are called the *eigenvectors* of $\mathbf{A}$, and the scale factors $\lambda$ are called the *eigenvalues* of $\mathbf{A}$. These are special properties inherent to the matrix itself. Different matrices will have different sets of eigenvalues and eigenvectors.

### Definition

Linear operators are essentially generalized matrices, and as such have the same notion of eigenvalues and eigenvectors. Suppose $\mathcal{L}: \mathscr{H} \to \mathscr{H}$ is some linear operator and $\ket{u} \in \mathscr{H}$ is some state vector. We say $\ket{u}$ an *eigenvector* or *eigenstate* of $\mathcal{L}$ if
$$
\mathcal{L} \ket{u} = \lambda \ket{u}
$$
for some non-zero complex number $\lambda$, called the *eigenvalue* of $\mathcal{L}$ associated to the eigenvector $\ket{u}$. By convention, we disallow the zero vector from being an eigenvector, since every operator acting on the zero vector returns a zero vector. 

Note we can operate on the dual version of the eigenvector $\bra{u}$ in a similar way using the $\mathcal{L} \ket{u} \leftrightarrow \bra{u} \mathcal{L}^\dagger$ rule to get
$$
\bra{u} \mathcal{L}^\dagger = \bra{u} \lambda^* \ .
$$
Notice that per the definition, if we already know $\ket{u}$ is an eigenvector of $\mathcal{L}$ we can always trivially multiply $\ket{u}$ by any complex scalar $\alpha$ to get a new eigenvector $\alpha\ket{u}$, since
$$
A(\alpha\ket{u}) = \lambda (\alpha\ket{u}) \ .
$$
Since we don't care about these trivially different eigenvectors, by convention we assume that eigenvectors are normalized with $\ip{u}{u} = 1$. Of course, $\alpha = |\alpha| e^{i\varphi}$, and requiring $\ip{u}{u} = 1$ only forces $|\alpha|=1$. This still  leaves the possibility of multiplying $\ket{u}$ by a phase factor $e^{i\varphi}$ to get a "new" eigenvector $e^{i\varphi} \ket{u}$. Strictly speaking we should also set $\varphi=0$ to make each eigenvector unique, but in quantum mechanics we typically ignore phase factors like this anyway.

### Characteristic Equation

By rewriting the right-hand side of $\mathcal{L} \ket{u} = \lambda \ket{u}$ as $\lambda \mathbb{1} \ket{u}$ and moving everything to the left-hand side, we get
$$
(\mathcal{L} - \lambda \mathbb{1}) \ket{u} = 0 \ .
$$
Mathematically, this says the eigenvector $\ket{u}$ lies in the *null space* of the shifted operator $\mathcal{L} - \lambda \mathbb{1}$. A linear operator with a non-zero null space is necessarily not invertible, since there's no way to invert any mapping to the zero vector. This means the shifted operator $\mathcal{L} - \lambda \mathbb{1}$ when represented as a matrix must always have a vanishing determinant,
$$
\boxed{
\det(\mathcal{L} - \lambda \mathbb{1}) = 0 
} \ .
$$
This equation is known as the *characteristic equation*. It provides us with a way to algebraically solve for all the eigenvalues, and indirectly the eigenvectors, associated to a given linear operator. For a $d$-dimensional Hilbert space, the determinant $\det(\mathcal{L} - \lambda \mathbb{1})$ will always be at most a $d$-degree polynomial in powers of $\lambda$, called the *characteristic polynomial*,
$$
\det(\mathcal{L} - \lambda \mathbb{1}) = c_0 + c_1 \lambda + c_2 \lambda^2 + \cdots + c_d \lambda^d \ .
$$
The coefficients $c_0, c_1, \cdots, c_d$ will in general depend on the operator $\mathcal{L}$. By the fundamental theorem of algebra, any $d$-degree polynomial will have exactly $d$ complex-valued roots, which may or may not be real or unique. When factored in this form, the characteristic equation can be written
$$
(\lambda - \lambda_1)(\lambda - \lambda_2) \cdots (\lambda - \lambda_d) = 0 \ ,
$$
where the $d$ roots $\lambda_1, \lambda_2, \cdots, \lambda_d$ are the eigenvalues of $\mathcal{L}$. 

Once we know a given eigenvalue we can use it to solve for its associated eigenvector. The eigenvector $\ket{u_i}$ corresponding to a given eigenvalue $\lambda_i$ must be in the null space of the shifted operator $\mathcal{L} - \lambda_i \mathbb{1}$. Thus, if we already know $\lambda_i$, its eigenvector $\ket{u_i}$ can be found by using standard matrix methods to solve the null space equation
$$
(\mathcal{L} - \lambda_i \mathbb{1}) \ket{u_i} = 0 \ .
$$
If a given root $\lambda$ in the characteristic polynomial has multiplicity $k$, meaning one of the factors is repeated $k$ times, we say that eigenvalue is *degenerate* with order $k$. The degenerate eigenvalue $\lambda$ will have associated to it a $k$-dimensional subspace of the Hilbert space, called the *eigenspace* of $\lambda$. Since any vector $\ket{u}$ in this subspace will satisfy $\mathcal{L} \ket{u} = \lambda \ket{u}$, we can choose any $k$ linearly independent vectors we like that span this subspace to be eigenvectors of $\lambda$. We'll return to the issue of degeneracy in more detail in a moment.

##### Example: 3-Dimensional Rotations

Consider the operator $\mathcal{R}_z(\varphi)$, which rotates vectors in ordinary 3-dimensional Euclidean space about the $z$-axis by some angle $\varphi$. This operator is clearly unitary since $\mathcal{R}_z^{-1}(\varphi) = \mathcal{R}_z(-\varphi) = \mathcal{R}_z^\dagger(\varphi)$. In the standard Cartesian basis $\{\ket{e_x}, \ket{e_y}, \ket{e_z}\}$ we can represent this operator by the $3 \times 3$ matrix
$$
\mathcal{R}_z(\varphi) \doteq \begin{pmatrix}
\cos\varphi & -\sin\varphi & 0 \\
\sin\varphi & \cos\varphi & 0 \\
0 & 0 & 1
\end{pmatrix} \ .
$$
Let's find the eigenvalues and eigenvectors of this real matrix. We start by solving its characteristic equation,
$$
\det(\mathcal{R}_z(\varphi) - \lambda \mathbb{1}) = \begin{vmatrix}
\cos\varphi - \lambda & -\sin\varphi & 0 \\
\sin\varphi & \cos\varphi - \lambda & 0 \\
0 & 0 & 1 - \lambda
\end{vmatrix}
= (1 - \lambda)\left[(\cos\varphi - \lambda)^2 + \sin^2\varphi\right] = 0 \ .
$$
Immediately we see $\lambda_z = 1$ must be an eigenvalue, while the other two are given by solving the quadratic
$$
(\cos\varphi - \lambda)^2 + \sin^2\varphi = \lambda^2 -2\lambda\cos\varphi + 1 = 0 \ .
$$
The roots of quadratic, and hence the remaining two eigenvalues, are
$$
\lambda_\pm = \frac{1}{2} \left(2\cos\varphi \pm \sqrt{4\cos^2\varphi - 4}\right) = \cos\varphi \pm i\sin\varphi = e^{\pm i\varphi} \ .
$$
Notice that despite the operator and its matrix representation being real, two of its eigenvalues are complex. Moreover, these two eigenvalues are complex conjugates of each other, with $\lambda_- = \lambda_+^*$. Also notice that all the eigenvalues have modulus one, which in fact will always be true of any unitary operator.

What about the eigenvectors? Since the operator rotates vectors about the $z$-axis, it's clear that any vector along the $z$-axis will be left invariant under rotation by $\mathcal{R}_z(\varphi)$. This immediately implies the unit vector $\ket{e_z}$ will be the eigenvector of $\lambda_z = 1$, since
$$
\mathcal{R}_z(\varphi) \ket{e_z} = \ket{e_z} \doteq \begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix} \ .
$$
The other two eigenvectors $\ket{e_\pm}$ are more subtle, since no real 3-dimensional vector is invariant to rotation except those along the $z$-axis, which the eigenvector $\ket{e_z}$ already covers. In fact, the other two eigenvectors will be complex vectors, with
$$
\ket{e_\pm} = \frac{\ket{e_x} \mp i\ket{e_y}}{\sqrt{2}} \doteq
\frac{1}{\sqrt{2}} \begin{pmatrix} 1 \\ \mp i \\ 0 \end{pmatrix}
\ .
$$
Note the $1/\sqrt{2}$ factor was inserted here to ensure each $\ket{e_\pm}$ is a unit vector. Let's quickly verify these are eigenvectors of $\lambda_\pm$. Writing out $\mathcal{R}_z(\varphi) \ket{e_\pm}$ in terms of the standard basis representation, we have
$$
\begin{pmatrix}
\cos\varphi & -\sin\varphi & 0 \\
\sin\varphi & \cos\varphi & 0 \\
0 & 0 & 1
\end{pmatrix}
\begin{pmatrix} 1/\sqrt{2} \\ \mp i/\sqrt{2} \\ 0 \end{pmatrix}
= \frac{1}{\sqrt{2}} \begin{pmatrix} \cos\varphi \pm i\sin\varphi \\ \sin\varphi \mp i\cos\varphi \\ 0 \end{pmatrix} 
= e^{\pm i\varphi} \begin{pmatrix} 1/\sqrt{2} \\ \mp i/\sqrt{2} \\ 0 \end{pmatrix} \ .
$$
Thus, $\mathcal{R}_z(\varphi) \ket{e_\pm} = \lambda_\pm \ket{e_\pm}$, hence $\ket{e_\pm}$ are the eigenvectors of $\lambda_\pm$. The set of eigenvectors $\{\ket{e_+},\ket{e_-},\ket{e_z}\}$ have a special name. They're called the *spherical basis vectors*. In fact, the spherical basis vectors form an orthonormal basis for the 3-dimensional complex Hilbert space $\mathbb{C}^3$, since they're all unit vectors and mutually orthogonal,
$$
\ip{e_+}{e_-} = \ip{e_+}{e_z} = \ip{e_-}{e_z} = 0 \ .
$$
The spherical basis is in a sense the natural basis one would use to represent objects on a sphere. The relation of this basis to the sphere will become more obvious in later chapters when we discuss the spherical harmonics in detail.

##### Example: Characteristic Equation in Two Dimensions

Suppose we have a Hilbert space of dimension $d=2$, for instance the complex vector space $\mathbb{C}^2$ or the real vector space $\mathbb{R}^2$. Suppose $\mathcal{L}$ is some linear operator on this Hilbert space. Suppose we've fixed some basis to represent $\mathcal{L}$ by the $2 \times 2$ matrix
$$
\mathcal{L} \doteq \begin{pmatrix}
a & b \\
c & d
\end{pmatrix} \ ,
$$
where $\binom{a}{c}$ and $\binom{b}{d}$ are the column vector representations of $\mathcal{L}$ in the chosen basis. Recall the determinant of a $2 \times 2$ matrix with these coefficients is given by $\det(\mathcal{L}) = ad - bc$, and its trace is given by $\tr(\mathcal{L}) = a + d$.

We'd like a simple expression for the characteristic equation of $\mathcal{L}$. To get that, we need to solve
$$
\det(\mathcal{L} - \lambda \mathbb{1}) = c_0 + c_1 \lambda + c_2 \lambda^2 = 0 \ ,
$$
where $\mathbb{1}$ is represented by the $2 \times 2$ identity matrix. Expanding the left-hand side and grouping terms in powers of $\lambda$, we have
$$
\det(\mathcal{L} - \lambda \mathbb{1}) 
= \begin{vmatrix}
a - \lambda & b \\
c & d - \lambda
\end{vmatrix} 
= (a-\lambda)(d-\lambda) - bc = (ad-bc) - (a+d) \lambda + \lambda^2 \ .
$$
Matching coefficients, we immediately recognize
$$
c_0 = \det(\mathcal{L}) \quad , \quad c_1 = -\tr(\mathcal{L}) \quad , \quad c_2 = 1 \ .
$$
Thus, the $2 \times 2$ matrix representation of $\mathcal{L}$ has a characteristic equation of the form
$$
\lambda^2 - \tr(\mathcal{L}) \lambda + \det(\mathcal{L}) = 0 \ .
$$
This formula is a useful shortcut for quickly finding the eigenvalues of a $2 \times 2$ matrix since it saves us the need to explicitly calculate the determinant $\det(\mathcal{L} - \lambda \mathbb{1})$ every single time.

For example, consider the standard matrix representation of the Pauli operators
$$
\sigma_x \doteq \begin{pmatrix}
0 & 1 \\
1 & 0
\end{pmatrix} \ , \ 
\sigma_y \doteq \begin{pmatrix}
0 & -i \\
i & 0
\end{pmatrix} \ , \ 
\sigma_z \doteq \begin{pmatrix}
1 & 0 \\
0 & -1
\end{pmatrix} \ .
$$
In all three cases we have $\det(\sigma_i) = -1$ and $\tr(\sigma_i) = 0$, so their characteristic equations are all $\lambda^2 - 1 = 0$. Hence the eigenvalues for each of the Paul operators are simply $\lambda = \pm 1$.

---

It turns out that any linear operator $\mathcal{L}$ acting on a $d$-dimensional Hilbert space has its determinant as its lowest coefficient in its characteristic polynomial, i.e. $c_0 = \det(\mathcal{L})$. This is easy to see, since setting $\lambda=0$ in the characteristic polynomial leaves only the determinant $\det(\mathcal{L})$ on one side and the coefficient $c_0$ on the other side, hence the two must equal. It's also possible to show that the highest coefficient in general is always $c_d = (-1)^d$, and the second highest is always $c_{d-1} = (-1)^{d-1} \tr(\mathcal{L})$. The characteristic equation for such a linear operator can thus be slightly simplified as
$$
(-1)^d \lambda^d + (-1)^{d-1} \tr(\mathcal{L}) + \cdots + \det(\mathcal{L}) = 0 \ .
$$
The intermediate coefficients $c_1, c_2, \cdots, c_{d-2}$ are related to the principal minors of the matrix and not as easy to write down.

Using this formula we can immediately deduce two interesting results. First, the determinant of a linear operator will always be the product of all its eigenvalues,
$$
\det(\mathcal{L}) = \lambda_1 \lambda_2 \cdots \lambda_d \ .
$$
Second, the trace of a linear operator will always be the sum of all its eigenvalues,
$$
\tr(\mathcal{L}) = \lambda_1 + \lambda_2 + \cdots + \lambda_d \ .
$$
Both can be proven by setting the expanded characteristic polynomial given above equal to its factored product of eigenvalues, and grouping the factored products term by term to match $c_0$ with $\lambda_1 \lambda_2 \cdots \lambda_d$ and $c_{d-1}$ with $\lambda_1 + \lambda_2 + \cdots + \lambda_d$,
$$
c_0 + c_1 \lambda + \cdots + c_{d-1} \lambda^{d-1} + c_d \lambda^d = c_d (\lambda - \lambda_1) (\lambda - \lambda_2) \cdots (\lambda - \lambda_d) \ .
$$
Among other things, these imply an linear operator is invertible if and only if all its eigenvalues are non-zero.

### Spectral Decomposition

By enforcing the normalization requirement on eigenvectors, it's clear that any $d$-dimensional Hilbert space can have at most $d$ eigenvectors (up to ignored phase factors), since we can use those $d$ eigenvectors as a basis to span the entire Hilbert space. This does *not* however mean the set of eigenvectors must form an orthonormal basis. However, if the operator is a *normal operator*, meaning it commutes with its adjoint, we can *guarantee* its $d$ eigenvectors will always form an orthonormal basis, and we can *diagonalize* $\mathcal{L}$ by writing it as an expansion in terms of that basis.

Before stating the main theorem we'll need a few definitions. First, we say a linear operator $\mathcal{L}: \mathscr{H} \to \mathscr{H}$ is *normal* if the operator commutes with its adjoint, i.e. $[\mathcal{L}, \mathcal{L}^\dagger] = 0$. Normal operators it turns out cover the two classes of operators we care most about in quantum mechanics: Hermitian operators and unitary operators. Hermitian operators are clearly normal since if $\mathcal{L}$ is Hermitian, then $\mathcal{L} = \mathcal{L}^\dagger$, and hence $[\mathcal{L}, \mathcal{L}^\dagger] = [\mathcal{L}, \mathcal{L}] = 0$. Unitary operators are also normal, since if $\mathcal{L}$ is unitary we instead have $\mathcal{L}^\dagger = \mathcal{L}^{-1}$, which means
$$
[\mathcal{L}, \mathcal{L}^\dagger] = [\mathcal{L}, \mathcal{L}^{-1}] = \mathcal{L} \mathcal{L}^{-1} - \mathcal{L}^{-1} \mathcal{L} = \mathbb{1} - \mathbb{1} = 0 \ .
$$
Second, if a linear operator $\mathcal{L}$ contains $d$ linearly independent eigenvectors that span the Hilbert space, we say this set is a *complete eigenbasis* for the Hilbert space. If this set also happens to be orthonormal, we say the spectrum is a *complete orthonormal eigenbasis* for the Hilbert space.

The final tool we'll need is the Schur decomposition from linear algebra, which we'll state but not prove. The *Schur decomposition* is a theorem that guarantees that every $d \times d$ complex-valued matrix $L$ has a similarity transformation of the form
$$
L = U \Lambda U^\dagger \ ,
$$
where $U$ is some $d \times d$ unitary matrix and $\Lambda$ is an upper triangular matrix whose diagonal entries are the eigenvalues of $L$. That is, the lower diagonal elements of $\Lambda$ are all zero, $\Lambda_{ij} = 0$ when $i > j$, and its diagonal elements are $\Lambda_{ii} = \lambda_i$,
$$
\Lambda = \begin{pmatrix}
\lambda_1 & \Lambda_{12} & \cdots & \Lambda_{1d} \\
0 & \lambda_2 & \cdots & \Lambda_{12} \\
\vdots & \vdots & \ddots & \vdots \\
0 & 0 & \cdots & \lambda_d \\
\end{pmatrix} \ .
$$
If this matrix $\Lambda$ happens to be a diagonal matrix, meaning $\Lambda_{ij} = 0$ when $i \neq j$, we say the matrix $L$ is *diagonalizable*. In operator language, a linear operator $\mathcal{L}$ is said to be *diagonalizable* in terms of some orthonormal basis $\{\ket{e_i}\}$ if we can write
$$
\boxed{
\mathcal{L} = \sum_{i=1}^d \lambda_i \op{e_i}{e_i} 
} \ ,
$$
where $\lambda_1, \lambda_2, \cdots, \lambda_d$ are the eigenvalues of $\mathcal{L}$. If an operator $\mathcal{L}$ is diagonalizable, we call the above decomposition the *spectral decomposition* of $\mathcal{L}$. While most linear operators aren't diagonalizable, it turns out that normal operators always are. This is the main theorem we'll now prove.

**Theorem:** Suppose $\mathcal{L}: \mathscr{H} \to \mathscr{H}$ is a linear operator acting on a Hilbert space $\mathscr{H}$ of finite dimension $d$. Then $\mathcal{L}$ has a complete orthonormal eigenbasis $\{\ket{e_i}\}$ for $\mathscr{H}$ if and only if $\mathcal{L}$ is a normal operator. Moreover, $\mathcal{L}$ is diagonalizable in terms of this eigenbasis with spectral decomposition
$$
\mathcal{L} = \sum_{i=1}^d \lambda_i \op{e_i}{e_i} \ ,
$$
where each $\lambda_i$ is the eigenvalue associated to the eigenvector $\ket{e_i}$.

---

*Proof:* Let's prove this important theorem. To do so we need to prove both directions of the "if and only if" condition:

1. If $\mathcal{L}$ has a complete set of orthonormal eigenvectors that form a basis for $\mathscr{H}$, then $\mathcal{L}$ must be a normal operator.
2. If $\mathcal{L}$ is a normal operator, then it has a complete set of orthonormal eigenvectors that form a basis for $\mathscr{H}$.

Suppose first that $\mathcal{L}$ has a complete set $\{\ket{e_i}\}$ of orthonormal eigenvectors that form a basis for $\mathcal{H}$. Then for any state vector $\ket{v} \in \mathscr{H}$ we can expand this vector in terms of the eigenbasis $\{\ket{e_i}\}$,
$$
\ket{v} = \sum_{i=1}^d c_i \ket{e_i} \ ,
$$
where $\ip{e_i}{e_j} = \delta_{ij}$. To show this implies $\mathcal{L}$ is normal, we need to show $[\mathcal{L}, \mathcal{L}^\dagger] = 0$, or equivalently that $\mathcal{L} \mathcal{L}^\dagger = \mathcal{L}^\dagger \mathcal{L}$.

Applying $\mathcal{L}$ to $\ket{v}$ and using the fact that each $\ket{e_i}$ is an eigenvector of $\mathcal{L}$ with eigenvalue $\lambda_i$, we have
$$
\mathcal{L} \ket{v} = \sum_{i=1}^d c_i \mathcal{L} \ket{e_i} = \sum_{i=1}^d c_i \lambda_i \ket{e_i} \ .
$$
By taking the adjoint of both sides, it's also clear that
$$
\mathcal{L}^\dagger \ket{v} = \sum_{i=1}^d c_i \mathcal{L}^\dagger \ket{e_i} = \sum_{i=1}^d c_i \lambda_i^* \ket{e_i} \ .
$$
Putting these together, we thus have
$$
\mathcal{L} \mathcal{L}^\dagger \ket{v} = \sum_{i=1}^d c_i \lambda_i^* \lambda_i \ket{e_i} = \mathcal{L}^\dagger \mathcal{L} \ket{v} \ .
$$
Since $\ket{v}$ is arbitrary, we've shown $\mathcal{L} \mathcal{L}^\dagger = \mathcal{L}^\dagger \mathcal{L}$. That is, $\mathcal{L}$ is a normal operator. This proves the $(\Rightarrow)$ direction.

Suppose now that $\mathcal{L}$ is a normal operator, so $[\mathcal{L}, \mathcal{L}^\dagger] = 0$. Now we need to show that $\mathcal{L}$ has a complete set of eigenvectors that span the Hilbert space. To prove this we'll make use of the Schur decomposition. According to this decomposition, there exists a complete orthonormal basis $\{\ket{e_i}\}$ where the matrix representation of $\mathcal{L}$ is upper triangular and its diagonal entries are its eigenvalues. That is, $L_{ij} = 0$ whenever $i > j$, and $L_{ii} = \lambda_i$. Or, in matrix form,
$$
\mathcal{L} \doteq \begin{pmatrix}
\lambda_1 & L_{12} & \cdots & L_{1d} \\
0 & \lambda_2 & \cdots & L_{12} \\
\vdots & \vdots & \ddots & \vdots \\
0 & 0 & \cdots & \lambda_d \\
\end{pmatrix} \ .
$$
Now, since $\mathcal{L}$ is normal, every matrix element of $\mathcal{L} \mathcal{L}^\dagger$ and $\mathcal{L}^\dagger \mathcal{L}$ must equal. In particular, their diagonal elements must equal,
$$
(LL^\dagger)_{ii} = \sum_{j=1}^d |L_{ij}|^2 = \sum_{j=1}^d |L_{ji}|^2 = (L^\dagger L)_{ii} \ .
$$
But $\mathcal{L}$ is also upper triangular, which means $L_{ij} = 0$ when $i > j$. The only way the two sums above can equal and $\mathcal{L}$ be upper triangular is if $\mathcal{L}$ is diagonal, meaning $L_{ij} = 0$ when $i \neq j$. To see why, suppose we fix $i=1$. Using the upper triangular property, the above expression becomes
$$
|L_{11}|^2 + 0 + \cdots + 0 = |L_{11}|^2 + |L_{12}|^2 + \cdots + |L_{1d}|^2 \ ,
$$
which can only be true if all terms are zero in the first row except $|L_{11}|^2 = |\lambda_1|^2$. Similarly for the other rows. Thus, in this matrix representation, if $\mathcal{L}$ is normal then its Schur decomposition must be the diagonal matrix of its eigenvalues,
$$
\mathcal{L} \doteq \begin{pmatrix}
\lambda_1 & 0 & \cdots & 0 \\
0 & \lambda_2 & \cdots & 0 \\
\vdots & \vdots & \ddots & \vdots \\
0 & 0 & \cdots & \lambda_d \\
\end{pmatrix} \ .
$$
We've thus shown that $\mathcal{L}$ is diagonalizable in terms of this basis $\{\ket{e_i}\}$, which means it has a spectral decomposition
$$
\mathcal{L} = \sum_{i=1}^d \lambda_i \op{e_i}{e_i} \ .
$$
If this is true though, then each basis vector $\ket{e_i}$ must also be the eigenvector of $\mathcal{L}$ whose eigenvalue is $\lambda_i$, since
$$
\mathcal{L} \ket{e_j} = \sum_{i=1}^d \lambda_i \ket{e_i} \ip{e_i}{e_j} = \lambda_j \ket{e_j} \ .
$$
Since we assumed $\{\ket{e_i}\}$ is a complete orthonormal basis for the Hilbert space, and since each of these basis vectors is an eigenvector of $\mathcal{L}$, the eigenvectors of $\mathcal{L}$ form a complete eigenbasis for the Hilbert space. This proves the $(\Leftarrow)$ direction, and hence the theorem. $\square$

---

Normal operators are nice because we can always diagonalize them to get a spectral decomposition
$$
\mathcal{L} = \sum_{i=1}^d \lambda_i \op{e_i}{e_i} \ .
$$
Since the two most important classes of operators in quantum mechanics, unitary and Hermitian operators, are both normal, from now on we'll always assume they have spectral decompositions like this.

Now that we've established that Hermitian and unitary operators will always have a complete orthonormal set of eigenvectors, and that we can always diagonalize these operators in terms of their eigenvectors, let's analyze their eigenvalues. First let's look at the eigenvalues of a unitary operator. If $\mathcal{U}$ is unitary, then $\mathcal{U}^\dagger \mathcal{U} = \mathbb{1}$, which means for any (normalized) eigenvector $\ket{e_i}$ with eigenvalue $\lambda_i$ we have
$$
1 = \ip{e_i}{e_i} = \bra{e_i} \mathcal{U}^\dagger \mathcal{U} \ket{e_i} = |\lambda_i|^2 \ip{e_i}{e_i} = |\lambda_i|^2 \ .
$$
Since every eigenvalue must satisfy $|\lambda_i|^2 = 1$, the eigenvalues of a unitary operator must thus be pure phases, i.e. complex numbers of the form $\lambda_i = e^{i\varphi_i}$ where $\varphi_i$ is a real number.

Let's now look at the eigenvalues of Hermitian operators. If $\mathcal{H}$ is Hermitian, then $\mathcal{H} = \mathcal{H}^\dagger$, which means for any (normalized) eigenvector $\ket{e_i}$ with eigenvalue $\lambda_i$ we have
$$
\bra{e_i} \mathcal{H} \ket{e_i} = \lambda_i \ip{e_i}{e_i} = \lambda_i \ ,
$$
and similarly
$$
\bra{e_i} \mathcal{H} \ket{e_i}^* = \bra{e_i} \mathcal{H}^\dagger \ket{e_i} = \lambda_i^* \ip{e_i}{e_i} = \lambda_i^* \ .
$$
However, since $\mathcal{H}$ is Hermitian, $\bra{e_i} \mathcal{H}^\dagger \ket{e_i} = \bra{e_i} \mathcal{H} \ket{e_i}$, which means $\lambda_i = \lambda_i^*$. That is, each eigenvalue $\lambda_i$ must be a real number. Thus, the eigenvalues of a Hermitian operator must be real numbers.

Not only do Hermitian operators have orthonormal eigenvectors, but the eigenvectors corresponding to distinct eigenvalues *must* always be orthogonal. This is simple enough to show. Suppose $\lambda$ and $\lambda'$ are two distinct eigenvalues of a Hermitian operator $\mathcal{H}$, where $\lambda$ has some eigenvector $\ket{u}$ and $\lambda'$ has some eigenvector $\ket{u'}$. Since $\mathcal{H}$ is Hermitian, $\mathcal{H} \ket{u} = \lambda \ket{u}$ and $\bra{u'} \mathcal{H} = \bra{u'} \lambda'$, which means
$$
\begin{align*}
\bra{u'} \mathcal{H} \ket{u} &= \bra{u'} \left(\mathcal{H} \ket{u}\right) = \lambda \ip{u'}{u} \ , \\
\bra{u'} \mathcal{H} \ket{u} &= \left(\bra{u'} \mathcal{H}\right) \ket{u} = \lambda' \ip{u'}{u} \ .
\end{align*}
$$
Since both expressions correspond to the same matrix element $\bra{u'} \mathcal{H} \ket{u}$, we can set them equal and write
$$
(\lambda - \lambda') \ip{u'}{u} = 0 \ .
$$
Since we assume the eigenvectors are extinct we know $\lambda \neq \lambda'$, which means we must have $\ip{u'}{u} = 0$. That is, the eigenvectors of these two distinct eigenvalues must be orthogonal.

This combined set of results for Hermitian operators is known as the *spectral theorem*. The spectral theorem provides a more rigorous interpretation of what we mean when we say Hermitian operators behave like real numbers.

**Spectral Theorem:** Suppose $\mathcal{H}: \mathscr{H} \to \mathscr{H}$ is a linear operator acting on a Hilbert space $\mathscr{H}$ of finite dimension $d$. Then,

1. There exists a set of eigenvectors of $\mathcal{H}$ that form a complete orthonormal eigenbasis for the Hilbert space, and we can diagonalize $\mathcal{H}$ in terms of these eigenvectors.
2. The eigenvalues of $\mathcal{H}$ are real-valued.
3. The eigenvectors corresponding to distinct eigenvalues must be orthogonal.

As usual, we'll assume without proof in quantum mechanics that the spectral theorem holds for infinite-dimensional Hilbert spaces as well, though we'll need to interpret the theorem with some degree of care. We'll return to this issue later.

### Degeneracy

Thus far we haven't focused on the issue of degenerate eigenvalues. Degeneracy raises a few subtleties we need to address. For example, the spectral theorem says that eigenvectors of a Hermitian operator corresponding to distinct eigenvalues must be orthogonal. But what about eigenvectors corresponding to the same eigenvalue? After all, Hermitian operators should have a complete orthonormal eigenbasis, so even for degenerate eigenvalues we should be able to get an orthonormal set somehow.

Recall an eigenvalue $\lambda$ of a linear operator $\mathcal{L}$ is said to be *degenerate* with order $k$ if its characteristic polynomial contains $k$ roots all equal to the same eigenvalue $\lambda$. Consider the set of eigenvectors $\ket{u} \in \mathscr{H}$ corresponding to the same eigenvalue $\lambda$,
$$
\mathscr{H}_\lambda \equiv \{\ket{u} \in \mathscr{H}: \mathcal{L} \ket{u} = \lambda \ket{u}\} \ .
$$
In fact, the set $\mathscr{H}_\lambda$ forms a linear subspace of the Hilbert space $\mathscr{H}$. To see why, we need to show that this space is closed under superposition. Suppose $\ket{u}, \ket{v} \in \mathscr{H}_\lambda$ are both vectors in this set. By definition, both vectors must then be eigenvectors of the same eigenvalue $\lambda$, meaning $\mathcal{L} \ket{u} = \lambda \ket{u}$ and $\mathcal{L} \ket{v} = \lambda \ket{v}$. But for any superposition $\alpha \ket{u} + \beta \ket{v}$ we must also have
$$
\mathcal{L} (\alpha \ket{u} + \beta \ket{v}) = \lambda (\alpha \ket{u} + \beta \ket{v}) \ .
$$
Thus, if $\ket{u}$ and $\ket{v}$ are both eigenvectors of $\lambda$, then so is any superposition $\alpha \ket{u} + \beta \ket{v}$. That is, the set $\mathscr{H}_\lambda$ is closed under superposition, and is hence a linear subspace of the Hilbert space. This linear subspace $\mathscr{H}_\lambda$ is called the *eigenspace* of $\lambda$.

A key fact about eigenspaces is their dimension equals the degeneracy of their corresponding eigenvalue. If $\lambda$ is degenerate with order $k$, then its eigenspace $\mathscr{H}_\lambda$ will be a $k$-dimensional subspace of the Hilbert space.

- Figure out where this fact follows from. Schur decomposition? Spectral decomposition? Diagonalization?




$$
\mathscr{H} = \mathscr{H}_{\lambda_1} \oplus \mathscr{H}_{\lambda_2} \oplus \cdots \oplus \mathscr{H}_{\lambda_n} \ .
$$

$$
d = d_1 + d_2 + \cdots + d_n
$$

$$
\ket{v} = \alpha_1 \ket{u_{\lambda_1}} + \alpha_2 \ket{u_{\lambda_2}} + \cdots + \alpha_n \ket{u_{\lambda_n}}
$$

$$
\mathcal{L} = \sum_{i=1}^n \sum_{j=1}^{d_i} \lambda_i \op{e_i^{(j)}}{e_i^{(j)}}
$$

$$
\mathcal{L} \doteq \begin{pmatrix}
\lambda_1 & 0 & 0 & 0 & 0 & 0 & \cdots & 0 \\
0 & \lambda_2 & 0 & 0 & 0 & 0 & \cdots & 0 \\
0 & 0 & \lambda_2 & 0 & 0 & 0 & \cdots & \vdots \\
0 & 0 & 0 & \lambda_2 & 0 & 0 & \cdots & 0 \\
0 & 0 & 0 & 0 & \lambda_3 & 0 & \cdots & 0 \\
0 & 0 & 0 & 0 & 0 & \lambda_3 & \cdots & 0 \\
\vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \ddots & \vdots \\
0 & 0 & 0 & 0 & 0 & 0 & \cdots & \lambda_n \\
\end{pmatrix} \ .
$$

$$
\mathcal{L} \doteq \begin{pmatrix}
\lambda_1 \mathbb{1}_{d_1} & 0 & \cdots & 0 \\
0 & \lambda_2 \mathbb{1}_{d_2} & \cdots & 0 \\
\vdots & \vdots & \ddots & \vdots \\
0 & 0 & \cdots & \lambda_n \mathbb{1}_{d_n} \\
\end{pmatrix} \ .
$$





$$
\ket{v};
\bra{v};
\braket{u}{v}, \ip{u}{v};
\ketbra{v}{u}, \op{v}{u}, \ket{v}\bra{u};
\expval{A}{\psi};
\matrixel{e_i}{A}{e_j}, \mel{e_i}{A}{e_j}, \bra{e_i}A\ket{e_j};
\expval{A}
$$



