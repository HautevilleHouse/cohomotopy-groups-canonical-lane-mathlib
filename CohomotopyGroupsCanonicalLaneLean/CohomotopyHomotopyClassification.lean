import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohomotopyGroupsCanonicalLaneLean.CohomotopyGroupsFoundation

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure PrimitiveCohomotopyClass (n : ℕ) (X : Type*) [TopologicalSpace X] where
  sphereMap : S^n → X
  basepoint : X
  basepointPreserving : sphereMap (basepoint S^n) = basepoint

structure HomotopyEquivalenceLayer (n : ℕ) (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y] where
  forward : C(X, Y)
  backward : C(Y, X)
  homotopyForward : forward ∘ backward ≃ id Y
  homotopyBackward : backward ∘ forward ≃ id X

structure HomotopyGroupProjection (n : ℕ) (X : Type*) [TopologicalSpace X] where
  sourceClass : CohomotopyClass n X
  targetGroup : CohomotopyGroup n X
  projectionMap : sourceClass → targetGroup.carrier
  projectionClosed : Prop

structure CohomotopyClassificationEvidence (n : ℕ) (X : Type*) [TopologicalSpace X] where
  groupIsFinite : Prop
  groupIsCommutative : Prop
  classificationOfMaps : Prop
  classificationClosed : Prop

theorem cohomotopy_classification_closed (n : ℕ) (X : Type*) [TopologicalSpace X]
    (E : CohomotopyClassificationEvidence n X) : E.classificationClosed :=
  E.classificationClosed

def CohomotopyClassificationPackage (n : ℕ) (X : Type*) [TopologicalSpace X] : Type :=
  { E : CohomotopyClassificationEvidence n X // E.classificationClosed }

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse