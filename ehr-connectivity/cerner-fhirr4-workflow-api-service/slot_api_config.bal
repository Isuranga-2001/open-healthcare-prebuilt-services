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

final r4:ResourceAPIConfig slotApiConfig = {
    resourceType: "Slot",
    profiles: [
            "http://hl7.org/fhir/StructureDefinition/Slot"        
    ],
    defaultProfile: (),
    searchParameters: [
            {
        name: "status",
        active: true,
        information: {
            description: "The free/busy status of the appointment",
            builtin: false,
            documentation: "http://hl7.org/fhir/SearchParameter/Slot-status"
        }
    },
            {
        name: "identifier",
        active: true,
        information: {
            description: "A Slot Identifier",
            builtin: false,
            documentation: "http://hl7.org/fhir/SearchParameter/Slot-identifier"
        }
    },
            {
        name: "schedule",
        active: true,
        information: {
            description: "The Schedule Resource that we are seeking a slot within",
            builtin: false,
            documentation: "http://hl7.org/fhir/SearchParameter/Slot-schedule"
        }
    },
            {
        name: "start",
        active: true,
        information: {
            description: "Appointment date/time.",
            builtin: false,
            documentation: "http://hl7.org/fhir/SearchParameter/Slot-start"
        }
    },
            {
        name: "service-type",
        active: true,
        information: {
            description: "The type of appointments that can be booked into the slot",
            builtin: false,
            documentation: "http://hl7.org/fhir/SearchParameter/Slot-service-type"
        }
    },
            {
        name: "service-category",
        active: true,
        information: {
            description: "A broad categorization of the service that is to be performed during this appointment",
            builtin: false,
            documentation: "http://hl7.org/fhir/SearchParameter/Slot-service-category"
        }
    },
            {
        name: "specialty",
        active: true,
        information: {
            description: "The specialty of a practitioner that would be required to perform the service requested in this appointment",
            builtin: false,
            documentation: "http://hl7.org/fhir/SearchParameter/Slot-specialty"
        }
    },
            {
        name: "appointment-type",
        active: true,
        information: {
            description: "The style of appointment or patient that may be booked in the slot (not service type)",
            builtin: false,
            documentation: "http://hl7.org/fhir/SearchParameter/Slot-appointment-type"
        }
    }
        ],
    operations: [
    
    ],
    serverConfig: (),
    authzConfig: ()
};
