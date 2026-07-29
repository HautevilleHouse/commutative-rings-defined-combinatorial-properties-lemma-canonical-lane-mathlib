import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure PrimeIdealPropertySpec (R : Type u) [CommRing R] where
  primeIdealSet : Set (Ideal R)
  isPrimeCondition : ∀ (I : Ideal R), I ∈ primeIdealSet → I.IsPrime
  comaximalCondition : Prop
  intersectionCondition : Prop
  idealCountCondition : Nat

structure PrimeIdealPropertyEvidence (R : Type u) [CommRing R] (P : PrimeIdealPropertySpec R) where
  isPrimeConditionClosed : ∀ (I : Ideal R), I ∈ P.primeIdealSet → I.IsPrime
  comaximalConditionClosed : P.comaximalCondition
  intersectionConditionClosed : P.intersectionCondition
  idealCountConditionClosed : P.idealCountCondition = (Finset.card (Finset.filter (fun (I : Ideal R) => I.IsPrime) (Finset.powerSet (⊤ : Ideal R).carrier)))

structure PrimeIdealPropertyPackage (R : Type u) [CommRing R] where
  spec : PrimeIdealPropertySpec R
  evidence : PrimeIdealPropertyEvidence R spec

def PrimeIdealPropertyClosed {R : Type u} [CommRing R] (P : PrimeIdealPropertyPackage R) : Prop :=
  (∀ (I : Ideal R), I ∈ P.spec.primeIdealSet → I.IsPrime) ∧
  P.spec.comaximalCondition ∧
  P.spec.intersectionCondition ∧
  (P.spec.idealCountCondition = (Finset.card (Finset.filter (fun (I : Ideal R) => I.IsPrime) (Finset.powerSet (⊤ : Ideal R).carrier))))

theorem prime_ideal_property_closed_from_evidence {R : Type u} [CommRing R] (P : PrimeIdealPropertyPackage R) :
    PrimeIdealPropertyClosed P := by
  refine And.intro P.evidence.isPrimeConditionClosed (And.intro P.evidence.comaximalConditionClosed (And.intro P.evidence.intersectionConditionClosed ?_))
  exact P.evidence.idealCountConditionClosed

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse
