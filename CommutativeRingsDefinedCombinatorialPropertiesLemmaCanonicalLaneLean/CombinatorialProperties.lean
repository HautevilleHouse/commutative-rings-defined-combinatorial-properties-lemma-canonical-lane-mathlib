import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure CombinatorialRingProperties where
  ring : Type u
  plus : ring → ring → ring
  times : ring → ring → ring
  zero : ring
  one : ring
  isCommutative : Prop
  isNoetherian : Prop
  krullDimension : ℕ
  primeIdealCount : ℕ
  combinatorialSpec : Prop

theorem combinatorial_spec_implies (c : CombinatorialRingProperties) :
    c.combinatorialSpec → (c.isCommutative ∧ c.isNoetherian) := by
  intro h
  exact And.intro c.isCommutative c.isNoetherian

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse