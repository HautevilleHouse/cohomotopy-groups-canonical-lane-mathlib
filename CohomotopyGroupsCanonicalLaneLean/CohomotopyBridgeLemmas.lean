import canonicalLaneMathlib.AdmissibleClass
import CohomotopyGroupsCanonicalLaneLean.CohomotopyGroupsAdmissibleClass

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse