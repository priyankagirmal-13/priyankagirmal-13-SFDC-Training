public class CmForInsert {

  public Candidate_Priyanka__c candidate{get;set;}
  public CmForInsert()
  {
      System.debug('inside constructor');
      Id id=ApexPages.currentPage().getParameters().get('id');
            System.debug('id'+id);

        candidate=(id==null) ?new Candidate_Priyanka__c():[select Salutation__c,First_Name__c,Last_Name__c,Full_Name_of_candidate__c,Age__c,Country__c,State__c,Email__c,DOB__c,Application_Date__c,Expected_salary__c,Status__c,Job_Priyanka__c FROM Candidate_Priyanka__c where Id=:id];
  
  
  }
  public PageReference save()
  {
  upsert candidate;
  
  PageReference p=new ApexPages.StandardController(candidate).view();
      return p;
  }
    

}