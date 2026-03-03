public with sharing class OpportunityTriggerHandler {
    public static void OpportunityTriggerHandler(List<Opportunity> opportunities) {
        List<Task> tasksToInsert = new List<Task>();

        for(Opportunity o : opportunities)
        {
            if(o.StageName == 'Closed Won')
            {
                Task task = new Task();
                task.Subject='Follow Up Test Task';
                task.WhatId=o.Id;
                tasksToInsert.add(task);
            }
        }
        insert tasksToInsert;


    }
     public static void UpdateDescription(List<Opportunity> opportunities) {
        for(Opportunity o : opportunities)
        {
            if(o.Amount != null && o.Amount > 100000)
            {
                o.Description = 'Hot Opportunity';
            }
        }


    }
}