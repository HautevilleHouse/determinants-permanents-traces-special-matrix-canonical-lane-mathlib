import DeterminantsPermanentsTracesSpecialMatrixCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DeterminantsPermanentsTracesSpecialMatrixCanonicalLaneLean

def ConstrainedMatrixClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_matrix_endgame (A : AdmissibleClass) :
    ConstrainedMatrixClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DeterminantsPermanentsTracesSpecialMatrixCanonicalLaneLean
end HautevilleHouse
