table 50101 "AIT Incident Header"
{
    Caption = 'Incidencia';
    DataCaptionFields = "No.", Description;
    DrillDownPageId = "AIT Incident List";
    LookupPageId = "AIT Incident List";
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'Nº';
            AutoIncrement = true;
            MinValue = 1;
            Editable = false;
            DataClassification = CustomerContent;
        }
        field(2; "Description"; Text[50])
        {
            Caption = 'Descripción';
            NotBlank = true;
            DataClassification = CustomerContent;
        }
        field(3; "Type"; Code[20])
        {
            Caption = 'Tipo';
            TableRelation = "AIT Incident Type".Code;
            DataClassification = CustomerContent;
        }
        field(4; "Status"; Option)
        {
            Caption = 'Estado';
            OptionMembers = Open,Close;
            OptionCaption = 'Abierta,Cerrada';
            DataClassification = CustomerContent;
        }
        field(5; "Created On"; Date)
        {
            Caption = 'Creada el';
            Editable = false;
            DataClassification = CustomerContent;
        }
        field(6; "Created By"; Code[50])
        {
            Caption = 'Creada por';
            Editable = false;
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        "Created On" := WorkDate();
        "Created By" := CopyStr(UserId(), 1, 50);
    end;
}