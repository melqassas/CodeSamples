/*
   Author: Mohamed El-Qassas
   WebSite: https://blog.devoworx.net
   Description: Get SQL instance Information via SERVERPROPERTY 
   Tested: 2012,2014,2016
*/
----------------------------------------------------------------------------------------------------------------
-- Start -------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
-- MachineName -------------------------------------------------------------------------------------------------
select '#Machine Name' as 'Server Property'
union all
select '   MachineName :' + convert(varchar,isnull(SERVERPROPERTY('MachineName'),'Not Applicable'))  as 'Server Property'
union all
select '   Description : Get the computer name on which the SQL server instance is running.For the cluster, it returns the virtual server name.' as 'Server Property'
union all
select '   Applies To : SQL Server 2008,2012,2014,2016,2017' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- ComputerNamePhysicalNetBIOS ---------------------------------------------------------------------------------
select '#ComputerNamePhysicalNetBIOS' as 'Server Property'
union all
select '  ComputerNamePhysicalNetBIOS :' + convert(varchar,isnull(SERVERPROPERTY('ComputerNamePhysicalNetBIOS'),'Not Applicable'))   as 'Server Property'
union all
select '  Description : Get the NetBIOS name of the local computer on which the SQL server instance is running. ' as 'Server Property'
union all
select '  Applies To : SQL Server 2008,2012,2014,2016,2017' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- ServerName --------------------------------------------------------------------------------------------------
select '#ServerName' as 'Server Property'
union all
select '  ServerName :' + convert(varchar,isnull(SERVERPROPERTY('ServerName'),'Not Applicable'))   as 'Server Property'
union all
select '  Description : Get the full SQL Server instance name. ' as 'Server Property'
union all
select '  Applies To : SQL Server 2008,2012,2014,2016,2017' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- InstanceName ------------------------------------------------------------------------------------------------
select '#InstanceName' as 'Server Property'
union all
select '  InstanceName :' + convert(varchar,isnull(SERVERPROPERTY('InstanceName'),SERVERPROPERTY('ServerName')))   as 'Server Property'
union all
select '  Description : Get the instance name which the user is connected, return NUll if the instance name is the default instance, So the server name will be displayed in case, instance name is NULL' as 'Server Property'
union all
select '  Applies To : SQL Server 2008,2012,2014,2016,2017' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- InstanceDefaultDataPath -------------------------------------------------------------------------------------
select '#InstanceDefaultDataPath' as 'Server Property'
union all
select '  InstanceDefaultDataPath :' + convert(varchar,SERVERPROPERTY('InstanceDefaultDataPath'))   as 'Server Property'
union all
select '  Description : Get the default path of data files.' as 'Server Property'
union all
select '  Applies To : SQL Server 2012 through current version in updates beginning in late 2015, SQL Server 2014 , 2016 , 2017.' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- InstanceDefaultLogPath --------------------------------------------------------------------------------------
select '#InstanceDefaultLogPath' as 'Server Property'
union all
select '  InstanceDefaultLogPath :' + convert(varchar,SERVERPROPERTY('InstanceDefaultLogPath'))                                   as 'Server Property'
union all
select '  Description : Get the default path of log files.'                                                                       as 'Server Property'
union all
select '  Applies To : SQL Server 2012 through current version in updates beginning in late 2015, SQL Server 2014 , 2016 , 2017.' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- Edition -----------------------------------------------------------------------------------------------------
select '#Edition' as 'Server Property'
union all
select '  Edition :' + convert(varchar,isnull(SERVERPROPERTY('Edition'),'Not Applicable'))   as 'Server Property'
union all
select '  Description : Get the Installed product edition.'                                  as 'Server Property'
union all
select '  Applies To : SQL Server 2008,2012, 2014 , 2016 , 2017.'                            as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- EditionID ---------------------------------------------------------------------------------------------------

select '#EditionID' as 'Server Property'
union all
select '  EditionID :' +  '('+ convert(varchar,SERVERPROPERTY('EditionID')) +') ' + convert(varchar,case SERVERPROPERTY('EditionID')
when -1534726760 then 'Standard'
when  1804890536 then 'Enterprise'
when  1872460670 then 'Enterprise Edition: Core-based Licensing'
when  610778273  then 'Enterprise Evaluation'
when  284895786  then 'Business Intelligence'
when -2117995310 then 'Developer'
when -1592396055 then 'Express'
when -133711905  then 'Express with Advanced Services'
when  1293598313 then 'Web'
when  1674378470 then 'SQL Database or SQL Data Warehouse' end)   as 'Server Property'
union all
select '  Description : Get the Installed product edition ID..'   as 'Server Property'
union all
select '  Applies To : SQL Server 2008,2012, 2014 , 2016 , 2017.' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- EngineEdition -----------------------------------------------------------------------------------------------

select '#EngineEdition' as 'Server Property'
union all
select '  EngineEdition :' + '('+ convert(varchar,SERVERPROPERTY('EngineEdition')) +') ' + isnull(convert(varchar,case SERVERPROPERTY('EngineEdition')
when 1 then 'Personal or Desktop Engine'
when 2 then 'Standard'
when 3 then 'Enterprise'
when 4  then 'Express'
when 5  then ' SQL Database'
when 6 then 'SQL Data Warehouse' end) ,'Not Applicable')          as 'Server Property'
union all
select '  Description : Get the database engine edition ID..'     as 'Server Property'
union all
select '  Applies To : SQL Server 2008,2012, 2014 , 2016 , 2017.' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- ProductBuild ------------------------------------------------------------------------------------------------

select '#ProductBuild' as 'Server Property'
union all
select '  ProductBuild :' + convert(varchar,isnull(SERVERPROPERTY('ProductBuild'),'Not Applicable'))   as 'Server Property'
union all
select '  Description : Get the build number.'                                                         as 'Server Property'
union all
select '  Applies To : SQL Server 2014 beginning October 2015,SQL Server 2016, SQL Server 2017.'       as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- ProductBuildType --------------------------------------------------------------------------------------------

select '#ProductBuildType' as 'Server Property'
union all
select '  ProductBuildType :' + '('+ convert(varchar,isnull(SERVERPROPERTY('ProductBuildType'),'Not Applicable')) +') ' + isnull(convert(varchar,case SERVERPROPERTY('ProductBuildType')
when 'OD'  then 'On Demand release'
when 'GDR' then 'General Distribution Release'
else 'Not applicable' end)  ,'Not Applicable')                                                                               as 'Server Property'
union all
select '  Description : Get the type of build name.'                                                                         as 'Server Property'
union all
select '  Applies To : SQL Server 2012 through current version in updates beginning in late 2015,SQL Server 2014,2016,2017.' as 'Server Property'
union all
select '  Note : On my test side (2012,2014,2016), it is not worked!!'                                                       as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- ProductLevel ------------------------------------------------------------------------------------------------

select '#ProductLevel' as 'Server Property'
union all
select '  ProductLevel :' + convert(varchar,SERVERPROPERTY('ProductLevel'))   as 'Server Property'
union all
select '  Description : Get the version level as RTM = Original release version, SPn = Service pack version,CTPn, = Community Technology Preview version' as 'Server Property'
union all
select '  Applies To : SQL Server 2008, 2012 ,2014,2016,2017.' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- ProductUpdateLevel ------------------------------------------------------------------------------------------

select '#ProductUpdateLevel' as 'Server Property'
union all
select '  ProductUpdateLevel :' + convert(varchar,isnull(SERVERPROPERTY('ProductUpdateLevel'),'Not Applicable'))   as 'Server Property'
union all
select '  Description : Get the current Cumulative update installed name as CUn.' as 'Server Property'
union all
select '  Applies To : SQL Server 2012 through current version in updates beginning in late 2015, SQL Server 2014,2016,2017.' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- ProductVersion ----------------------------------------------------------------------------------------------

select '#ProductVersion' as 'Server Property'
union all
select '  ProductVersion :' + convert(varchar,isnull(SERVERPROPERTY('ProductVersion'),'Not Applicable'))   as 'Server Property'
union all
select '  Description : Get the product version as major.minor.build.revision.' as 'Server Property'
union all
select '  Applies To : SQL Server 2008, 2012 ,2014,2016,2017.' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- BuildClrVersion ---------------------------------------------------------------------------------------------

select '#BuildClrVersion' as 'Server Property'
union all
select '  BuildClrVersion :' + convert(varchar,isnull(SERVERPROPERTY('BuildClrVersion'),'Not Applicable'))   as 'Server Property'
union all
select '  Description : Get the Version of the Microsoft .NET Framework common language runtime (CLR) that was used while building the instance of SQL Server.' as 'Server Property'
union all
select '  Applies To : SQL Server 2008, 2012 ,2014,2016,2017.' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- Collation ---------------------------------------------------------------------------------------------------

select '#Collation' as 'Server Property'
union all
select '  Collation :' + convert(varchar,isnull(SERVERPROPERTY('Collation'),'Not Applicable'))   as 'Server Property'
union all
select '  Description : Get the name of the default collation for the server.' as 'Server Property'
union all
select '  Applies To : SQL Server 2008, 2012 ,2014,2016,2017.' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- LCID --------------------------------------------------------------------------------------------------------

select '#LCID' as 'Server Property'
union all
select '  LCID :' + convert(varchar,isnull(SERVERPROPERTY('LCID'),'Not Applicable'))   as 'Server Property'
union all
select '  Description : Get the locale identifier (LCID) of the collation.' as 'Server Property'
union all
select '  Applies To : SQL Server 2008, 2012 ,2014,2016,2017.' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- IsSingleUser ------------------------------------------------------------------------------------------------

select '#IsSingleUser' as 'Server Property'
union all
select '  IsSingleUser :' + '('+ convert(varchar,SERVERPROPERTY('IsSingleUser')) +') ' + isnull(convert(varchar,case SERVERPROPERTY('IsSingleUser')
when 0 then 'Multiple User'
when 1 then 'Single user'
else 'Invalid Input' end),'Not Applicable')    as 'Server Property'
union all
select '  Description : Check if the Server is in single-user mode.' as 'Server Property'
union all
select '  Applies To : SQL Server 2008, 2012 ,2014,2016,2017.' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- IsIntegratedSecurityOnly ------------------------------------------------------------------------------------

select '#IsIntegratedSecurityOnly' as 'Server Property'
union all
select '  IsIntegratedSecurityOnly :' + '('+ convert(varchar,isnull(SERVERPROPERTY('IsIntegratedSecurityOnly'),'Not Applicable')) +') ' + isnull(convert(varchar(max), case SERVERPROPERTY('IsIntegratedSecurityOnly')
when 0 then 'Windows and SQL Server Authentication'
when 1 then 'Integrated security (Windows Authentication)' end),'Not Applicable')     as 'Server Property'
union all
select '  Description : Check the integrated security mode.'                          as 'Server Property'
union all
select '  Applies To : SQL Server 2008, 2012 ,2014,2016,2017.'                        as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- IsHadrEnabled -----------------------------------------------------------------------------------------------

select '#IsHadrEnabled' as 'Server Property'
union all
select '  IsHadrEnabled :' + '('+ convert(varchar,isnull(SERVERPROPERTY('IsHadrEnabled'),'Not Applicable')) +') ' + isnull(convert(varchar(max),case SERVERPROPERTY('IsHadrEnabled')
when 0 then 'The Always On availability groups is disabled'
when 1 then 'The Always On availability groups is enabled' end),'Not Applicable')    as 'Server Property'
union all
select '  Description : Check Always On availability groups is enabled or disabled.' as 'Server Property'
union all
select '  Applies To : SQL Server 2012 ,2014,2016,2017.'                             as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- HadrManagerStatus -------------------------------------------------------------------------------------------

select '#HadrManagerStatus' as 'Server Property'
union all
select '  HadrManagerStatus :' + '('+ convert(varchar,isnull(SERVERPROPERTY('HadrManagerStatus'),'Not Applicable')) +') ' + isnull(convert(varchar(max),case SERVERPROPERTY('HadrManagerStatus')
when 0 then 'Not started, pending'
when 1 then 'Started and running'
when 2 then 'Not started and failed' end),'Not Applicable')                      as 'Server Property'
union all
select '  Description : Check the Always On availability groups manager status.' as 'Server Property'
union all
select '  Applies To : SQL Server 2012 ,2014,2016,2017.'                         as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- IsAdvancedAnalyticsInstalled --------------------------------------------------------------------------------

select '#IsAdvancedAnalyticsInstalled' as 'Server Property'
union all
select '  IsAdvancedAnalyticsInstalled :' + '('+ convert(varchar,isnull(SERVERPROPERTY('IsAdvancedAnalyticsInstalled'),'Not Applicable')) +') ' 
+ isnull(convert(varchar(max),case SERVERPROPERTY('IsAdvancedAnalyticsInstalled')
when 0 then 'Advanced Analytics was not installed'
when 1 then 'Advanced Analytics was installed'
end),'Not Applicable')    as 'Server Property'
union all
select '  Description : Check the Advanced Analytics status.' as 'Server Property'
union all
select '  Applies To : SQL Server 2016,2017.' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- IsClustered -------------------------------------------------------------------------------------------------

select '#IsClustered' as 'Server Property'
union all
select '  IsClustered :' + '('+ convert(varchar,isnull(SERVERPROPERTY('IsClustered'),'Not Applicable')) +') ' 
+ isnull(convert(varchar(max),
case SERVERPROPERTY('IsClustered')
when 0 then 'Not Clustered'
when 1 then 'Clustered'
else 'Invalid Input'
end),'Not Applicable')    as 'Server Property'
union all
select '  Description : Check if the failover cluster is configured or not.' as 'Server Property'
union all
select '  Applies To : SQL Server 2008,2012,2014,2016,2017.' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- IsFullTextInstalled -----------------------------------------------------------------------------------------

select '#IsFullTextInstalled' as 'Server Property'
union all
select '  IsFullTextInstalled :' + '('+ convert(varchar,isnull(SERVERPROPERTY('IsFullTextInstalled'),'Not Applicable')) +') ' 
+ isnull(convert(varchar(max),
case SERVERPROPERTY('IsFullTextInstalled')
when 0 then 'Full-text and semantic indexing components are not installed'
when 1 then 'Full-text and semantic indexing components are installed'
else 'Invalid Input'
end ),'Not Applicable')    as 'Server Property'
union all
select '  Description : Check if the failover cluster is configured or not.' as 'Server Property'
union all
select '  Applies To : SQL Server 2008,2012,2014,2016,2017.' as 'Server Property'
union all
----------------------------------------------------------------------------------------------------------------
-- ProcessID ---------------------------------------------------------------------------------------------------

select '#ProcessID' as 'Server Property'
union all
select '  ProcessID :' + convert(varchar,isnull(SERVERPROPERTY('ProcessID'),'Not Applicable'))   as 'Server Property'
union all
select '  Description : Get the Process ID of the SQL Server service.' as 'Server Property'
union all
select '  Applies To : SQL Server 2008, 2012 ,2014,2016,2017.' as 'Server Property'
----------------------------------------------------------------------------------------------------------------
-- End ---------------------------------------------------------------------------------------------------------