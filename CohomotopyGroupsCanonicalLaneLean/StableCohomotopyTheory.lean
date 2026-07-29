import canonicalLaneMathlib.AdmissibleClass
import CohomotopyGroupsCanonicalLaneLean.CohomotopyGroupsAdmissibleClass

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure StableCohomotopyPackage (A : CohomotopyAdmittedObject) where
  suspensionIsomorphism : Prop
  stableRange : ℕ
  stableGroupComputed : Prop
  freudenthalTheoremApplied : Prop
  connectivityCondition : Prop

structure StableCohomotopyEvidence {A : CohomotopyAdmittedObject}
    (S : StableCohomotopyPackage A) where
  suspensionIsomorphismClosed : S.suspensionIsomorphism
  stableRangeSatisfied : S.stableGroupComputed
  freudenthalAppliedClosed : S.freudenthalTheoremApplied

def StableCohomotopyClosed {A : CohomotopyAdmittedObject}
    (S : StableCohomotopyPackage A) : Prop :=
  S.suspensionIsomorphism ∧ S.stableGroupComputed ∧ S.freudenthalTheoremApplied

theorem stable_cohomotopy_closed_from_evidence
    {A : CohomotopyAdmittedObject} (S : StableCohomotopyPackage A)
    (E : StableCohomotopyEvidence S) : StableCohomotopyClosed S := by
  exact And.intro E.suspensionIsomorphismClosed
    (And.intro E.stableRangeSatisfied E.freudenthalAppliedClosed)

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse