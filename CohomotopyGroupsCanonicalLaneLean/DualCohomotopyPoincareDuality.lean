import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure DualCohomotopyPoincareDualityPackage where
  manifoldDim : Nat
  orientedClosedManifold : Type u
  cohomotopyGroup : Nat → Type v
  homologyGroup : Nat → Type w
  poincareDualityPairing : Prop
  nondegenerate : Prop
  isomorphismDegreeShift : Prop

structure DualCohomotopyPoincareDualityEvidence (D : DualCohomotopyPoincareDualityPackage) where
  poincareDualityPairingClosed : D.poincareDualityPairing
  nondegenerateClosed : D.nondegenerate
  isomorphismDegreeShiftClosed : D.isomorphismDegreeShift

def DualCohomotopyPoincareDualityClosed (D : DualCohomotopyPoincareDualityPackage) : Prop :=
  D.poincareDualityPairing ∧ D.nondegenerate ∧ D.isomorphismDegreeShift

theorem dual_cohomotopy_poincare_duality_closed_from_evidence
    (D : DualCohomotopyPoincareDualityPackage) (Ev : DualCohomotopyPoincareDualityEvidence D) :
    DualCohomotopyPoincareDualityClosed D := by
  exact And.intro Ev.poincareDualityPairingClosed
    (And.intro Ev.nondegenerateClosed Ev.isomorphismDegreeShiftClosed)

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse