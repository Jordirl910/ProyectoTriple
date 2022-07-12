page 59434 Vehiculos
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Vehiculos;

    layout
    {
        area(Content)
        {
            repeater(ListaVehiculos)
            {
                field(NumeroDeSerie; rec.NumeroDeSerie)
                {
                    ApplicationArea = All;

                }
                field(Marca; rec.Marca)
                {
                    ApplicationArea = All;

                }
                field(Modelo; rec.Modelo)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}