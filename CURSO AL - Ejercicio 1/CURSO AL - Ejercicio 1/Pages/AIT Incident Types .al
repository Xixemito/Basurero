page 50100 "AIT Incident Types"
{
    Caption = 'Tipos de incidencia';
    PageType = List;
    SourceTable = "AIT Incident Type";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Code; Code)
                {
                    ApplicationArea = All;
                    ToolTip = 'Código único que identifique el tipo de incidencia.';
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Descripción para ayudar a identificar el tipo de incidencia.';
                }
            }
        }
    }
}