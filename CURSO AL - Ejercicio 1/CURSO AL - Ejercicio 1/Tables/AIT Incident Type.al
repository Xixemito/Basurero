table 50100 "AIT Incident Type"
{
    Caption = 'Tipo de incidencia';
    DrillDownPageId = "AIT Incident Types";
    LookupPageId = "AIT Incident Types";
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Código';
            DataClassification = CustomerContent;

        }
        field(2; "Description"; Text[50])
        {
            Caption = 'Descripción';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}