table 59436 Marcas
{
    DataClassification = ToBeClassified;

    fields
    {

        field(1; Marca; Text[50])
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; Marca)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Marca) { } //PONER LOS FIELDS ABAJO DE LAS KEYS SIEMPRE!!

    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        //  Message('Insertado de manera correcta');
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin
        //  Message('Dato Borrado correctamente');
    end;

    trigger OnRename()
    begin

    end;

}