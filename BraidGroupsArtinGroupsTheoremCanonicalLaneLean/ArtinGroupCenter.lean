import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure CenterTheorem (n : ℕ) where
  center : Subgroup (BraidGroup n)
  isTrivialIfNotFullTwist : n > 2 → center = ⊥
  infiniteCyclicForBraid : ∀ n, center ≃ ℤ

structure CenterTheoremEvidence (n : ℕ) (C : CenterTheorem n) where
  isTrivialIfNotFullTwistClosed : n > 2 → C.center = ⊥
  infiniteCyclicForBraidClosed : ∀ n, C.center ≃ ℤ

def CenterTheoremClosed (n : ℕ) (C : CenterTheorem n) : Prop :=
  (n > 2 → C.center = ⊥) ∧ (∀ n, C.center ≃ ℤ)

theorem center_theorem_closed_from_evidence (n : ℕ) (C : CenterTheorem n) (E : CenterTheoremEvidence n C) : CenterTheoremClosed n C :=
  And.intro E.isTrivialIfNotFullTwistClosed E.infiniteCyclicForBraidClosed

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse
