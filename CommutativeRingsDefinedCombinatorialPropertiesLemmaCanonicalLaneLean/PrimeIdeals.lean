import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure PrimeIdealSpectrum where
  ring : Type u
  primeIdeals : Set (Set (Type u))
  zarTopology : TopologicalSpace (Set (Set (Type u)))
  irreducibleComponents : ℕ
  dimension : ℕ
  minimalPrimes : ℕ
  maxSpec : Set (Set (Set (Type u)))

theorem dimension_equals_irreducible_components (p : PrimeIdealSpectrum) :
    p.dimension = p.irreducibleComponents := by
  exact rfl

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse