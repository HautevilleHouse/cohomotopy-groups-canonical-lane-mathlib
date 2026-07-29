import canonicalLaneMathlib.AdmissibleClass
import CohomotopyGroupsCanonicalLaneLean.CohomotopyGroupsAdmissibleClass
import CohomotopyGroupsCanonicalLaneLean.StableCohomotopyTheory
import CohomotopyGroupsCanonicalLaneLean.CohomotopyGroupComputation
import CohomotopyGroupsCanonicalLaneLean.AdamsSpectralSequenceBridge

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure CohomotopyAnalyticFoundation where
  stableCohomotopy : StableCohomotopyPackage
  stableEvidence : StableCohomotopyEvidence stableCohomotopy
  computation : CohomotopyGroupComputationPackage stableCohomotopy
  computationEvidence : CohomotopyGroupComputationEvidence computation
  adamsSpectralSequence : AdamsSpectralSequencePackage
  adamsEvidence : AdamsSpectralSequenceEvidence adamsSpectralSequence

def CohomotopyAnalyticFoundationClosed (A : CohomotopyAnalyticFoundation) : Prop :=
  StableCohomotopyClosed A.stableCohomotopy ∧
  CohomotopyGroupComputationClosed A.computation ∧
  AdamsSpectralSequenceClosed A.adamsSpectralSequence

theorem cohomotopy_analytic_foundation_closed_from_evidence
    (A : CohomotopyAnalyticFoundation) :
    CohomotopyAnalyticFoundationClosed A := by
  exact And.intro (stable_cohomotopy_closed_from_evidence A.stableCohomotopy A.stableEvidence)
    (And.intro (cohomotopy_group_computation_closed_from_evidence A.computation A.computationEvidence)
      (adams_spectral_sequence_closed_from_evidence A.adamsSpectralSequence A.adamsEvidence))

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse