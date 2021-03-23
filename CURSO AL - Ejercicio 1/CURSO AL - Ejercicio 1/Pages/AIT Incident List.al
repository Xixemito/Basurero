page 50101 "AIT Incident List"
{
    Caption = 'Lista de incidencias';
    PageType = List;
    CardPageId = "AIT Incident Card";
    Editable = false;
    SourceTable = "AIT Incident Header";
    SourceTableView = sorting ("No.") order(descending);

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(No; "No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Identificador único de la incidencia. Autoincremental.';
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Breve descripción de la incidencia.';
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                    ToolTip = 'Tipo al que pertenece la incidencia.';
                }
                field(Status; Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Especifica si la incidencia está abierta o cerrada.';
                }
                field(CreatedOn; "Created On")
                {
                    ApplicationArea = All;
                    ToolTip = 'Fecha en la que la incidencia fue introducida en el sistema.';
                }
                field(CreatedBy; "Created By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Usuario que creó la incidencia.';
                }
            }
        }
    }
}