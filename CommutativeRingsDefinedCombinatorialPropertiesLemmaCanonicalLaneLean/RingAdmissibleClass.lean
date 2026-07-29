import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure RingAdmissibleObject where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  commutativeAddition : ∀ a b : carrier, addition a b = addition b a
  associativeAddition : ∀ a b c : carrier, addition (addition a b) c = addition a (addition b c)
  zeroAdd : ∀ a : carrier, addition zero a = a
  additiveInverse : carrier → carrier
  leftAdditiveInverse : ∀ a : carrier, addition a (additiveInverse a) = zero
  commutativeMultiplication : ∀ a b : carrier, multiplication a b = multiplication b a
  associativeMultiplication : ∀ a b c : carrier, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  oneMul : ∀ a : carrier, multiplication one a = a
  distribLeft : ∀ a b c : carrier, multiplication a (addition b c) = addition (multiplication a b) (multiplication a c)
  distribRight : ∀ a b c : carrier, multiplication (addition a b) c = addition (multiplication a c) (multiplication b c)

structure AdmissibleClass where
  object : RingAdmissibleObject
  combinatorialPropertySatisfied : Prop
  remainderRecorded : Prop
  gateWitness : combinatorialPropertySatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RingWitnessClosed A.object ∧ (A.combinatorialPropertySatisfied ∨ A.remainderRecorded)

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse