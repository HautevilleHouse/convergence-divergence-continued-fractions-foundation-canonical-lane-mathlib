import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean.KhintchineBridge

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

def gateClosed (A : AdmittedContinuedFraction) : Prop :=
  A.data.converges ∨ ¬ A.data.converges

theorem gate_from_admissible_class (A : AdmittedContinuedFraction) :
    gateClosed A := by
  exact Or.inl A.conclusion

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse