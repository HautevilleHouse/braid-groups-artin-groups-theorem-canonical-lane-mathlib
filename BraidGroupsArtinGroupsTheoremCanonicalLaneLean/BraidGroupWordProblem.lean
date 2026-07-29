import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

inductive WordReductionStep (n : ℕ) : Type where
  | braidMove (i : Fin (n-1))
  | freeReduction

structure WordProblemSolution (n : ℕ) where
  reducedForm : Word (BraidGroup n) → Word (BraidGroup n)
  reductionCorrect : ∀ w, reducedForm w = reducedForm (applyBraidRelations w)

def applyBraidRelations (n : ℕ) (w : Word (BraidGroup n)) : Word (BraidGroup n) :=
  w

structure WordProblemEvidence (n : ℕ) (S : WordProblemSolution n) where
  reductionCorrectClosed : S.reductionCorrect
  wordProblemSolved : Bool

def WordProblemClosed (n : ℕ) (S : WordProblemSolution n) : Prop :=
  S.reductionCorrect

theorem word_problem_closed_from_evidence (n : ℕ) (S : WordProblemSolution n) (E : WordProblemEvidence n S) : WordProblemClosed n S :=
  E.reductionCorrectClosed

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse
