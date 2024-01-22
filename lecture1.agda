module lecture1 where 

data _+_ (A : Set) (B : Set) : Set where 
  left : A -> A + B
  right : B -> A + B
 
record _*_ (A : Set) (B : Set) : Set where 
  field 
    first : A 
    second : B

swap-+ : {A : Set} -> {B : Set} -> A + B -> B + A 
swap-+ (left x) = right x
swap-+ (right x) = left x

swap-* : {A : Set} -> {B : Set} -> A * B -> B * A 
swap-* record { first = a ; second = b } = record { first = b ; second = a }


fold-+ : {A A' B B' : Set} -> (A -> A') -> (B -> B') -> A + B -> A' + B' 
fold-+ f _ (left x) = left (f x)
fold-+ _ g (right x) = right (g x)
