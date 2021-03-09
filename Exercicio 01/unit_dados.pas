unit unit_dados;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls;

type
  Tmodule_img = class(TDataModule)
    imgList: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  module_img: Tmodule_img;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
