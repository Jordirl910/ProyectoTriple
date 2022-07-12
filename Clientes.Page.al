page 59432 Clientes
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Clientes;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Nombre; Rec.Nombre)//Se pone Rec. para que no salte un warning
                {
                    ApplicationArea = All;

                }
                field(DNI; Rec.DNI)
                {
                    ApplicationArea = All;
                }
                field(Presupuesto; Rec.Presupuesto)
                {
                    ApplicationArea = All;

                }
                field(Marca; Rec.Marca)
                {
                    ApplicationArea = All;

                }
                field(Mail; Rec.Mail)
                {
                    ApplicationArea = All;

                }
                field(Pago; Rec.Pago)
                {
                    ApplicationArea = All;

                }
                field("Customer no."; Rec."Customer no.")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

}

