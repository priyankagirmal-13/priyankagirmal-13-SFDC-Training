@isTest
public class JobCheckTrigger_Test {
    private static testmethod void CheckStatus_Test(){
        Test.startTest();
        Job_Priyanka__c jobObj=new Job_Priyanka__c();
        jobObj.Active__c=true;
        delete jobObj;
        Test.stopTest();
        
    }

}