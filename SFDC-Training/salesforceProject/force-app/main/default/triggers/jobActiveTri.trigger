trigger jobActiveTri on Candidate_Priyanka__c (after insert) 
{

List<Job_priyanka__c> joblist=new List<Job_priyanka__c>();
    for (Candidate_Priyanka__c  a : Trigger.old) {
    Job_priyanka__c j=new Job_priyanka__c ();
    if(j.Active__c==False)
    
    {
     a.addError('this job is not avilable');
    
    }
   
    joblist.add(j);
        // Iterate over each sObject
    }

  insert joblist;
    


}