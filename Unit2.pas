unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.UI, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet;

type
  TForm2 = class(TForm)
    con: TFDConnection;
    qry: TFDQuery;
    DBGrid1: TDBGrid;
    ds: TDataSource;
    cursor: TFDGUIxWaitCursor;
    alerter: TFDEventAlerter;
    procedure alerterAlert(ASender: TFDCustomEventAlerter;
      const AEventName: string; const AArgument: Variant);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.alerterAlert(ASender: TFDCustomEventAlerter;
  const AEventName: string; const AArgument: Variant);
begin
  if CompareText(AEventName,'CUSTOMER') = 0 then
  begin
    qry.Refresh;
  end;

end;

procedure TForm2.FormShow(Sender: TObject);
begin
  alerter.Active:=True;
  qry.Open();
end;

end.
