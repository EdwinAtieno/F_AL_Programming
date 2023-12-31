table 50102 "CRONUS Course"
{
    DataClassification = CustomerContent;
    Caption = 'Course';
    fields
    {
        field(10; Code; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Code';
        }
        field(20; Name; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Name';
        }
        field(30; Description; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }

        field(40; Type; Option)
        {
            DataClassification = CustomerContent;
            Caption = 'Type';
            OptionMembers = "Instructor Led"," e-Learning","Remote Training";
            OptionCaption = 'Instructor Led, e-Learning, Remote Training';
        }
        field(50; Duration; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Duration';
        }
        field(60; Price; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Price';
        }
        field(70; Active; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Active';
        }
        field(80; Difficulty; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Difficulty';
        }
        field(90; "Passing Rate"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Passing Rate';
        }

        field(100; "Instructor Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Instructor Code';
            TableRelation = "Resource" where(Type = const(Person));

        }

    }
    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
        key(Key1; "Instructor Code")
        {

        }
        key(Key2; Type)
        {

        }
    }

}