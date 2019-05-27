unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls, Menus, ActnList, Buttons, RTTICtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnbintang: TBitBtn;
    btnelips: TBitBtn;
    btntrapesium: TBitBtn;
    btneraser: TBitBtn;
    btnkubus: TBitBtn;
    btnzoomin: TBitBtn;
    btnrotasikiri: TBitBtn;
    btnfreehand: TBitBtn;
    btnfill: TBitBtn;
    btnbalok: TBitBtn;
    btnline: TBitBtn;
    btnzoomout: TBitBtn;
    btnrotasikanan: TBitBtn;
    btnpersegi: TBitBtn;
    btnsegienam: TBitBtn;
    btnjajargenjang: TBitBtn;
    btnsegitiga: TBitBtn;
    btnsegilima: TBitBtn;
    btnlingkaran: TBitBtn;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    ColorButton1: TColorButton;
    ColorButton2: TColorButton;
    ColorDialog1: TColorDialog;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Label1: TLabel;
    TrackBar1: TTrackBar;
    dowright: TButton;
    jaraktranslasi: TEdit;
    upright: TButton;
    downleft: TButton;
    upleft: TButton;
    right: TButton;
    down: TButton;
    up: TButton;
    Image1: TImage;
    procedure btnbalokClick(Sender: TObject);
    procedure btnbintangClick(Sender: TObject);
    procedure btnelipsClick(Sender: TObject);
    procedure btneraserClick(Sender: TObject);
    procedure btnfillClick(Sender: TObject);
    procedure btnfreehandClick(Sender: TObject);
    procedure btnjajargenjangClick(Sender: TObject);
    procedure btnkubusClick(Sender: TObject);
    procedure btnlineClick(Sender: TObject);
    procedure btnlingkaranClick(Sender: TObject);
    procedure btnpersegiClick(Sender: TObject);
    procedure btnrotasikananClick(Sender: TObject);
    procedure btnrotasikiriClick(Sender: TObject);
    procedure btnsegienamClick(Sender: TObject);
    procedure btnsegilimaClick(Sender: TObject);
    procedure btnsegitigaClick(Sender: TObject);
    procedure btntrapesiumClick(Sender: TObject);
    procedure btnzoominClick(Sender: TObject);
    procedure btnzoomoutClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ColorButton1Click(Sender: TObject);
    procedure ColorButton2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TrackBar1Change(Sender: TObject);
    procedure zoominClick(Sender: TObject);
    procedure downClick(Sender: TObject);
    procedure downleftClick(Sender: TObject);
    procedure dowrightClick(Sender: TObject);
    procedure leftClick(Sender: TObject);
    procedure rightClick(Sender: TObject);
    procedure upleftClick(Sender: TObject);
    procedure upClick(Sender: TObject);
    procedure Clear();
    procedure Draw();
    procedure FormActivate(Sender: TObject);
    procedure uprightClick(Sender: TObject);
    procedure zoomoutClick(Sender: TObject);
    //
    procedure triD();
    procedure reset();
    procedure freeH(center: TPoint);
    procedure eraseH(center: TPoint);
    //
    procedure bgTicTacToe();
    procedure pTicTacToe(x: Integer; y: Integer);
    procedure logicTictactoe(playerX: Array of Integer ; playerY: Array of Integer);
    procedure oTictacToe(x: Integer ; y: Integer);
    procedure xTicTacToe(x: Integer ; y: Integer);
    procedure slotTicTacToe(x: Integer ; y: Integer );
    procedure clearSlotTicTacToe(x: Integer ; y: Integer);
  private

  public

  end;
    TAThread = class(TThread)
  public
    procedure Execute; override;
    procedure SafeFree;
  end;

var
  //
  freeZ, downZ, eraseZ: Boolean;
  titik: Array of TPoint;
  jml: Integer;
  prev: TPoint;
  threeD: boolean;
  ctKanan, ctKiri: TColor;
  penWD: Integer;

  theThread: TAThread;
  //
  isTicTacToe, isPlayer, isSlot, isWin: Boolean;
  p1X, p1Y, p2X, p2Y: Array of Integer;
  moveTicTacToe: Integer;
  //
  Form1: TForm1;
  tengah : TPoint;
  objek : Array of TPoint;
  ax, bx, ay, by, i, jmltitik : integer;
  circle : boolean;
  px, py : integer;
  jenis : String;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnbintangClick(Sender: TObject);
begin
  threeD := false;
  circle := false;
  jmltitik := 10;
  SetLength(objek, jmltitik);
  objek[0] := Point(150,100);
  objek[1] := Point(163,137);
  objek[2] := Point(200,137);
  objek[3] := Point(170,160);
  objek[4] := Point(180,200);
  objek[5] := Point(150,175);
  objek[6] := Point(120,200);
  objek[7] := Point(130,160);
  objek[8] := Point(100,137);
  objek[9] := Point(137,137);
  tengah.x := 150;
  tengah.y := 150;
  Clear(); Draw();
end;

procedure TForm1.btnbalokClick(Sender: TObject);
begin
  threeD := true;

  jml:= 8;
  SetLength(titik, 8);

  titik[0]:= TPoint.Create(50,50);
  titik[1]:= TPoint.Create(30,100);
  titik[2]:= TPoint.Create(100,100);
  titik[3]:= TPoint.Create(120,50);

  titik[4]:= TPoint.Create(50,150);
  titik[5]:= TPoint.Create(30,200);
  titik[6]:= TPoint.Create(100,200);
  titik[7]:= TPoint.Create(120,150);

  triD();
end;

procedure TForm1.btnelipsClick(Sender: TObject);
begin
  threeD := false;
  circle := true;
  ax := 100;
  ay := 120;
  bx := 200;
  by := 180;
  tengah.x := 150;
  tengah.y := 150;
  Clear();
  Draw();
end;

procedure TForm1.btneraserClick(Sender: TObject);
begin
  freeZ := false;
  eraseZ := true;
end;

procedure TForm1.btnfillClick(Sender: TObject);
begin

end;

procedure TForm1.btnfreehandClick(Sender: TObject);
begin
  eraseZ := false;
  freeZ:= True;
end;

procedure TForm1.btnjajargenjangClick(Sender: TObject);
begin
  threeD := false;
  circle := false;
  jmltitik := 4;
  SetLength(objek, jmltitik);
  objek[0] := Point(120,100);
  objek[1] := Point(220,100);
  objek[2] := Point(180,200);
  objek[3] := Point(80,200);
  tengah.x := 150;
  tengah.y := 150;
  Clear(); Draw();
end;

procedure TForm1.btnkubusClick(Sender: TObject);
begin
  threeD := true;

  jml:= 8;
  SetLength(titik, 8);

  titik[0]:= TPoint.Create(50,50);
  titik[1]:= TPoint.Create(30,100);
  titik[2]:= TPoint.Create(100,100);
  titik[3]:= TPoint.Create(120,50);

  titik[4]:= TPoint.Create(50,120);
  titik[5]:= TPoint.Create(30,170);
  titik[6]:= TPoint.Create(100,170);
  titik[7]:= TPoint.Create(120,120);

  triD();
end;

procedure TForm1.btnlineClick(Sender: TObject);
begin

end;

procedure TForm1.btnlingkaranClick(Sender: TObject);
begin
  threeD := false;
  circle := true;
  ax := 100;
  ay := 100;
  bx := 200;
  by := 200;
  tengah.x := 150;
  tengah.y := 150;
  Clear();
  Draw();
end;

procedure TForm1.btnpersegiClick(Sender: TObject);
begin
  jenis := persegi
  threeD := false;
  circle := false;
  jmltitik := 4;
  SetLength(objek, jmltitik);
  objek[0] := Point(100,100);
  objek[1] := Point(200,100);
  objek[2] := Point(200,200);
  objek[3] := Point(100,200);
  tengah.x := round(600/jmltitik);
  tengah.y := round(600/jmltitik);
  Clear(); Draw();
end;

procedure TForm1.btnrotasikananClick(Sender: TObject);
var
  sdt, xX,yY: Real;


begin
  sdt:= StrToFloat(Edit1.Text) * pi / 180;
  if circle then
  begin
     xX := ax;
     yY := ay;
     ax:= round(xX * cos(sdt) - yY * sin(sdt));
     ay :=  round(xX * sin(sdt) + yY * cos(sdt));

     xX := bx;
     yY := by;
     bx:= round(xX * cos(sdt) - yY * sin(sdt));
     by :=  round(xX * sin(sdt) + yY * cos(sdt));
  end
  else
  begin
       for i:= jmltitik - 1 downto 0 do
        begin
             xX := objek[i].x;// - Image1.Width div 2;
             yY:= objek[i].y;// - Image1.Height div 2;
             objek[i].x :=  round(xX * cos(sdt) - yY * sin(sdt));
             objek[i].y :=  round(xX * sin(sdt) + yY * cos(sdt));
        end;
  end;
    //Clear();
  Draw();
end;

procedure TForm1.btnrotasikiriClick(Sender: TObject);
var
  sdt, xX,yY: Real;


begin
  sdt:= StrToFloat(Edit1.Text) * pi / 180 * -1;
  if circle then
  begin
     xX := ax;
     yY := ay;
     ax:= round(xX * cos(sdt) - yY * sin(sdt));
     ay :=  round(xX * sin(sdt) + yY * cos(sdt));

     xX := bx;
     yY := by;
     bx:= round(xX * cos(sdt) - yY * sin(sdt));
     by :=  round(xX * sin(sdt) + yY * cos(sdt));
  end
  else
  begin
       for i:= jmltitik - 1 downto 0 do
        begin
             xX := objek[i].x;// - Image1.Width div 2;
             yY:= objek[i].y;// - Image1.Height div 2;
             objek[i].x :=  round(xX * cos(sdt) - yY * sin(sdt));
             objek[i].y :=  round(xX * sin(sdt) + yY * cos(sdt));
        end;
  end;
    //Clear();
  Draw();
end;


procedure TForm1.btnsegitigaClick(Sender: TObject);
begin
  threeD := false;
  circle := false;
  jmltitik := 3;
  SetLength(objek, jmltitik);
  objek[0] := Point(200,200);
  objek[1] := Point(150,100);
  objek[2] := Point(100,200);
  tengah.x := 150;
  tengah.y := 150;
  Clear(); Draw();
end;

procedure TForm1.btntrapesiumClick(Sender: TObject);
begin
  threeD := false;
  circle := false;
  jmltitik := 4;
  SetLength(objek, jmltitik);
  objek[0] := Point(120,120);
  objek[1] := Point(180,120);
  objek[2] := Point(200,180);
  objek[3] := Point(100,180);
  tengah.x := round(600/jmltitik);
  tengah.y := round(600/jmltitik);
  Clear(); Draw();
end;

procedure TForm1.btnzoominClick(Sender: TObject);
begin
  if (circle = false) and (threeD = false) then
  begin
    for i := jmltitik-1 downto 0 do
    begin
      objek[i].x := tengah.x + round((objek[i].x - tengah.x) * 1.1);
      objek[i].y := tengah.y + round((objek[i].y - tengah.y) * 1.1);
    end;
  end
  else if threeD = false then
  begin
    ax := tengah.x + round((ax - tengah.x) * 1.1);
    bx := tengah.x + round((bx - tengah.x) * 1.1);
    ay := tengah.y + round((ay - tengah.y) * 1.1);
    by := tengah.y + round((by - tengah.y) * 1.1);
  end;
  Clear();
  Draw();
end;

procedure TForm1.btnzoomoutClick(Sender: TObject);
begin
    if (circle = false) and (threeD = false) then
  begin
    for i := jmltitik-1 downto 0 do
    begin
      objek[i].x := tengah.x + round((objek[i].x - tengah.x) / 1.1);
      objek[i].y := tengah.y + round((objek[i].y - tengah.y) / 1.1);
    end;
  end
  else if threeD = false then
  begin
    ax := tengah.x + round((ax - tengah.x) / 1.1);
    bx := tengah.x + round((bx - tengah.x) / 1.1);
    ay := tengah.y + round((ay - tengah.y) / 1.1);
    by := tengah.y + round((by - tengah.y) / 1.1);
  end;
  Clear();
  Draw();
end;


procedure TForm1.FormActivate(Sender: TObject);
begin
  reset();
  threeD := false;
  Image1.Canvas.Brush.Color:=clWhite;
  Image1.Canvas.FillRect(0,0,Image1.Width,Image1.Height);

  ComboBox1.Items.Clear;             //Delete all existing choices
  ComboBox1.Items.Add('psSolid');        //Add an choice
  ComboBox1.Items.Add('psDash');
  ComboBox1.Items.Add('psDot');
  ComboBox1.Items.Add('psDashDot');
  ComboBox1.Items.Add('psDashDotDot');

  TrackBar1.Min:=1;
  TrackBar1.Max := 20;
end;


procedure TForm1.uprightClick(Sender: TObject);
var
  jarak : integer;
begin
  jarak := StrtoInt(Form1.jaraktranslasi.Text);
  if (circle = false) and (threeD = false) then
  begin
    for i := jmltitik-1 downto 0 do
    begin
      objek[i].x := objek[i].x + jarak;
      objek[i].y := objek[i].y - jarak;
    end;
  end
  else if threeD = false then
  begin
    ax := ax + jarak;
    bx := bx + jarak;
    ay := ay - jarak;
    by := by - jarak;
  end;
  Clear();
  Draw();
end;

procedure TForm1.zoomoutClick(Sender: TObject);
begin

end;


procedure TForm1.btnsegienamClick(Sender: TObject);
begin
  threeD := false;
  circle := false;
  jmltitik := 6;
  SetLength(objek, jmltitik);
  objek[0] := Point(150,100);
  objek[1] := Point(200,125);
  objek[2] := Point(200,175);
  objek[3] := Point(150,200);
  objek[4] := Point(100,175);
  objek[5] := Point(100,125);
  tengah.x := round(900/jmltitik);
  tengah.y := round(900/jmltitik);
  Clear(); Draw();
end;

procedure TForm1.btnsegilimaClick(Sender: TObject);
begin
  threeD := false;
  circle := false;
  jmltitik := 5;
  SetLength(objek, jmltitik);
  objek[0] := Point(150,100);
  objek[1] := Point(200,140);
  objek[2] := Point(180,200);
  objek[3] := Point(120,200);
  objek[4] := Point(100,140);
  tengah.x := 150;
  tengah.y := 150;
  Clear(); Draw();
end;

procedure TForm1.Button10Click(Sender: TObject);
var
  i,j, avg            : Integer;
  red,green,blue : byte;
begin
  for i:= 0 to Image1.Width - 1 do
  begin
       for j:= 0 to Image1.Height - 1 do
       begin
            RedGreenBlue(Image1.Canvas.Pixels[i,j], red, green, blue);
            avg := round((red + green + blue)/ 3);
            Image1.Canvas.Pixels[i,j] := RGBToColor(avg, avg, avg);;
       end;
  end;

end;

procedure TForm1.Button11Click(Sender: TObject);
var
  i,j,k,l,ct     : Integer;
  ca             : Array of Integer;
  red,green,blue : Array of byte;
begin
  SetLength(red,81);
  SetLength(green,81);
  SetLength(blue,81);
  SetLength(ca, 3);
  for i:= 4 to Form1.Width - 5 do
  begin
       //progress := 0;
       //Form1.ProgressBar1.Min:=0;
       //Form1.ProgressBar1.Max:=50000000;
       //Form1.ProgressBar1.Position:=progress;
       for j:= 4 to Form1.Image1.Height - 5 do
       begin
            ca[0] := 0;
            ca[1] := 0;
            ca[2] := 0;
            ct := 0;
            for k := -4 to 4 do
            begin
                 for l := -4 to 4 do
                 begin
                      //progress := progress + 1;
                      //Form1.Label2.Caption:=IntToStr(progress);
                      //Form1.ProgressBar1.Position:=progress;
                      RedGreenBlue(Form1.Image1.Canvas.Pixels[i-k,j-l], red[ct], green[ct], blue[ct]);
                      ct := ct + 1;
                 end;
            end;
            for k := 0 to 80 do
            begin
                 //progress := progress + 1;
                 //Form1.Label2.Caption:=IntToStr(progress);
                 //Form1.ProgressBar1.Position:=progress;
                 ca[0] := ca[0] + red[k];
                 ca[1] := ca[1] + green[k];
                 ca[2] := ca[2] + blue[k];
            end;
            Form1.Image1.Canvas.Pixels[i,j] := RGBToColor(round(ca[0]/81),round(ca[1]/81),round(ca[2]/81));

       end;
       //Form1.ProgressBar1.Position:=50000000;

  end;
  //if assigned(theThread) then
  //  theThread.Start
  //else
  //  theThread := TAThread.Create(false);

end;

procedure TForm1.Button13Click(Sender: TObject);
begin
   if colordialog1.Execute then
   begin
    ctKiri:=(colordialog1.Color);
    Image1.Canvas.Brush.Color:=(colordialog1.Color);
    ColorButton1.ButtonColor:=(colordialog1.Color);
   end;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  if colordialog1.Execute then
   begin
    ctKanan:=(colordialog1.Color);
    Image1.Canvas.Pen.Color:=(colordialog1.Color);
    ColorButton2.ButtonColor:=(colordialog1.Color);
   end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin

end;


procedure TForm1.Button7Click(Sender: TObject);
var
  i: Integer;
begin
  freeZ:= False;
  eraseZ:= False;

  isTicTacToe:=True;
  isPlayer:=True;
  isSlot := true;
  isWin:= False;
  moveTicTacToe:= 0;
  SetLength(p1X, 3);
  SetLength(p1Y, 3);
  SetLength(p2X, 3);
  SetLength(p2Y, 3);
  Image1.Canvas.Brush.Color:=clWhite;
  ColorButton1.ButtonColor:=clWhite;

  for i:= 0 to 2 do
   begin
        p1X[i] := 0;
        p1Y[i] := 0;
        p2X[i] := 0;
        p2Y[i] := 0;
   end;
  bgTicTacToe();
end;

procedure TForm1.Button8Click(Sender: TObject);
begin

end;

procedure TForm1.Button9Click(Sender: TObject);
var
  i,j            : Integer;
  red,green,blue : byte;
begin
  for i:= 0 to Image1.Width - 1 do
  begin
       for j:= 0 to Image1.Height - 1 do
       begin
            RedGreenBlue(Image1.Canvas.Pixels[i,j], red, green, blue);
            Image1.Canvas.Pixels[i,j] := RGBToColor(255-red,255-green,255-blue);;
       end;
  end;

end;

procedure TForm1.ColorButton1Click(Sender: TObject);
begin

end;

procedure TForm1.ColorButton2Click(Sender: TObject);
begin

end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of  //what entry (which item) has currently been chosen
    0: Image1.Canvas.Pen.Style := psSolid;
    1: Image1.Canvas.Pen.Style := psDash;
    2: Image1.Canvas.Pen.Style := psDot;
    3: Image1.Canvas.Pen.Style := psDashDot;
    4: Image1.Canvas.Pen.Style := psDashDotDot;
  end;
end;


procedure TForm1.bgTicTacToe();
begin
  Clear();
  Image1.Canvas.Pen.Width:= 10;

  Image1.Canvas.MoveTo(Image1.Width div 5, Image1.Height div 5 - 100);
  Image1.Canvas.LineTo(Image1.Width div 5, Image1.Height div 5 * 4 + 100);

  Image1.Canvas.MoveTo(Image1.Width div 5 * 2, Image1.Height div 5 - 100);
  Image1.Canvas.LineTo(Image1.Width div 5 * 2, Image1.Height div 5 * 4 + 100);

  Image1.Canvas.MoveTo(Image1.Width div 5 * 3, Image1.Height div 5 - 100);
  Image1.Canvas.LineTo(Image1.Width div 5 * 3, Image1.Height div 5 * 4 + 100);

  Image1.Canvas.MoveTo(Image1.Width div 5 * 4, Image1.Height div 5 - 100);
  Image1.Canvas.LineTo(Image1.Width div 5 * 4, Image1.Height div 5 * 4 + 100);



  Image1.Canvas.MoveTo(Image1.Width div 5 - 100, Image1.Height div 5);
  Image1.Canvas.LineTo(Image1.Width div 5 * 4 + 100, Image1.Height div 5);

  Image1.Canvas.MoveTo(Image1.Width div 5 - 100, Image1.Height div 5 * 2);
  Image1.Canvas.LineTo(Image1.Width div 5 * 4 + 100, Image1.Height div 5 * 2);

  Image1.Canvas.MoveTo(Image1.Width div 5 - 100, Image1.Height div 5 * 3);
  Image1.Canvas.LineTo(Image1.Width div 5 * 4 + 100, Image1.Height div 5 * 3);
       
  Image1.Canvas.MoveTo(Image1.Width div 5 - 100, Image1.Height div 5 * 4);
  Image1.Canvas.LineTo(Image1.Width div 5 * 4 + 100, Image1.Height div 5 * 4);
end;

procedure TForm1.pTicTacToe(x: Integer; y: Integer);
var
  xArea   : Integer;
  yArea   : Integer;
begin
   xArea := (x div (Image1.Width div 5));
   yArea := (y div (Image1.Height div 5));

   x := (Image1.Width div 5) * xArea + (Image1.Width div 5 * 2 - Image1.Width div 5) div 2;
   y := (Image1.Height div 5) * yArea + (Image1.Height div 5 * 2 - Image1.Height div 5) div 2;

   if (xArea > 0) and (xArea < 4) and (yArea > 0) and (yArea < 4) and (isWin = False) then
   begin
     slotTicTacToe(xArea, yArea);
     if isSlot then
     begin
        if isPlayer then
             begin
                  clearSlotTicTacToe((Image1.Width div 5) * p1X[(moveTicTacToe mod 6) div 2] + (Image1.Width div 5 * 2 - Image1.Width div 5) div 2,(Image1.Height div 5) * p1Y[(moveTicTacToe mod 6) div 2] + (Image1.Height div 5 * 2 - Image1.Height div 5) div 2);
                  p1X[(moveTicTacToe mod 6) div 2] := xArea;
                  p1Y[(moveTicTacToe mod 6) div 2]:= yArea;
                  oTictacToe(x,y);
                  logicTictactoe(p1X, p1Y);
             end
        else
        begin
                  clearSlotTicTacToe((Image1.Width div 5) * p2X[(moveTicTacToe mod 6) div 2] + (Image1.Width div 5 * 2 - Image1.Width div 5) div 2,(Image1.Height div 5) * p2Y[(moveTicTacToe mod 6) div 2] + (Image1.Height div 5 * 2 - Image1.Height div 5) div 2);
                  p2X[(moveTicTacToe mod 6) div 2] := xArea;
                  p2Y[(moveTicTacToe mod 6) div 2]:= yArea;
                  xTicTacToe(x,y);
                  logicTictactoe(p2X, p2Y);
        end;
     moveTicTacToe:= moveTicTacToe + 1;
     isPlayer:= not isPlayer;
     end;
   end;
   isSlot:= True;
end;

procedure TForm1.slotTicTacToe(x: Integer ; y: Integer );
var
  i: Integer;
begin
     for i := 0 to 2 do
      begin
           if (p1X[i] = x) and (p1Y[i] = y) then
           begin

             isSlot := False;
           end;
           if (p2X[i] = x) and (p2Y[i] = y) then
           begin

             isSlot := False;
           end;
      end;
end;

procedure TForm1.clearSlotTicTacToe(x: Integer ; y: Integer );
begin
     Image1.Canvas.Brush.Color:=clWhite;
     Image1.Canvas.FillRect(x - Image1.height div 13, y - Image1.height div 13, x + Image1.height div 13, y + Image1.height div 13);
end;

procedure TForm1.logicTictactoe(playerX: Array of Integer ; playerY: Array of Integer);
var
  win, i, j, temp, horizontalTemp  : Integer;
begin
  horizontalTemp:=0;
  for i := 0 to 1 do
   begin
        for j := i + 1 to 2 do
         begin
              if playerX[i] > playerX[j] then
              begin
                   temp := playerX[i];
                   playerX[i] := playerX[j];
                   playerX[j] := temp;

                   temp := playerY[i];
                   playerY[i] := playerY[j];
                   playerY[j] := temp;
              end;
         end;
   end;

   for i:= 1 to 3 do
    begin
         if ((playerX[0] = i) and (playerX[1] = i) and (playerX[2] = i)) or ((playerY[0] = i) and (playerY[1] = i) and (playerY[2] = i)) then
         begin
             isWin:= True;
             if isPlayer then Label1.Caption:= 'Player 1 WIN!'
             else Label1.Caption:= 'Player 2 WIN!'
         end;
    end;

   if isWin = False then
   begin
        for i:= 1 to 3 do
         begin
              if (playerX[i - 1] = i) and (playerY[i - 1] = i) then horizontalTemp:= horizontalTemp +1;
         end;
        if horizontalTemp = 3 then
        begin
             isWin:= True;
             if isPlayer then Label1.Caption:= 'Player 1 WIN!'
             else Label1.Caption:= 'Player 2 WIN!'
        end;

   end;

   horizontalTemp:=0;

   if isWin = False then
   begin
        for i:= 1 to 3 do
         begin
              if (playerX[i - 1] = i) and (playerY[i - 1] = (3 - (i - 1))) then horizontalTemp:= horizontalTemp +1;
         end;
        if horizontalTemp = 3 then
        begin
             isWin:= True;
             if isPlayer then Label1.Caption:= 'Player 1 WIN!'
             else Label1.Caption:= 'Player 2 WIN!'
        end;
   end;
end;

procedure TForm1.oTictactoe(x: Integer; y: Integer);
begin
   Image1.Canvas.Pen.Width:= 3;
   Image1.Canvas.Ellipse(x - Image1.height div 15, y - Image1.height div 15, x + Image1.height div 15, y + Image1.height div 15);
   Image1.Canvas.Pen.Width:= penWD;
end;

procedure TForm1.xTictactoe(x: Integer; y: Integer);
begin
   Image1.Canvas.Pen.Width:= 3;
   Image1.Canvas.Line(x - Image1.height div 15, y - Image1.height div 15, x + Image1.height div 15, y + Image1.height div 15);
   Image1.Canvas.Line(x + Image1.height div 15, y - Image1.height div 15, x - Image1.height div 15, y + Image1.height div 15);
   Image1.Canvas.Pen.Width:= penWD;
end;


procedure TForm1.Button4Click(Sender: TObject);
begin

end;

procedure TForm1.Button5Click(Sender: TObject);
begin

end;

procedure TForm1.Button6Click(Sender: TObject);
begin

end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if freeZ or eraseZ then
  begin
      DownZ := true;
      prev := TPoint.Create(X, Y);

  end
  else if isTicTacToe then
  begin
       pTictacToe(X,Y);
  end;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if downZ then
  begin
      if freeZ then freeH(TPoint.create(X,Y));
      if eraseZ then eraseH(TPoint.create(X,Y));

      prev := TPoint.Create(X,Y);
  end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  downZ:= false;
end;


procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  penWD:=TrackBar1.Position;
  Image1.Canvas.Pen.Width:= penWD ;
end;

procedure TForm1.zoominClick(Sender: TObject);
begin

end;


procedure TForm1.downClick(Sender: TObject);
var
  jarak : integer;
begin
  jarak := StrtoInt(Form1.jaraktranslasi.Text);
  if (circle = false) and (threeD = false) then
  begin
    for i := jmltitik-1 downto 0 do
    begin
      objek[i].y := objek[i].y + jarak;
    end;
  end
  else if threeD = false then
  begin
   ay := ay + jarak;
   by := by + jarak;
  end;
  Clear();
  Draw();
end;

procedure TForm1.downleftClick(Sender: TObject);
var
  jarak : integer;
begin
  jarak := StrtoInt(Form1.jaraktranslasi.Text);
  if (circle = false) and (threeD = false) then
  begin
    for i := jmltitik-1 downto 0 do
    begin
      objek[i].x := objek[i].x - jarak;
      objek[i].y := objek[i].y + jarak;
    end;
  end
  else if threeD = false then
  begin
    ax := ax - jarak;
    bx := bx - jarak;
    ay := ay + jarak;
    by := by + jarak;
  end;
  Clear();
  Draw();
end;

procedure TForm1.dowrightClick(Sender: TObject);
var
  jarak : integer;
begin
  jarak := StrtoInt(Form1.jaraktranslasi.Text);
  if (circle = false) and (threeD = false) then
  begin
    for i := jmltitik-1 downto 0 do
    begin
      objek[i].x := objek[i].x + jarak;
      objek[i].y := objek[i].y + jarak;
    end;
  end
  else if threeD = false then
  begin
    ax := ax + jarak;
    bx := bx + jarak;
    ay := ay + jarak;
    by := by + jarak;
  end;
  Clear();
  Draw();
end;

procedure TForm1.leftClick(Sender: TObject);
var
  jarak : integer;
begin
  jarak := StrtoInt(Form1.jaraktranslasi.Text);
  if (circle = false) and (threeD = false) then
  begin
    for i := jmltitik-1 downto 0 do
    begin
      objek[i].x := objek[i].x - jarak;
    end;
  end
  else if threeD = false then
  begin
   ax := ax - jarak;
   bx := bx - jarak;
  end;
  Clear();
  Draw();
end;

procedure TForm1.rightClick(Sender: TObject);
var
  jarak : integer;
begin
  jarak := StrtoInt(Form1.jaraktranslasi.Text);
  if (circle = false) and (threeD = false) then
  begin
    for i := jmltitik-1 downto 0 do
    begin
      objek[i].x := objek[i].x + jarak;
    end;
  end
  else if threeD = false then
  begin
   ax := ax + jarak;
   bx := bx + jarak;
  end;
  Clear();
  Draw();
end;

procedure TForm1.upleftClick(Sender: TObject);
var
  jarak : integer;
begin
  jarak := StrtoInt(Form1.jaraktranslasi.Text);
  if (circle = false) and (threeD = false) then
  begin
    for i := jmltitik-1 downto 0 do
    begin
      objek[i].x := objek[i].x - jarak;
      objek[i].y := objek[i].y - jarak;
    end;
  end
  else if threeD = false then
  begin
    ax := ax - jarak;
    bx := bx - jarak;
    ay := ay - jarak;
    by := by - jarak;
  end;
  Clear();
  Draw();
end;

procedure TForm1.upClick(Sender: TObject);
var
  jarak : integer;
begin
  jarak := StrtoInt(Form1.jaraktranslasi.Text);
  if (circle = false) and (threeD = false) then
  begin
    for i := jmltitik-1 downto 0 do
    begin
      objek[i].y := objek[i].y - jarak;
    end;
  end
  else if threeD = false then
  begin
   ay := ay - jarak;
   by := by - jarak;
  end;
  Clear();
  Draw();
end;

procedure TForm1.Draw();
begin
  if (circle = false) and (threeD = false) then
  begin
    Image1.Canvas.MoveTo(objek[0]);
    for i := jmltitik-1 downto 0 do
    begin
      Image1.Canvas.LineTo(objek[i]);
    end;
  end
  else if threeD = false then
  begin
    Image1.Canvas.Ellipse(ax,ay,bx,by);
  end;
end;

procedure TForm1.Clear();
begin
  Image1.Canvas.Brush.Color:=clWhite;
  Image1.Canvas.FillRect(0,0,Image1.Width,Image1.Height);
  Image1.Canvas.Brush.Color:=ctKiri;
end;


procedure TForm1.reset();
begin
  freeZ := false;
  downZ := false;
  eraseZ := false;
  Image1.Canvas.Brush.Color:= clWhite;
  Image1.Canvas.FillRect(0,0 , Image1.Width, Image1.Height);
    Image1.Canvas.Brush.Color:=ctKiri;
end;

procedure TForm1.triD();
var
  i:      Integer ;
begin
  reset();

  Image1.Canvas.MoveTo(titik[0]);
  for i:= 3 downto 0 do
  begin
       Image1.Canvas.LineTo(titik[i]);
  end;
  Image1.Canvas.LineTo(titik[4]);

  Image1.Canvas.MoveTo(titik[4]);
  for i:= 7 downto 4 do
  begin
       Image1.Canvas.LineTo(titik[i]);
  end;

  Image1.Canvas.MoveTo(titik[1]);
  Image1.Canvas.LineTo(titik[5]);

  Image1.Canvas.MoveTo(titik[2]);
  Image1.Canvas.LineTo(titik[6]);

  Image1.Canvas.MoveTo(titik[3]);
  Image1.Canvas.LineTo(titik[7]);



end;

procedure TForm1.eraseH(center:TPoint);
begin
  Image1.Canvas.Pen.Color:= clWhite;
  Image1.Canvas.Line(prev, center);
  Image1.Canvas.Pen.Color:= ctKanan;
  Image1.Canvas.Pen.Width:= penWD ;
end;


procedure TForm1.freeH(center:TPoint);
begin
  Image1.Canvas.Pen.Width:= penWD ;
  Image1.Canvas.Line(prev, center);
end;

procedure TAThread.Execute;
var
  i,j,k,l,ct, progress     : Integer;
  ca             : Array of Integer;
  red,green,blue : Array of byte;
begin
  SetLength(red,81);
  SetLength(green,81);
  SetLength(blue,81);
  SetLength(ca, 3);
  for i:= 4 to Form1.Width - 5 do
  begin
       progress := 0;
       for j:= 4 to Form1.Image1.Height - 5 do
       begin
            Form1.Image1.Canvas.FillRect(i-100, j-100, i,j);
            ca[0] := 0;
            ca[1] := 0;
            ca[2] := 0;
            ct := 0;
            for k := -4 to 4 do
            begin
                 for l := -4 to 4 do
                 begin
                      RedGreenBlue(Form1.Image1.Canvas.Pixels[i-k,j-l], red[ct], green[ct], blue[ct]);
                      ct := ct + 1;
                 end;
            end;
            for k := 0 to 80 do
            begin
                 ca[0] := ca[0] + red[k];
                 ca[1] := ca[1] + green[k];
                 ca[2] := ca[2] + blue[k];
            end;
            Form1.Image1.Canvas.Pixels[i,j] := RGBToColor(round(ca[0]/81),round(ca[1]/81),round(ca[2]/81));

       end;


  end;

end;

procedure TAThread.SafeFree;  {avoids a dead-lock situation}
begin
  Terminate;
  WaitFor;
  if not FreeOnTerminate then
    Free;
end;

end.

