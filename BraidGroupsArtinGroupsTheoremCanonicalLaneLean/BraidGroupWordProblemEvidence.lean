import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure WordProblemCertificate (n : ℕ) where
  algorithm : Word (BraidGroup n) → Word (BraidGroup n)
  correctnessProof : ∀ w, algorithm (applyBraidRelations n w) = algorithm w

def WordProblemCertificate.toSolution (n : ℕ) (C : WordProblemCertificate n) : WordProblemSolution n := {
  reducedForm := C.algorithm
  reductionCorrect := C.correctnessProof
}

theorem word_problem_certificate_closes (n : ℕ) (C : WordProblemCertificate n) : WordProblemClosed n (C.toSolution n) :=
  C.correctnessProof

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse
