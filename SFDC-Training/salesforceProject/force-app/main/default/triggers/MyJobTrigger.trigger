trigger MyJobTrigger on Job_Priyanka__c (before insert)
{
if(Trigger.isInsert)
{
     for(Job_priyanka__c Jobtri:Trigger.new)
      {
     System.assertEquals('Admin',Jobtri.Job_Types__c);
     Jobtri.addError('this job type is not avialable');
      }

}


}