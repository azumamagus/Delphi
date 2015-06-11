unit UTeste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask, DB, Grids, DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection;

type
  TForm2 = class(TForm)
    ZConnection1: TZConnection;
    zqryrel1: TZQuery;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    dbedtnome: TDBEdit;
    dbnvgr1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
