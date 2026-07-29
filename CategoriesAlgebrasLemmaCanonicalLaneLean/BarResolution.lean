import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAlgebrasLemmaCanonicalLaneLean.AlgebrasAndMorphisms
import HautevilleHouse.CategoriesAlgebrasLemmaCanonicalLaneLean.FreeAlgebraBasis

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure BarResolution (A : AlgPackage) where
  chainComplex : Type u
  homologyGroups : Type u
  acyclic : Prop
  naturalInA : Prop

structure BarResolutionEvidence {A : AlgPackage} (R : BarResolution A) where
  chainComplexDefined : R.chainComplex = A.carrier
  homologyGroupsDefined : R.homologyGroups = A.carrier
  acyclicClosed : R.acyclic
  naturalInAClosed : R.naturalInA

def BarResolutionClosed {A : AlgPackage} (R : BarResolution A) : Prop :=
  R.chainComplex = A.carrier ∧ R.homologyGroups = A.carrier ∧ R.acyclic ∧ R.naturalInA

theorem bar_resolution_closed_from_evidence {A : AlgPackage} (R : BarResolution A) (E : BarResolutionEvidence R) : BarResolutionClosed R := by
  exact And.intro E.chainComplexDefined (And.intro E.homologyGroupsDefined (And.intro E.acyclicClosed E.naturalInAClosed))

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse