table 50102 "AIT Incident Line"
{
    Caption = 'Línea incidencia';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Incident No."; Integer)
        {
            Caption = 'Nº incidencia';
            TableRelation = "AIT Incident Header"."No.";
            DataClassification = CustomerContent;

        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Nº línea';
            DataClassification = CustomerContent;
        }
        field(3; "Date"; Date)
        {
            Caption = 'Fecha';
            DataClassification = CustomerContent;
        }
        field(4; "Description"; Text[250])
        {
            Caption = 'Descripción';
            NotBlank = true;
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Incident No.", "Line No.")
        {
            Clustered = true;
        }
    }
}