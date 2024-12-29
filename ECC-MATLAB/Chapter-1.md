# Chapter - 1 
## RSA systems

```
Algorithm 1.1 RSA key pair generation

INPUT: Security parameter l.

OUTPUT: RSA public key (n,e) and private key d.

1. Randomly select two primes p and q of the same bitlength l/2.
2. Compute n = pq and φ= (p−1)(q−1).
3. Select an arbitrary integer e with 1 < e < φ and gcd(e,φ)= 1.
4. Compute the integer d satisfying 1 < d < φ and ed ≡ 1 (mod φ).
5. Return(n,e,d).

```


