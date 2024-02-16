module lecture2 where

-- Peano numbers are inductively-defined data type 
-- The idea is we think numbers this way but compile to binary for performance
data ℕ : Set where
  zero : ℕ
  next : ℕ → ℕ

{-# BUILTIN NATURAL ℕ #-}

_+_ : ℕ → ℕ → ℕ
zero + b = b
next a + b = next (a + b)

four : ℕ
four = 2 + 2

four-is-4 : four = 4 
four-is-4 = refl


