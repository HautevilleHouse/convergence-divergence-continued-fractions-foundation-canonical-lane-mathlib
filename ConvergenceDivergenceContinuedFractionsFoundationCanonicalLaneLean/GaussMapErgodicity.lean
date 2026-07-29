import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure GaussMap where
  domain : Set ℝ
  map : ℝ → ℝ
  invariantMeasure : Prop
  ergodicity : Prop
  mixingProperties : Prop

structure GaussMapEvidence (G : GaussMap) where
  invariantMeasureClosed : G.invariantMeasure
  ergodicityClosed : G.ergodicity
  mixingPropertiesClosed : G.mixingProperties

def GaussMapErgodicityClosed (G : GaussMap) : Prop :=
  G.invariantMeasure ∧ G.ergodicity ∧ G.mixingProperties

theorem gauss_map_ergodicity_closed_from_evidence (G : GaussMap)
    (E : GaussMapEvidence G) : GaussMapErgodicityClosed G := by
  exact And.intro E.invariantMeasureClosed
    (And.intro E.ergodicityClosed E.mixingPropertiesClosed)

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse