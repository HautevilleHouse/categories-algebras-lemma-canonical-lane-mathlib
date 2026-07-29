import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure MonomorphismStabilityPackage where
  sourceAlgebra : Type u
  targetAlgebra : Type v
  monomorphism : sourceAlgebra → targetAlgebra
  stabilityCondition : Prop

structure MonomorphismStabilityEvidence (M : MonomorphismStabilityPackage) where
  monomorphismClosed : M.stabilityCondition

def MonomorphismStabilityClosed (M : MonomorphismStabilityPackage) : Prop :=
  M.stabilityCondition

theorem monomorphism_stability_closed_from_evidence (M : MonomorphismStabilityPackage)
    (E : MonomorphismStabilityEvidence M) : MonomorphismStabilityClosed M :=
  E.monomorphismClosed

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
