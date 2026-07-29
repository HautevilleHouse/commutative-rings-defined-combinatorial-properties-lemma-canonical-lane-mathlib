import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure CombinatorialWitnessPackage where
  ring : Type u
  addition : ring → ring → ring
  multiplication : ring → ring → ring
  zero : ring
  one : ring
  generatingSet : Set ring
  relations : List (ring × ring)
  resolutionModules : List (Type v)
  bettiNumbers : List ℕ
  regularity : ℕ
  depth : ℕ

structure CombinatorialWitnessEvidence (C : CombinatorialWitnessPackage) where
  generatingSetClosed : C.generatingSet ≠ {}
  relationsClosed : C.relations ≠ []
  bettiNumbersClosed : C.bettiNumbers ≠ []

def CombinatorialWitnessClosed (C : CombinatorialWitnessPackage) : Prop :=
  C.generatingSet ≠ {} ∧ C.relations ≠ [] ∧ C.bettiNumbers ≠ []

theorem combinatorial_witness_closed_from_evidence (C : CombinatorialWitnessPackage) (E : CombinatorialWitnessEvidence C) :
    CombinatorialWitnessClosed C := by
  exact And.intro E.generatingSetClosed (And.intro E.relationsClosed E.bettiNumbersClosed)

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse
