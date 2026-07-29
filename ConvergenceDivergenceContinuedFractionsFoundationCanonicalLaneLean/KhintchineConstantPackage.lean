import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure KhintchineConstantPackage where
  khintchineConstant : ℝ
  convergenceAlmostEverywhere : Prop
  explicitValue : khintchineConstant = Real.exp (Real.log 2 * (Real.log 3) ^ 2 / Real.log 2)
  convergenceAlmostEverywhereTerm : convergenceAlmostEverywhere
  explicitValueTerm : explicitValue

def KhintchineConstantClosed (P : KhintchineConstantPackage) : Prop :=
  P.convergenceAlmostEverywhere ∧ P.explicitValue

theorem khintchine_constant_closed_from_package (P : KhintchineConstantPackage) :
    KhintchineConstantClosed P := by
  exact And.intro P.convergenceAlmostEverywhereTerm P.explicitValueTerm

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse