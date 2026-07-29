import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure CommutativeRingAdmittedObject where
  ring : Type
  commutative : Prop
  combinatorialProperty : Prop
  propertyHold : Prop
  conclusion : propertyHold

def CommutativeRingWitnessClosed (O : CommutativeRingAdmittedObject) : Prop :=
  O.propertyHold

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse