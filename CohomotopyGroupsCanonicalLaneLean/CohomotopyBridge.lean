import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | CohomotopyAdmittedObject n obj => obj.closureWitness.1

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  match A.object with
  | CohomotopyAdmittedObject n obj => obj.closureWitness.1

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse