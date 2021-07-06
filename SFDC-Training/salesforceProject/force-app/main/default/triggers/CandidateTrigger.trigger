trigger CandidateTrigger on Candidate_Priyanka__c (before insert,after insert,after update ,before update) {
    
    if(Trigger.isInsert && Trigger.isBefore ||(Trigger.isAfter && Trigger.isUpdate))
    {
          CandidateTriggerHandler.checkActive(Trigger.new);
         CandidateTriggerHandler.checkSalary(trigger.new);
        // CandidateTriggerHandler.dateUpdate(Trigger.old);
    }
     
    if(Trigger.isAfter && (Trigger.IsUpdate || Trigger.isInsert))
        
            {
                system.debug('isFirstTime' +CandidateTriggerHandler.isFirstTime);
               if(CandidateTriggerHandler.isFirstTime)
                {
                      system.debug('isFirstTime'+ CandidateTriggerHandler.isFirstTime);
                     CandidateTriggerHandler.isFirstTime = false;
                     CandidateTriggerHandler.dateUpdate(Trigger.new);
                  }
                
                        
            }
    
    
}