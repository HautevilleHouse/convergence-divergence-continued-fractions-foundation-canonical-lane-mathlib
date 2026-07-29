import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : CFAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CFWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConvergenceDivergenceContinuedFractionsFoundationCanonicalLaneLean
end HautevilleHouse