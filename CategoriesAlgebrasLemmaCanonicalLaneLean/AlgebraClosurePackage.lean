import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure AlgebraPackage (C : AlgebraicCategoryPackage) where
  algebraObj : C.objs
  multiplication : C.arrows (C.compose ?_ ?_ ?_ ?_ ?_) ?_
  unit : C.arrows ?_ ?_
  associativityLaw : Prop
  unitLawLeft : Prop
  unitLawRight : Prop

structure AlgebraEvidence {C : AlgebraicCategoryPackage} (A : AlgebraPackage C) where
  associativityLawClosed : A.associativityLaw
  unitLawLeftClosed : A.unitLawLeft
  unitLawRightClosed : A.unitLawRight

def AlgebraClosed {C : AlgebraicCategoryPackage} (A : AlgebraPackage C) : Prop :=
  A.associativityLaw /
  A.unitLawLeft /
  A.unitLawRight

theorem algebra_closed_from_evidence {C : AlgebraicCategoryPackage} (A : AlgebraPackage C)
    (E : AlgebraEvidence A) : AlgebraClosed A := by
  exact And.intro E.associativityLawClosed (And.intro E.unitLawLeftClosed E.unitLawRightClosed)

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
