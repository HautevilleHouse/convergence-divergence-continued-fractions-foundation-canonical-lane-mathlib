import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure ContinuedFractionConvergence where
  continuedFraction : ℕ → ℝ
  convergentSequence : ℕ → ℚ
  convergenceCondition : Prop
  divergenceCondition : Prop
  classification : Prop

structure ContinuedFractionConvergenceEvidence (C : ContinuedFractionConvergence) where
  convergenceConditionClosed : C.convergenceCondition
  divergenceConditionClosed : C.divergenceCondition
  classificationClosed : C.classification

def ContinuedFractionConvergenceClosed (C : ContinuedFractionConvergence) : Prop :=
  C.convergenceCondition ∧ C.divergenceCondition ∧ C.classification

theorem continued_fraction_convergence_closed_from_evidence
    (C : ContinuedFractionConvergence) (E : ContinuedFractionConvergenceEvidence C) :
    ContinuedFractionConvergenceClosed C := by
  exact And.intro E.convergenceConditionClosed
    (And.intro E.divergenceConditionClosed E.classificationClosed)

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse