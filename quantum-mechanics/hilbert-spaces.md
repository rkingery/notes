# Hilbert Space

We've seen quantum phenomena involve two fundamental ideas: the superposition of probability amplitudes, and the notion of measurement as projection. The mathematical foundation for describing these ideas is linear algebra, specifically the theory of Hilbert spaces, the subject of this chapter.

## Hilbert Spaces

The mathematical setting of quantum mechanics is essentially vector spaces. In physics, we're used to working in vector spaces like ordinary 3-dimensional real space, or 4-dimensional Minkowski spacetime. Quantum mechanics is fundamentally different though. We could be dealing with finite-dimensional vectors of any dimension, not just two or three or four. We could even be dealing with infinite dimensions of sequences, or even continuous spaces of functions. On top of that, in quantum mechanics we're almost always working in *complex* vector spaces, not the real vector spaces we're used to.

For these reasons, in quantum mechanics we'll want to be more intentionally abstract, and assume vectors can be essentially anything and live in spaces of any dimension. To deal with this fact, quantum mechanics uses a special notation introduced by Paul Dirac, known as *Dirac notation*. This notation makes no assumptions about what kinds of vectors we're dealing with, other than that we have some notion of inner product between vectors. All that's required is states behave abstractly like vectors belonging to some kind of vector space. Dirac notation has become so useful and powerful that it can be thought of as the de facto *language* of quantum mechanics.

To deal with these more general kinds of vectors, we assume they live in special kind of vector space called a Hilbert space. Mathematically, a *Hilbert space* is a *complete inner product space*. For our purposes, we can think of a Hilbert space as a complex-valued vector space, endowed with an inner product, where every vector in the space has a finite norm. Whether these vectors are 3-dimensional or infinite sequences or continuous functions makes no material difference.

We'll define the postulates of quantum mechanics in a later chapter, so for now we'll assume only a few things for mathematical purposes. First, we'll assume that quantum mechanical states, whatever these are, correspond to vectors that live in some Hilbert space, denoted $\mathcal{H}$. In Dirac notation, we denote state vectors by the symbol $\ket{v}$, called a *ket* vector. To be explicit that a state vector $\ket{v}$ belongs to a specific Hilbert space $\mathscr{H}$, we'll use the notation $\ket{v} \in \mathscr{H}$, which you can read as "$\ket{v}$ is in $\mathscr{H}$".

We require that a Hilbert space satisfy all the properties of a mathematical vector space. It must contain a zero vector $\ket{0}$, we should be able to add and subtract vectors, we should be able to multiply them by scalars, etc. We can summarize these requirements by requiring that $\mathscr{H}$ contain a zero vector $\ket{0}$ and be closed under linear superposition. For any two state vectors $\ket{v} \in \mathscr{H}$ and $\ket{u} \in \mathscr{H}$, and any two complex scalars $\alpha$ and $\beta$, we require that the linear superposition $\alpha \ket{u} + \beta \ket{v}$ be in $\mathscr{H}$.

Next, we require that the Hilbert space be endowed with an inner product. That is, $\mathscr{H}$ is not just a vector space, but a vector space that comes with a special function attached to it called an *inner product* that maps pairs of state vectors to a complex number. Formally, an inner product is a function attached to $\mathscr{H}$ that maps any two state vectors $\ket{u}, \ket{v} \in \mathscr{H}$ to a special complex number $\ip{u}{v}$, which you can read as "$u$ bracket $v$", respecting the following properties:

- Positive Definite: For any state vector $\ket{v} \in \mathscr{H}$, $\ip{v}{v} \geq 0$. Moreover, $\ip{v}{v} = 0$ only when $\ket{v} = \ket{0}$.
- Skew Symmetry: For any two state vectors $\ket{u}, \ket{v} \in \mathscr{H}$, $\ip{u}{v} = \ip{v}{u}^*$.

- Linearity: For any three state vectors  $\ket{u}, \ket{v}, \ket{w} \in \mathscr{H}$, and any two complex numbers $\alpha$ and $\beta$,

$$
\ip{u}{\alpha v + \beta w} = \alpha \ip{u}{v} + \beta \ip{u}{w} \ .
$$

The positive definite property says that the inner product of a vector with itself should always be non-negative. The skew symmetry property says that if we reverse the order of the inner product then we have to complex conjugate it. The linearity property says that the inner product is linear over vectors and scalars, except with one caveat: Due to skew symmetry, if we reverse the order then we have to complex conjugate the scalars $\alpha$ and $\beta$ when we pull them out of the inner product,
$$
\ip{\alpha v + \beta w}{u} = \alpha^* \ip{v}{u} + \beta^* \ip{w}{u} \ .
$$
Though it's perhaps not obvious, these are exactly the properties we need to define the usual inner products we're used to. The positive definite property is what allows us to define a notion of vector norm or length. The linearity property is what gives us the usual linearity property that inner products satisfy. The skew symmetry property is a quirk of dealing with complex-valued vectors, where we have to multiply complex numbers by their complex conjugates to get real numbers.

From the inner product, we define the norm of a state vector in the usual way. Given a vector $\ket{v} \in \mathscr{H}$, its *norm* is defined as
$$
\norm{v} \equiv \sqrt{\ip{v}{v}} \ .
$$
We can think of this definition of the norm as the most general form of the Pythagorean theorem. It gives us a notion of length for state vectors. Indeed, the requirement that Hilbert spaces have an inner product is equivalent to requiring that they have a *geometry*, since we can use the inner product to define a notion of length for objects in the space and a notion of angle between objects in the space. If we wanted to, we could define the angle $\vartheta$ between two state vectors $\ket{u}$ and $\ket{v}$ in the usual way,

$$
\cos\vartheta \equiv \frac{\ip{u}{v}}{\norm{u} \norm{v}} \ ,
$$
but we won't really use this property much in practice. The norm, however, is much more central to the theory.

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

As our final example of a Hilbert space, and indeed the only remaining class of Hilbert spaces we'll see in this course, consider the vector space of complex-valued continuous functions of some real variable $0 \leq x \leq 1$. This is called continuous space, and sometimes denoted $\mathcal{C}[0,1]$.

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

The example we gave was specifically for complex-valued functions defined on the interval $0 \leq x \leq 1$, but we can define $L_2$ spaces over any interval $a \leq x \leq b$ and even over the entire real line. The same discussion extends to these cases as well.

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

We can always convert state vectors into dual vectors and vice versa, but when doing so we must respect the skew symmetry property: Anytime we convert a linear superposition $\alpha \ket{u} + \beta \ket{v}$ into a dual vector or vice versa, we must be sure to complex conjugate all the scalar factors,
$$
\alpha \ket{u} + \beta \ket{v} \quad \leftrightarrow \quad \alpha^* \bra{u} + \beta^* \bra{v} \ .
$$
With this caveat, dual vectors inherit all the usual properties that state vectors have. For example, if $\{\ket{e_\alpha}\}$ is a basis for the space of state vectors, then its dual basis $\{\bra{e_\alpha}\}$ is a state vector for the space of dual vectors. The expansion of any dual vector $\bra{v}$ looks the same except the basis components $v_\alpha = \ip{e_\alpha}{v}$ must be complex conjugated,
$$
\bra{v} = \sum_\alpha v_\alpha^* \bra{e_\alpha} \ .
$$

## Linear Operators

In linear algebra, we know that matrices can act on vectors to produce other vectors. The extension of the notion of a matrix to Hilbert spaces is the *linear operator*. We'll first define the linear operator, introduce a few common operators we'll see a lot of, then show how to represent linear operators as matrices in the next section.

An *operator* is a function $\mathcal{O}$ that maps state vectors in the Hilbert space $\mathscr{H}$ to other state vectors in $\mathscr{H}$,
$$
\mathcal{O}: \mathscr{H} \to \mathscr{H} \quad , \quad \ket{w} = \mathcal{O} \ket{v} \ .
$$
The most important class of operators to us is the linear operator. A *linear operator* is an operator $\mathcal{L}: \mathscr{H} \to \mathscr{H}$ that satisfies the property of *linearity*. That is, for any two state vectors $\ket{u}, \ket{v} \in \mathscr{H}$ and any two complex numbers $\alpha, \beta$, the linear operator must satisfy the linearity property
$$
\mathcal{L} (\alpha \ket{u} + \beta \ket{v}) = \alpha \mathcal{L} \ket{u} + \beta \mathcal{L} \ket{v} \ .
$$
In other words, a linear operator is an operator that distributes over sums and scalars can be factored out from. This, of course, is exactly the fundamental property that matrices must satisfy as well. Indeed, linear operators are essentially matrices, as we'll show when we discuss representations.

Since linear operators are essentially matrices, they possess the usual algebraic properties of matrices. We can linearly superpose them, and we can multiply them together to get new linear operators. If $\mathcal{L}$ and $\mathcal{K}$ are two linear operators acting on $\mathscr{H}$, we can get a new linear operator $\mathcal{M}: \mathscr{H} \to \mathscr{H}$ by taking any linear superposition of them,
$$
\mathcal{M} = \alpha \mathcal{L} + \beta \mathcal{K} \ .
$$
We can also define a notion of multiplication for linear operators by composing them as functions. For example, the operator product $\mathcal{K} \mathcal{L}$ is defined by first applying $\mathcal{L}$ to some ket $\ket{v}$, and then applying $\mathcal{K}$ to the intermediate ket $\ket{w} = \mathcal{L} \ket{v}$,
$$
\mathcal{K} \mathcal{L} \ket{v} \equiv \mathcal{K} \big(\mathcal{L} \ket{v} \big) = \mathcal{K} \ket{w} \ .
$$
Since both operators act on the same Hilbert space with the same dimension, the operator product will always exist, similar to how we can always multiply together two square matrices.

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
Since both sides must equal for any $\ket{v}$, the operators acting on $\ket{v}$ must be equal as well. We've thus proven the following operator identity, known as the *resolution of the identity*,
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
This identity may seem quant, but as we'll see it's very useful in quantum mechanics, especially for proving other identities. The reason it's so useful is because we can always insert an identity operator into the middle of some bracket equation and expand it out, effectively forcing a basis expansion into the equation, which we can then manipulate to simplify the result.

### Representations

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

### Adjoint and Inverse Operators

We can use matrix representations to extend the important notions of matrix adjoints and inverses to linear operators. Suppose a linear operator $\mathcal{L}: \mathcal{H} \to \mathcal{H}$ has a matrix representation $L_{ij} = \bra{e_i} \mathcal{L} \ket{e_j}$ in some orthonormal basis $\{\ket{e_i}\}$.

We define the *adjoint* of $\mathcal{L}$ as the unique operator $\mathcal{L}^\dagger$ satisfying the following relation between any two vectors $\ket{u}$ and $\ket{v}$,
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

Finally, both the adjoint and inverse operators inherit the usual property that the adjoint or inverse of a product is equal to the adjoint or inverse of each operator, but in reverse order. That is, for any two operators $\mathcal{L}$ and $\mathcal{K}$ we have
$$
(\mathcal{L} \mathcal{K})^\dagger = \mathcal{K}^\dagger \mathcal{L}^\dagger \quad , \quad (\mathcal{L} \mathcal{K})^{-1} = \mathcal{K}^{-1} \mathcal{L}^{-1} \ .
$$

### Hermitian and Anti-Hermitian Operators

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
We often say that Hermitian operators *generate* unitary transformations, in the sense that we can think of any infinitesimal shift $\delta\mathcal{H}$ in $\mathcal{H}$ as generating an infinitesimal transformation $\delta\mathcal{U}$ in $\mathcal{U}$ of the form $\delta\mathcal{U} = \mathbb{1} + i\delta\mathcal{H}$. Of course, for this to make sense the Hermitian operator $\mathcal{H}$ needs to be continuous. We'll revisit this issue later.


$$

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



