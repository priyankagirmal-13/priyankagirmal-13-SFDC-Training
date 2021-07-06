public class JobCollection {
public void insertmethod()
{
    List<Job_priyanka__c> jlist=new List<Job_priyanka__c>();
    Job_priyanka__c Jobj1=new Job_priyanka__c(Certification_Required__c='SAS',Job_Types__c='Developer',Qualification_Required__c='BE',Required_Skill__c='PHP');
    Job_priyanka__c Jobj2=new Job_priyanka__c(Certification_Required__c='PMP (Project Management Professional)',Job_Types__c='Manager',Qualification_Required__c='Bcom',Required_Skill__c='People Skills');
    Job_priyanka__c Jobj3=new Job_priyanka__c(Certification_Required__c='CISCO',Job_Types__c='Admin',Qualification_Required__c='Bcom',Required_Skill__c='Linux');

    jlist.add(jobj1);
    
    jlist.add(jobj2);
    
    jlist.add(jobj3);
    insert jlist;
   
    
}
}