import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure CohomotopyGroup (X : Type u) [TopologicalSpace X] (n : ℕ) where
  pointedSet : Set (ContinuousMap (Sphere n) X)
  basepoint : X
  groupStructure : Prop
  groupAxioms : groupStructure

def CohomotopyObject (X : Type u) [TopologicalSpace X] : Type u :=
  Σ (n : ℕ), CohomotopyGroup X n

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse