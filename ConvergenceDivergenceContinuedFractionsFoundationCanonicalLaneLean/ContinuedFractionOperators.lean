import canonicalLaneMathlib.AdmissibleClass
import ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean.ConvergenceDivergenceContinuedFraction

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure GaussMapPackage where
  domain : Type u
  map : domain → domain
  ergodicProperty : Prop

structure KhinchinConstantPackage where
  constantValue : ℝ
  almostEverywhereConvergence : Prop

structure L_evyConstantsPackage where
  constantOne : ℝ
  constantTwo : ℝ
  distributionLaw : Prop

structure DiophantineApproximationPackage where
  irrationalMeasure : Prop
  bestApproximationRate : Prop

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse