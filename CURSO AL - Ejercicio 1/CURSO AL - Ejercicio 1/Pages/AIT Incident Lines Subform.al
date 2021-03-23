page 50103 "AIT Incident Lines Subform"
{
    Caption = 'Línea de incidencia';
    PageType = ListPart;
    SourceTable = "AIT Incident Line";
    AutoSplitKey = true;
    DelayedInsert = true;
    MultipleNewLines = true;
    LinksAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Date; "Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Fecha de introducción de la línea de la incidencia.';
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Descripción de la línea de la incidencia.';
                }
            }
        }
    }
}