import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure UniversalMappingPropertyPackage where
  object : Type u
  mappingFamily : Type v
  uniqueFactorization : Prop

structure UniversalMappingPropertyEvidence (U : UniversalMappingPropertyPackage) where
  uniqueFactorizationClosed : U.uniqueFactorization

def UniversalMappingPropertyClosed (U : UniversalMappingPropertyPackage) : Prop :=
  U.uniqueFactorization

theorem universal_mapping_property_closed_from_evidence (U : UniversalMappingPropertyPackage)
    (E : UniversalMappingPropertyEvidence U) : UniversalMappingPropertyClosed U :=
  E.uniqueFactorizationClosed

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
