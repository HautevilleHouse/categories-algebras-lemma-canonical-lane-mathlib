import CategoriesAlgebrasLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.CategoryTheory.Basic

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CategoriesAlgebrasSpace where
  carrier : Type
  category : Category carrier

structure CategoriesAlgebrasAdmittedObject where
  space : CategoriesAlgebrasSpace
  algebraStructure : Prop
  lemmaConclusion : Prop
  conclusion : algebraStructure → lemmaConclusion

structure CategoriesAlgebrasEndgameState where
  object : CategoriesAlgebrasAdmittedObject

def CategoriesAlgebrasWitnessClosed (O : CategoriesAlgebrasAdmittedObject) : Prop :=
  O.algebraStructure → O.lemmaConclusion

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse