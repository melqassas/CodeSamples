public DataTable AlertperList(SPWeb web, string listInternalName) {
  string listUrl = web.ServerRelativeUrl + "/Lists/" + listaInternalName;
  listUrl = listUrl.Replace("//", "/");
  SPList list = web.GetList(listUrl);
  SPAlertCollection alertsColl = web.Alerts;
  DataTable dt = new DataTable();
  dt.Columns.AddRange(new DataColumn[3] {
    new DataColumn("UserName", typeof(string)),
    new DataColumn("AlertType", typeof(string)),
    new DataColumn("DeliveryChannels", typeof(string))
  });

  foreach(SPAlert alert in alertsColl) {
    if (alert.ListID == list.ID) {
      DataRow row = table.NewRow();
      row[UserName] = alert.User.LoginName.ToString();
      row[AlertType] = alert.AlertType.ToString();
      row["DeliveryChannels"] = alert.DeliveryChannels.ToString();
      dt.Rows.Add(row);
    }
  }
  return dt;
}
