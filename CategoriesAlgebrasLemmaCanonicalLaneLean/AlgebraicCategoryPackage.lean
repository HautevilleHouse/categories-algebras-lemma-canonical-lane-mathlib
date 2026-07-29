import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure AlgebraicCategoryPackage where
  objs : Type u
  arrows : objs -> objs -> Type v
  identity : (a : objs) -> arrows a a
  compose : (a b c : objs) -> arrows b c -> arrows a b -> arrows a c
  identityLeft : (a b : objs) -> (f : arrows a b) -> compose a a b (identity a) f = f
  identityRight : (a b : objs) -> (f : arrows a b) -> compose a b b f (identity b) = f
  associativity : (a b c d : objs) -> (f : arrows a b) -> (g : arrows b c) -> (h : arrows c d) ->
    compose a c d h (compose a b c g f) = compose a b d (compose b c d h g) f

structure AlgebraicCategoryEvidence (C : AlgebraicCategoryPackage) where
  identityLeftClosed : C.identityLeft = C.identityLeft
  identityRightClosed : C.identityRight = C.identityRight
  associativityClosed : C.associativity = C.associativity

def AlgebraicCategoryClosed (C : AlgebraicCategoryPackage) : Prop :=
  C.identityLeft = C.identityLeft /
  C.identityRight = C.identityRight /
  C.associativity = C.associativity

theorem algebraic_category_closed_from_evidence (C : AlgebraicCategoryPackage)
    (E : AlgebraicCategoryEvidence C) : AlgebraicCategoryClosed C := by
  exact And.intro E.identityLeftClosed (And.intro E.identityRightClosed E.associativityClosed)

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
