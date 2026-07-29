import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure ConvergenceDiscriminant where
  partialDenominators : List ℕ
  convergentSequence : ℕ → ℚ
  convergenceRate : Prop
  divergenceThreshold : Prop
  discriminantValue : ℚ

structure ConvergenceDiscriminantEvidence (C : ConvergenceDiscriminant) where
  convergenceRateClosed : C.convergenceRate
  divergenceThresholdClosed : C.divergenceThreshold

def ConvergenceDiscriminantClosed (C : ConvergenceDiscriminant) : Prop :=
  C.convergenceRate ∧ C.divergenceThreshold

theorem convergence_discriminant_closed_from_evidence (C : ConvergenceDiscriminant)
    (E : ConvergenceDiscriminantEvidence C) : ConvergenceDiscriminantClosed C := by
  exact And.intro E.convergenceRateClosed E.divergenceThresholdClosed

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse