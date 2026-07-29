import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure FrobeniusAlgebraPackage (C : AlgebraicCategoryPackage) (A : AlgebraPackage C) where
  comultiplication : C.arrows A.algebraObj (C.compose ?_ ?_ ?_ ?_ ?_)
  counit : C.arrows A.algebraObj ?_
  frobeniusCondition : Prop
  associativityCoalgebra : Prop
  counitLaw : Prop

structure FrobeniusAlgebraEvidence {C : AlgebraicCategoryPackage} {A : AlgebraPackage C}
    (F : FrobeniusAlgebraPackage C A) where
  frobeniusConditionClosed : F.frobeniusCondition
  associativityCoalgebraClosed : F.associativityCoalgebra
  counitLawClosed : F.counitLaw

def FrobeniusAlgebraClosed {C : AlgebraicCategoryPackage} {A : AlgebraPackage C}
    (F : FrobeniusAlgebraPackage C A) : Prop :=
  F.frobeniusCondition /
  F.associativityCoalgebra /
  F.counitLaw

theorem frobenius_algebra_closed_from_evidence {C : AlgebraicCategoryPackage} {A : AlgebraPackage C}
    (F : FrobeniusAlgebraPackage C A) (E : FrobeniusAlgebraEvidence F) : FrobeniusAlgebraClosed F := by
  exact And.intro E.frobeniusConditionClosed (And.intro E.associativityCoalgebraClosed E.counitLawClosed)

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
