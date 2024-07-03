// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com). All Rights Reserved.

// This software is the property of WSO2 LLC. and its suppliers, if any.
// Dissemination of any information or reproduction of any material contained
// herein is strictly forbidden, unless permitted by WSO2 in accordance with
// the WSO2 Software License available at: https://wso2.com/licenses/eula/3.2
// For specific language governing the permissions and limitations under
// this license, please see the license as well as any agreement you’ve
// entered into with WSO2 governing the purchase of this software and any
// associated services.
//
// This file is auto-generated by WSO2 Healthcare Team for managing utility functions.
// Developers are allowed modify this file as per the requirement.

import ballerina/http;
import ballerinax/health.fhir.r4;
import ballerinax/health.fhirr4;
import ballerinax/health.fhir.r4.uscore501 as uscore;
import ballerinax/health.fhir.r4.international401 as international;
import ballerinax/health.clients.fhir;

configurable string baseServerHost = ?;
configurable string cernerUrl = ?;
configurable string tokenUrl = ?;
configurable string clientId = ?;
configurable string clientSecret = ?;
configurable string[] scopes = ?;

fhir:FHIRConnectorConfig cernerConfig = {
    baseURL: cernerUrl,
    mimeType: fhir:FHIR_JSON,
    authConfig: {
        tokenUrl: tokenUrl,
        clientId: clientId,
        clientSecret: clientSecret,
        scopes: scopes
    }
};

final fhir:FHIRConnector fhirConnectorObj = check new (cernerConfig);

# Generic type to wrap all implemented profiles.
# Add required profile types here.
# public type Patient r4:Patient|<other_Patient_Profile>;
public type Patient uscore:USCorePatientProfile|international:Patient;

public type Organization uscore:USCoreOrganizationProfile;

public type Practitioner uscore:USCorePractitionerProfile;

public type PractitionerRole uscore:USCorePractitionerRoleProfile;

public type Encounter uscore:USCoreEncounterProfile;

public type Location uscore:USCoreLocation;

public type RelatedPerson international:RelatedPerson;

service / on new fhirr4:Listener(9090, patientApiConfig) {

    // Read the current state of the resource.
    isolated resource function get fhir/r4/Patient/[string id](r4:FHIRContext fhirContext) returns Patient|r4:FHIRError {
        Patient|error fhirInteractionResult = executeFhirInteraction("Patient", fhirContext, id, (), international:Patient).ensureType(Patient);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the Patient read interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return fhirInteractionResult;
    }

    // Search the resource type based on some filter criteria.
    isolated resource function get fhir/r4/Patient(r4:FHIRContext fhirContext) returns @http:Payload {mediaType: ["application/fhir+json"]} r4:Bundle|r4:FHIRError {
        r4:Bundle|error fhirInteractionResult = executeFhirInteraction("Patient", fhirContext, (), (), international:Patient).ensureType(r4:Bundle);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the Patient search interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return fhirInteractionResult;
    }

    // Create a new resource with a server assigned id.
    isolated resource function post fhir/r4/Patient(r4:FHIRContext fhirContext, uscore:USCorePatientProfile payload) returns @http:Payload {mediaType: ["application/fhir+json"]} http:Response|r4:FHIRError {
        anydata|error fhirInteractionResult = executeFhirInteraction("Patient", fhirContext, (), payload, uscore:USCorePatientProfile);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the Patient create interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return buildCreateInteractionResponse("fhir/r4/Patient", <map<anydata>>fhirInteractionResult);
    }
}

service / on new fhirr4:Listener(9091, organizationApiConfig) {

    // Read the current state of the resource.
    isolated resource function get fhir/r4/Organization/[string id](r4:FHIRContext fhirContext) returns @http:Payload {mediaType: ["application/fhir+json"]} Organization|r4:FHIRError {
        Organization|error fhirInteractionResult = executeFhirInteraction("Organization", fhirContext, id, (), uscore:USCoreOrganizationProfile).ensureType(Organization);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the Organization read interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return fhirInteractionResult;
    }

    // Search the resource type based on some filter criteria.
    isolated resource function get fhir/r4/Organization(r4:FHIRContext fhirContext) returns @http:Payload {mediaType: ["application/fhir+json"]} r4:Bundle|r4:FHIRError {
        r4:Bundle|error fhirInteractionResult = executeFhirInteraction("Organization", fhirContext, (), (), uscore:USCoreOrganizationProfile).ensureType(r4:Bundle);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the Organization search interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return fhirInteractionResult;
    }

    // Create a new resource with a server assigned id.
    isolated resource function post fhir/r4/Organization(r4:FHIRContext fhirContext, uscore:USCoreOrganizationProfile payload) returns @http:Payload {mediaType: ["application/fhir+json"]} http:Response|r4:FHIRError {
        anydata|error fhirInteractionResult = executeFhirInteraction("Organization", fhirContext, (), payload, uscore:USCoreOrganizationProfile);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the Organization create interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return buildCreateInteractionResponse("fhir/r4/Organization", <map<anydata>>fhirInteractionResult);
    }
}

service / on new fhirr4:Listener(9092, practitionerApiConfig) {

    // Read the current state of the resource.
    isolated resource function get fhir/r4/Practitioner/[string id](r4:FHIRContext fhirContext) returns Practitioner|r4:FHIRError {
        Practitioner|error fhirInteractionResult = executeFhirInteraction("Practitioner", fhirContext, id, (), uscore:USCorePractitionerProfile).ensureType(Practitioner);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the Practitioner read interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return fhirInteractionResult;
    }

    // Search the resource type based on some filter criteria.
    isolated resource function get fhir/r4/Practitioner(r4:FHIRContext fhirContext) returns @http:Payload {mediaType: ["application/fhir+json"]} r4:Bundle|r4:FHIRError {
        r4:Bundle|error fhirInteractionResult = executeFhirInteraction("Practitioner", fhirContext, (), (), uscore:USCorePractitionerProfile).ensureType(r4:Bundle);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the Practitioner search interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return fhirInteractionResult;
    }

    // Create a new resource with a server assigned id.
    isolated resource function post fhir/r4/Practitioner(r4:FHIRContext fhirContext, uscore:USCorePractitionerProfile payload) returns @http:Payload {mediaType: ["application/fhir+json"]} http:Response|r4:FHIRError {
        anydata|error fhirInteractionResult = executeFhirInteraction("Practitioner", fhirContext, (), payload, uscore:USCorePractitionerProfile);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the Practitioner create interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return buildCreateInteractionResponse("fhir/r4/Practitioner", <map<anydata>>fhirInteractionResult);
    }
}

service / on new fhirr4:Listener(9093, practitionerRoleApiConfig) {

    // Read the current state of the resource.
    isolated resource function get fhir/r4/PractitionerRole/[string id](r4:FHIRContext fhirContext) returns PractitionerRole|r4:FHIRError {
        PractitionerRole|error fhirInteractionResult = executeFhirInteraction("PractitionerRole", fhirContext, id, (), uscore:USCorePractitionerRoleProfile).ensureType(PractitionerRole);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the PractitionerRole read interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return fhirInteractionResult;
    }

    // Search the resource type based on some filter criteria.
    isolated resource function get fhir/r4/PractitionerRole(r4:FHIRContext fhirContext) returns @http:Payload {mediaType: ["application/fhir+json"]} r4:Bundle|r4:FHIRError {
        r4:Bundle|error fhirInteractionResult = executeFhirInteraction("PractitionerRole", fhirContext, (), (), uscore:USCorePractitionerRoleProfile).ensureType(r4:Bundle);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the PractitionerRole search interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return fhirInteractionResult;
    }

    // Create a new resource with a server assigned id.
    isolated resource function post fhir/r4/PractitionerRole(r4:FHIRContext fhirContext, uscore:USCorePractitionerRoleProfile payload) returns @http:Payload {mediaType: ["application/fhir+json"]} http:Response|r4:FHIRError {
        anydata|error fhirInteractionResult = executeFhirInteraction("PractitionerRole", fhirContext, (), payload, uscore:USCorePractitionerRoleProfile);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the PractitionerRole create interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return buildCreateInteractionResponse("fhir/r4/PractitionerRole", <map<anydata>>fhirInteractionResult);
    }
}

service / on new fhirr4:Listener(9094, encounterApiConfig) {

    // Read the current state of the resource.
    isolated resource function get fhir/r4/Encounter/[string id](r4:FHIRContext fhirContext) returns Encounter|r4:FHIRError {
        Encounter|error fhirInteractionResult = executeFhirInteraction("Encounter", fhirContext, id, (), uscore:USCoreEncounterProfile).ensureType(Encounter);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the Encounter read interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return fhirInteractionResult;
    }

    // Search the resource type based on some filter criteria.
    isolated resource function get fhir/r4/Encounter(r4:FHIRContext fhirContext) returns @http:Payload {mediaType: ["application/fhir+json"]} r4:Bundle|r4:FHIRError {
        r4:Bundle|error fhirInteractionResult = executeFhirInteraction("Encounter", fhirContext, (), (), uscore:USCoreEncounterProfile).ensureType(r4:Bundle);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the Encounter search interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return fhirInteractionResult;
    }

    // Create a new resource with a server assigned id.
    isolated resource function post fhir/r4/Encounter(r4:FHIRContext fhirContext, uscore:USCoreEncounterProfile payload) returns @http:Payload {mediaType: ["application/fhir+json"]} http:Response|r4:FHIRError {
        Encounter|error fhirInteractionResult = executeFhirInteraction("Encounter", fhirContext, (), payload, uscore:USCoreEncounterProfile).ensureType(Encounter);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the Encounter create interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return buildCreateInteractionResponse("fhir/r4/Encounter", <map<anydata>>fhirInteractionResult);
    }
}

service / on new fhirr4:Listener(9095, locationApiConfig) {

    // Read the current state of the resource.
    isolated resource function get fhir/r4/Location/[string id](r4:FHIRContext fhirContext) returns Location|r4:FHIRError {
        Location|error fhirInteractionResult = executeFhirInteraction("Location", fhirContext, id, (), uscore:USCoreLocation).ensureType(Location);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the Location read interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return fhirInteractionResult;
    }

    // Search the resource type based on some filter criteria.
    isolated resource function get fhir/r4/Location(r4:FHIRContext fhirContext) returns @http:Payload {mediaType: ["application/fhir+json"]} r4:Bundle|r4:FHIRError {
        r4:Bundle|error fhirInteractionResult = executeFhirInteraction("Location", fhirContext, (), (), uscore:USCoreLocation).ensureType(r4:Bundle);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the Location search interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return fhirInteractionResult;
    }

    // Create a new resource with a server assigned id.
    isolated resource function post fhir/r4/Location(r4:FHIRContext fhirContext, uscore:USCoreLocation payload) returns @http:Payload {mediaType: ["application/fhir+json"]} http:Response|r4:FHIRError {
        anydata|error fhirInteractionResult = executeFhirInteraction("Location", fhirContext, (), payload, uscore:USCoreLocation);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the Location create interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return buildCreateInteractionResponse("fhir/r4/Location", <map<anydata>>fhirInteractionResult);
    }
}

service / on new fhirr4:Listener(9096, relatedPersonApiConfig) {

    // Read the current state of the resource.
    isolated resource function get fhir/r4/RelatedPerson/[string id](r4:FHIRContext fhirContext) returns RelatedPerson|r4:FHIRError {
        RelatedPerson|error fhirInteractionResult = executeFhirInteraction("RelatedPerson", fhirContext, id, (), international:RelatedPerson).ensureType(RelatedPerson);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the RelatedPerson read interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return fhirInteractionResult;
    }

    // Search the resource type based on some filter criteria.
    isolated resource function get fhir/r4/RelatedPerson(r4:FHIRContext fhirContext) returns @http:Payload {mediaType: ["application/fhir+json"]} r4:Bundle|r4:FHIRError {
        r4:Bundle|error fhirInteractionResult = executeFhirInteraction("RelatedPerson", fhirContext, (), (), international:RelatedPerson).ensureType(r4:Bundle);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the RelatedPerson search interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return fhirInteractionResult;
    }

    // Create a new resource with a server assigned id.
    isolated resource function post fhir/r4/RelatedPerson(r4:FHIRContext fhirContext, international:RelatedPerson payload) returns @http:Payload {mediaType: ["application/fhir+json"]} http:Response|r4:FHIRError {
        anydata|error fhirInteractionResult = executeFhirInteraction("RelatedPerson", fhirContext, (), payload, international:RelatedPerson);
        if fhirInteractionResult is error {
            return r4:createFHIRError("Error occurred while executing the RelatedPerson create interaction.", r4:CODE_SEVERITY_ERROR,
                r4:TRANSIENT_EXCEPTION, cause = fhirInteractionResult);
        }
        return buildCreateInteractionResponse("fhir/r4/RelatedPerson", <map<anydata>>fhirInteractionResult);
    }
}
