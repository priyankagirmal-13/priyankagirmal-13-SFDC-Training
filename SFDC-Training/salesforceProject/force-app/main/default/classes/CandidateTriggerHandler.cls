public class CandidateTriggerHandler{
         public static Boolean isFirstTime = true;

    public static void checkSalary(List<Candidate_Priyanka__c> listCandidate)
    {
        for(Candidate_Priyanka__c objCandidate:listCandidate)
        {
            if(objCandidate.Expected_salary__c==null)
            {
                objCandidate.addError('please enter salary');
            }
        }
    }
    public static void CheckActive(List<Candidate_Priyanka__c> listCandidate)
    {
        Set<Id>jobid = new Set<Id>();
        for(Candidate_Priyanka__c objCandidate:listCandidate)
        {
            if(objCandidate.Job_priyanka__c!=null)
            {
                jobid.add(objCandidate.Job_priyanka__c);
            }
        }
        Map<Id,Job_priyanka__c> notActive = new Map<id,Job_priyanka__c>([select id,Active__c FROM Job_priyanka__c where Id IN :jobId AND Active__c=false]);
        for(Candidate_Priyanka__c objCandi:listCandidate)
        {
            if(notActive.get(objCandi.Job_priyanka__c)!=null)
            {
                objCandi.addError('This is not active job,You cannot Apply for this job');
            }
        }
    }
    public static void  dateUpdate(List<Candidate_Priyanka__c> lstCandidate)
    {
        system.debug('in dateUpdate'+lstCandidate);
        
        
       list<Candidate_Priyanka__c> listCandidateUpdate = new  list<Candidate_Priyanka__c>();
        
        for(Candidate_Priyanka__c objCandidate:lstCandidate){
            //Candidate_Priyanka__c objC = new Candidate_Priyanka__c();
         
            listCandidateUpdate.add(new Candidate_Priyanka__c(id=objCandidate.id,Application_Date__c=ObjCandidate.CreatedDate.date()));
        }
        system.debug('listCandidateUpdate'+listCandidateUpdate);
        if (!listCandidateUpdate.isEmpty()){
            
            update listCandidateUpdate;
        }
    }       
}