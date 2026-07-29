import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure MonomialOrderPackage where
  ring : Type u
  multiplicativeMonoid : CommMonoid ring
  totalPreorder : ring → ring → Prop
  wellFounded : Prop
  respectsMultiplication : Prop
  wellFoundedTerm : wellFounded
  respectsMultiplicationTerm : respectsMultiplication

structure MonomialOrderEvidence (M : MonomialOrderPackage) where
  wellFoundedClosed : M.wellFounded
  respectsMultiplicationClosed : M.respectsMultiplication

def MonomialOrderClosed (M : MonomialOrderPackage) : Prop :=
  M.wellFounded ∧ M.respectsMultiplication

theorem monomial_order_closed_from_evidence (M : MonomialOrderPackage) (E : MonomialOrderEvidence M) :
    MonomialOrderClosed M := by
  exact And.intro E.wellFoundedClosed E.respectsMultiplicationClosed

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse
