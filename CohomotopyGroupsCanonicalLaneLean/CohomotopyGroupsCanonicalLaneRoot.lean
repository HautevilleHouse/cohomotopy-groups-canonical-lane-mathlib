import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohomotopyGroupsCanonicalLaneLean.SphereHomologyBridge
import HautevilleHouse.CohomotopyGroupsCanonicalLaneLean.CohomotopyExactSequence
import HautevilleHouse.CohomotopyGroupsCanonicalLaneLean.DualCohomotopyPoincareDuality

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure CohomotopyGroupsAdmissibleClass where
  bridgePackage : SphereHomologyBridgePackage
  exactSeqPackage : CohomotopyExactSequencePackage
  dualityPackage : DualCohomotopyPoincareDualityPackage
  bridgeClosed : SphereHomologyBridgeClosed bridgePackage
  exactSeqClosed : CohomotopyExactSequenceClosed exactSeqPackage
  dualityClosed : DualCohomotopyPoincareDualityClosed dualityPackage

def CohomotopyConstrainedClosure (A : CohomotopyGroupsAdmissibleClass) : Prop :=
  A.bridgeClosed ∧ A.exactSeqClosed ∧ A.dualityClosed

theorem cohomotopy_constrained_closure_holds (A : CohomotopyGroupsAdmissibleClass) :
    CohomotopyConstrainedClosure A := by
  exact And.intro A.bridgeClosed (And.intro A.exactSeqClosed A.dualityClosed)

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse