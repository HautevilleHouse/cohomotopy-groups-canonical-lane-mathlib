import HautevilleHouse.CohomotopyGroupsCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure AdmissibleClass where
  object : CohomotopyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CohomotopyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse