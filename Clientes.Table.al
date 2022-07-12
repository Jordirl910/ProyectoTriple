table 59432 Clientes
{
    DataClassification = CustomerContent;




    fields
    {

        field(1; Nombre; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Nombre Completo';
        }


        field(2; DNI; Text[50])
        {
            DataClassification = CustomerContent;
            NotBlank = true;
            //  TableRelation = Concesionario.DNI
        }


        field(3; Presupuesto; Code[100])
        {
            DataClassification = CustomerContent;
        }


        field(4; Marca; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Marca favorita';
            TableRelation = Marcas.Marca;
        }


        field(5; Mail; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'E-mail';
        }
        field(6; Pago; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Metodo de pago';
        }
        field(7; "Customer no."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Numero Cliente';
            TableRelation = Customer."No.";
        }


    }


    keys
    {
        key(Key1; Nombre)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Customer no.", Nombre, DNI, Mail) { } //PONER LOS FIELDS ABAJO DE LAS KEYS SIEMPRE!!

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