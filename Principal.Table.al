table 59435 Principal
{
    DataClassification = CustomerContent;




    fields
    {

        field(1; "Customer num."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Client';
            TableRelation = Clientes.Nombre;

        }


        field(2; "Coche Num."; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'NumSerie';
            //NotBlank = true;
            TableRelation = Vehiculos.NumeroDeSerie;
        }


        field(3; "Vendedor num."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'IdVendedor';
            TableRelation = Concesionarios."IdVendedor";
        }
        field(4; "Factura num."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'NumFactura';


        }






    }

    keys
    {
        key(Key1; "Factura num.")
        {
            Clustered = true;
        }
    }




    trigger OnInsert() //este trigger salta al insertar datos en las tablas
    begin

    end;

    trigger OnModify()//este trigger salta al modificar datos de la tabla
    begin

    end;

    trigger OnDelete()//este trigger salta al borrar datos de una tabla
    begin
        if not (Confirm('¿Esta esta seguro de que quiere eliminar este valor?')) then
            Error('No has confirmado que se pueda eliminar');
    end;

    trigger OnRename()//estre trigger salta al modificar la clave primaria
    begin

    end;

}