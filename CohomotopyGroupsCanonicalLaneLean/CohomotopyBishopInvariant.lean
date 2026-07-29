import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohomotopyGroupsCanonicalLaneLean.CohomotopyGroupsPreliminaries

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure BishopInvariant (X : Type u) [TopologicalSpace X] where
  coveringDimension : ℕ
  nerveComplexDimension : ℕ
  cohomotopyRank : ℕ
  invariantConditions : Prop

structure BishopInvariantEvidence {X : Type u} [TopologicalSpace X] (B : BishopInvariant X) where
  coveringDimensionClosed : B.coveringDimension = 0
  nerveComplexDimensionClosed : B.nerveComplexDimension = 0
  cohomotopyRankClosed : B.cohomotopyRank = 0
  invariantConditionsClosed : B.invariantConditions

def BishopInvariantClosed {X : Type u} [TopologicalSpace X] (B : BishopInvariant X) : Prop :=
  B.coveringDimension = 0 ∧ B.nerveComplexDimension = 0 ∧ B.cohomotopyRank = 0 ∧ B.invariantConditions

theorem bishop_invariant_closed_from_evidence {X : Type u} [TopologicalSpace X]
    (B : BishopInvariant X) (E : BishopInvariantEvidence B) : BishopInvariantClosed B := by
  exact And.intro E.coveringDimensionClosed
    (And.intro E.nerveComplexDimensionClosed
      (And.intro E.cohomotopyRankClosed E.invariantConditionsClosed))

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse