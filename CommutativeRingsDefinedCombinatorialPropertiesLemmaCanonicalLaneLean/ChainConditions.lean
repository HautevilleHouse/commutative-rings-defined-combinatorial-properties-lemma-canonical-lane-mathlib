import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure ChainConditionSpec (R : Type u) [CommRing R] where
  chainLength : ℕ
  chainExistence : Prop
  maximalChainProperty : Prop
  chainUniqueness : Prop
  lengthBound : ℕ

structure ChainConditionEvidence (R : Type u) [CommRing R] (C : ChainConditionSpec R) where
  chainExistenceClosed : C.chainExistence
  maximalChainPropertyClosed : C.maximalChainProperty
  chainUniquenessClosed : C.chainUniqueness
  lengthBoundClosed : C.lengthBound = C.chainLength

structure ChainConditionPackage (R : Type u) [CommRing R] where
  spec : ChainConditionSpec R
  evidence : ChainConditionEvidence R spec

def ChainConditionClosed {R : Type u} [CommRing R] (C : ChainConditionPackage R) : Prop :=
  C.spec.chainExistence ∧ C.spec.maximalChainProperty ∧ C.spec.chainUniqueness ∧ (C.spec.lengthBound = C.spec.chainLength)

theorem chain_condition_closed_from_evidence {R : Type u} [CommRing R] (C : ChainConditionPackage R) : ChainConditionClosed C := by
  refine And.intro C.evidence.chainExistenceClosed (And.intro C.evidence.maximalChainPropertyClosed (And.intro C.evidence.chainUniquenessClosed C.evidence.lengthBoundClosed))

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse
