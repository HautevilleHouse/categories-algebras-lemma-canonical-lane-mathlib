import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure FreeAlgebraConstructionPackage where
  generatingSet : Type u
  freeAlgebra : Type v
  inclusionMap : generatingSet → freeAlgebra
  universalProperty : Prop

structure FreeAlgebraConstructionEvidence (F : FreeAlgebraConstructionPackage) where
  inclusionMapClosed : ∀ x : F.generatingSet, F.universalProperty

def FreeAlgebraConstructionClosed (F : FreeAlgebraConstructionPackage) : Prop :=
  ∀ x : F.generatingSet, F.universalProperty

theorem free_algebra_construction_closed_from_evidence (F : FreeAlgebraConstructionPackage)
    (E : FreeAlgebraConstructionEvidence F) : FreeAlgebraConstructionClosed F :=
  E.inclusionMapClosed

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
