trigger AccountTrigger on Account (before insert,after insert) {
    if(Trigger.isBefore && Trigger.isInsert)
    {
        AccountTriggerHandler.UpdateRating(Trigger.new);
    }
    if(Trigger.isAfter && Trigger.isInsert)
    {
        AccountTriggerHandler.InsertRelatedOpportunity(Trigger.new);
    }

}