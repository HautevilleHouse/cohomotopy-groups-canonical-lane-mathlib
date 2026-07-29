import HautevilleHouse.CohomotopyGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CohomotopyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse