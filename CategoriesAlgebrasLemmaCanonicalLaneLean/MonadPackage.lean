import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure MonadPackage (C : AlgebraicCategoryPackage) where
  endofunctor : C.objs -> C.objs
  unitTransformation : (a : C.objs) -> C.arrows a (endofunctor a)
  multiplicationTransformation : (a : C.objs) -> C.arrows (endofunctor (endofunctor a)) (endofunctor a)
  associativityCondition : Prop
  unitLeftCondition : Prop
  unitRightCondition : Prop

structure MonadEvidence {C : AlgebraicCategoryPackage} (M : MonadPackage C) where
  associativityConditionClosed : M.associativityCondition
  unitLeftConditionClosed : M.unitLeftCondition
  unitRightConditionClosed : M.unitRightCondition

def MonadClosed {C : AlgebraicCategoryPackage} (M : MonadPackage C) : Prop :=
  M.associativityCondition /
  M.unitLeftCondition /
  M.unitRightCondition

theorem monad_closed_from_evidence {C : AlgebraicCategoryPackage} (M : MonadPackage C)
    (E : MonadEvidence M) : MonadClosed M := by
  exact And.intro E.associativityConditionClosed (And.intro E.unitLeftConditionClosed E.unitRightConditionClosed)

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
