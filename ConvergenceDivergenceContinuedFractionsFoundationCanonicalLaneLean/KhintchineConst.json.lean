import HautevilleHouse.ConvergenceDivergenceContinuedFractionsFoundation.PartialSumConvergence

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundation

structure KhintchineConstant where
  constantValue : ℝ
  empiricalDistribution : ℝ → ℝ
  convergenceCondition : Prop
  divergenceCondition : Prop

structure KhintchineConstantEvidence (k : KhintchineConstant) where
  constantValuePositive : k.constantValue > 0
  empiricalDistributionNonNegative : ∀ x, k.empiricalDistribution x ≥ 0
  convergenceConditionClosed : k.convergenceCondition
  divergenceConditionClosed : k.divergenceCondition

structure KhintchineConstantClosed (k : KhintchineConstant) : Prop where
  constantValuePositive : k.constantValue > 0
  empiricalDistributionNonNegative : ∀ x, k.empiricalDistribution x ≥ 0
  convergenceConditionClosed : k.convergenceCondition
  divergenceConditionClosed : k.divergenceCondition

theorem khintchine_constant_closed_from_evidence (k : KhintchineConstant) (e : KhintchineConstantEvidence k) : KhintchineConstantClosed k := by
  exact ⟨e.constantValuePositive, e.empiricalDistributionNonNegative, e.convergenceConditionClosed, e.divergenceConditionClosed⟩

end ConvergenceDivergenceContinuedFractionsFoundation
end HautevilleHouse