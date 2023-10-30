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
//
// AUTO-GENERATED FILE. DO NOT MODIFY.
//
// This file is auto-generated by WSO2 Healthcare Team for managing utility functions.
// Developers are allowed modify this file as per the requirement.

import ballerinax/health.fhir.r4;

final r4:ResourceAPIConfig practitionerRoleApiConfig = {
    resourceType: "PractitionerRole",
    profiles: [
        "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole"
    ],
    defaultProfile: (),
    searchParameters: [
        {
            name: "practitioner",
            active: true,
            information: {
                description: "**Practitioner that is able to provide the defined services for the organization**  **NOTE**: This US Core SearchParameter definition extends the usage context of the[Conformance expectation extension](http://hl7.org/fhir/R4/extension-capabilitystatement-expectation.html) - multipleAnd - multipleOr - comparator - modifier - chain",
                builtin: false,
                documentation: "http://hl7.org/fhir/us/core/SearchParameter/us-core-practitionerrole-practitioner"
            }
        },
        {
            name: "specialty",
            active: true,
            information: {
                description: "**The practitioner has this specialty at an organization**  **NOTE**: This US Core SearchParameter definition extends the usage context of the[Conformance expectation extension](http://hl7.org/fhir/R4/extension-capabilitystatement-expectation.html) - multipleAnd - multipleOr - comparator - modifier - chain",
                builtin: false,
                documentation: "http://hl7.org/fhir/us/core/SearchParameter/us-core-practitionerrole-specialty"
            }
        }
    ],
    operations: [

    ],
    serverConfig: ()
,
    authzConfig: ()
};
