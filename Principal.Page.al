page 59435 Principal
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Principal;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Customer num."; Rec."Customer num.")//Se pone Rec. para que no salte un warning
                {
                    ApplicationArea = All;

                }
                field("Coche Num."; Rec."Coche Num.")
                {
                    ApplicationArea = All;
                }
                field("Vendedor num."; Rec."Vendedor num.")
                {
                    ApplicationArea = All;

                }
                field("Factura num."; Rec."Factura num.")
                {
                    ApplicationArea = All;

                }

            }
        }
    }

}

