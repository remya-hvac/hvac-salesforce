trigger OpportunityTrigger on Opportunity (before insert,after insert) {
     if(Trigger.isBefore && Trigger.isInsert)
    {
        OpportunityTriggerHandler.UpdateDescription(Trigger.new);
    }
    

}