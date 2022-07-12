table 59437 Ciudad
{
    DataClassification = ToBeClassified;

    fields
    {

        field(1; Ciudad; Text[50])
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; Ciudad)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Ciudad) { } //PONER LOS FIELDS ABAJO DE LAS KEYS SIEMPRE!!

    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        //Message('Insertado de manera correcta');
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin
        // Message('Dato Borrado correctamente');
    end;

    trigger OnRename()
    begin

    end;

}