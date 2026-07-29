import HautevilleHouse.ConvergenceDivergenceContinuedFractionsFoundation.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundation

structure ContinuedFractionExpansion where
  coefficients : List ℕ
  convergents : List ℚ
  convergenceRate : ℕ
  divergenceIndicator : Prop
  endpointClassification : Prop

structure ContinuedFractionEvidence (c : ContinuedFractionExpansion) where
  coefficientsSatisfied : c.coefficients ≠ []
  convergentsFinite : c.convergents ≠ []
  convergenceRateBound : c.convergenceRate > 0
  divergenceIndicatorEvidence : c.divergenceIndicator

structure ContinuedFractionClosed (c : ContinuedFractionExpansion) : Prop where
  coefficientsClosed : c.coefficients ≠ []
  convergentsClosed : c.convergents ≠ []
  convergenceRateBound : c.convergenceRate > 0
  divergenceIndicatorClosed : c.divergenceIndicator

theorem continued_fraction_closed_from_evidence (c : ContinuedFractionExpansion) (e : ContinuedFractionEvidence c) : ContinuedFractionClosed c := by
  exact ⟨e.coefficientsSatisfied, e.convergentsFinite, e.convergenceRateBound, e.divergenceIndicatorEvidence⟩

end ConvergenceDivergenceContinuedFractionsFoundation
end HautevilleHouse