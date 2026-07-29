import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure BorelCantelliContinuedFractionPackage where
  continuedFractionExpansion : (ℕ → ℝ)
  approximationCoefficients : List ℝ
  divergenceCondition : Prop
  borelCantelliThreshold : ℝ
  divergenceEvent : Set (ℕ → ℝ)
  limsupEvent : Set (ℕ → ℝ)
  borelCantelliCondition : Prop

structure BorelCantelliContinuedFractionEvidence (B : BorelCantelliContinuedFractionPackage) where
  divergenceConditionClosed : B.divergenceCondition
  borelCantelliConditionClosed : B.borelCantelliCondition

def BorelCantelliContinuedFractionClosed (B : BorelCantelliContinuedFractionPackage) : Prop :=
  B.divergenceCondition ∧ B.borelCantelliCondition

theorem borel_cantelli_continued_fraction_closed_from_evidence
    (B : BorelCantelliContinuedFractionPackage)
    (E : BorelCantelliContinuedFractionEvidence B) :
    BorelCantelliContinuedFractionClosed B := by
  exact And.intro E.divergenceConditionClosed E.borelCantelliConditionClosed

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse