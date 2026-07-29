import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure FaithfulRepresentation (n : ℕ) where
  group : Type u
  rep : BraidGroup n → group
  injectivity : Function.Injective rep

structure FaithfulRepresentationEvidence (n : ℕ) (F : FaithfulRepresentation n) where
  injectivityClosed : F.injectivity
  repWellDefined : ∀ w1 w2, w1 = w2 → F.rep w1 = F.rep w2

def FaithfulRepresentationClosed (n : ℕ) (F : FaithfulRepresentation n) : Prop :=
  F.injectivity

theorem faithful_representation_closed_from_evidence (n : ℕ) (F : FaithfulRepresentation n) (E : FaithfulRepresentationEvidence n F) : FaithfulRepresentationClosed n F :=
  E.injectivityClosed

structure LawrenceKrammerRepresentation (n : ℕ) extends FaithfulRepresentation n where
  matrixGroup : Type v
  repMatrix : BraidGroup n → matrixGroup
  injectivityMatrix : Function.Injective repMatrix

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse
