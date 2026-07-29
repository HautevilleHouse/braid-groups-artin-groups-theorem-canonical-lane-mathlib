import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure ArtinGroupStructure (n : ℕ) where
  generators : List (Fin n → Fin n)
  coxeterMatrix : Matrix (Fin n) (Fin n) ℕ
  artinRelations : Prop
  generatorsClosed : Prop := by trivial
  matrixClosed : Prop := by trivial
  relationsClosed : Prop := by trivial

structure ArtinGroupStructureEvidence {n : ℕ} (A : ArtinGroupStructure n) where
  generatorsClosed : A.generatorsClosed
  matrixClosed : A.matrixClosed
  relationsClosed : A.relationsClosed

def ArtinGroupStructureClosed {n : ℕ} (A : ArtinGroupStructure n) : Prop :=
  A.generatorsClosed ∧ A.matrixClosed ∧ A.relationsClosed

theorem artin_group_structure_closed_from_evidence {n : ℕ}
    (A : ArtinGroupStructure n) (E : ArtinGroupStructureEvidence A) :
    ArtinGroupStructureClosed A := by
  unfold ArtinGroupStructureClosed
  exact ⟨E.generatorsClosed, ⟨E.matrixClosed, E.relationsClosed⟩⟩

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse