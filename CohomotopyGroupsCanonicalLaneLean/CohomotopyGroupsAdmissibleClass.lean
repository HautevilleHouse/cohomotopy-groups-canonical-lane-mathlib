import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure CohomotopyAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  dimension : ℕ
  cohomotopyGroupsComputed : Prop
  stableRangeCondition : Prop
  cohomotopySetsDefined : Prop
  conclusion : cohomotopyGroupsComputed

structure AdmissibleClass where
  object : CohomotopyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse