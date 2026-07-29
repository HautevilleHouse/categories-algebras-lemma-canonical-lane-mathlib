import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure QuotientAlgebraBridgePackage where
  baseAlgebra : Type u
  ideal : Type v
  quotientAlgebra : Type w
  projectionMap : baseAlgebra → quotientAlgebra
  bridgeCondition : Prop

structure QuotientAlgebraBridgeEvidence (Q : QuotientAlgebraBridgePackage) where
  projectionMapClosed : Q.bridgeCondition

def QuotientAlgebraBridgeClosed (Q : QuotientAlgebraBridgePackage) : Prop :=
  Q.bridgeCondition

theorem quotient_algebra_bridge_closed_from_evidence (Q : QuotientAlgebraBridgePackage)
    (E : QuotientAlgebraBridgeEvidence Q) : QuotientAlgebraBridgeClosed Q :=
  E.projectionMapClosed

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
