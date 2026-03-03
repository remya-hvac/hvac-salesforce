trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {

if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUpdate))
{
    OpportunityTriggerHandler.OpportunityTriggerHandler(Trigger.new);
}
}