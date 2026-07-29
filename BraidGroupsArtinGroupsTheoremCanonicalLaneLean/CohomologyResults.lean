import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure CohomologyResult (n : ℕ) where
  braidGroup : ArtinGroupProperty n
  cohomologyRing : Type u
  poincarePolynomial : ℕ → ℕ
  cohomologyComputed : Prop
  poincarePolynomialClosed : cohomologyComputed
  dualCoxeterType : Prop
  dualCoxeterTypeClosed : dualCoxeterType

structure CohomologyResultEvidence (n : ℕ) (C : CohomologyResult n) where
  cohomologyComputedEvidence : C.cohomologyComputed
  dualCoxeterTypeEvidence : C.dualCoxeterTypeClosed

def CohomologyResultClosed (n : ℕ) (C : CohomologyResult n) : Prop :=
  C.cohomologyComputed ∧ C.dualCoxeterType

theorem cohomology_result_closed_from_evidence (n : ℕ) (C : CohomologyResult n)
    (E : CohomologyResultEvidence n C) : CohomologyResultClosed n C := by
  exact And.intro E.cohomologyComputedEvidence E.dualCoxeterTypeEvidence

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse
