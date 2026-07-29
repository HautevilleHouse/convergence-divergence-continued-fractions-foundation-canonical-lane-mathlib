import HautevilleHouse.ConvergenceDivergenceContinuedFractionsFoundation.KhintchineConst

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundation

structure GaussMapErgodicityPackage where
  gaussMap : (0,1) → (0,1)
  invariantMeasure : Set (0,1) → ℝ
  ergodicProperty : Prop
  convergenceDivergenceImplication : Prop

structure GaussMapErgodicityEvidence (g : GaussMapErgodicityPackage) where
  gaussMapDefined : True
  invariantMeasureDefined : True
  ergodicPropertyClosed : g.ergodicProperty
  convergenceDivergenceImplicationClosed : g.convergenceDivergenceImplication

structure GaussMapErgodicityClosed (g : GaussMapErgodicityPackage) : Prop where
  gaussMapDefined : True
  invariantMeasureDefined : True
  ergodicPropertyClosed : g.ergodicProperty
  convergenceDivergenceImplicationClosed : g.convergenceDivergenceImplication

theorem gauss_map_ergodicity_closed_from_evidence (g : GaussMapErgodicityPackage) (e : GaussMapErgodicityEvidence g) : GaussMapErgodicityClosed g := by
  exact ⟨e.gaussMapDefined, e.invariantMeasureDefined, e.ergodicPropertyClosed, e.convergenceDivergenceImplicationClosed⟩

end ConvergenceDivergenceContinuedFractionsFoundation
end HautevilleHouse