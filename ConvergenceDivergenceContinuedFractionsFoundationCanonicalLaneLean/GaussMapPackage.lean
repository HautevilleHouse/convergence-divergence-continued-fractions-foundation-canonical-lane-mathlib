import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure GaussMapPackage where
  gaussMap : (0,1) → ℕ × (0,1)
  invariantMeasure : Prop
  ergodicity : Prop
  mixing : Prop
  invariantMeasureTerm : invariantMeasure
  ergodicityTerm : ergodicity
  mixingTerm : mixing

def GaussMapClosed (P : GaussMapPackage) : Prop :=
  P.invariantMeasure ∧ P.ergodicity ∧ P.mixing

theorem gauss_map_closed_from_package (P : GaussMapPackage) :
    GaussMapClosed P := by
  exact And.intro P.invariantMeasureTerm (And.intro P.ergodicityTerm P.mixingTerm)

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse