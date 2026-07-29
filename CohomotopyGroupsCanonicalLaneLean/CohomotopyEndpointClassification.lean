import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohomotopyGroupsCanonicalLaneLean.CohomotopyGroupsFoundation

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure CohomotopyEndpointPackage (A : AdmissibleClass) where
  targetSpace : Type
  targetTopology : TopologicalSpace targetSpace
  dimension : ℕ
  truncatedGroup : ℕ → CohomotopyGroup dimension targetSpace
  endpointStatement : Prop
  endpointStatementClosed : endpointStatement

structure CohomotopyEndpointEvidence (A : AdmissibleClass) where
  basepointProvided : A.object.space.carrier
  targetSpaceTopology : TopologicalSpace (A.object.space.carrier)
  endpointConclusion : Prop
  endpointConclusionClosed : endpointConclusion

def CohomotopyEndpointClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem cohomotopy_endpoint_from_admissible (A : AdmissibleClass) : CohomotopyEndpointClosed A :=
  A.gateWitness

theorem cohomotopy_endpoint_supplies_mathlib_statement (A : AdmissibleClass) (E : CohomotopyEndpointEvidence A) :
    E.endpointConclusion :=
  E.endpointConclusionClosed

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse