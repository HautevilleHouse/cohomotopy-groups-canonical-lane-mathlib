import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure SuspensionData (n : ℕ) where
  baseType : Type*
  suspensionType : Type*
  canonicalMap : baseType → suspensionType

structure SuspensionEvidence (n : ℕ) (D : SuspensionData n) where
  suspensionMapInjective : Prop
  suspensionMapSurjective : Prop
  suspensionMapContinuous : Prop
  suspensionClosed : Prop

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse