unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1id: TAutoIncField;
    ADOQuery1Name: TWideStringField;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery2idwork: TAutoIncField;
    ADOQuery2typework: TWideStringField;
    ADOQuery1idw: TIntegerField;
    ADOQuery1namework: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

uses Unit1;

{$R *.dfm}

end.
