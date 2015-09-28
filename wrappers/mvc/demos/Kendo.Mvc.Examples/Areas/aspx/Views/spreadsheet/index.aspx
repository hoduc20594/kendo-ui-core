<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/Web.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<script src="//cdnjs.cloudflare.com/ajax/libs/jszip/2.4.0/jszip.min.js"></script>

<div id="example">
<%:Html.Kendo().Spreadsheet()
    .Name("spreadsheet")
    .HtmlAttributes(new { style = "width:100%" })
    .Sheets(sheets =>
    {
        sheets.Add()
            .Name("Food Order")
            .MergedCells("A1:F1", "C15:E15")
            .Columns(columns =>
            {
                columns.Add().Width(100);
                columns.Add().Width(215);
                columns.Add().Width(115);
                columns.Add().Width(115);
                columns.Add().Width(115);
                columns.Add().Width(155);
            })
            .Rows(rows =>
            {
                rows.Add().Height(50).Cells(cells =>
                {
                    cells.Add()
                        .Value("My Company")
                        .FontSize(25)
                        .Background("rgb(142,196,65)")
                        .TextAlign(SpreadsheetTextAlign.Center)
                        .Color("white");
                });

                rows.Add().Height(25).Cells(cells =>
                {
                    cells.Add()
                        .Value("ID")
                        .Background("rgb(212,223,50)")
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value("Product")
                        .Background("rgb(212,223,50)")
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value("Quantity")
                        .Background("rgb(212,223,50)")
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value("Price")
                        .Background("rgb(212,223,50)")
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value("Tax")
                        .Background("rgb(212,223,50)")
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value("Amount")
                        .Background("rgb(212,223,50)")
                        .TextAlign(SpreadsheetTextAlign.Center);
                });

                rows.Add().Cells(cells =>
                {
                    cells.Add()
                        .Value(216321)
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add().Value("Calzone");

                    cells.Add()
                        .Value(1)
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value(12.39)
                        .Format("$#,##0.00");

                    cells.Add()
                        .Formula("C3*D3*0.2")
                        .Format("$#,##0.00");

                    cells.Add()
                        .Formula("C3*D3+E3")
                        .Format("$#,##0.00");
                });

                rows.Add().Cells(cells =>
                {
                    cells.Add()
                        .Value(546897)
                        .Background("rgb(234,240,186)")
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value("Margarita")
                        .Background("rgb(234,240,186)");

                    cells.Add()
                        .Value(2)
                        .Background("rgb(234,240,186)")
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value(8.79)
                        .Background("rgb(234,240,186)")
                        .Format("$#,##0.00");

                    cells.Add()
                        .Background("rgb(234,240,186)")
                        .Formula("C4*D4*0.2")
                        .Format("$#,##0.00");

                    cells.Add()
                        .Background("rgb(234,240,186)")
                        .Formula("C4*D4+E4")
                        .Format("$#,##0.00");
                });

                rows.Add().Cells(cells =>
                {
                    cells.Add()
                        .Value(456231)
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add().Value("Pollo Formaggio");

                    cells.Add()
                        .Value(1)
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value(13.99)
                        .Format("$#,##0.00");

                    cells.Add()
                        .Formula("C5*D5*0.2")
                        .Format("$#,##0.00");

                    cells.Add()
                        .Formula("C5*D5+E5")
                        .Format("$#,##0.00");
                });

                rows.Add().Cells(cells =>
                {
                    cells.Add()
                        .Value(455873)
                        .Background("rgb(234,240,186)")
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value("Greek Salad")
                        .Background("rgb(234,240,186)");

                    cells.Add()
                        .Value(1)
                        .Background("rgb(234,240,186)")
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value(9.49)
                        .Background("rgb(234,240,186)")
                        .Format("$#,##0.00");

                    cells.Add()
                        .Background("rgb(234,240,186)")
                        .Formula("C6*D6*0.2")
                        .Format("$#,##0.00");

                    cells.Add()
                        .Background("rgb(234,240,186)")
                        .Formula("C6*D6+E6")
                        .Format("$#,##0.00");
                });

                rows.Add().Cells(cells =>
                {
                    cells.Add()
                        .Value(456892)
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add().Value("Spinach and Blue Cheese");

                    cells.Add()
                        .Value(3)
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value(11.49)
                        .Format("$#,##0.00");

                    cells.Add()
                        .Formula("C7*D7*0.2")
                        .Format("$#,##0.00");

                    cells.Add()
                        .Formula("C7*D7+E7")
                        .Format("$#,##0.00");
                });

                rows.Add().Cells(cells =>
                {
                    cells.Add()
                        .Value(546564)
                        .Background("rgb(234,240,186)")
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value("Rigoletto")
                        .Background("rgb(234,240,186)");

                    cells.Add()
                        .Value(1)
                        .Background("rgb(234,240,186)")
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value(10.99)
                        .Background("rgb(234,240,186)")
                        .Format("$#,##0.00");

                    cells.Add()
                        .Background("rgb(234,240,186)")
                        .Formula("C8*D8*0.2")
                        .Format("$#,##0.00");

                    cells.Add()
                        .Background("rgb(234,240,186)")
                        .Formula("C8*D8+E8")
                        .Format("$#,##0.00");
                });

                rows.Add().Cells(cells =>
                {
                    cells.Add()
                        .Value(789455)
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add().Value("Creme Brulee");

                    cells.Add()
                        .Value(5)
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value(6.99)
                        .Format("$#,##0.00");

                    cells.Add()
                        .Formula("C9*D9*0.2")
                        .Format("$#,##0.00");

                    cells.Add()
                        .Formula("C9*D9+E9")
                        .Format("$#,##0.00");
                });

                rows.Add().Cells(cells =>
                {
                    cells.Add()
                        .Value(123002)
                        .Background("rgb(234,240,186)")
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value("Radeberger Beer")
                        .Background("rgb(234,240,186)");

                    cells.Add()
                        .Value(4)
                        .Background("rgb(234,240,186)")
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value(4.99)
                        .Background("rgb(234,240,186)")
                        .Format("$#,##0.00");

                    cells.Add()
                        .Background("rgb(234,240,186)")
                        .Formula("C10*D10*0.2")
                        .Format("$#,##0.00");

                    cells.Add()
                        .Background("rgb(234,240,186)")
                        .Formula("C10*D10+E10")
                        .Format("$#,##0.00");
                });

                rows.Add().Cells(cells =>
                {
                    cells.Add()
                        .Value(564896)
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add().Value("Budweiser Beer");

                    cells.Add()
                        .Value(3)
                        .TextAlign(SpreadsheetTextAlign.Center);

                    cells.Add()
                        .Value(4.49)
                        .Format("$#,##0.00");

                    cells.Add()
                        .Formula("C11*D11*0.2")
                        .Format("$#,##0.00");

                    cells.Add()
                        .Formula("C11*D11+E11")
                        .Format("$#,##0.00");
                });

                rows.Add().Index(13).Cells(cells =>
                {
                    cells.Add()
                        .Background("rgb(212,223,50)");

                    cells.Add()
                        .Background("rgb(212,223,50)");

                    cells.Add()
                        .Background("rgb(212,223,50)");

                    cells.Add()
                        .Background("rgb(212,223,50)");

                    cells.Add()
                        .Background("rgb(212,223,50)")
                        .TextAlign(SpreadsheetTextAlign.Right);

                    cells.Add()
                        .Background("rgb(212,223,50)")
                        .Formula("SUM(F3:F11)*0.1")
                        .Format("$#,##0.00");
                });

                rows.Add().Index(14).Height(50).Cells(cells =>
                {
                    cells.Add()
                        .Index(0)
                        .Background("rgb(142,196,65)");

                    cells.Add()
                        .Index(1)
                        .Background("rgb(142,196,65)");

                    cells.Add()
                        .Value("Total Amount")
                        .Index(2)
                        .TextAlign(SpreadsheetTextAlign.Right)
                        .Color("white")
                        .FontSize(20)
                        .Background("rgb(142,196,65)");

                    cells.Add()
                        .Index(5)
                        .Background("rgb(142,196,65)")
                        .Color("white")
                        .Formula("SUM(F3:F14)")
                        .Format("$#,##0.00");
                });
            });
    })
%>
</div>
</asp:Content>