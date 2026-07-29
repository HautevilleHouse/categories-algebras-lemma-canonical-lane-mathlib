import HautevilleHouse.CategoriesAlgebrasLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace CategoriesAlgebrasLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end CategoriesAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
