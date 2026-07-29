import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeterminantsPermanentsTracesSpecialMatrixCanonicalLaneLean

structure MatrixSpace where
  n : ℕ
  entries : Type

default constructor

structure MatrixAdmittedObject where
  space : MatrixSpace
  determinantProperty : Prop
  permanentProperty : Prop
  traceProperty : Prop
  conclusion : determinantProperty ∧ permanentProperty ∧ traceProperty

def MatrixWitnessClosed (O : MatrixAdmittedObject) : Prop :=
  O.determinantProperty ∧ O.permanentProperty ∧ O.traceProperty

structure AdmissibleClass where
  object : MatrixAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MatrixWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DeterminantsPermanentsTracesSpecialMatrixCanonicalLaneLean
end HautevilleHouse
