import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure DivergenceCriteriaPackage where
  sequence : ℕ → ℝ
  diverges : Prop
  divergenceType : String -- "diverges_to_infinity", "oscillates", etc.
  partialQuotientsUnbounded : Prop
  lyapunovExponentPositive : Prop
  divergesTerm : diverges
  partialQuotientsUnboundedTerm : partialQuotientsUnbounded
  lyapunovExponentPositiveTerm : lyapunovExponentPositive

def DivergenceCriteriaClosed (P : DivergenceCriteriaPackage) : Prop :=
  P.diverges ∧ (P.partialQuotientsUnbounded ∨ P.lyapunovExponentPositive)

theorem divergence_criteria_closed_from_package (P : DivergenceCriteriaPackage) :
    DivergenceCriteriaClosed P := by
  exact And.intro P.divergesTerm
    (Or.elim (em (P.partialQuotientsUnbounded))
      (fun h => Or.inl h)
      (fun h => Or.inr P.lyapunovExponentPositiveTerm))

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse