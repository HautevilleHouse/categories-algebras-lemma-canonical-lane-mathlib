import CategoriesAlgebrasLemmaCanonicalLaneLean.AbelianClosure

/-!
# Free Algebras Construction Package
-/

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure FreeAlgebrasPackage (A : CategoryAlgebraAdmittedObject) where
  freeObjectExists : Prop
  universalProperty : Prop
  coequalizerConstruction : Prop
  algebraCofibration : Prop

structure FreeAlgebrasEvidence (A : CategoryAlgebraAdmittedObject) (F : FreeAlgebrasPackage A) where
  freeObjectExistsClosed : F.freeObjectExists
  universalPropertyClosed : F.universalProperty
  coequalizerConstructionClosed : F.coequalizerConstruction
  algebraCofibrationClosed : F.algebraCofibration

def FreeAlgebrasClosed (A : CategoryAlgebraAdmittedObject) (F : FreeAlgebrasPackage A) : Prop :=
  F.freeObjectExists ∧ F.universalProperty ∧ F.coequalizerConstruction ∧ F.algebraCofibration

theorem free_algebras_closed_from_evidence (A : CategoryAlgebraAdmittedObject) (F : FreeAlgebrasPackage A) (E : FreeAlgebrasEvidence A F) :
    FreeAlgebrasClosed A F := by
  exact And.intro E.freeObjectExistsClosed (And.intro E.universalPropertyClosed (And.intro E.coequalizerConstructionClosed E.algebraCofibrationClosed))

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse