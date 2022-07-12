page 59433 Vendedores2
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Concesionarios;

    layout
    {
        area(Content)
        {
            repeater(Vendedores)
            {
                field(IdVendedor; Rec.IdVendedor)
                {
                    ApplicationArea = All;

                }


                field(Nombre; Rec.Vendedor)
                {
                    ApplicationArea = All;

                }


                field(MarcaVenta; Rec.MarcaVenta)
                {
                    ApplicationArea = All;

                }

                field(CiudadConcesionario; Rec.CiudadConcesionario)
                {
                    ApplicationArea = All;

                }


                /*  field(VentasRealizadas; Rec.VentasRealizadas)
                  {
                      ApplicationArea = All;

                  } */
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}

//fieldgroup dropdown es como un tooltip pero mostrando los campos que tu les indiques.
//Fieldgroup brick és indica que campos se van a visualizar desde una interfaz de mobil o de tablet.