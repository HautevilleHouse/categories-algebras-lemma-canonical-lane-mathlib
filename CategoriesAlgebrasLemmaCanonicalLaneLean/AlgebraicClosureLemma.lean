import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure AlgebraicClosureLemmaPackage where
  categoryBase : Type u
  algebraObject : Type v
  closureMorphism : Algebra algebraObject algebraObject
  closureProperty : Prop

structure AlgebraicClosureLemmaEvidence (A : AlgebraicClosureLemmaPackage) where
  closureMorphismClosed : A.closureProperty

def AlgebraicClosureLemmaClosed (A : AlgebraicClosureLemmaPackage) : Prop :=
  A.closureProperty

theorem algebraic_closure_lemma_closed_from_evidence (A : AlgebraicClosureLemmaPackage)
    (E : AlgebraicClosureLemmaEvidence A) : AlgebraicClosureLemmaClosed A :=
  E.closureMorphismClosed

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
