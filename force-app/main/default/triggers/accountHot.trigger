trigger accountHot on Account (before insert) {
    if(trigger.isBefore && trigger.isInsert)
    {
        For(account acc:trigger.new)
        {
            if(acc.Rating=='Hot')
            {
                acc.Description='this account is very hot please do not touch it';
            }
        }
    }

}