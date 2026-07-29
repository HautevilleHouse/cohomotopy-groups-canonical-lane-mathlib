import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohomotopyGroupsCanonicalLaneLean.CohomotopyGroupsPreliminaries

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure PontryaginThornConstruction where
  framedManifold : Type u
  framingData : Prop
  cohomotopyClass : Prop
  cobordismInvariance : Prop

structure PontryaginThornEvidence (P : PontryaginThornConstruction) where
  framingDataClosed : P.framingData
  cohomotopyClassClosed : P.cohomotopyClass
  cobordismInvarianceClosed : P.cobordismInvariance

def PontryaginThornClosed (P : PontryaginThornConstruction) : Prop :=
  P.framingData ∧ P.cohomotopyClass ∧ P.cobordismInvariance

theorem pontryagin_thorn_closed_from_evidence (P : PontryaginThornConstruction)
    (E : PontryaginThornEvidence P) : PontryaginThornClosed P := by
  exact And.intro E.framingDataClosed
    (And.intro E.cohomotopyClassClosed E.cobordismInvarianceClosed)

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse