trigger AccountAddressTrigger on Account (before insert,before update) {
    if((Trigger.isBefore && Trigger.isInsert) || (Trigger.isBefore && Trigger.isUpdate))
   {
       AccountTriggerHandler.checkAddress(Trigger.new);
       System.debug('test');
   }

}