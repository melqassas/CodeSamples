![convert rows to columns in sql](https://user-images.githubusercontent.com/49816567/102338932-89dc4500-3fa5-11eb-9c9a-726e6bc67120.png)


# [Detect SharePoint Edition Programmatically](https://spgeeks.devoworx.com/convert-rows-to-columns-in-sql-using-pivot/)

This SQL Script converts rows to columns Using Dynamic Pivot to simulate a Dynamic Database Structure.

![convert rows to columns in sql](https://i0.wp.com/spgeeks.devoworx.com/wp-content/uploads/2018/04/convert-rows-to-columns-usingc2a0dynamic-pivotc2a0in-sql-server.png?w=425&ssl=1)

> For more details, please check **[Convert Rows To Columns In SQL Server Using Dynamic Pivot](https://spgeeks.devoworx.com/convert-rows-to-columns-in-sql-using-pivot/)**


## How to Use this repo?

- Download the attached file "DynamicDB.zip"
- As you like, you can Restore the backup file or run the database creation script.
- Execute the "Convert_Rows_To_Columns_ByPivot" stored procedure as the following:

```SQL
exec Convert_Rows_To_Columns_ByPivot 1 -- 1 is the Table ID
```

![Dynamic Pivot output](https://user-images.githubusercontent.com/49816567/102339379-1f77d480-3fa6-11eb-81cb-c1448975037f.gif)


## Applies To

- SQL Server 2017.
- SQL Server 2016.
- SQL Server 2014.
- SQL Server 2012.
- SQL Server 2008.

## See Also

- [Dynamic pivot without aggregate function in SQL Server](https://spgeeks.devoworx.com/dynamic-pivot-with-out-aggregation-function/)


> **Note:** this script has been migrated from my [TechNet Gallery ](https://gallery.technet.microsoft.com/Dynamic-DataBase-Structure-23911424)

--------------

**Have a Question, Please ask [deBUG.to](https://deBUG.to) Community** | **[Mohamed El-Qassas](https://devoworx.com)**
