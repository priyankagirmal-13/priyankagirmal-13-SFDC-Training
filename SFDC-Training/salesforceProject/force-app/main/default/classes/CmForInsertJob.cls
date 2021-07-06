public class CmForInsertJob {

  public Job_priyanka__c job{get;set;}
  public CmForInsertJob()
  {
System.debug('inside constructor');
      Id id=ApexPages.currentPage().getParameters().get('id');
            System.debug('id'+id);

        job=(id==null) ?new Job_priyanka__c():[select Active__c,Certification_Required__c,Description__c,Expires_On__c,Hired_Applicants__c,Job_Types__c,Manager__c,Number_of_Positions__c,Qualification_Required__c,Required_Skill__c,Total_Applicants__c,Salary_Offered__c FROM Job_priyanka__c where Id=:id];
  
  
  
  }
  public PageReference save()
  {
  upsert job;
  
  PageReference j=new ApexPages.StandardController(job).view();
      return j;
  }

}