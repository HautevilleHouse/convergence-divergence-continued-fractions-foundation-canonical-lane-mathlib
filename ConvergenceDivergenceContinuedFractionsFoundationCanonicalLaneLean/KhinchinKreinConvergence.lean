import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure KhinchinKreinConvergencePackage where
  continuedFraction : (ℕ → ℝ)
  partialQuotients : List ℕ
  convergenceRate : ℝ
  divergenceMeasure : ℝ
  kreinCondition : Prop
  khinchinCondition : Prop

structure KhinchinKreinConvergenceEvidence (K : KhinchinKreinConvergencePackage) where
  convergenceRateClosed : K.convergenceRate > 0
  divergenceMeasureClosed : K.divergenceMeasure < ∞
  kreinConditionClosed : K.kreinCondition
  khinchinConditionClosed : K.khinchinCondition

def KhinchinKreinConvergenceClosed (K : KhinchinKreinConvergencePackage) : Prop :=
  K.convergenceRate > 0 ∧ K.divergenceMeasure < ∞ ∧ K.kreinCondition ∧ K.khinchinCondition

theorem khinchin_krein_convergence_closed_from_evidence
    (K : KhinchinKreinConvergencePackage)
    (E : KhinchinKreinConvergenceEvidence K) :
    KhinchinKreinConvergenceClosed K := by
  exact And.intro E.convergenceRateClosed
    (And.intro E.divergenceMeasureClosed
      (And.intro E.kreinConditionClosed E.khinchinConditionClosed))

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse