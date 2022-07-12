page 59436 Marcas
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Marcas;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {

                field(Marca; Rec.Marca)
                {
                    ApplicationArea = All;

                }
            }

        }
    }

}

