import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure LevyConstantData where
  approximationExponent : ℝ → ℝ
  limitExists : Prop
  levyConstant : ℝ
  levyConstantValue : ℝ
  almostAllCoverage : Prop

structure LevyConstantEvidence (L : LevyConstantData) where
  limitExistsClosed : L.limitExists
  almostAllCoverageClosed : L.almostAllCoverage

def LevyConstantClosed (L : LevyConstantData) : Prop :=
  L.limitExists ∧ L.almostAllCoverage

theorem levy_constant_closed_from_evidence (L : LevyConstantData)
    (E : LevyConstantEvidence L) : LevyConstantClosed L := by
  exact And.intro E.limitExistsClosed E.almostAllCoverageClosed

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse