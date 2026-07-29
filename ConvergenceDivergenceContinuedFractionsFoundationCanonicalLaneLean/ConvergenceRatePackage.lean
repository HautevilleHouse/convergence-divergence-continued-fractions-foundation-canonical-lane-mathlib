import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure ConvergenceRatePackage where
  sequence : ℕ → ℝ
  limitExists : Prop
  limitValue : ℝ
  rateOfConvergence : Prop
  errorBound : ℕ → ℝ
  errorBoundDecreasing : ∀ n, errorBound (n+1) ≤ errorBound n
  limitExistsTerm : limitExists
  limitValueTerm : limitValue
  rateOfConvergenceTerm : rateOfConvergence

def ConvergenceRateClosed (P : ConvergenceRatePackage) : Prop :=
  P.limitExists ∧ P.rateOfConvergence

theorem convergence_rate_closed_from_package (P : ConvergenceRatePackage) :
    ConvergenceRateClosed P := by
  exact And.intro P.limitExistsTerm P.rateOfConvergenceTerm

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse