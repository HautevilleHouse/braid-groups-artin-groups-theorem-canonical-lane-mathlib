import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure CoxeterMatching (n : ℕ) where
  braidGroup : Type u
  artinGroup : Type v
  coxeterMatrix : Matrix (Fin n) (Fin n) ℕ
  correspondence : Prop
  braidGroupClosed : Prop := by trivial
  artinGroupClosed : Prop := by trivial
  correspondenceClosed : Prop := by trivial

structure CoxeterMatchingEvidence {n : ℕ} (M : CoxeterMatching n) where
  braidGroupClosed : M.braidGroupClosed
  artinGroupClosed : M.artinGroupClosed
  correspondenceClosed : M.correspondenceClosed

def CoxeterMatchingClosed {n : ℕ} (M : CoxeterMatching n) : Prop :=
  M.braidGroupClosed ∧ M.artinGroupClosed ∧ M.correspondenceClosed

theorem coxeter_matching_closed_from_evidence {n : ℕ}
    (M : CoxeterMatching n) (E : CoxeterMatchingEvidence M) :
    CoxeterMatchingClosed M := by
  refine ⟨E.braidGroupClosed, ?_⟩
  exact ⟨E.artinGroupClosed, E.correspondenceClosed⟩

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse