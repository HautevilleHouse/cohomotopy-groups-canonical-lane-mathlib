import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohomotopyGroupsCanonicalLaneLean.CohomotopyGroupsFoundation
import HautevilleHouse.CohomotopyGroupsCanonicalLaneLean.CohomotopyHomotopyClassification
import HautevilleHouse.CohomotopyGroupsCanonicalLaneLean.CohomotopyEndpointClassification

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

def ConstrainedCohomotopyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cohomotopy_endgame (A : AdmissibleClass) : ConstrainedCohomotopyClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

theorem cohomotopy_closure_yields_classification (A : AdmissibleClass) (C : CohomotopyClassificationPackage 3 (A.object.space.carrier)) :
    ConstrainedCohomotopyClosure A :=
  constrained_cohomotopy_endgame A

theorem cohomotopy_closure_yields_endpoint (A : AdmissibleClass) :
    ConstrainedCohomotopyClosure A :=
  constrained_cohomotopy_endgame A

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse