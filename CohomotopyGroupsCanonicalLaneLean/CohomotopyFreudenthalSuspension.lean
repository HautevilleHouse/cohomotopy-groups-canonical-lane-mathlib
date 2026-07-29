import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohomotopyGroupsCanonicalLaneLean.CohomotopyGroupsPreliminaries

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure FreudenthalSuspensionPackage where
  suspensionHomomorphism : Prop
  connectivityBound : ℕ
  surjectivityInRange : Prop
  injectivityInRange : Prop

structure FreudenthalSuspensionEvidence (F : FreudenthalSuspensionPackage) where
  suspensionHomomorphismClosed : F.suspensionHomomorphism
  surjectivityInRangeClosed : F.surjectivityInRange
  injectivityInRangeClosed : F.injectivityInRange

def FreudenthalSuspensionClosed (F : FreudenthalSuspensionPackage) : Prop :=
  F.suspensionHomomorphism ∧ F.surjectivityInRange ∧ F.injectivityInRange

theorem freudenthal_suspension_closed_from_evidence (F : FreudenthalSuspensionPackage)
    (E : FreudenthalSuspensionEvidence F) : FreudenthalSuspensionClosed F := by
  exact And.intro E.suspensionHomomorphismClosed
    (And.intro E.surjectivityInRangeClosed E.injectivityInRangeClosed)

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse