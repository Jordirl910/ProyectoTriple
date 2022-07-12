table 59433 Concesionarios
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; IdVendedor; Integer)
        {
            DataClassification = CustomerContent;
            AutoIncrement = true; //Incrementa automaticamente en 1 el valor.
        }

        field(2; Vendedor; Text[20])
        {
            DataClassification = CustomerContent;
        }

        field(3; MarcaVenta; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Marca Vehiculo';
            TableRelation = Marcas.Marca;
        }

        field(4; CiudadConcesionario; Text[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Ciudad.Ciudad;
        }

        /*  field(5; VentasRealizadas; Integer)
          {
              DataClassification = CustomerContent;

          }*/
    }




    keys
    {
        key(Key1; IdVendedor)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; IdVendedor, Vendedor, MarcaVenta, CiudadConcesionario) { } //PONER LOS FIELDS ABAJO DE LAS KEYS SIEMPRE!!

    }
    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin
        //  Message('Enhorabuena por la venta ' + rec.Vendedor + '!');
        //VentasRealizadas ++

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}