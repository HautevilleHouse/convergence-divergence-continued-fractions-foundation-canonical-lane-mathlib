import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean.ContinuedFractionObject

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure ConvergencePackage (A : AdmittedContinuedFraction) where
  growthCondition : Prop
  partialQuotientsBounded : Prop
  regularityCondition : Prop

structure ConvergenceEvidence {A : AdmittedContinuedFraction} (P : ConvergencePackage A) where
  growthConditionClosed : P.growthCondition
  partialQuotientsBoundedClosed : P.partialQuotientsBounded
  regularityConditionClosed : P.regularityCondition

def ConvergenceClosed {A : AdmittedContinuedFraction} (P : ConvergencePackage A) : Prop :=
  P.growthCondition ∧ P.partialQuotientsBounded ∧ P.regularityCondition

theorem convergence_closed_from_evidence
    {A : AdmittedContinuedFraction} (P : ConvergencePackage A) (E : ConvergenceEvidence P) :
    ConvergenceClosed P := by
  exact And.intro E.growthConditionClosed
    (And.intro E.partialQuotientsBoundedClosed E.regularityConditionClosed)

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse