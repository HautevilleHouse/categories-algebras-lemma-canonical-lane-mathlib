import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAlgebrasLemmaCanonicalLaneLean.AlgebrasAndMorphisms

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure FreeAlgebraBasis (A : AlgPackage) where
  generators : Set A.carrier
  universalMapping : Prop
  uniqueFactorization : Prop
  tensorDecomposition : Prop

structure FreeAlgebraBasisEvidence {A : AlgPackage} (B : FreeAlgebraBasis A) where
  generatorsClosed : B.generators ≠ ∅
  universalMappingClosed : B.universalMapping
  uniqueFactorizationClosed : B.uniqueFactorization
  tensorDecompositionClosed : B.tensorDecomposition

def FreeAlgebraBasisClosed {A : AlgPackage} (B : FreeAlgebraBasis A) : Prop :=
  B.generators ≠ ∅ ∧ B.universalMapping ∧ B.uniqueFactorization ∧ B.tensorDecomposition

theorem free_algebra_basis_closed_from_evidence {A : AlgPackage} (B : FreeAlgebraBasis A) (E : FreeAlgebraBasisEvidence B) : FreeAlgebraBasisClosed B := by
  exact And.intro E.generatorsClosed (And.intro E.universalMappingClosed (And.intro E.uniqueFactorizationClosed E.tensorDecompositionClosed))

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse