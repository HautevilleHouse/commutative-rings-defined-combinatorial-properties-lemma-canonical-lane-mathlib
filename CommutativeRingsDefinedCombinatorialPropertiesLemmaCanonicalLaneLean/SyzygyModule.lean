import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure SyzygyModulePackage where
  gröbnerBasis : GröbnerBasisPackage
  freeResolution : Prop
  syzygyGenerators : Prop
  freeResolutionTerm : freeResolution
  syzygyGeneratorsTerm : syzygyGenerators

structure SyzygyModuleEvidence (S : SyzygyModulePackage) where
  freeResolutionClosed : S.freeResolution
  syzygyGeneratorsClosed : S.syzygyGenerators

def SyzygyModuleClosed (S : SyzygyModulePackage) : Prop :=
  S.freeResolution ∧ S.syzygyGenerators

theorem syzygy_module_closed_from_evidence (S : SyzygyModulePackage) (E : SyzygyModuleEvidence S) :
    SyzygyModuleClosed S := by
  exact And.intro E.freeResolutionClosed E.syzygyGeneratorsClosed

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse
