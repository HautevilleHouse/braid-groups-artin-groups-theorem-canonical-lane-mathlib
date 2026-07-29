import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure BraidGroupSolvedWordProblem (n : ℕ) where
  presentation : BraidGroupPresentation n
  normalFormAlgorithm : String
  wordProblemDecidable : Prop
  wordProblemDecidableTerm : wordProblemDecidable

structure BraidGroupSolvedWordProblemEvidence (n : ℕ) (S : BraidGroupSolvedWordProblem n) where
  wordProblemDecidableClosed : S.wordProblemDecidable

def BraidGroupSolvedWordProblemClosed (n : ℕ) (S : BraidGroupSolvedWordProblem n) : Prop :=
  S.wordProblemDecidable

theorem braid_group_solved_word_problem_closed_from_evidence (n : ℕ) (S : BraidGroupSolvedWordProblem n)
    (E : BraidGroupSolvedWordProblemEvidence n S) : BraidGroupSolvedWordProblemClosed n S := by
  exact E.wordProblemDecidableClosed

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse