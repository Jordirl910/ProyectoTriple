table 59434 Vehiculos
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; NumeroDeSerie; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Numero de serie';
            InitValue = 0;
            BlankZero = false;
        }
        field(2; Marca; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Marcas.Marca;
        }
        field(3; Modelo; Text[50])
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                Message(' El coche pertenece a ' + rec.Marca + ' y es un ' + rec.Modelo);
            end;
        }
    }

    keys
    {
        key(Key1; NumeroDeSerie)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; NumeroDeSerie, Marca, Modelo) { } //PONER LOS FIELDS ABAJO DE LAS KEYS SIEMPRE!!

    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        Message('Insertado de manera correcta');
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin
        Message('Dato Borrado correctamente');
    end;

    trigger OnRename()
    begin

    end;

}