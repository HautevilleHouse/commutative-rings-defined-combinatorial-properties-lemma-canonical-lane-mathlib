import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure GröbnerBasisPackage where
  idealBasis : IdealBasisPackage
  monomialOrder : MonomialOrderPackage
  leadingTermsGenerate : Prop
  buchbergerCriterion : Prop
  leadingTermsGenerateTerm : leadingTermsGenerate
  buchbergerCriterionTerm : buchbergerCriterion

structure GröbnerBasisEvidence (G : GröbnerBasisPackage) where
  leadingTermsGenerateClosed : G.leadingTermsGenerate
  buchbergerCriterionClosed : G.buchbergerCriterion

def GröbnerBasisClosed (G : GröbnerBasisPackage) : Prop :=
  G.leadingTermsGenerate ∧ G.buchbergerCriterion

theorem gröbner_basis_closed_from_evidence (G : GröbnerBasisPackage) (E : GröbnerBasisEvidence G) :
    GröbnerBasisClosed G := by
  exact And.intro E.leadingTermsGenerateClosed E.buchbergerCriterionClosed

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse
