use PMO_Content_DB
SELECT 
  UserInfo.tp_Title as UserName, 
  UserInfo.tp_Login, 
  ImmedSubscriptions.SiteUrl + ImmedSubscriptions.WebUrl AS SiteURL, 
  ImmedSubscriptions.SiteUrl + ImmedSubscriptions.WebUrl + ImmedSubscriptions.ListUrl AS ListURL, 
  ImmedSubscriptions.WebTitle, 
  ImmedSubscriptions.ListTitle, 
  ImmedSubscriptions.AlertTitle, 
  Case when ImmedSubscriptions.AlertType = 0 then 'List Alert' else 'List Item Alert' end 'Alert Type', 
  CASE WHEN CONVERT(
    varchar, ImmedSubscriptions.EventType
  ) = '-1' THEN 'All changes' WHEN CONVERT(
    varchar, ImmedSubscriptions.EventType
  ) = '1' THEN 'New items are added' WHEN CONVERT(
    varchar, ImmedSubscriptions.EventType
  ) = '2' THEN 'Existing items are modified' WHEN CONVERT(
    varchar, ImmedSubscriptions.EventType
  ) = '4' THEN 'Items are deleted' ELSE CONVERT(
    varchar, ImmedSubscriptions.EventType
  ) END AS 'Change Type ', 
  CASE WHEN ImmedSubscriptions.DeliveryChannel = 1 THEN 'EMAIL' ELSE 'SMS' END AS 'Delivery Method', 
  'Send notification immediately' as 'When to Send Alerts', 
  case when CAST(
    ImmedSubscriptions.Properties as XML
  ).value(
    '(/miscellaneous/property/@value)[2]', 
    'int'
  )= 0 Then 'Anything changes' when CAST(
    ImmedSubscriptions.Properties as XML
  ).value(
    '(/miscellaneous/property/@value)[2]', 
    'int'
  )= 1 Then 'Someone else changes an item' when CAST(
    ImmedSubscriptions.Properties as XML
  ).value(
    '(/miscellaneous/property/@value)[2]', 
    'int'
  )= 2 Then 'Someone else changes an item created by me' when CAST(
    ImmedSubscriptions.Properties as XML
  ).value(
    '(/miscellaneous/property/@value)[2]', 
    'int'
  )= 3 Then 'Someone else changes an item last modified by me' end as 'Send Alert for these changes', 
  ImmedSubscriptions.Status 
FROM 
  ImmedSubscriptions 
  INNER JOIN UserInfo ON ImmedSubscriptions.UserId = UserInfo.tp_ID 
union all 
SELECT 
  UserInfo.tp_Title as UserName, 
  UserInfo.tp_Login, 
  SchedSubscriptions.SiteUrl + SchedSubscriptions.WebUrl AS SiteURL, 
  SchedSubscriptions.SiteUrl + SchedSubscriptions.WebUrl + SchedSubscriptions.ListUrl AS ListURL, 
  SchedSubscriptions.WebTitle, 
  SchedSubscriptions.ListTitle, 
  SchedSubscriptions.AlertTitle, 
  Case when SchedSubscriptions.AlertType = 0 then 'List Alert' else 'List Item Alert' end 'Alert Type', 
  CASE WHEN CONVERT(
    varchar, SchedSubscriptions.EventType
  ) = '-1' THEN 'All changes' WHEN CONVERT(
    varchar, SchedSubscriptions.EventType
  ) = '1' THEN 'New items are added' WHEN CONVERT(
    varchar, SchedSubscriptions.EventType
  ) = '2' THEN 'Existing items are modified' WHEN CONVERT(
    varchar, SchedSubscriptions.EventType
  ) = '4' THEN 'Items are deleted' ELSE CONVERT(
    varchar, SchedSubscriptions.EventType
  ) END AS 'Change Type ', 
  CASE WHEN SchedSubscriptions.DeliveryChannel = 1 THEN 'EMAIL' ELSE 'SMS' END AS 'Delivery Method', 
  case when SchedSubscriptions.NotifyFreq = 1 then 'Send a daily summary' else 'Send a weekly summary' end as 'When to Send Alerts', 
  case when CAST(
    SchedSubscriptions.Properties as XML
  ).value(
    '(/miscellaneous/property/@value)[2]', 
    'int'
  )= 0 Then 'Anything changes' when CAST(
    SchedSubscriptions.Properties as XML
  ).value(
    '(/miscellaneous/property/@value)[2]', 
    'int'
  )= 1 Then 'Someone else changes an item' when CAST(
    SchedSubscriptions.Properties as XML
  ).value(
    '(/miscellaneous/property/@value)[2]', 
    'int'
  )= 2 Then 'Someone else changes an item created by me' when CAST(
    SchedSubscriptions.Properties as XML
  ).value(
    '(/miscellaneous/property/@value)[2]', 
    'int'
  )= 3 Then 'Someone else changes an item last modified by me' end as 'Send Alert for these changes', 
  SchedSubscriptions.Status 
FROM 
  SchedSubscriptions 
  INNER JOIN UserInfo ON SchedSubscriptions.UserId = UserInfo.tp_ID
