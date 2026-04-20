# Hilbert Spaces

We've seen quantum phenomena involve two fundamental ideas: the superposition of probability amplitudes, and the notion of measurement as projection. The mathematical foundation for describing these ideas is *linear algebra*, specifically the theory of *Hilbert spaces*.

## Dirac Notation

The notation of ordinary linear algebra is cumbersome for quantum mechanics, where we may be dealing with vector spaces of any number of finite dimensions, countably infinite dimensions, or even uncountably infinite dimensions. Dirac proposed an efficient notation that is near universally used in quantum mechanics nowadays, now known as *Dirac Notation*.

We assume that all vectors of interest live in some complex-valued vector space $\mathcal{H}$ of arbitrary dimension, called a *Hilbert Space*. We require that any vector in this space be complex-valued and *square-normalizable*, and that the vector space itself have a well-defined notion of inner product attached to it.

Any vector in the Hilbert space is denoted by a *ket*, denoted $|v\rangle$. We can indicate that a vector $|v\rangle$ lives in the Hilbert space $\mathcal{H}$ by writing $|v\rangle \in \mathcal{H}$. We require that ket vectors respect the principle of superposition. If $|u\rangle \in \mathcal{H}$ and $|v\rangle \in \mathcal{H}$, then for any complex numbers $\alpha$ and $\beta$, the superposition of these ket vectors also live in $\mathcal{H}$,
$$
\alpha |u\rangle + \beta |v\rangle \in \mathcal{H} \ .
$$
Every ket vector $|v\rangle$ has associated to it a *dual vector* $\langle v |$, called a *bra* vector, with the property that $\langle v |$ is the *adjoint* or conjugate transpose of the ket vector $|v\rangle$, i.e. $\langle v | \equiv |v\rangle^\dagger$. Bra vectors inherit the principle of superposition from ket vectors, so the dual vector of the superposition $\alpha |u\rangle + \beta |v\rangle$ is just $\langle u | \alpha^* + \langle v | \beta^*$.

To write an inner product between two vectors $|u\rangle , |v\rangle \in \mathcal{H}$ in Dirac Notation, we turn one of them into a bra vector and left-concatenate it with the remaining ket vector to form a *bra-ket* or *bracket*,
$$
\langle u | v \rangle \equiv \langle u | \cdot | v \rangle \ .
$$
Since the Hilbert space must have an inner product defined, we can always be assured that $\langle u | v \rangle$ will exist for any two vectors. All valid inner products must respect the usual rules for the complex inner product:

- The inner product $\langle u | v \rangle$ must be a scalar real number.
- The inner product of a vector with itself must be non-negative: $\langle v | v \rangle \geq 0$.
- Swapping the order of the inner product requires complex conjugation: $\langle v | u \rangle = \langle u | v \rangle^*$.
- The inner product is complex bilinear, meaning for any vectors $|u\rangle, |v\rangle, |w\rangle$ and complex numbers $\alpha, \beta$ we have:
  - $\langle u|\alpha v + \beta w \rangle = \alpha \langle u | v \rangle + \beta \langle u | w\rangle$,
  - $\langle \alpha u + \beta v | w \rangle = \alpha^* \langle u | w \rangle + \beta^* \langle v | w \rangle$.

The actual definition of the inner product will vary depending on what kind of Hilbert space we're in and its dimension. Typically we'll be dealing with three different types of Hilbert spaces:

- Finite dimensional: A finite-dimensional complex vector space, often denoted $\mathbb{C}^d$ for $d$ dimensions. In this space, the inner product is defined exactly how we'd expect. If $|u\rangle$ has a representation $(u_1, u_2, \cdots, u_d)$ in some basis and $|v\rangle$ has a representation $(v_1, v_2, \cdots, v_d)$ in that same basis, we define
  $$
  \langle u | v \rangle \equiv \sum_{i=1}^d u_i^* v_i \ .
  $$

- Countably infinite dimensional: An infinite-dimensional sequence of complex numbers, often denoted $\ell_2$. In this space, the inner product is defined the same way as in finite dimensional spaces, except the sum becomes infinite. Given two infinite complex-valued sequences $(u_1, u_2, \cdots)$ and $(v_1, v_2, \cdots)$ representing $|u\rangle, |v\rangle$ in some infinite basis, we define
  $$
  \langle u | v \rangle \equiv \sum_{i=1}^\infty u_i^* v_i \ .
  $$
  To be a valid inner product, we also must require that the sum converge to a finite number, which is equivalent to requiring that each vector be *square-normalizable*, something we'll define soon.

- Uncountably infinite dimensional: An continuous-dimensional sequence of complex numbers, often denote $L_2$. In this space, the inner product is now defined by replacing the infinite sum above with an integral over some continuous index $x$. Given two continuous functions $u(x)$ and $v(x)$ representing $|u\rangle, |v\rangle$ in some continuous basis, we define
  $$
  \langle u | v \rangle \equiv \int_{-\infty}^\infty dx \ u(x)^* v(x) \ .
  $$
  Again, we require that this integral converge to be a valid inner product, which is equivalent to requiring that the vectors themselves be square-normalizable. The integration limits need not be infinite. One or both may be finite depending on the particular problem at hand.

From the inner product we can define the *norm* of a vector in the usual way. Given a ket vector $|v\rangle \in \mathcal{H}$, we define its norm by
$$
||v|| \equiv \sqrt{\langle v | v \rangle} \ .
$$
By the positivity requirement of the inner product, we can be assured that this number will always exist and be non-negative for any ket vector in the Hilbert space. We can now define what exactly we mean by square-normalizable. For $\mathcal{H}$ to be a valid Hilbert space, we require that any vector $|v\rangle \in \mathcal{H}$ have a finite-norm, or equivalently that
$$
||v||^2 = \langle v | v \rangle < \infty \ .
$$
This will always be true for finite-dimensional spaces, but in infinite-dimensional spaces it's something we have to enforce. For example, not every infinite sequence of complex numbers is square-normalizable, e.g. $(1, 1, 1, \cdots)$. The only vectors allowed in the Hilbert space are the ones that are square-normalizable.

If $||v|| = 1$, or equivalently $\langle v | v \rangle = 1$, we say $|v\rangle$ is a *unit vector*. If two vectors $|u\rangle, |v\rangle$ have a vanishing inner product $\langle u | v \rangle = 0$, we say these vectors are *orthogonal*. If they're both unit vectors as well as orthogonal, we say they're *orthonormal* vectors.

Importantly, we can also define the notion of a *basis* in Hilbert spaces. We require that Hilbert spaces also be *complete*, meaning that we can *always* find a basis for a given Hilbert space. The completeness requirement is pointless for finite-dimensional spaces, but necessary for infinite dimensional spaces. In particular, an *orthonormal basis* $\{|e_i \rangle \}$ is a set of mutually orthogonal unit vectors that span the Hilbert space, meaning any two basis vectors $|e_i \rangle, |e_j \rangle$ in the set must satisfy the orthonormality condition
$$
\langle e_i | e_j \rangle = \delta_{ij} = \begin{cases}
1 & i=j \\
0 & i\neq j \\
\end{cases} \ ,
$$
where $\delta_{ij}$ is the Kronecker delta. In uncountably infinite Hilbert spaces a similar condition exists, except with the Kronecker delta replaced by a Dirac delta function,
$$
\langle e(x) | e(x') \rangle = \delta(x - x') \ .
$$
Importantly, this means basis vectors in uncountably infinite Hilbert spaces are necessarily not square-normalizable, and hence technically don't live in the Hilbert space at all. They are still useful for notational purposes, however.

Given an orthonormal basis, we can expand any ket vector in terms of that basis using the principle of superposition,
$$
|v\rangle = \sum_i v_i |e_i\rangle \ .
$$
At this point it's useful to introduce a mathematical trick that's used a lot in quantum mechanics: the resolution of the identity. This trick can be used to quickly derive a lot of formulas, including the one above. To do that, we first represent the *outer product* between two vectors $|u\rangle, |v\rangle$ in Dirac notation by concatenating them in the *opposite order*,
$$
|u \rangle \langle v | \ .
$$
Unlike the *inner product*, the *outer product* is an operator, not a real number. Such an operator is called a *projection operator*, because it acts to project one vector onto the axis of the other.



Given any orthonormal basis $\{|e_i \rangle \}$, we can resolve the *identity operator* $\mathbb{1}$ by
$$
\mathbb{1} \equiv \sum_i |e_i\rangle\langle e_i | \ .
$$
