trigger ActiveDeleteTrigger on Job_Priyanka__c (before delete) 
{
if(Trigger.isDelete)
{
for(Job_priyanka__c isActiveTri:Trigger.old)
{

if(isActiveTri.Active__C==True)
    isActiveTri.addError('This job is active and can not be deleted');

}


}

}