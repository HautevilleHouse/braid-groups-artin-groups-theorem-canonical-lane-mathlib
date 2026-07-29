import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure BraidGroup (n : ℕ) where
  generatingSet : Type
  braidRelations : List (generatingSet × generatingSet)
  markovMoves : Prop

structure AdmittedBraidObject where
  n : ℕ
  group : BraidGroup n
  pureSubgroup : Type
  centerDescription : Prop
  conclusion : Prop

def BraidWitnessClosed (O : AdmittedBraidObject) : Prop :=
  O.conclusion

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse