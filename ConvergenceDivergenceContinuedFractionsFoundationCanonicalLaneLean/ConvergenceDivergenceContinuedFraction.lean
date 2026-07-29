import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure ConvergenceDivergenceObject where
  carrier : Type
  continuedFractionSeq : carrier -> List ℚ
  limitConverges : Prop
  divergenceWitness : Prop
  conclusion : Prop

structure ContinuedFractionState where
  object : ConvergenceDivergenceObject

def ConvergenceDivergenceWitnessClosed (O : ConvergenceDivergenceObject) : Prop :=
  O.limitConverges ∨ O.divergenceWitness

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse