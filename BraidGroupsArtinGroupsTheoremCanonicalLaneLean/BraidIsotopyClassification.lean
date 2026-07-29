import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure BraidIsotopyClassification (n : ℕ) where
  braidSet : Type u
  isotopyEquivalence : Prop
  braidGroupIsomorphism : Prop
  classificationComplete : Prop
  isotopyClosed : Prop := by trivial
  isomorphismClosed : Prop := by trivial
  classificationClosed : Prop := by trivial

structure BraidIsotopyClassificationEvidence {n : ℕ} (C : BraidIsotopyClassification n) where
  isotopyClosed : C.isotopyClosed
  isomorphismClosed : C.isomorphismClosed
  classificationClosed : C.classificationClosed

def BraidIsotopyClassificationClosed {n : ℕ} (C : BraidIsotopyClassification n) : Prop :=
  C.isotopyClosed ∧ C.isomorphismClosed ∧ C.classificationClosed

theorem braid_isotopy_classification_closed_from_evidence {n : ℕ}
    (C : BraidIsotopyClassification n) (E : BraidIsotopyClassificationEvidence C) :
    BraidIsotopyClassificationClosed C := by
  exact And.intro E.isotopyClosed (And.intro E.isomorphismClosed E.classificationClosed)

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse