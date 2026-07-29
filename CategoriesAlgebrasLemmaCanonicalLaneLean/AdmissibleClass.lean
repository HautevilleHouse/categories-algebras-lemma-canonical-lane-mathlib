import CategoriesAlgebrasLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : CategoriesAlgebrasAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CategoriesAlgebrasWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse