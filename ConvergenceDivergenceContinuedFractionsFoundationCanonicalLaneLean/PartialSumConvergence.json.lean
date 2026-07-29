import HautevilleHouse.ConvergenceDivergenceContinuedFractionsFoundation.ContinuedFractionExpansion

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundation

structure PartialSumConvergencePackage (c : ContinuedFractionExpansion) where
  partialSums : List ℚ
  convergenceLimit : ℚ
  divergenceOscillation : Prop
  oscillationBound : ℚ

structure PartialSumConvergenceEvidence {c : ContinuedFractionExpansion} (p : PartialSumConvergencePackage c) where
  partialSumsClosed : p.partialSums ≠ []
  convergenceLimitClosed : p.convergenceLimit ≠ 0
  divergenceOscillationClosed : p.divergenceOscillation
  oscillationBoundClosed : p.oscillationBound > 0

structure PartialSumConvergenceClosed (c : ContinuedFractionExpansion) (p : PartialSumConvergencePackage c) : Prop where
  partialSumsClosed : p.partialSums ≠ []
  convergenceLimitClosed : p.convergenceLimit ≠ 0
  divergenceOscillationClosed : p.divergenceOscillation
  oscillationBoundClosed : p.oscillationBound > 0

theorem partial_sum_convergence_closed_from_evidence (c : ContinuedFractionExpansion) (p : PartialSumConvergencePackage c) (e : PartialSumConvergenceEvidence p) : PartialSumConvergenceClosed c p := by
  exact ⟨e.partialSumsClosed, e.convergenceLimitClosed, e.divergenceOscillationClosed, e.oscillationBoundClosed⟩

end ConvergenceDivergenceContinuedFractionsFoundation
end HautevilleHouse