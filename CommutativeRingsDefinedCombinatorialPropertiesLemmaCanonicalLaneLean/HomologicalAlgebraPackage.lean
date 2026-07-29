import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure HomologicalAlgebraPackage where
  ring : Type u
  addition : ring → ring → ring
  multiplication : ring → ring → ring
  zero : ring
  one : ring
  chainComplexes : List (Type v)
  homologyModules : List (Type w)
  extGroups : List (Type x)
  torGroups : List (Type y)
  globalDimension : ℕ
  projectiveDimension : ℕ
  injectiveDimension : ℕ

structure HomologicalAlgebraEvidence (H : HomologicalAlgebraPackage) where
  chainComplexesClosed : H.chainComplexes ≠ []
  homologyModulesClosed : H.homologyModules ≠ []
  extGroupsClosed : H.extGroups ≠ []

def HomologicalAlgebraClosed (H : HomologicalAlgebraPackage) : Prop :=
  H.chainComplexes ≠ [] ∧ H.homologyModules ≠ [] ∧ H.extGroups ≠ []

theorem homological_algebra_closed_from_evidence (H : HomologicalAlgebraPackage) (E : HomologicalAlgebraEvidence H) :
    HomologicalAlgebraClosed H := by
  exact And.intro E.chainComplexesClosed (And.intro E.homologyModulesClosed E.extGroupsClosed)

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse
