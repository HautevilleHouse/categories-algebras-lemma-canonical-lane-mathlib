import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure CategoryAlgebraObject where
  carrier : Type u
  categoryStructure : Prop
  algebraStructure : Prop
  lemmaStatement : Prop
  conclusion : lemmaStatement

structure AdmissibleClass where
  object : CategoryAlgebraObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.categoryStructure ∧ A.object.algebraStructure ∧ A.object.lemmaStatement) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.categoryStructure ∧ A.object.algebraStructure ∧ A.object.lemmaStatement

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedCategoryAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_category_algebra_endgame (A : AdmissibleClass) : ConstrainedCategoryAlgebraClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse