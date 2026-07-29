import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure ArtinGroupCoxeterPresentation (n : ℕ) where
  presentation : ArtinGroupPresentation n
  coxeterGroup : Type
  artinToCoxeterHomomorphism : Prop
  kernelIsPureBraid : Prop
  homomorphismDefined : Prop
  kernelIsPureBraidTerm : kernelIsPureBraid
  homomorphismDefinedTerm : homomorphismDefined

structure ArtinGroupCoxeterPresentationEvidence (n : ℕ) (C : ArtinGroupCoxeterPresentation n) where
  homomorphismDefinedClosed : C.homomorphismDefined
  kernelIsPureBraidClosed : C.kernelIsPureBraid

def ArtinGroupCoxeterPresentationClosed (n : ℕ) (C : ArtinGroupCoxeterPresentation n) : Prop :=
  C.homomorphismDefined ∧ C.kernelIsPureBraid

theorem artin_group_coxeter_presentation_closed_from_evidence (n : ℕ) (C : ArtinGroupCoxeterPresentation n)
    (E : ArtinGroupCoxeterPresentationEvidence n C) : ArtinGroupCoxeterPresentationClosed n C := by
  exact And.intro E.homomorphismDefinedClosed E.kernelIsPureBraidClosed

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse