import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure ContinuedFractionData where
  sequence : ℕ → ℤ
  convergents : ℕ → ℚ
  limitPoint : ℝ
  converges : Prop

structure AdmittedContinuedFraction where
  data : ContinuedFractionData
  admissible : Prop
  conclusion : data.converges

def CFWitnessClosed (O : AdmittedContinuedFraction) : Prop :=
  O.data.converges

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse