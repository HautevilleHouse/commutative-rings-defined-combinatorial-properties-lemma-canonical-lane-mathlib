import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure IntegralExtension where
  baseRing : Type u
  extensionRing : Type v
  inclusion : baseRing → extensionRing
  integralClosure : Set extensionRing
  isIntegral : ∀ x : extensionRing, x ∈ integralClosure
  moduleRank : ℕ
  degree : ℕ
  isFinite : Prop
  isIntegralClosure : Prop

theorem integral_closure_is_subring (e : IntegralExtension) :
    IsSubring e.integralClosure := by
  exact e.isIntegralClosure

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse