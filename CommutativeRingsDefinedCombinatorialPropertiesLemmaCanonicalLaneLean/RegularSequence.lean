import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure RegularSequencePackage (A : AdmissibleClass) where
  sequence : List A.object.carrier
  isRegular : Prop
  length : Nat
  depthProperty : Prop

def RegularSequenceClosed (R : RegularSequencePackage A) : Prop :=
  R.isRegular ∧ R.depthProperty

theorem regular_sequence_evidence_to_closed (A : AdmissibleClass) (R : RegularSequencePackage A) (h : R.isRegular) (h2 : R.depthProperty) : RegularSequenceClosed R :=
  And.intro h h2

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse