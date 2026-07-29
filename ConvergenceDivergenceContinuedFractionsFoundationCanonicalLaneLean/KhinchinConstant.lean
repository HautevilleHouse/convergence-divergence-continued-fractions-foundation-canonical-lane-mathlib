import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure KhinchinConstantData where
  geometricMean : ℝ → ℝ
  limitExists : Prop
  khinchinConstant : ℝ
  constantValue : ℝ
  almostAllCoverage : Prop

structure KhinchinConstantEvidence (K : KhinchinConstantData) where
  limitExistsClosed : K.limitExists
  almostAllCoverageClosed : K.almostAllCoverage

def KhinchinConstantClosed (K : KhinchinConstantData) : Prop :=
  K.limitExists ∧ K.almostAllCoverage

theorem khinchin_constant_closed_from_evidence (K : KhinchinConstantData)
    (E : KhinchinConstantEvidence K) : KhinchinConstantClosed K := by
  exact And.intro E.limitExistsClosed E.almostAllCoverageClosed

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse