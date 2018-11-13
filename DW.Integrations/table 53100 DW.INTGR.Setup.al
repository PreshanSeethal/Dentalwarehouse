table 53100 "DW.INTGR.Setup"
{
    DataPerCompany = true;
    //DataClassification=CustomerContent;
    Description = 'Contains Setup Information for Integration';

    fields
    {
        field(1; PrimaryKey; Code[10]) { }

        /// Bidvest fields
        field(10; BIDVEST_IP; Text[50]) { }
        field(11; BIDVEST_PORT; Text[50]) { }
        field(12; BIDVEST_USER; Text[50]) { }
        field(13; BIDVEST_PASSWORD; Text[50]) { }
        field(14; BIDVEST_ENABLED; Boolean) { }

        /// Order Logistics
        field(20; ORDLOG_DEVURL; Text[50]) { }
        field(21; ORDLOG_LIVEURL; Text[50]) { }
        field(22; ORDLOG_ENABLED; Boolean) { }
        FIELD(23; ORDLOG_RESURL; Text[50]) { }
        FIELD(24; ORDLOG_USERNAME; Text[50]) { }
        FIELD(25; ORDLOG_PASSWORD; Text[50]) { }
        FIELD(26; ORDLOG_COMPANY; Text[50]) { }
        FIELD(27; ORDLOG_APPID; Text[50]) { }
        field(28; ORDLOG_SITENO; Text[50]) { }
        FIELD(29; ORDLOG_SITEPASSWORD; Text[50]) { }
        FIELD(30; ORDLOG_SITETOKENURL; Text[50]) { }





        field(200; Locked; Boolean)
        {
            Caption = 'Locked';
        }
    }

    keys
    {
        key(PK; PrimaryKey)
        {
            Clustered = true;
        }
    }

    trigger OnModify()
    begin
        TestField(Locked, false);
    end;

    procedure SetupDefaults();
    begin
        /// This procedure is used to default the fields.
        /// Values used here were determined during implementation

        /// Bidvest
        BIDVEST_IP := '41.170.90.242';
        BIDVEST_PORT := '22';
        BIDVEST_USER := 'DentalWH';
        BIDVEST_PASSWORD := 'VkZ38vpr9CUG';
        BIDVEST_ENABLED := false;

        /// Order Logistics
        ORDLOG_DEVURL := 'https://test.orderlogistics.co.za/rest/v1/';
        ORDLOG_LIVEURL := 'https://www.orderlogistics.co.za/rest/v1/';
        ORDLOG_RESURL := 'https://www.orderlogistics.co.za/rest/v1/auth';
        ORDLOG_ENABLED := false;
        ORDLOG_APPID := '';
        ORDLOG_COMPANY := '';
        ORDLOG_USERNAME := '';
        ORDLOG_PASSWORD := '';
        ORDLOG_SITENO := '';
        ORDLOG_SITEPASSWORD := '';
        ORDLOG_SITETOKENURL := 'https://www.orderlogistics.co.za/rest/v1/siteauth';

        // Modify(false);
    end;


}