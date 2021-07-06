public class JobTriggerHandler {
    public static void checkStatus(List<Job_priyanka__c> oldList) {
        for(Job_priyanka__c job:oldList) {
            if(job.Active__c) {
                job.addError('sorry! you can not delete Active job');
            }
        }
    }
    public static void checkHiredApplicant(List<Job_priyanka__c> oldList) {
        for(Job_priyanka__c job:oldList) {
            
            job.Active__c = ((job.Number_of_Positions__c == job.Hired_Applicants__c)) ? true: false;
           
        }
        
    }
    public static void reActiveJob(List<Job_priyanka__c>oldList) {
        for(Job_priyanka__c job:oldList) {
            
            job.Active__c=(job.Number_of_Positions__c > job.Hired_Applicants__c);
            
        }
    }
   
}