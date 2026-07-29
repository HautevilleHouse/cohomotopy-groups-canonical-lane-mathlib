import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure CohomotopyClass (n : ℕ) (X : Type*) [TopologicalSpace X] where
  basepoint : X
  representative : C_*(S^n, X)
  homotopyEquivClass : Prop
  stableStruct : Prop

structure CohomotopyGroup (n : ℕ) (X : Type*) [TopologicalSpace X] where
  carrier : Set (CohomotopyClass n X)
  groupOp : carrier → carrier → carrier
  identity : carrier
  inverse : carrier → carrier
  groupAxioms : Prop

structure CohomotopyExactSequence {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
    (f : C(X, Y)) (g : C(Y, Z)) (h : C(Z, X)) where
  exactAtY : Prop
  exactAtZ : Prop
  exactAtX : Prop
  sequenceClosed : Prop

structure StableCohomotopy (k : ℤ) (X : Type*) [TopologicalSpace X] where
  stableClass : Type
  suspensionIsomorphism : Prop
  freudenthalSuspension : Prop
  limitExists : Prop

structure CohomotopyAdmissibleClass (A : AdmissibleClass) where
  target : Type
  topology : TopologicalSpace target
  dimension : ℕ
  class : CohomotopyClass dimension target
  bridgeAndGate : ConstrainedTheoremClosure A

def CohomotopyBridgeClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A

def CohomotopyGateClosed (A : AdmissibleClass) : Prop :=
  gateClosed A

theorem cohomotopy_bridge_from_admissible (A : AdmissibleClass) : CohomotopyBridgeClosed A :=
  bridge_from_admissible_class A

theorem cohomotopy_gate_from_admissible (A : AdmissibleClass) : CohomotopyGateClosed A :=
  gate_from_admissible_class A

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse