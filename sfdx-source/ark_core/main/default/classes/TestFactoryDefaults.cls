@IsTest
global class TestFactoryDefaults{

    // To specify defaults for objects, use the naming convention [ObjectName]Defaults.
    // For custom objects, omit the __c from the Object Name

    global class AccountDefaults implements TestFactory.FieldDefaults {
        global Map<Schema.SObjectField, Object> getFieldDefaults() {
            return new Map<Schema.SObjectField, Object> {
                    Account.Name => 'Test Account'
            };
        }
    }

    global class MyAccountDefaults implements TestFactory.FieldDefaults {
        global Map<Schema.SObjectField, Object> getFieldDefaults() {
            return new Map<Schema.SObjectField, Object> {
                    Account.Name => 'My Test Account'
            };
        }
    }

    global class ContactDefaults implements TestFactory.FieldDefaults {
        global Map<Schema.SObjectField, Object> getFieldDefaults() {
            return new Map<Schema.SObjectField, Object> {
                    Contact.FirstName => 'First',
                    Contact.LastName => 'Last'
            };
        }
    }

    global class OpportunityDefaults implements TestFactory.FieldDefaults {
        global Map<Schema.SObjectField, Object> getFieldDefaults() {
            return new Map<Schema.SObjectField, Object> {
                    Opportunity.Name => 'Test Opportunity',
                    Opportunity.StageName => 'Closed Won',
                    Opportunity.CloseDate => System.today()
            };
        }
    }

    global class CaseDefaults implements TestFactory.FieldDefaults {
        global Map<Schema.SObjectField, Object> getFieldDefaults() {
            return new Map<Schema.SObjectField, Object> {
                    Case.Subject => 'Test Case'
            };
        }
    }
}