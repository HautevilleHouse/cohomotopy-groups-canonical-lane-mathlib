import canonicalLaneMathlib.AdmissibleClass
import CohomotopyGroupsCanonicalLaneLean.CohomotopyGroupsAdmissibleClass

namespace HautevilleHouse
namespace CohomotopyGroupsCanonicalLaneLean

structure AdamsSpectralSequencePackage (A : CohomotopyAdmittedObject) where
  spectralSequenceBuilt : Prop
  E2PageComputed : Prop
  differentialsCalculated : Prop
  extensionProblemSolved : Prop
  cohomotopyGroupsExtracted : Prop

structure AdamsSpectralSequenceEvidence {A : CohomotopyAdmittedObject}
    (AS : AdamsSpectralSequencePackage A) where
  spectralSequenceBuiltClosed : AS.spectralSequenceBuilt
  E2PageComputedClosed : AS.E2PageComputed
  differentialsCalculatedClosed : AS.differentialsCalculated
  extensionProblemSolvedClosed : AS.extensionProblemSolved
  cohomotopyGroupsExtractedClosed : AS.cohomotopyGroupsExtracted

def AdamsSpectralSequenceClosed {A : CohomotopyAdmittedObject}
    (AS : AdamsSpectralSequencePackage A) : Prop :=
  AS.spectralSequenceBuilt ∧ AS.E2PageComputed ∧ AS.differentialsCalculated ∧
  AS.extensionProblemSolved ∧ AS.cohomotopyGroupsExtracted

theorem adams_spectral_sequence_closed_from_evidence
    {A : CohomotopyAdmittedObject} (AS : AdamsSpectralSequencePackage A)
    (E : AdamsSpectralSequenceEvidence AS) :
    AdamsSpectralSequenceClosed AS := by
  exact And.intro E.spectralSequenceBuiltClosed
    (And.intro E.E2PageComputedClosed
      (And.intro E.differentialsCalculatedClosed
        (And.intro E.extensionProblemSolvedClosed
          E.cohomotopyGroupsExtractedClosed)))

end CohomotopyGroupsCanonicalLaneLean
end HautevilleHouse