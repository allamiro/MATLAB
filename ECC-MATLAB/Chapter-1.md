# Chapter - 1 
## RSA systems

RSA is a widely-used public-key cryptosystem based on the mathematical principle med≡m(modn)med≡m(modn). It has two main applications: secure data encryption and digital signature verification. The security of RSA relies on the difficulty of factoring large integers.

* Encryption: A plaintext message is transformed into ciphertext using a public key (n,e)(n,e), where nn is the product of two large prime numbers, and ee is a public exponent. The ciphertext is computed as c=me(modn)c=me(modn).

* Decryption: Using the private key (n,d)(n,d), the ciphertext can be decrypted to retrieve the plaintext. The decryption process is m=cd(modn)m=cd(modn).

* Signature Generation: To create a digital signature, a hash of the message is computed, and the private key (n,d)(n,d) is used to encrypt the hash. The signature is s=hd(modn)s=hd(modn).

* Signature Verification: The signature is validated using the public key. The hash derived from the signature, h′=se(modn)h′=se(modn), is compared with the hash of the original message. If they match, the signature is valid.

RSA ensures confidentiality through encryption and integrity/authenticity through signatures. Its computational efficiency depends on modular exponentiation and the careful selection of public and private keys.

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


## Steps to Test the Functions in MATLAB

% RSA Parameters
n = 3233; % Modulus (61 * 53)
e = 17;   % Public exponent
d = 2753; % Private exponent
m = 65;   % Message to encrypt and sign

% Define a simple hash function for testing
H = @(x) sum(double(num2str(x)));



