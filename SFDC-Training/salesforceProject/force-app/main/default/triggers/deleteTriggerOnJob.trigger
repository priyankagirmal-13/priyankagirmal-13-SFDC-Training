trigger deleteTriggerOnJob on Job_Priyanka__c (before delete) {
    List<Id> lstJob = new List<Id>();
    if(trigger.isBefore && trigger.isDelete){
        System.debug('Trigger.old' +Trigger.old);
    for(Job_priyanka__c ObjJob : trigger.old) {
        if(ObjJob.Number_of_Positions__c == ObjJob.Hired_Applicants__c) {
            lstJob.add(ObjJob.Id);
        }
    }
    
    if(!lstJob.isEmpty()){
        System.debug('Trigger.old' +Trigger.old);
          Database.delete(lstJob);
    }
    }
}