import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure RingWitnessClosed (O : RingAdmissibleObject) : Prop where
  carrierFinite : Fintype O.carrier
  dimensionBound : Nat
  combinatorialProperty : Prop

def CombinatorialPropertyPackage (A : AdmissibleClass) : Prop :=
  A.object.combinatorialPropertySatisfied

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse