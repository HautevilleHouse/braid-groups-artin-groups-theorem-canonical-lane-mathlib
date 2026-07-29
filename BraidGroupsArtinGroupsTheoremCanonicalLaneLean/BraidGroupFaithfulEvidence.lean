import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure BurauRepresentation (n : ℕ) extends FaithfulRepresentation n where
  matrixGroup : Type v
  rep : BraidGroup n → matrixGroup
  kernelKnown : ∀ w, rep w = 1 → w = 1

structure BurauRepresentationEvidence (n : ℕ) (B : BurauRepresentation n) where
  kernelKnownClosed : B.kernelKnown

def BurauRepresentationClosed (n : ℕ) (B : BurauRepresentation n) : Prop :=
  B.kernelKnown

theorem burau_representation_closed_from_evidence (n : ℕ) (B : BurauRepresentation n) (E : BurauRepresentationEvidence n B) : BurauRepresentationClosed n B :=
  E.kernelKnownClosed

structure LawrenceKrammerEvidence (n : ℕ) (F : FaithfulRepresentation n) where
  faithfulnessProof : Function.Injective F.rep

def FaithfulRepresentationEvidenceClosed (n : ℕ) (F : FaithfulRepresentation n) (E : LawrenceKrammerEvidence n F) : FaithfulRepresentationClosed n F :=
  E.faithfulnessProof

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse
