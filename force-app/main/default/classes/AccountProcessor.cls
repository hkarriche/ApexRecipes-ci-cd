public with sharing class AccountProcessor {
    public AccountProcessor() {

    }
   @future
    public static void countContacts(List<Id> AccountID){

        Map<ID,Account> mymap =new  Map<ID,Account>([select id,name,Number_Of_Contacts__c,(select id from contacts) from Account where id in:AccountID ]);
        System.debug(mymap);

       

    }
}