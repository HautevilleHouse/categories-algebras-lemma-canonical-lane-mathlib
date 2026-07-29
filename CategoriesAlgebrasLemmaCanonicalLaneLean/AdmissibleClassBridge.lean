import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAlgebrasLemmaCanonicalLaneLean.AlgebraicCategoryPackage
import HautevilleHouse.CategoriesAlgebrasLemmaCanonicalLaneLean.AlgebraClosurePackage
import HautevilleHouse.CategoriesAlgebrasLemmaCanonicalLaneLean.FrobeniusAlgebraPackage
import HautevilleHouse.CategoriesAlgebrasLemmaCanonicalLaneLean.MonadPackage

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (AlgebraicCategoryClosed A.object) 

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  -- construct bridge from admissible class evidence
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied \/ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
