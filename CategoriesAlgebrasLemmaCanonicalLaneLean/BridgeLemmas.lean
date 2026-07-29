import CategoriesAlgebrasLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CategoriesAlgebrasWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse