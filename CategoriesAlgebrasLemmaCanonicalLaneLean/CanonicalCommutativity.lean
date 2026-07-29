import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure CanonicalCommutativityPackage where
  algebraA : Type u
  algebraB : Type v
  productMorphism : (algebraA → algebraB) → algebraB
  commutativityWitness : ∀ f g, productMorphism f = productMorphism g

structure CanonicalCommutativityEvidence (C : CanonicalCommutativityPackage) where
  commutativityWitnessClosed : ∀ f g, C.productMorphism f = C.productMorphism g

def CanonicalCommutativityClosed (C : CanonicalCommutativityPackage) : Prop :=
  ∀ f g, C.productMorphism f = C.productMorphism g

theorem canonical_commutativity_closed_from_evidence (C : CanonicalCommutativityPackage)
    (E : CanonicalCommutativityEvidence C) : CanonicalCommutativityClosed C :=
  E.commutativityWitnessClosed

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
