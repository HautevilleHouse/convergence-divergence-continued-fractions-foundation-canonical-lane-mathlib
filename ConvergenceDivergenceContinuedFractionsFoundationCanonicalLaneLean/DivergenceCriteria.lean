import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean.ContinuedFractionObject

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure DivergencePackage (A : AdmittedContinuedFraction) where
  oscillatoryBehavior : Prop
  partialQuotientsUnbounded : Prop
  failureOfRegularity : Prop

structure DivergenceEvidence {A : AdmittedContinuedFraction} (P : DivergencePackage A) where
  oscillatoryBehaviorClosed : P.oscillatoryBehavior
  partialQuotientsUnboundedClosed : P.partialQuotientsUnbounded
  failureOfRegularityClosed : P.failureOfRegularity

def DivergenceClosed {A : AdmittedContinuedFraction} (P : DivergencePackage A) : Prop :=
  P.oscillatoryBehavior ∧ P.partialQuotientsUnbounded ∧ P.failureOfRegularity

theorem divergence_closed_from_evidence
    {A : AdmittedContinuedFraction} (P : DivergencePackage A) (E : DivergenceEvidence P) :
    DivergenceClosed P := by
  exact And.intro E.oscillatoryBehaviorClosed
    (And.intro E.partialQuotientsUnboundedClosed E.failureOfRegularityClosed)

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse