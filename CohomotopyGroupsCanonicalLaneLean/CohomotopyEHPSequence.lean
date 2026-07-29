import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure EHPSequence (n : ℕ) where
  EMap : CohomotopyGroup n (S^n)
  HMap : CohomotopyGroup (n+1) (S^(2n+1))
  PMap : CohomotopyGroup (n+1) (S^(n+1))
  exactness : Prop
  naturality : Prop

structure EHPEvidence (E : EHPSequence n) where
  exactnessClosed : E.exactness
  naturalityClosed : E.naturality

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse