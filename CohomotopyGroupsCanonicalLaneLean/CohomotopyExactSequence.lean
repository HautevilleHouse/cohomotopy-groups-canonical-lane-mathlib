import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure CohomotopyExactSequencePackage where
  spacesPair : Type u × Type u
  inclusionMap : Prop
  cofibration : Prop
  cohomotopyGroups : Nat → Prop
  longExactSequence : Prop
  connectingHomomorphism : Prop
  exactnessAtEachTerm : Prop

structure CohomotopyExactSequenceEvidence (E : CohomotopyExactSequencePackage) where
  longExactSequenceClosed : E.longExactSequence
  connectingHomomorphismClosed : E.connectingHomomorphism
  exactnessAtEachTermClosed : E.exactnessAtEachTerm

def CohomotopyExactSequenceClosed (E : CohomotopyExactSequencePackage) : Prop :=
  E.longExactSequence ∧ E.connectingHomomorphism ∧ E.exactnessAtEachTerm

theorem cohomotopy_exact_sequence_closed_from_evidence
    (E : CohomotopyExactSequencePackage) (Ev : CohomotopyExactSequenceEvidence E) :
    CohomotopyExactSequenceClosed E := by
  exact And.intro Ev.longExactSequenceClosed
    (And.intro Ev.connectingHomomorphismClosed Ev.exactnessAtEachTermClosed)

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse