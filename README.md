# Balloons-and-Arrows


**Вовед**

***Игра – активност  која човекот ја започнува за забава***.

Во секојдневието компјутерските и консол игри стануваат се попопуларни со напредокот на технологијата. Исто така во последно време се почесто се основаат компании чија цел е да ја создадат најпопуларната и најуспешна игра безразлика дали е за персонален компјутер или за конзола.

Поради овие причини решив да направам игра со цел секој да може да си го намали стресот со мала забава (занимација) која му е секогаш достапна.




![GAMEPLAY](https://github.com/user-attachments/assets/2dbcbf84-edb5-4cd3-ba66-c673a62fba8d)




**Програмскиот јазик на програмата**


Delphi е сложен програмски јазик кој подржува структурно и објектно ориентирано програмирање поради ова најчесто се користи за креирање на датотеки и бази за апликации. За основа на Delphi е земан програмскиот јазик Pascal. Предности на програмскиот јазик  Delphi се лесно разбирливиот програмски код и брзина на компајлирање на програмскиот код. Delphi има посебни карактеристики кои го подржуваат  Borland фрејмворкот  и  RAD   ( Rapid application development ). 

Во Delphi има вметнат и координатен систем кај кој координатата 0,0 е во горниот лев агол. Со помош на овој координатен систем се овозможуваат голем број на функции и начини на програмирање во Delphi. 



**Дизајн на елементите на играта**
За средување на компонентите односно сликите користени во играта се употревувани најпопуларните софтвери за векторска графика *Adobe Photoshop* и *Adobe Illustrator*.

Со нивна помош сликите чиј почетен изглед беше во вид на пиксели беа претворени во чиста векторска слика без груби страни и агли.







**Програмирање на играта**

***Главна цел со која се програмираше оваа игра е да биде едноставна за разбирање и користење.***

На сликата можете да ги видете сите елементи со чија помош е создадена оваа игра:



- Копче со кое се започнува играта;


Тајмери кои се најважниот елемент бидејќи со нивна помош се постигнуваат сите движења и акции кои се случуваат во играта;


- Слики (Images) кои си имаат своја посебна функција која му дава информација што е целта на играта;  

За да се започне со играњето потребно е по стартувањето на апликацијата односно играта да се претисне на копчето „Play“ со чија помош сите елементи со кој е направена програмата ќе станат активни и достапни за интеракција.



Активирањето на елементите преку копчето е постигнато преку кодот кој е прикажан на следната слика. 

procedure TForm1.Button1Click(Sender: TObject);
begin
  Image1.Visible := true;
  Button1.Visible := false;
  Button1.Enabled := false;
  Timer1.Enabled := true;
  Timer3.Enabled := true;
  Timer4.Enabled := true;
  Timer5.Enabled := true;
  Timer6.Enabled := true;
  Timer7.Enabled := true;
  Timer8.Enabled := true;
  Timer17.Enabled := true;
  Timer18.Enabled := true;
end;


Овој код преку булеан (Boolean) променлива која може да има само две вредности вистинито (True) или  невистините (False) елементите чија стартна состојба била False во спротивната состојба True а со тоа и отвара можноста за интеракција односно играње на играта.



Кодирањето на двжењата на карактерот е постигнато со помош на процедурата TForm.FormKeyDown и функција за избор од повеќе можности „CASE - OF“. Таа ни овозможува задавање на команди со помош на копчињата од тастатурета. Како во овој случај што се стрелките за нагоре (vk\_up) и надоле (vk\_down). Исто така со оваа процедура  дифинирана и позицијата од која ке се исфрлат стрелите.


procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of

    vk_up:
    begin
      image1.Top := image1.Top - 5;
      if (timer1.Enabled = false) then
        image2.Top := image1.Top + 20;
      if (timer9.Enabled = false) then
        image3.Top := image1.Top + 20;
      if (timer10.Enabled = false) then
        image4.Top := image1.Top + 20;
      if (timer11.Enabled = false) then
        image5.Top := image1.Top + 20;
      if (timer12.Enabled = false) then
        image6.Top := image1.Top + 20;
      if (timer2.Enabled = false) then
        image7.Top := image1.Top + 20;
      if (timer14.Enabled = false) then
        image8.Top := image1.Top + 20;
      if (timer15.Enabled = false) then
        image9.Top := image1.Top + 20;
    end;

  end;
end;

vk_down:
begin
  image1.Top := image1.Top + 5;
  if (timer1.Enabled = false) then
    image2.Top := image1.Top + 20;
  if (timer9.Enabled = false) then
    image3.Top := image1.Top + 20;
  if (timer10.Enabled = false) then
    image4.Top := image1.Top + 20;
  if (timer11.Enabled = false) then
    image5.Top := image1.Top + 20;
  if (timer12.Enabled = false) then
    image6.Top := image1.Top + 20;
  if (timer2.Enabled = false) then
    image7.Top := image1.Top + 20;
  if (timer14.Enabled = false) then
    image8.Top := image1.Top + 20;
  if (timer15.Enabled = false) then
    image9.Top := image1.Top + 20;
end;




Во оваа процедура е вметнато и копчето „space“ (vk\_space) со чија помош се активира тајмер кој ги активира стрелите и го овозможува нивното движење. Но тајмерот се активира само кога претходно поставениот услов во таканаречениот IF-циклус е исполнет како што може да се види во следниот код.


vk_space:
begin
  if (image9.Left > image2.Left) or (image9.Visible = true) then
  begin
    timer1.Enabled := true;
    image2.Visible := true;
  end;
end;


Со претходно спомнатиот тајмер кој се активира со помош на копчето „space“ имаме постигнато контрола над стрелите со чија помош се пукаат балоните. Со програмскиот код image2.left:=image2.left+10 кога ќе се вклучи тајмерот 1 стрелата ке почне да се движи на десно бидејки координатите на левата страна од стрелата се зголемува за 10 односно се движи по по x оската од координатниот систем. Таа акција ке се врши се додека стрелата не излезе од прозорецот по што стрелата ќе се врати на своите почетни координати,  а сето тоа е постигнато со кодот во функцијата за избор од две можности:


procedure TForm1.Timer1Timer(Sender: TObject);
begin
  image2.Left := image2.Left + 10;
  if image2.Left + image2.Width >= clientwidth then
  begin
    image2.Top := image1.Top + 16;
    image2.Left := 103;
    timer1.Enabled := false;
    image2.Visible := false;
  end;
end;



**If**  image2.left+image2.width>=clientwidth **then**

**begin**

image2.top:=image1.top+16;

image2.left:=103;

timer1.enabled:=false;

image2.visible:=false;

**end**; 




На следната слика е прикажан тајмер во кој е запишан кодот со кој се овозможува движењето на балоните. Тие се движат по y оската преку кодот image10.top:=image10.top-10  со што горната координата од балонот се намалува се додека средината на самиот балон не стане помала од 0 при што неговата позиција се ресетира и враќа на почетната прикажано со кодот : 


procedure TForm1.Timer2Timer(Sender: TObject);
begin
  image10.Visible := true;

  image10.Top := image10.Top - 10;

  if image10.Top <= 0 - 30 then
    image10.Top := clientheight - 1;
end;



**if** image10.top<=0-30

**then** image10.top:=clientheight-1;



За играчот да знае дека балонот е погоден однапред е вметната слика која се прикажува само во моментот кога се случива тој настан (event) и повторно исчезнува по 1 секунта додека балонот се враќа на своите почетни координати. Сето тоа е постигнато повторно преку тајмер и кодот:

procedure TForm1.Timer17Timer(Sender: TObject);
begin

  if (image17.Visible = true) and (timer2.Enabled = false) then
  begin
    image10.Visible := true;
    image10.Top := clientheight - 1;
    image17.Visible := false;
  end;

  if image16.Top <= image10.Height then
    timer2.Enabled := true;

  if (image2.Left + image2.Width >= image10.Left) then
    if (image2.Left + image2.Width <= image10.Left + image10.Width) then
      if (image2.Top + 10 >= image10.Top - 10) then
        if (image2.Top <= image10.Top + 80) then
        begin
          image17.Visible := true;
          image17.Top := image10.Top;
          image17.Left := image10.Left - 10;
          timer2.Enabled := false;
          image2.Visible := false;
        end;
end;



**Заклучок**

Во последните неколку години игрите имаат завземано важна улога во светот на младите за релаксација, натпревари, награди па дури и како хоби. Во некои држави дури се признаени и како спорт (E-Sport) каде што наградите за најдобрите и најискусните се големи суми   пари или пехари.

Но играва која е презентирана во оваа проектна задача не е создадена со  таква цел. Туку таа е создадена  како игра за релаксација кога ќе се чувствувате изморени или едноставно да се опуштите од секојдневните обврски. Играта со сигурност ќе ви помогне да се одморите и повторно да и се  вратите и сконцентрирате на вашите  обврски откако ќе ја поиграте некое време.  



![GAMEOVER](https://github.com/user-attachments/assets/a6672a2a-4425-43b3-bdfa-a76d9052d6c2)



**Користена литература**

1. Википедија: Delphi, Pascal
2. Онлајн форуми за програмирање со Delphi
3. Онлајн туторијали за Delphi: https://www.youtube.com/watch?v=8JWLxiOdOzg


