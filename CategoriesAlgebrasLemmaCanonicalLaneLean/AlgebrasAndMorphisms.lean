import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure AlgPackage where
  carrier : Type u
  multiplication : carrier → carrier → carrier
  unit : carrier
  associativity : ∀ a b c, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  leftUnit : ∀ a, multiplication unit a = a
  rightUnit : ∀ a, multiplication a unit = a

structure AdmittedAlgebraObject where
  algebra : AlgPackage
  freeResolution : Prop
  derivedFunctors : Prop
  conclusion : freeResolution ∧ derivedFunctors

structure AlgebraMorphism (A B : AlgPackage) where
  map : A.carrier → B.carrier
  respectsMul : ∀ a b, map (A.multiplication a b) = B.multiplication (map a) (map b)
  respectsUnit : map A.unit = B.unit

def AlgebraWitnessClosed (O : AdmittedAlgebraObject) : Prop :=
  O.freeResolution ∧ O.derivedFunctors

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse