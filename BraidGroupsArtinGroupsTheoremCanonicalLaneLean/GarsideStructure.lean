import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure GarsideStructure (n : ℕ) where
  monoid : Type u
  garsideElement : Prop
  normalForm : Prop
  divisibility : Prop
  monoidClosed : Prop := by trivial
  garsideClosed : Prop := by trivial
  normalFormClosed : Prop := by trivial
  divisibilityClosed : Prop := by trivial

structure GarsideStructureEvidence {n : ℕ} (G : GarsideStructure n) where
  monoidClosed : G.monoidClosed
  garsideClosed : G.garsideClosed
  normalFormClosed : G.normalFormClosed
  divisibilityClosed : G.divisibilityClosed

def GarsideStructureClosed {n : ℕ} (G : GarsideStructure n) : Prop :=
  G.monoidClosed ∧ G.garsideClosed ∧ G.normalFormClosed ∧ G.divisibilityClosed

theorem garside_structure_closed_from_evidence {n : ℕ}
    (G : GarsideStructure n) (E : GarsideStructureEvidence G) :
    GarsideStructureClosed G := by
  have h1 : G.monoidClosed := E.monoidClosed
  have h2 : G.garsideClosed := E.garsideClosed
  have h3 : G.normalFormClosed := E.normalFormClosed
  have h4 : G.divisibilityClosed := E.divisibilityClosed
  have h_and : G.monoidClosed ∧ (G.garsideClosed ∧ (G.normalFormClosed ∧ G.divisibilityClosed)) :=
    And.intro h1 (And.intro h2 (And.intro h3 h4))
  exact h_and

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse