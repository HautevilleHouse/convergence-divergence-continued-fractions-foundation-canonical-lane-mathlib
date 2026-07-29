import HautevilleHouse.ConvergenceDivergenceContinuedFractionsFoundation.GaussMapErgodicity

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundation

structure LévyConstantConvergencePackage where
  lévyConstant : ℝ
  convergenceRate : ℕ
  divergentExponent : ℝ
  ergodicBound : Prop

structure LévyConstantConvergenceEvidence (l : LévyConstantConvergencePackage) where
  lévyConstantPositive : l.lévyConstant > 0
  convergenceRatePositive : l.convergenceRate > 0
  divergentExponentPositive : l.divergentExponent > 0
  ergodicBoundClosed : l.ergodicBound

structure LévyConstantConvergenceClosed (l : LévyConstantConvergencePackage) : Prop where
  lévyConstantPositive : l.lévyConstant > 0
  convergenceRatePositive : l.convergenceRate > 0
  divergentExponentPositive : l.divergentExponent > 0
  ergodicBoundClosed : l.ergodicBound

theorem lévy_constant_convergence_closed_from_evidence (l : LévyConstantConvergencePackage) (e : LévyConstantConvergenceEvidence l) : LévyConstantConvergenceClosed l := by
  exact ⟨e.lévyConstantPositive, e.convergenceRatePositive, e.divergentExponentPositive, e.ergodicBoundClosed⟩

end ConvergenceDivergenceContinuedFractionsFoundation
end HautevilleHouse