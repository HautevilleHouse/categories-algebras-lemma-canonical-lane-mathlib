import CategoriesAlgebrasLemmaCanonicalLaneLean.Projection

/-!
# Abelian Closure Package
-/

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure AbelianClosurePackage (A : CategoryAlgebraAdmittedObject) where
  finiteLimits : Prop
  finiteColimits : Prop
  abelianAxioms : Prop
  exactSequenceProperties : Prop

structure AbelianClosureEvidence (A : CategoryAlgebraAdmittedObject) (C : AbelianClosurePackage A) where
  finiteLimitsClosed : C.finiteLimits
  finiteColimitsClosed : C.finiteColimits
  abelianAxiomsClosed : C.abelianAxioms
  exactSequencePropertiesClosed : C.exactSequenceProperties

def AbelianClosureClosed (A : CategoryAlgebraAdmittedObject) (C : AbelianClosurePackage A) : Prop :=
  C.finiteLimits ∧ C.finiteColimits ∧ C.abelianAxioms ∧ C.exactSequenceProperties

theorem abelian_closure_closed_from_evidence (A : CategoryAlgebraAdmittedObject) (C : AbelianClosurePackage A) (E : AbelianClosureEvidence A C) :
    AbelianClosureClosed A C := by
  exact And.intro E.finiteLimitsClosed (And.intro E.finiteColimitsClosed (And.intro E.abelianAxiomsClosed E.exactSequencePropertiesClosed))

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse