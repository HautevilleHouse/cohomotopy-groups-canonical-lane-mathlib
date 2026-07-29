import canonicalLaneMathlib.AdmissibleClass
import CohomotopyGroupsCanonicalLaneLean.CohomotopyGateLemmas

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

def ConstrainedCohomotopyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cohomotopy_endgame (A : AdmissibleClass) :
    ConstrainedCohomotopyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse