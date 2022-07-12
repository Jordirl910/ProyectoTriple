page 59437 Ciudad
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Ciudad;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {

                field(Ciudad; Rec.Ciudad)
                {
                    ApplicationArea = All;

                }
            }

        }
    }

}