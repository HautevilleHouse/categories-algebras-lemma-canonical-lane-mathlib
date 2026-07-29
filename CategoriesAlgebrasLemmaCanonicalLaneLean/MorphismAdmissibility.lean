import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure MorphismStructure where
  sourceObject : Type u
  targetObject : Type u
  compositionLaw : Prop
  identityMorphism : Prop
  associativity : Prop
  identityLaw : Prop

structure AlgebraMorphism extends MorphismStructure where
  preservesAlgebra : Prop
  kernelIdeal : Prop
  factorTheorem : Prop

def MorphismBridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.categoryStructure ∧ A.object.algebraStructure

def MorphismGateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem morphism_bridge_from_admissible (A : AdmissibleClass) : MorphismBridgeClosed A :=
  bridge_from_admissible_class A

theorem morphism_gate_from_admissible (A : AdmissibleClass) : MorphismGateClosed A :=
  gate_from_admissible_class A

def ConstrainedMorphismClosure (A : AdmissibleClass) : Prop :=
  MorphismBridgeClosed A ∧ MorphismGateClosed A

theorem constrained_morphism_endgame (A : AdmissibleClass) : ConstrainedMorphismClosure A :=
  And.intro (morphism_bridge_from_admissible A) (morphism_gate_from_admissible A)

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse