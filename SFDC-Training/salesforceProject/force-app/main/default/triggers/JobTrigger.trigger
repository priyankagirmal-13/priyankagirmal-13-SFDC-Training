trigger JobTrigger on Job_Priyanka__c (before insert,before delete,before update) {
    Trigger_Setting__c TS = Trigger_Setting__c.getInstance(UserInfo.getProfileId());
    if(TS.Job_Active_Status__c==True)
    { 
    if(trigger.isDelete && Trigger.isBefore)
    {
        JobTriggerHandler.checkStatus(Trigger.old);
    }
    else if(Trigger.isBefore &&(Trigger.isUpdate||Trigger.isInsert)){
        system.debug('trigger.new '+trigger.new);
        system.debug('trigger.old '+trigger.old);
        
        JobTriggerHandler.checkHiredApplicant(Trigger.New);
        JobTriggerHandler.reActiveJob(Trigger.new);
        
    }
    }
    
    
    
    
}