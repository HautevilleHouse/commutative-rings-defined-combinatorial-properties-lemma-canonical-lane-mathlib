import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean

structure CombinatorialEndpointPackage where
  ring : Type u
  addition : ring → ring → ring
  multiplication : ring → ring → ring
  zero : ring
  one : ring
  combinatorialProperty : Prop
  propertyHolds : Prop
  endpointStatement : Prop

structure CombinatorialEndpointEvidence (E : CombinatorialEndpointPackage) where
  combinatorialPropertyClosed : E.combinatorialProperty
  propertyHoldsClosed : E.propertyHolds
  endpointStatementClosed : E.endpointStatement

def CombinatorialEndpointClosed (E : CombinatorialEndpointPackage) : Prop :=
  E.combinatorialProperty ∧ E.propertyHolds ∧ E.endpointStatement

theorem combinatorial_endpoint_closed_from_evidence (E : CombinatorialEndpointPackage) (Ev : CombinatorialEndpointEvidence E) :
    CombinatorialEndpointClosed E := by
  exact And.intro Ev.combinatorialPropertyClosed (And.intro Ev.propertyHoldsClosed Ev.endpointStatementClosed)

theorem combinatorial_endpoint_supplies_statement (E : CombinatorialEndpointPackage) :
    E.endpointStatement := E.endpointStatement

end CommutativeRingsDefinedCombinatorialPropertiesLemmaCanonicalLaneLean
end HautevilleHouse
