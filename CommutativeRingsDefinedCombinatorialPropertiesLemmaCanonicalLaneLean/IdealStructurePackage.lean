import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure IdealStructurePackage where
  ring : Type u
  addition : ring → ring → ring
  multiplication : ring → ring → ring
  zero : ring
  one : ring
  ideals : List (Set ring)
  primeIdeals : List (Set ring)
  maximalIdeals : List (Set ring)
  radicalProperty : Prop
  nilradicalDefined : Prop
  jacobsonRadicalDefined : Prop

structure IdealStructureEvidence (P : IdealStructurePackage) where
  radicalPropertyClosed : P.radicalProperty
  nilradicalDefinedClosed : P.nilradicalDefined
  jacobsonRadicalDefinedClosed : P.jacobsonRadicalDefined

def IdealStructureClosed (P : IdealStructurePackage) : Prop :=
  P.radicalProperty ∧ P.nilradicalDefined ∧ P.jacobsonRadicalDefined

theorem ideal_structure_closed_from_evidence (P : IdealStructurePackage) (E : IdealStructureEvidence P) :
    IdealStructureClosed P := by
  exact And.intro E.radicalPropertyClosed (And.intro E.nilradicalDefinedClosed E.jacobsonRadicalDefinedClosed)

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse
