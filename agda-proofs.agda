{-# OPTIONS --guardedness #-}

module agda-proofs where

open import IO
open import Agda.Builtin.String
open import Logic

name : Greeting -> String
name _ = "hello, Agda"

main : Main
main = run (putStrLn (name greet))
