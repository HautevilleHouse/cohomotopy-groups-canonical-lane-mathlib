import canonicalLaneMathlib.AdmissibleClass
import CohomotopyGroupsCanonicalLaneLean.CohomotopyGroupsAdmissibleClass
import CohomotopyGroupsCanonicalLaneLean.StableCohomotopyTheory

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure CohomotopyGroupComputationPackage {A : CohomotopyAdmittedObject}
    (S : StableCohomotopyPackage A) where
  dimension : ℕ
  targetSphereDimension : ℕ
  cohomotopySetCalculated : Prop
  groupStructure : Prop
  serreExactSequenceApplied : Prop
  computationResult : Prop

structure CohomotopyGroupComputationEvidence {A : CohomotopyAdmittedObject}
    {S : StableCohomotopyPackage A}
    (C : CohomotopyGroupComputationPackage S) where
  cohomotopySetCalculatedClosed : C.cohomotopySetCalculated
  groupStructureClosed : C.groupStructure
  computationResultClosed : C.computationResult

def CohomotopyGroupComputationClosed {A : CohomotopyAdmittedObject}
    {S : StableCohomotopyPackage A}
    (C : CohomotopyGroupComputationPackage S) : Prop :=
  C.cohomotopySetCalculated ∧ C.groupStructure ∧ C.computationResult

theorem cohomotopy_group_computation_closed_from_evidence
    {A : CohomotopyAdmittedObject} {S : StableCohomotopyPackage A}
    (C : CohomotopyGroupComputationPackage S)
    (E : CohomotopyGroupComputationEvidence C) :
    CohomotopyGroupComputationClosed C := by
  exact And.intro E.cohomotopySetCalculatedClosed
    (And.intro E.groupStructureClosed E.computationResultClosed)

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse