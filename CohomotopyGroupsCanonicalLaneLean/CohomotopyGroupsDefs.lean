import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure CohomotopyGroup (n : ℕ) (X : Type*) where
  dimension : ℕ
  sourceType : Type*
  targetType : Type*
  map : sourceType → targetType
  homotopyClass : Prop

structure CohomotopyAdmittedObject (n : ℕ) where
  space : CohomotopyGroup n (S^n)
  isSphere : Prop
  closureWitness : space.homotopyClass ∧ isSphere

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse