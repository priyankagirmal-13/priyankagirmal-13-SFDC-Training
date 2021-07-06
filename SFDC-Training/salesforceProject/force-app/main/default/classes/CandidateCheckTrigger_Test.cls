@isTest
public class CandidateCheckTrigger_Test {
    public static testmethod void CheckSalary_Test(){
     List<Job_priyanka__c> jobList = [SELECT Id from  Job_priyanka__c];
        List <Job_Priyanka__c> job=new  List<Job_Priyanka__c>();
        job.add(new Job_Priyanka__c(Description__c='This is job',Number_of_Positions__c=10,Active__c=false,Salary_Offered__c=1000,Job_Types__c='Developer',Required_Skill__c='c++',Qualification_Required__c='BE',Certification_Required__c='Sun Certified'));
        insert job;
      List<Candidate_Priyanka__c> candidateList = new List<Candidate_Priyanka__c>();
        
      Candidate_Priyanka__c objCand = new Candidate_Priyanka__c();
        candidateList.add(new Candidate_Priyanka__C(First_Name__c='priyanka',Last_Name__c='girmal',Expected_Salary__c=null,Email__c= 'p199@gmail.com',Status__c='Interviewed',Job_Priyanka__c=job[0].Id));  
        
      
         Database.SaveResult[] result = Database.insert(candidateList,false);
        System.assertEquals(false,result[0].isSuccess());  
      }
    
     @isTest
    public static void dateCheck()
    {
        List<Candidate_Priyanka__c> lstToUpdate = new List<Candidate_Priyanka__c>();
        List<Candidate_Priyanka__c> lstCandidate =[SELECT Application_Date__c, CreatedDate FROM Candidate_Priyanka__c];
          for(Candidate_Priyanka__c updDate : [SELECT Application_Date__c, CreatedDate FROM Candidate_Priyanka__c] )
          {
              updDate.Application_Date__c = date.parse('13.05.1999');
              lstToUpdate.add(updDate);
          }
        if(lstToUpdate.size() > 0)
        {
            Database.update(lstToUpdate);
        }
        
            for(Candidate_Priyanka__c objCandidate : lstCandidate)
             {
               System.assertEquals(objCandidate.CreatedDate.Date(), objCandidate.Application_Date__c);   
             }        
        
    } 
     @isTest
    public static void checkStatus()
    {
         List<Job_priyanka__c> listOfJob =[SELECT Active__c,Id FROM Job_priyanka__c];
        
        for(Job_priyanka__c job: listOfJob)
        {
           if(job.Active__c != true)
           {
             Database.deleteResult result = Database.delete(job.Id);
             System.assertEquals(false,!result.isSuccess());
           }
           
        }
    }
    
    
    
    
    
}