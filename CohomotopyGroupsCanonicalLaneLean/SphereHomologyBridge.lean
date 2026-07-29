import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure SphereHomologyBridgePackage where
  sphereDimension : Nat
  targetManifold : Type u
  basepoint : targetManifold
  sphereMap : targetManifold -> Type v
  homotopyGroup : Type w
  cohomotopyGroup : Type w
  wellDefined : Prop
  shiftIsomorphism : Prop
  suspensionCompatibility : Prop

structure SphereHomologyBridgeEvidence (B : SphereHomologyBridgePackage) where
  wellDefinedClosed : B.wellDefined
  shiftIsomorphismClosed : B.shiftIsomorphism
  suspensionCompatibilityClosed : B.suspensionCompatibility

def SphereHomologyBridgeClosed (B : SphereHomologyBridgePackage) : Prop :=
  B.wellDefined ∧ B.shiftIsomorphism ∧ B.suspensionCompatibility

theorem sphere_homology_bridge_closed_from_evidence
    (B : SphereHomologyBridgePackage) (E : SphereHomologyBridgeEvidence B) :
    SphereHomologyBridgeClosed B := by
  exact And.intro E.wellDefinedClosed
    (And.intro E.shiftIsomorphismClosed E.suspensionCompatibilityClosed)

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse