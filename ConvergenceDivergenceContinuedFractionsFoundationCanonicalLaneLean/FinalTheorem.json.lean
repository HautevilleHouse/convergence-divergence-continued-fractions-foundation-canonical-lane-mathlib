import HautevilleHouse.ConvergenceDivergenceContinuedFractionsFoundation.GateLemmas

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundation

def ConstrainedConvergenceDivergenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_convergence_divergence_endgame (A : AdmissibleClass) :
    ConstrainedConvergenceDivergenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceDivergenceContinuedFractionsFoundation
end HautevilleHouse