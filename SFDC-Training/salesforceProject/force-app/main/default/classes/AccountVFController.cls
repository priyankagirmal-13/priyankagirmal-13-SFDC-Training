public class AccountVFController{
public List<Candidate_Priyanka__c> records{get;private set;}
public List<Job_priyanka__c> job{get;set;}

public List<Job_priyanka__c>records2{get;private set;}
public List<String> fields{get;set;}
public List<String> fields2{get;set;}


public AccountVFController()
{
    System.debug('inside constructor');
      Id id=ApexPages.currentPage().getParameters().get('id');
            System.debug('id'+id);
            records=[select Job_priyanka__c, Full_Name_of_candidate__c,Name, Email__c FROM Candidate_Priyanka__c where Job_Priyanka__r.Id=:id];

records2=[Select Name,Manager__c,Job_Types__c FROM Job_priyanka__c where Id=:id ];

//records=[select Job_priyanka__c, Full_Name_of_candidate__c,Name, Email__c FROM Candidate_Priyanka__c where Job_Priyanka__r.Name='JOB-003'];

fields=new List<string>{'Full_Name_of_candidate__c', 'Name' , 'Email__c'}; 
fields2=new List<string>{'Name' ,'Manager__c', 'Job_Types__c'};
}
}