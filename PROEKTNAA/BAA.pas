unit BAA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer6: TTimer;
    Timer7: TTimer;
    Image16: TImage;
    Timer8: TTimer;
    Timer9: TTimer;
    Timer10: TTimer;
    Timer11: TTimer;
    Timer12: TTimer;
    Timer13: TTimer;
    Timer14: TTimer;
    Timer15: TTimer;
    Image17: TImage;
    Timer17: TTimer;
    Timer18: TTimer;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Timer9Timer(Sender: TObject);
    procedure Timer10Timer(Sender: TObject);
    procedure Timer11Timer(Sender: TObject);
    procedure Timer12Timer(Sender: TObject);
    procedure Timer13Timer(Sender: TObject);
    procedure Timer14Timer(Sender: TObject);
    procedure Timer15Timer(Sender: TObject);
    procedure Timer17Timer(Sender: TObject);
    procedure Timer18Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x,a:integer;

implementation

{$R *.dfm}

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of

VK_ESCAPE:
begin

if a=1 then
begin
a:=0;
timer2.Enabled:=false;
Timer3.enabled:=false;
Timer4.enabled:=false;
Timer5.enabled:=false;     
Timer6.enabled:=false;
Timer7.enabled:=false;
Timer8.enabled:=false;
Timer17.enabled:=false;
Timer18.enabled:=false;
if (image2.Visible=true) or (image3.Visible=true) or (image4.Visible=true) or (image5.Visible=true) or (image6.Visible=true) or (image7.Visible=true) or (image8.Visible=true) or (image9.Visible=true) then
begin
Timer1.Enabled:=false;
Timer9.enabled:=false;
Timer10.enabled:=false;
Timer11.enabled:=false;
Timer12.enabled:=false;
Timer13.enabled:=false;
Timer14.enabled:=false;
Timer15.enabled:=false;
end;

end

else
begin
a:=1;
timer2.Enabled:=true;
Timer3.enabled:=true;
Timer4.enabled:=true;
Timer5.enabled:=true;
Timer6.enabled:=true;
Timer7.enabled:=true;
Timer8.enabled:=true;
Timer17.enabled:=true;
Timer18.enabled:=true;

if (image2.Visible=true) or (image3.Visible=true) or (image4.Visible=true) or (image5.Visible=true) or (image6.Visible=true) or (image7.Visible=true) or (image8.Visible=true) or (image9.Visible=true) then
begin
Timer1.Enabled:=true;
Timer9.enabled:=true;
Timer10.enabled:=true;
Timer11.enabled:=true;
Timer12.enabled:=true;
Timer13.enabled:=true;
Timer14.enabled:=true;
Timer15.enabled:=true;
end;

end;

end;


vk_up:
begin
image1.Top:=image1.top-5;
if (timer1.Enabled=false) then
image2.Top:=image1.top+20;
if (timer9.Enabled=false) then
image3.Top:=image1.top+20;
if (timer10.Enabled=false) then
image4.Top:=image1.top+20;
if (timer11.Enabled=false) then
image5.Top:=image1.top+20;
if (timer12.Enabled=false) then
image6.Top:=image1.top+20;
if (timer13.Enabled=false) then
image7.Top:=image1.top+20;
if (timer14.Enabled=false) then
image8.Top:=image1.top+20;
if (timer15.Enabled=false) then
image9.Top:=image1.top+20;
end;


vk_down:
begin
image1.Top:=image1.top+5;
if (timer1.Enabled=false) then
image2.Top:=image1.top+20;
if (timer9.Enabled=false) then
image3.Top:=image1.top+20;
if (timer10.Enabled=false) then
image4.Top:=image1.top+20;
if (timer11.Enabled=false) then
image5.Top:=image1.top+20;
if (timer12.Enabled=false) then
image6.Top:=image1.top+20;
if (timer13.Enabled=false) then
image7.Top:=image1.top+20;
if (timer14.Enabled=false) then
image8.Top:=image1.top+20;
if (timer15.Enabled=false) then
image9.Top:=image1.top+20;
end;


vk_space:
begin

if (image9.left>image2.left) or (image9.Visible=true)  then
begin
timer1.Enabled:=true;
image2.Visible:=true;
end;

if (image2.Left>image3.Left) and (image2.Visible=true) then
begin
timer9.Enabled:=true;
image3.Visible:=true;
end;

if (image3.Left>image4.Left) and (image3.Visible=true) then
begin
timer10.Enabled:=true;
image4.Visible:=true;
end;

if (image4.Left>image5.Left) and (image4.Visible=true) then
begin
timer11.Enabled:=true;
image5.Visible:=true;
end;

if (image5.Left>image6.Left) and (image5.Visible=true) then
begin
timer12.Enabled:=true;
image6.Visible:=true;
end;

if (image6.Left>image7.Left) and (image6.Visible=true) then
begin
timer13.Enabled:=true;
image7.Visible:=true;
end;

if (image7.Left>image8.Left) and (image7.Visible=true) then
begin
timer14.Enabled:=true;
image8.Visible:=true;
end;

if (image8.Left>image9.Left) and (image8.Visible=true) then
begin
timer15.Enabled:=true;
image9.Visible:=true;
end;


end;

end;

end;






procedure TForm1.Timer1Timer(Sender: TObject);
begin
image2.Left:=image2.left+10 ;
if image2.Left+image2.Width>=clientwidth then
begin
image2.top:=image1.top+16;
image2.left:=103;
timer1.enabled:=false;
image2.visible:=false;
end;
end;


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


procedure TForm1.Timer2Timer(Sender: TObject);
begin
image10.Visible:=true;
if (image16.Top<=clientheight-image16.Height-100) or (image16.top>image10.top) or (image10.top<clientheight) then
image10.Top:=image10.top-10;

if image10.Top<=0-30 then
begin
image10.Top:=clientheight-1;

if image18.visible=true then
image18.Visible:=false
else
if image19.visible=true then
image19.Visible:=false
else
if image20.visible=true then
image20.Visible:=false;
end;


if (image2.Left+image2.Width>=image10.left) or (image3.Left+image3.Width>=image10.left) or (image4.Left+image4.Width>=image10.left) or (image5.Left+image5.Width>=image10.left) or (image6.Left+image6.Width>=image10.left) or (image7.Left+image7.Width>=image10.left) or (image8.Left+image8.Width>=image10.left) or(image9.Left+image9.Width>=image10.left)  then
if (image2.Left+image2.width<=image10.Left+image10.width) or (image3.Left+image3.width<=image10.Left+image10.width) or (image4.Left+image4.width<=image10.Left+image10.width) or (image5.Left+image5.width<=image10.Left+image10.width) or (image6.Left+image6.width<=image10.Left+image10.width) or (image7.Left+image7.width<=image10.Left+image10.width) or (image8.Left+image8.width<=image10.Left+image10.width) or (image9.Left+image9.width<=image10.Left+image10.width) then
if (image2.top+10>=image10.top-10) or (image3.top+10>=image10.top-10) or (image4.top+10>=image10.top-10) or (image5.top+10>=image10.top-10) or (image6.top+10>=image10.top-10) or (image7.top+10>=image10.top-10) or (image8.top+10>=image10.top-10) or (image9.top+10>=image10.top-10) then
if (image2.top<=image10.Top+80) or (image3.top<=image10.Top+80) or (image4.top<=image10.Top+80) or (image5.top<=image10.Top+80) or (image6.top<=image10.Top+80) or (image7.top<=image10.Top+80) or (image8.top<=image10.Top+80) or (image9.top<=image10.Top+80) then
begin
image17.Visible:=true;
image17.Top:=image10.top;
image17.Left:=image10.Left-10;
timer2.Enabled:=false;
image10.Visible:=false;
end;

end;


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


procedure TForm1.Timer3Timer(Sender: TObject);
begin
image11.Visible:=true;
if (image10.top<=clientheight-image10.Height-100) or (image10.top>image11.top)  then
image11.top:=image11.top-10;

if image11.Top<=0-30 then
begin
image11.Top:=clientheight+2;

if image18.visible=true then
image18.Visible:=false
else
if image19.visible=true then
image19.Visible:=false
else
if image20.visible=true then
image20.Visible:=false;
end;


if (image2.Left+image2.Width>=image11.left) or (image3.Left+image3.Width>=image11.left) or (image4.Left+image4.Width>=image11.left) or (image5.Left+image5.Width>=image11.left) or (image6.Left+image6.Width>=image11.left) or (image7.Left+image7.Width>=image11.left) or (image8.Left+image8.Width>=image11.left) or(image9.Left+image9.Width>=image11.left)  then
if (image2.Left+image2.width<=image11.Left+image11.width) or (image3.Left+image3.width<=image11.Left+image11.width) or (image4.Left+image4.width<=image11.Left+image11.width) or (image5.Left+image5.width<=image11.Left+image11.width) or (image6.Left+image6.width<=image11.Left+image11.width) or (image7.Left+image7.width<=image11.Left+image11.width) or (image8.Left+image8.width<=image11.Left+image11.width) or (image9.Left+image9.width<=image11.Left+image11.width) then
if (image2.top+10>=image11.top-10) or (image3.top+10>=image11.top-10) or (image4.top+10>=image11.top-10) or (image5.top+10>=image11.top-10) or (image6.top+10>=image11.top-10) or (image7.top+10>=image11.top-10) or (image8.top+10>=image11.top-10) or (image9.top+10>=image11.top-10) then
if (image2.top<=image11.Top+80) or (image3.top<=image11.Top+80) or (image4.top<=image11.Top+80) or (image5.top<=image11.Top+80) or (image6.top<=image11.Top+80) or (image7.top<=image11.Top+80) or (image8.top<=image11.Top+80) or (image9.top<=image11.Top+80) then
begin
image17.Visible:=true;
image17.Top:=image11.top;
image17.Left:=image11.Left-10;
timer3.Enabled:=false;
image11.Visible:=false;
end;
end;


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


procedure TForm1.Timer4Timer(Sender: TObject);
begin
image12.Visible:=true;
if (image11.top<=clientheight-image11.Height-100) or (image11.top>image12.top) then
image12.top:=image12.top-10;

if image12.Top<=0-30 then
begin
image12.Top:=clientheight+3;

if image18.visible=true then
image18.Visible:=false
else
if image19.visible=true then
image19.Visible:=false
else
if image20.visible=true then
image20.Visible:=false;
end;




if (image2.Left+image2.Width>=image12.left) or (image3.Left+image3.Width>=image12.left) or (image4.Left+image4.Width>=image12.left) or (image5.Left+image5.Width>=image12.left) or (image6.Left+image6.Width>=image12.left) or (image7.Left+image7.Width>=image12.left) or (image8.Left+image8.Width>=image12.left) or(image9.Left+image9.Width>=image12.left)  then
if (image2.Left+image2.width<=image12.Left+image12.width) or (image3.Left+image3.width<=image12.Left+image10.width) or (image4.Left+image4.width<=image12.Left+image12.width) or (image5.Left+image5.width<=image12.Left+image10.width) or (image6.Left+image6.width<=image12.Left+image12.width) or (image7.Left+image7.width<=image10.Left+image12.width) or (image8.Left+image8.width<=image12.Left+image12.width) or (image9.Left+image9.width<=image12.Left+image12.width) then
if (image2.top+10>=image12.top-10) or (image3.top+10>=image12.top-10) or (image4.top+10>=image12.top-10) or (image5.top+10>=image12.top-10) or (image6.top+10>=image12.top-10) or (image7.top+10>=image12.top-10) or (image8.top+10>=image12.top-10) or (image9.top+10>=image12.top-10) then
if (image2.top<=image12.Top+80) or (image3.top<=image12.Top+80) or (image4.top<=image12.Top+80) or (image5.top<=image12.Top+80) or (image6.top<=image12.Top+80) or (image7.top<=image12.Top+80) or (image8.top<=image12.Top+80) or (image9.top<=image12.Top+80) then
begin
image17.Visible:=true;
image17.Top:=image12.top;
image17.Left:=image12.Left-10;
timer4.Enabled:=false;
image12.Visible:=false;
end;
end;


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


procedure TForm1.Timer5Timer(Sender: TObject);
begin
image13.Visible:=true;
if (image12.top<=clientheight-image12.Height-100) or (image12.top>image13.top) then
image13.top:=image13.top-10;

if image13.Top<=0-30 then
begin
image13.Top:=clientheight+4;

if image18.visible=true then
image18.Visible:=false
else
if image19.visible=true then
image19.Visible:=false
else
if image20.visible=true then
image20.Visible:=false;
end;


if (image2.Left+image2.Width>=image13.left) or (image3.Left+image3.Width>=image13.left) or (image4.Left+image4.Width>=image13.left) or (image5.Left+image5.Width>=image13.left) or (image6.Left+image6.Width>=image13.left) or (image7.Left+image7.Width>=image13.left) or (image8.Left+image8.Width>=image13.left) or(image9.Left+image9.Width>=image13.left)  then
if (image2.Left+image2.width<=image13.Left+image13.width) or (image3.Left+image3.width<=image13.Left+image13.width) or (image4.Left+image4.width<=image13.Left+image13.width) or (image5.Left+image5.width<=image13.Left+image13.width) or (image6.Left+image6.width<=image13.Left+image13.width) or (image7.Left+image7.width<=image13.Left+image13.width) or (image8.Left+image8.width<=image13.Left+image13.width) or (image9.Left+image9.width<=image13.Left+image13.width) then
if (image2.top+10>=image13.top-10) or (image3.top+10>=image13.top-10) or (image4.top+10>=image13.top-10) or (image5.top+10>=image13.top-10) or (image6.top+10>=image13.top-10) or (image7.top+10>=image13.top-10) or (image8.top+10>=image13.top-10) or (image9.top+10>=image13.top-10) then
if (image2.top<=image13.Top+80) or (image3.top<=image13.Top+80) or (image4.top<=image13.Top+80) or (image5.top<=image13.Top+80) or (image6.top<=image13.Top+80) or (image7.top<=image13.Top+80) or (image8.top<=image13.Top+80) or (image9.top<=image13.Top+80) then
begin
image17.Visible:=true;
image17.Top:=image13.top;
image17.Left:=image13.Left-10;
timer5.Enabled:=false;
image13.Visible:=false;
end;
end;


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


procedure TForm1.Timer6Timer(Sender: TObject);
begin
image14.Visible:=true;
if (image13.top<=clientheight-image13.Height-100) or (image13.top>image14.top) then
image14.top:=image14.top-10;

if image14.Top<=0-30 then
begin
image14.Top:=clientheight+5;

if image18.visible=true then
image18.Visible:=false
else
if image19.visible=true then
image19.Visible:=false
else
if image20.visible=true then
image20.Visible:=false;
end;


if (image2.Left+image2.Width>=image14.left) or (image3.Left+image3.Width>=image14.left) or (image4.Left+image4.Width>=image14.left) or (image5.Left+image5.Width>=image14.left) or (image6.Left+image6.Width>=image14.left) or (image7.Left+image7.Width>=image14.left) or (image8.Left+image8.Width>=image14.left) or(image9.Left+image9.Width>=image14.left)  then
if (image2.Left+image2.width<=image14.Left+image14.width) or (image3.Left+image3.width<=image14.Left+image14.width)  or (image4.Left+image4.width<=image14.Left+image14.width) or (image5.Left+image5.width<=image14.Left+image14.width) or (image6.Left+image6.width<=image14.Left+image14.width) or (image7.Left+image7.width<=image14.Left+image14.width) or (image8.Left+image8.width<=image14.Left+image14.width) or (image9.Left+image9.width<=image14.Left+image14.width) then
if (image2.top+10>=image14.top-10) or (image3.top+10>=image14.top-10) or (image4.top+10>=image14.top-10) or (image5.top+10>=image14.top-10) or (image6.top+10>=image14.top-10) or (image7.top+10>=image14.top-10) or (image8.top+10>=image14.top-10) or (image9.top+10>=image14.top-10) then
if (image2.top<=image14.Top+80) or (image3.top<=image14.Top+80) or (image4.top<=image14.Top+80) or (image5.top<=image14.Top+80) or (image6.top<=image14.Top+80) or (image7.top<=image14.Top+80) or (image8.top<=image14.Top+80) or (image9.top<=image14.Top+80) then
begin
image17.Visible:=true;
image17.Top:=image14.top;
image17.Left:=image14.Left-10;
timer6.Enabled:=false;
image14.Visible:=false;
end;
end;


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


procedure TForm1.Timer7Timer(Sender: TObject);
begin
image15.Visible:=true;
if (image14.top<=clientheight-image14.Height-100) or (image14.top>image15.top) then
image15.top:=image15.top-10;

if image15.Top<=0-30 then
begin
image15.Top:=clientheight+6;

if image18.visible=true then
image18.Visible:=false
else
if image19.visible=true then
image19.Visible:=false
else
if image20.visible=true then
image20.Visible:=false;
end;


if (image2.Left+image2.Width>=image15.left) or (image3.Left+image3.Width>=image15.left) or (image4.Left+image4.Width>=image15.left) or (image5.Left+image5.Width>=image15.left) or (image6.Left+image6.Width>=image15.left) or (image7.Left+image7.Width>=image15.left) or (image8.Left+image8.Width>=image15.left) or(image9.Left+image9.Width>=image15.left)  then
if (image2.Left+image2.width<=image15.Left+image15.width)or (image3.Left+image3.width<=image15.Left+image15.width) or (image4.Left+image4.width<=image15.Left+image15.width) or (image5.Left+image5.width<=image15.Left+image15.width) or (image6.Left+image6.width<=image15.Left+image15.width) or (image7.Left+image7.width<=image15.Left+image15.width) or (image8.Left+image8.width<=image15.Left+image15.width) or (image9.Left+image9.width<=image15.Left+image15.width) then
if (image2.top+10>=image15.top-10) or (image3.top+10>=image15.top-10) or (image4.top+10>=image15.top-10) or (image5.top+10>=image15.top-10) or (image6.top+10>=image15.top-10) or (image7.top+10>=image15.top-10) or (image8.top+10>=image15.top-10) or (image9.top+10>=image15.top-10) then
if (image2.top<=image15.Top+80) or (image3.top<=image15.Top+80) or (image4.top<=image15.Top+80) or (image5.top<=image15.Top+80) or (image6.top<=image15.Top+80) or (image7.top<=image15.Top+80) or (image8.top<=image15.Top+80) or (image9.top<=image15.Top+80) then
begin
image17.Visible:=true;
image17.Top:=image15.top;
image17.Left:=image15.Left-10;
timer7.Enabled:=false;
image15.Visible:=false;
end;
end;



////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


procedure TForm1.Timer8Timer(Sender: TObject);
begin
image16.Visible:=true;
if (image15.top<=clientheight-image15.Height-100) or (image15.top>image16.top) then
image16.top:=image16.top-10;

if image16.Top<=0-30 then
begin
image16.Top:=clientheight+7;

if image18.visible=true then
image18.Visible:=false
else
if image19.visible=true then
image19.Visible:=false
else
if image20.visible=true then
image20.Visible:=false;
end;

if (image2.Left+image2.Width>=image16.left) or (image3.Left+image3.Width>=image16.left) or (image4.Left+image4.Width>=image16.left) or (image5.Left+image5.Width>=image16.left) or (image6.Left+image6.Width>=image16.left) or (image7.Left+image7.Width>=image16.left) or (image8.Left+image8.Width>=image16.left) or(image9.Left+image9.Width>=image16.left) then
if (image2.Left+image2.width<=image16.Left+image16.width) or (image3.Left+image3.width<=image16.Left+image16.width) or (image4.Left+image4.width<=image16.Left+image16.width) or (image5.Left+image5.width<=image16.Left+image16.width) or (image6.Left+image6.width<=image16.Left+image16.width) or (image7.Left+image7.width<=image16.Left+image16.width) or (image8.Left+image8.width<=image16.Left+image16.width) or (image9.Left+image9.width<=image16.Left+image16.width) then
if (image2.top+10>=image16.top-10) or (image3.top+10>=image16.top-10) or (image4.top+10>=image16.top-10) or (image5.top+10>=image16.top-10) or (image6.top+10>=image16.top-10) or (image7.top+10>=image16.top-10) or (image8.top+10>=image16.top-10) or (image9.top+10>=image16.top-10) then
if (image2.top<=image16.Top+80) or (image3.top<=image16.Top+80) or (image4.top<=image16.Top+80) or (image5.top<=image16.Top+80) or (image6.top<=image16.Top+80) or (image7.top<=image16.Top+80) or (image8.top<=image16.Top+80) or (image9.top<=image16.Top+80) then
begin
image17.Visible:=true;
image17.Top:=image16.top;
image17.Left:=image16.Left-10;
timer8.Enabled:=false;
image16.Visible:=false;
end;
end;


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


procedure TForm1.Timer9Timer(Sender: TObject);
begin
image3.Left:=image3.left+10 ;
if image3.Left+image3.Width>clientwidth+20 then
begin
image2.top:=image1.top+16;
image3.left:=104;
timer9.enabled:=false;
image3.visible:=false;
end;
end;
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
procedure TForm1.Timer10Timer(Sender: TObject);
begin
image4.Left:=image4.left+10 ;
if image4.Left+image4.Width>clientwidth+50 then
begin
image2.top:=image1.top+16;
image4.left:=104;
timer10.enabled:=false;
image4.visible:=false;
end;
end;
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
procedure TForm1.Timer11Timer(Sender: TObject);
begin
image5.Left:=image5.left+10 ;
if image5.Left+image5.Width>clientwidth+50 then
begin
image2.top:=image1.top+16;
image5.left:=104;
timer11.enabled:=false;
image5.visible:=false;
end;
end;
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
procedure TForm1.Timer12Timer(Sender: TObject);
begin
image6.Left:=image6.left+10 ;
if image6.Left+image6.Width>clientwidth+50 then
begin
image2.top:=image1.top+16;
image6.left:=104;
timer12.enabled:=false;
image6.visible:=false;
end;
end;
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
procedure TForm1.Timer13Timer(Sender: TObject);
begin
image7.Left:=image7.left+10 ;
if image7.Left+image7.Width>clientwidth+50 then
begin
image2.top:=image1.top+16;
image7.left:=104;
timer13.enabled:=false;
image7.visible:=false;
end;
end;
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
procedure TForm1.Timer14Timer(Sender: TObject);
begin
image8.Left:=image8.left+10 ;
if image8.Left+image8.Width>clientwidth+50 then
begin
image2.top:=image1.top+16;
image8.left:=104;
timer14.enabled:=false;
image8.visible:=false;
end;
end;
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
procedure TForm1.Timer15Timer(Sender: TObject);
begin
image9.Left:=image9.left+10 ;
if image9.Left+image9.Width>clientwidth+50 then
begin
image2.top:=image1.top+16;
image9.left:=104;
timer15.enabled:=false;
image9.visible:=false;
end;
end;


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


procedure TForm1.Timer17Timer(Sender: TObject);
begin

if (image17.Visible=true) and (timer2.Enabled=false) then
begin
image10.Visible:=true;
image10.Top:=clientheight-1;
image17.visible:=false;
x:=x+10;
label2.Caption:=inttostr(x);
end;

if image16.Top<=image10.Height then
timer2.Enabled:=true;

//////////////////////////////////
if (image17.Visible=true) and (timer3.Enabled=false) then
begin
image11.Visible:=true;
image11.Top:=clientheight+2;
image17.visible:=false;
x:=x+10;  
label2.Caption:=inttostr(x);
end;

if image10.Top<=image11.Height then
timer3.Enabled:=true;

///////////////////////////////////
if (image17.Visible=true) and (timer4.Enabled=false) then
begin
image12.Visible:=true;
image12.Top:=clientheight+3;
image17.visible:=false;
x:=x+10;         
label2.Caption:=inttostr(x);
end;

if image11.Top<=image12.Height then
timer4.Enabled:=true;

/////////////////////////////////
if (image17.Visible=true) and (timer5.Enabled=false) then
begin
image13.Visible:=true;
image13.Top:=clientheight+4;
image17.visible:=false;
x:=x+10;              
label2.Caption:=inttostr(x);
end;

if image12.Top<=image13.Height then
timer5.Enabled:=true;

//////////////////////////////////
if (image17.Visible=true) and (timer6.Enabled=false) then
begin
image14.Visible:=true;
image14.Top:=clientheight+5;
image17.visible:=false;
x:=x+10;                
label2.Caption:=inttostr(x);
end;

if image13.Top<=image14.Height then
timer6.Enabled:=true;

////////////////////////////////////
if (image17.Visible=true) and (timer7.Enabled=false) then
begin
image15.Visible:=true;
image15.Top:=clientheight+6;
image17.visible:=false;
x:=x+10;         
label2.Caption:=inttostr(x);
end;

if image14.Top<=image15.Height then
timer7.Enabled:=true;

///////////////////////////////////
if (image17.Visible=true) and (timer8.Enabled=false) then
begin
image16.Visible:=true;
image16.Top:=clientheight+7;
image17.visible:=false;
x:=x+10;
label2.Caption:=inttostr(x);
end;

if image15.Top<=image16.Height then
timer8.Enabled:=true;

end;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


procedure TForm1.Timer18Timer(Sender: TObject);
begin
if button2.Visible=false then
timer2.enabled:=true;

if image20.Visible=false then
begin
label5.Caption:=inttostr(x);
Image1.visible:=false;
Image2.visible:=false;
Image3.visible:=false;
Image4.visible:=false;
Image5.visible:=false;
Image6.visible:=false;
Image7.visible:=false;
Image8.visible:=false;
Image9.visible:=false;
Image10.visible:=false;
Image11.visible:=false;
Image12.visible:=false;
Image13.visible:=false;
Image14.visible:=false;
Image15.visible:=false;
Image16.visible:=false;
Image17.visible:=false;
Timer1.enabled:=false;
timer2.Enabled:=false;
Timer3.enabled:=false;
Timer4.enabled:=false;
Timer5.enabled:=false;
Timer6.enabled:=false;
Timer7.enabled:=false;
Timer8.enabled:=false;
Timer17.enabled:=false;
Timer18.enabled:=false;
image18.visible:=false;
image19.visible:=false;
image20.visible:=false;
label1.visible:=false;
label2.visible:=false;
button2.visible:=true;
label3.Visible:=true;
label4.visible:=true;
label5.visible:=true;
button2.Enabled:=true;
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Image1.visible:=true;
Button1.Visible:=false;
button1.Enabled:=false;
Timer1.enabled:=true;
Timer3.enabled:=true;
Timer4.enabled:=true;
Timer5.enabled:=true;
Timer6.enabled:=true;
Timer7.enabled:=true;
Timer8.enabled:=true;
Timer17.enabled:=true;
Timer18.enabled:=true;
image18.visible:=true;
image19.visible:=true;
image20.visible:=true;
label1.visible:=true;
label2.visible:=true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
a:=1;
x:=0;
label2.Caption:=inttostr(x);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Image1.visible:=true;
Button2.Visible:=false;
button2.Enabled:=false;
Timer1.enabled:=true;
Timer3.enabled:=true;
Timer4.enabled:=true;
Timer5.enabled:=true;
Timer6.enabled:=true;
Timer7.enabled:=true;
Timer8.enabled:=true;
Timer17.enabled:=true;
Timer18.enabled:=true;
image18.visible:=true;
image19.visible:=true;
image20.visible:=true;
label1.visible:=true;
label2.visible:=true;
label3.Visible:=false;
label4.visible:=false;
label5.visible:=false;

image1.Top:=8;
image2.Top:=image1.top+20;
image3.Top:=image1.top+20;
image4.Top:=image1.top+20;
image5.Top:=image1.top+20;
image6.Top:=image1.top+20;
image7.Top:=image1.top+20;
image8.Top:=image1.top+20;
image9.Top:=image1.top+20;

image10.Top:=clientheight-1;
image11.Top:=clientheight+2;
image12.Top:=clientheight+2;
image13.Top:=clientheight+2;
image14.Top:=clientheight+2;
image15.Top:=clientheight+2;
image16.Top:=clientheight+2;

x:=0;
label2.caption:=inttostr(x);
end;

end.

