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


```
% rsa_encrypt.m
% Implements RSA encryption.
function c = rsa_encrypt(m, n, e)
    % Input: m (plaintext), n (modulus), e (public exponent)
    % Output: c (ciphertext)
    c = mod(m^e, n);
end
```
```
% rsa_decrypt.m
% Implements RSA decryption.
function m = rsa_decrypt(c, n, d)
    % Input: c (ciphertext), n (modulus), d (private exponent)
    % Output: m (plaintext)
    m = mod(c^d, n);
end
```

```
% rsa_sign.m
% Implements RSA signature generation.
function s = rsa_sign(m, n, d, H)
    % Input: m (message), n (modulus), d (private exponent), H (hash function handle)
    % Output: s (signature)
    h = H(m); % Compute hash of the message
    s = mod(h^d, n); % Compute signature
end
```

```
% rsa_verify.m
% Implements RSA signature verification.
function isValid = rsa_verify(m, s, n, e, H)
    % Input: m (message), s (signature), n (modulus), e (public exponent), H (hash function handle)
    % Output: isValid (boolean indicating if the signature is valid)
    h = H(m); % Compute hash of the message
    h_prime = mod(s^e, n); % Compute hash from signature
    isValid = (h == h_prime); % Check if hashes match
end

```





