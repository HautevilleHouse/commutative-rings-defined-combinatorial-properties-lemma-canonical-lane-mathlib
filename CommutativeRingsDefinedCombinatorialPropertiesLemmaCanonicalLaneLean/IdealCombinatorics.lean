import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure IdealBasisPackage where
  ring : Type u
  additiveGroup : AddCommGroup ring
  multiplication : Ring ring
  idealGenerators : List ring
  generatingSetClosed : Prop
  generatingSetClosedTerm : generatingSetClosed

structure IdealBasisEvidence (I : IdealBasisPackage) where
  generatingSetClosedClosed : I.generatingSetClosed

def IdealBasisClosed (I : IdealBasisPackage) : Prop :=
  I.generatingSetClosed

theorem ideal_basis_closed_from_evidence (I : IdealBasisPackage) (E : IdealBasisEvidence I) :
    IdealBasisClosed I := by
  exact E.generatingSetClosedClosed

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse
