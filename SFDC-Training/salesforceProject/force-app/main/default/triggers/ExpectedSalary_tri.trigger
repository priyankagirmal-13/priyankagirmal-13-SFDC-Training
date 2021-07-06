trigger ExpectedSalary_tri on Candidate_Priyanka__c (before insert) 
{
if(Trigger.isInsert)
{
for(Candidate_Priyanka__c candidateTri:Trigger.new)
{

if(candidateTri.Expected_salary__c==null)
    candidateTri.addError('Expected salary field is missing');

}


}

}