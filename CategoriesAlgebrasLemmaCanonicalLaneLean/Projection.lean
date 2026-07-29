import CategoriesAlgebrasLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def categoriesAlgebrasProjection : Projection CategoriesAlgebrasEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem categories_algebras_projection_idempotent (x : CategoriesAlgebrasEndgameState) :
    categoriesAlgebrasProjection.toFun (categoriesAlgebrasProjection.toFun x) = categoriesAlgebrasProjection.toFun x := by
  exact categoriesAlgebrasProjection.idempotent x

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse