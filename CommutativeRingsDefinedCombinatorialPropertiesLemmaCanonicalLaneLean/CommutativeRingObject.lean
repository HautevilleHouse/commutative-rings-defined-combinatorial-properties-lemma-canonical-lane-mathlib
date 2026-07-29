import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure CommutativeRingObject where
  carrier : Type
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  additiveCommGroup : Prop
  multiplicativeCommMonoid : Prop
  distributivity : Prop
  combinatorialProperty : Prop
  conclusion : combinatorialProperty

def RingWitnessClosed (O : CommutativeRingObject) : Prop :=
  O.combinatorialProperty

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse