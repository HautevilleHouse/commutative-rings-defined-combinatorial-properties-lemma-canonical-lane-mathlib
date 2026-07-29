import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure LocalCohomologyModule where
  ring : Type u
  ideal : Type v
  moduleType : Type w
  cohomologyGroups : ℕ → Type w
  vanishingThreshold : ℕ
  depth : ℕ
  regularSequenceLength : ℕ
  cohomologicalDimension : ℕ
  isCohenMacaulay : Prop

theorem cohen_macaulay_iff_depth_equals_dim (l : LocalCohomologyModule) :
    l.isCohenMacaulay ↔ l.depth = l.cohomologicalDimension := by
  exact Iff.intro (fun h => h) (fun h => h)

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse