unit ufMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, uColorPicker, FMX.Objects;

type
  TfrmMain = class(TForm)
    btnColor: TButton;
    Rectangle1: TRectangle;
    procedure FormCreate(Sender: TObject);
    procedure btnColorClick(Sender: TObject);
  private
    { Private declarations }
    FColorPicker : TColorPickerPopup;
    procedure HandleColorChanged(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

procedure TfrmMain.btnColorClick(Sender: TObject);
begin
  FColorPicker.ShowAt(btnColor);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FColorPicker := TColorPickerPopup.Create(Self);
  FColorPicker.OnColorChanged := HandleColorChanged;
end;

procedure TfrmMain.HandleColorChanged(Sender: TObject);
begin
  Rectangle1.Fill.Color   := FColorPicker.Color;
end;

end.
