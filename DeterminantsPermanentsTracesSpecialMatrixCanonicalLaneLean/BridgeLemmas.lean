import DeterminantsPermanentsTracesSpecialMatrixCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DeterminantsPermanentsTracesSpecialMatrixCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MatrixWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DeterminantsPermanentsTracesSpecialMatrixCanonicalLaneLean
end HautevilleHouse
