page 50102 "AIT Incident Card"
{
    Caption = 'Ficha de incidencia';
    PageType = Card;
    SourceTable = "AIT Incident Header";
    DataCaptionFields = "No.", Description;

    layout
    {
        area(Content)
        {
            group(General)
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
            part(Lines; "AIT Incident Lines Subform")
            {
                Caption = 'Detalle';
                ApplicationArea = All;
                SubPageLink = "Incident No." = field ("No.");
            }
        }
    }
}