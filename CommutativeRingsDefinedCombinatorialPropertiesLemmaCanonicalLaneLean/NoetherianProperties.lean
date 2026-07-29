import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure NoetherianPropertySpec (R : Type u) [CommRing R] where
  ascendingChainCondition : Prop
  finiteGeneration : Prop
  idealAscendingCondition : Prop
  finitelyGeneratedCondition : Prop
  dimensionFinite : Prop

structure NoetherianPropertyEvidence (R : Type u) [CommRing R] (N : NoetherianPropertySpec R) where
  ascendingChainConditionClosed : N.ascendingChainCondition
  finiteGenerationClosed : N.finiteGeneration
  idealAscendingConditionClosed : N.idealAscendingCondition
  finitelyGeneratedConditionClosed : N.finitelyGeneratedCondition
  dimensionFiniteClosed : N.dimensionFinite

structure NoetherianPropertyPackage (R : Type u) [CommRing R] where
  spec : NoetherianPropertySpec R
  evidence : NoetherianPropertyEvidence R spec

def NoetherianPropertyClosed {R : Type u} [CommRing R] (N : NoetherianPropertyPackage R) : Prop :=
  N.spec.ascendingChainCondition ∧ N.spec.finiteGeneration ∧ N.spec.idealAscendingCondition ∧ N.spec.finitelyGeneratedCondition ∧ N.spec.dimensionFinite

theorem noetherian_property_closed_from_evidence {R : Type u} [CommRing R] (N : NoetherianPropertyPackage R) : NoetherianPropertyClosed N := by
  exact And.intro N.evidence.ascendingChainConditionClosed (And.intro N.evidence.finiteGenerationClosed (And.intro N.evidence.idealAscendingConditionClosed (And.intro N.evidence.finitelyGeneratedConditionClosed N.evidence.dimensionFiniteClosed)))

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse
