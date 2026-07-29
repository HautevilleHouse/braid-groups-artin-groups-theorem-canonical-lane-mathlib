import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure ArtinGroupProperty (n : ℕ) where
  groupType : Type u
  presentation : BraidGroupPresentation n
  solutionWordProblem : Prop
  geodesicNormUniqueness : Prop
  krobManinTheoremHolds : Prop
  solutionWordProblemClosed : solutionWordProblem
  geodesicNormUniquenessClosed : geodesicNormUniqueness
  krobManinTheoremHoldsClosed : krobManinTheoremHolds

structure ArtinGroupPropertyEvidence (n : ℕ) (A : ArtinGroupProperty n) where
  solutionWordProblemEvidence : A.solutionWordProblemClosed
  geodesicNormUniquenessEvidence : A.geodesicNormUniquenessClosed
  krobManinTheoremHoldsEvidence : A.krobManinTheoremHoldsClosed

def ArtinGroupPropertyClosed (n : ℕ) (A : ArtinGroupProperty n) : Prop :=
  A.solutionWordProblem ∧ A.geodesicNormUniqueness ∧ A.krobManinTheoremHolds

theorem artin_group_property_closed_from_evidence (n : ℕ) (A : ArtinGroupProperty n)
    (E : ArtinGroupPropertyEvidence n A) : ArtinGroupPropertyClosed n A := by
  exact And.intro E.solutionWordProblemEvidence
    (And.intro E.geodesicNormUniquenessEvidence E.krobManinTheoremHoldsEvidence)

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse
