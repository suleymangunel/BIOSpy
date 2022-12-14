unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, ComCtrls, Tabnotbk, Menus, CoolTrayIcon;

type
  TForm1 = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    GroupBox1: TGroupBox;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Timer1: TTimer;
    GroupBox2: TGroupBox;
    Panel9: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Image4: TImage;
    Image5: TImage;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel26: TPanel;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Panel6: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Image3: TImage;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    GroupBox3: TGroupBox;
    Image11: TImage;
    Image12: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Panel34: TPanel;
    Panel35: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Panel36: TPanel;
    Panel37: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;
    Label17: TLabel;
    Image18: TImage;
    Panel49: TPanel;
    Panel50: TPanel;
    Panel51: TPanel;
    Panel52: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Image19: TImage;
    Image20: TImage;
    Label21: TLabel;
    Image22: TImage;
    Label22: TLabel;
    Label23: TLabel;
    Image23: TImage;
    Image24: TImage;
    Panel53: TPanel;
    Panel54: TPanel;
    Panel55: TPanel;
    Panel56: TPanel;
    Panel57: TPanel;
    Panel58: TPanel;
    Panel59: TPanel;
    Panel60: TPanel;
    Panel61: TPanel;
    Panel62: TPanel;
    Panel63: TPanel;
    Panel64: TPanel;
    GroupBox4: TGroupBox;
    Label24: TLabel;
    Panel65: TPanel;
    Panel66: TPanel;
    Panel67: TPanel;
    Image2: TImage;
    GroupBox5: TGroupBox;
    GroupBox8: TGroupBox;
    RichEdit2: TRichEdit;
    BitBtn2: TBitBtn;
    RichEdit3: TRichEdit;
    RichEdit4: TRichEdit;
    Label29: TLabel;
    Label30: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    CoolTrayIcon1: TCoolTrayIcon;
    Label31: TLabel;
    Label32: TLabel;
    TabbedNotebook2: TTabbedNotebook;
    GroupBox6: TGroupBox;
    Label20: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Image25: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    RichEdit1: TRichEdit;
    GroupBox7: TGroupBox;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    AmiSupLed: TImage;
    AmiUserLed: TImage;
    AmiSysLed: TImage;
    Label37: TLabel;
    AmiSetupLed: TImage;
    RichEdit5: TRichEdit;
    Button1: TButton;
    VerList: TComboBox;
    Button3: TButton;
    SupPassEdit: TEdit;
    Button4: TButton;
    BitBtn1: TBitBtn;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Panel8: TPanel;
    Panel33: TPanel;
    Image1: TImage;
    Image10: TImage;
    Image21: TImage;
    Image26: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ncekiBoyut1Click(Sender: TObject);
    procedure Kapat1Click(Sender: TObject);
    procedure CoolTrayIcon1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure VerListChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
  public
  end;

var
  Form1: TForm1;
  procedure CMOSBatery(a:byte);
  procedure CMOSEquipment(a:byte);
  procedure CMOSRam(a:byte);
  procedure CMOSTime(a:byte);
  procedure CMOSFdd(a:byte);
  procedure CMOSHdd(a:byte);
  procedure CMOSAlarm(a:byte);
  procedure AWARDGeneral0(a:byte);
  procedure AWARDHddParams(a:byte);
  procedure AWARDIDE32BitMode(a:byte);
  procedure AWARDBootConfig(a:byte);
  procedure AWARDAPM(a:byte);
  procedure AWARDPassword(a:byte);
  procedure AmiPassword(a:byte);
  procedure CMOSCopy();
  procedure CMOSChecksum();
  procedure Copyright();

var
  a:byte;
  CMOSChk,BatStat,MathCoProcessor,DisplayType,FloppyInstalled,FloppyNumber:byte;
  BaseRam,ExtRam:word;
  TimeFormat,TimeSec,TimeMin,TimeHour,DateDay,DateMonth,DateYear,DateCentury:byte;
  Daylight,AlarmHour,AlarmMin,AlarmSec,FDD0Type,FDD1Type:byte;
  HDD0Type,HDD1Type:byte;
  GenReg0,GenReg1,GenReg2,GenReg3,GenReg4,IDEBlockMode,PasswordEnabled,PassControlTime:byte;
  ShadowC800,ShadowCC00,ShadowD000,ShadowD400,ShadowD800,ShadowDC00:byte;
  HDD1CylNumber,HDD1WritePrecomp,HDD1LandingZone:word;
  HDD1Sectors,HDD1Heads:byte;
  HDD2CylNumber,HDD2WritePrecomp,HDD2LandingZone:word;
  HDD2Sectors,HDD2Heads:byte;
  HDD3CylNumber,HDD3WritePrecomp,HDD3LandingZone:word;
  HDD3Sectors,HDD3Heads:byte;
  HDD4CylNumber,HDD4WritePrecomp,HDD4LandingZone:word;
  HDD4Sectors,HDD4Heads:byte;
  IDE32Bit,PowerButtonOverrideEnabled,VirusWarning:byte;
  QuickPOSTEnabled,BootSequence,ShadowVideoBIOS,SwapFloppy:byte;
  SystemBIOSCacheable,VideoBIOSCacheable,APMStat:byte;
  AwardBIOSver,UserPwd,UserPwd0,UserPwd1,UserPwd450g,UserPwd451pg,Supervisor,Pwd,PwdStat:byte;
  AmiBIOSver,AmiPwdStat,AmiSupervisor,AmiUser:byte;

implementation
 {$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
verlist.ItemIndex :=0;
AwardBIOSver:=0;
ShowWindow(Application.Handle, SW_HIDE);
SetWindowLong(Application.Handle, GWL_EXSTYLE,GetWindowLong(Application.Handle, GWL_EXSTYLE));
image6.picture:=image7.picture;
Copyright;
CMOSBatery(a);
CMOSEquipment(a);
CMOSRam(a);
CMOSTime(a);
CMOSFdd(a);
CMOSHdd(a);
CMOSAlarm(a);
CMOSChecksum();
AWARDGeneral0(a);
AWARDHddParams(a);
AWARDIDE32BitMode(a);
AWARDBootConfig(a);
AWARDAPM(a);
AWARDPassword(a);
AmiPassword(a);
if BatStat=1 then image6.picture:=image8.picture else image6.picture:=image9.picture;
if CMOSchk=1 then image10.picture:=image26.picture else image10.picture:=image21.picture;
if CMOSchk=0 then image1.picture:=image5.picture else image1.picture:=image4.picture;
if FloppyInstalled=1 then Panel20.Caption:='Var' else Panel20.Caption:='Yok';
if FloppyInstalled=1 then Panel21.Caption:=inttostr(FloppyNumber) else Panel21.Caption:='0';
if MathCoProcessor=1 then Panel18.Caption:='Var' else Panel18.Caption:='Yok';
if DisplayType=0 then Panel19.Caption:='Bilinmiyor';
if DisplayType=1 then Panel19.Caption:='40x25 CGA';
if DisplayType=2 then Panel19.Caption:='80x25 CGA';
if DisplayType=3 then Panel19.Caption:='Monochrome';
Panel5.caption:=inttostr(BaseRam);
Panel7.caption:=inttostr(ExtRam);
Panel24.caption:=inttohex(TimeHour,2)+':'+inttohex(TimeMin,2)+':'+inttohex(TimeSec,2);
Panel25.caption:=inttohex(DateDay,2)+'/'+inttohex(DateMonth,2)+'/'+inttohex(DateCentury,2)+inttohex(DateYear,2);
Panel26.caption:=inttohex(AlarmHour,2)+':'+inttohex(AlarmMin,2)+':'+inttohex(AlarmSec,2);
if Daylight=1 then
begin
 image3.picture:=image5.picture;
 panel28.caption:='A??k';
end
else
begin
 image3.picture:=image4.picture;
 panel28.caption:='Kapal?';
end;
if TimeFormat=1 then image12.picture:=image5.picture else image11.picture:=image5.picture;
if FloppyInstalled=1 then
begin
 if FDD0Type=0 then panel14.caption:='Yok';
 if FDD0Type=1 then panel14.caption:='5.25"-360KB';
 if FDD0Type=2 then panel14.caption:='5.25"-1.2MB';
 if FDD0Type=3 then panel14.caption:='3.5"-720KB';
 if FDD0Type=4 then panel14.caption:='3.5"-1.44MB';
 if FDD0Type=5 then panel14.caption:='3.5"-2.88MB';
 if FDD0Type>5 then panel14.caption:='Kullan?lm?yor';
 if FDD1Type=0 then panel15.caption:='Yok';
 if FDD1Type=1 then panel15.caption:='5.25"-360KB';
 if FDD1Type=2 then panel15.caption:='5.25"-1.2MB';
 if FDD1Type=3 then panel15.caption:='3.5"-720KB';
 if FDD1Type=4 then panel15.caption:='3.5"-1.44MB';
 if FDD1Type=5 then panel15.caption:='3.5"-2.88MB';
 if FDD1Type>5 then panel15.caption:='Kullan?lm?yor';
end;
if HDD0Type<=$0F then Panel31.caption:='Yok' else Panel31.caption:=inttostr(HDD0Type);
if HDD1Type<=$0F then Panel32.caption:='Yok' else Panel32.caption:=inttostr(HDD1Type);

Panel38.caption:=inttostr(HDD1CylNumber);
Panel39.caption:=inttostr(HDD1Heads);
Panel40.caption:=inttostr(HDD1Sectors);
Panel41.caption:=inttostr(HDD1WritePrecomp);
Panel42.caption:=inttostr(HDD1LandingZone);
Panel44.caption:=inttostr(HDD2CylNumber);
Panel45.caption:=inttostr(HDD2Heads);
Panel46.caption:=inttostr(HDD2Sectors);
Panel47.caption:=inttostr(HDD2WritePrecomp);
Panel48.caption:=inttostr(HDD2LandingZone);
Panel54.caption:=inttostr(HDD3CylNumber);
Panel55.caption:=inttostr(HDD3Heads);
Panel56.caption:=inttostr(HDD3Sectors);
Panel57.caption:=inttostr(HDD3WritePrecomp);
Panel58.caption:=inttostr(HDD3LandingZone);
Panel60.caption:=inttostr(HDD4CylNumber);
Panel61.caption:=inttostr(HDD4Heads);
Panel62.caption:=inttostr(HDD4Sectors);
Panel63.caption:=inttostr(HDD4WritePrecomp);
Panel64.caption:=inttostr(HDD4LandingZone);

if ShadowDC00=1 then image13.picture:=image5.picture;
if ShadowD800=1 then image14.picture:=image5.picture;
if ShadowD400=1 then image15.picture:=image5.picture;
if ShadowD000=1 then image16.picture:=image5.picture;
if ShadowCC00=1 then image17.picture:=image5.picture;
if ShadowC800=1 then image18.picture:=image5.picture;

if IDEBlockMode=1 then image19.picture:=image5.picture;
if IDE32Bit=1 then image20.picture:=image5.picture;
if VirusWarning=1 then image22.picture:=image5.picture;
if QuickPOSTEnabled=1 then image23.picture:=image5.picture;
if SwapFloppy=1 then image24.picture:=image5.picture;

if APMStat=0 then Panel67.caption:='User Defined';
if APMStat=1 then Panel67.caption:='Disabled';
if APMStat=2 then Panel67.caption:='Minimum Saving';
if APMStat=3 then Panel67.caption:='Maximum Saving';

if Supervisor=1 then image25.picture:=image5.picture else image25.picture:=image4.picture;
if UserPwd=1 then image27.picture:=image5.picture else image27.picture:=image4.picture;
if PwdStat=1 then image28.picture:=image5.picture else image28.picture:=image4.picture;
if PwdStat=0 then image29.picture:=image5.picture else image29.picture:=image4.picture;

if AmiSupervisor=1 then AmiSupLed.picture:=image5.picture;
if AmiUser=1 then AmiUserLed.picture:=image5.picture;
if AmiPwdStat=1 then AmiSysLed.picture:=image5.picture;
if AmiPwdStat=0 then AmiSetupLed.picture:=image5.picture;
end;


procedure CMOSBatery(a:byte);
begin
asm
 mov al,$0d;
 out $70,al;
 in al,$71;
 mov BatStat,al;
end;
BatStat:=BatStat shr 7;
end;


procedure CMOSEquipment(a:byte);
var
 EquipmentByte:byte;
begin
asm
 mov al,$14;
 out $70,al;
 in al,$71;
 mov EquipmentByte,al;
end;
FloppyInstalled:=EquipmentByte and 1;
MathCoProcessor:=(EquipmentByte and 2) shr 1;
DisplayType:=(EquipmentByte and 48) shr 4;
FloppyNumber:=((EquipmentByte and 192) shr 6)+1;
end;


procedure CMOSRam(a:byte);
begin
asm
 mov al,$16;
 out $70,al;
 in al,$71;
 xchg ah,al;
 mov al,$15;
 out $70,al;
 in al,$71;
 mov BaseRam,ax;
 mov al,$18;
 out $70,al;
 in al,$71;
 xchg ah,al;
 mov al,$17;
 out $70,al;
 in al,$71;
 mov ExtRam,ax;
end;
end;

procedure CMOSTime(a:byte);
begin
asm
 mov al,0;
 out $70,al;
 in al,$71;
 mov TimeSec,al;
 mov al,2;
 out $70,al;
 in al,$71;
 mov TimeMin,al;
 mov al,4;
 out $70,al;
 in al,$71;
 mov TimeHour,al;
 mov al,7;
 out $70,al;
 in al,$71;
 mov DateDay,al;
 mov al,8;
 out $70,al;
 in al,$71;
 mov DateMonth,al;
 mov al,9;
 out $70,al;
 in al,$71;
 mov DateYear,al;
 mov al,$32;
 out $70,al;
 in al,$71;
 mov DateCentury,al;
 mov al,$0B;
 out $70,al;
 in al,$71;
 mov TimeFormat,al;
end;
Daylight:=TimeFormat and 1;
TimeFormat:=TimeFormat shr 1;
if TimeFormat<>1 then TimeHour:=(TimeHour and $7f);
end;

procedure CMOSAlarm(a:byte);
begin
asm
 mov al,1;
 out $70,al;
 in al,$71;
 mov AlarmSec,al;
 mov al,3;
 out $70,al;
 in al,$71;
 mov AlarmMin,al;
 mov al,5;
 out $70,al;
 in al,$71;
 mov AlarmHour,al;
end;
if TimeFormat<>1 then AlarmHour:=(AlarmHour and $7f);
end;



procedure CMOSFdd(a:byte);
begin
asm
 mov al,$10;
 out $70,al;
 in al,$71;
 mov FDD0Type,al;
 mov FDD1Type,al;
end;
FDD0Type:=(FDD0Type shr 4);
FDD1Type:=(FDD1Type and 15);
end;


procedure CMOSHdd(a:byte);
begin
asm
 mov al,$19;
 out $70,al;
 in al,$71;
 mov HDD0Type,al;
 mov al,$1A;
 out $70,al;
 in al,$71;
 mov HDD1Type,al;
end;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
CMOSTime(a);
if TimeFormat<>1 then TimeHour:=(TimeHour and $7f);
Panel24.caption:=inttohex(TimeHour,2)+':'+inttohex(TimeMin,2)+':'+inttohex(TimeSec,2);
Panel25.caption:=inttohex(DateDay,2)+'/'+inttohex(DateMonth,2)+'/'+inttohex(DateCentury,2)+inttohex(DateYear,2);
if TimeFormat=1 then image12.picture:=image5.picture else image11.picture:=image5.picture;
end;


procedure AWARDGeneral0(a:byte);
begin
asm
 mov al,$11;
 out $70,al;
 in al,$71;
 mov GenReg0,al;
 mov al,$1b;
 out $70,al;
 in al,$71;
 mov GenReg1,al;
end;
IDEBlockMode:=(GenReg0 shr 6) and 1;
PasswordEnabled:=(GenReg0 shr 1) and 1;
PassControlTime:=GenReg0 and 1;
ShadowC800:=(GenReg0 shr 3) and 1;
ShadowCC00:=(GenReg0 shr 4) and 1;
ShadowD000:=GenReg1 and 1;
ShadowD400:=(GenReg1 shr 1) and 1;
ShadowD800:=(GenReg1 shr 2) and 1;
ShadowDC00:=(GenReg1 shr 3) and 1;
end;

procedure AWARDHddParams(a:byte);
begin
asm
 mov al,$1F;
 out $70,al;
 in al,$71;
 xchg ah,al;
 mov al,$1E;
 out $70,al;
 in al,$71;
 mov HDD2CylNumber,ax;
 mov al,$20;
 out $70,al;
 in al,$71;
 mov HDD2Heads,al;
 mov al,$22;
 out $70,al;
 in al,$71;
 xchg ah,al;
 mov al,$21;
 out $70,al;
 in al,$71;
 mov HDD2WritePrecomp,ax;
 mov al,$24;
 out $70,al;
 in al,$71;
 xchg ah,al;
 mov al,$23;
 out $70,al;
 in al,$71;
 mov HDD2LandingZone,ax;
 mov al,$25;
 out $70,al;
 in al,$71;
 mov HDD2Sectors,al;
 mov al,$27;
 out $70,al;
 in al,$71;
 xchg ah,al;
 mov al,$26;
 out $70,al;
 in al,$71;
 mov HDD1CylNumber,ax;
 mov al,$28;
 out $70,al;
 in al,$71;
 mov HDD1Heads,al;
 mov al,$2B;
 out $70,al;
 in al,$71;
 xchg ah,al;
 mov al,$2A;
 out $70,al;
 in al,$71;
 mov HDD1WritePrecomp,ax;
 mov al,$2C;
 out $70,al;
 in al,$71;
 xchg ah,al;
 mov al,$2B;
 out $70,al;
 in al,$71;
 mov HDD1LandingZone,ax;
 mov al,$2D;
 out $70,al;
 in al,$71;
 mov HDD1Sectors,al;
 mov al,$69;
 out $70,al;
 in al,$71;
 xchg ah,al;
 mov al,$68;
 out $70,al;
 in al,$71;
 mov HDD3CylNumber,ax;
 mov al,$6A;
 out $70,al;
 in al,$71;
 mov HDD3Heads,al;
 mov al,$6C;
 out $70,al;
 in al,$71;
 xchg ah,al;
 mov al,$6B;
 out $70,al;
 in al,$71;
 mov HDD3WritePrecomp,ax;
 mov al,$6E;
 out $70,al;
 in al,$71;
 xchg ah,al;
 mov al,$6D;
 out $70,al;
 in al,$71;
 mov HDD3LandingZone,ax;
 mov al,$6F;
 out $70,al;
 in al,$71;
 mov HDD3Sectors,al;
 mov al,$71;
 out $70,al;
 in al,$71;
 xchg ah,al;
 mov al,$70;
 out $70,al;
 in al,$71;
 mov HDD4CylNumber,ax;
 mov al,$72;
 out $70,al;
 in al,$71;
 mov HDD4Heads,al;
 mov al,$74;
 out $70,al;
 in al,$71;
 xchg ah,al;
 mov al,$73;
 out $70,al;
 in al,$71;
 mov HDD4WritePrecomp,ax;
 mov al,$76;
 out $70,al;
 in al,$71;
 xchg ah,al;
 mov al,$75;
 out $70,al;
 in al,$71;
 mov HDD4LandingZone,ax;
 mov al,$77;
 out $70,al;
 in al,$71;
 mov HDD4Sectors,al;
end;
end;

procedure AWARDIDE32BitMode(a:byte);
begin
asm
 mov al,$36;
 out $70,al;
 in al,$71;
 mov IDE32Bit,al;
end;
IDE32Bit:=(IDE32Bit shr 6) and 1
end;

procedure AWARDBootConfig(a:byte);
begin
asm
 mov al,$3C;
 out $70,al;
 in al,$71;
 mov GenReg2,al;
 mov al,$3E;
 out $70,al;
 in al,$71;
 mov GenReg3,al;
 mov al,$45;
 out $70,al;
 in al,$71;
 mov GenReg4,al;
 mov al,$53;
 out $70,al;
 in al,$71;
 mov PowerButtonOverrideEnabled,al;
end;
VirusWarning:=abs((GenReg2 shr 7)-1);
QuickPOSTEnabled:=(GenReg2 shr 4) and 1;
BootSequence:=GenReg2 and 1;
ShadowVideoBIOS:=GenReg3 shr 7;
SwapFloppy:=(GenReg3 shr 4) and 1;
SystemBIOSCacheable:=GenReg4 shr 7;
VideoBIOSCacheable:=(GenReg4 shr 6) and 1;
PowerButtonOverrideEnabled:=PowerButtonOverrideEnabled shr 7;
end;

procedure AWARDAPM(a:byte);
begin
asm
 mov al,$60;
 out $70,al;
 in al,$71;
 mov APMStat,al;
end;
APMStat:=APMStat and 3;
end;

procedure AWARDPassword(a:byte);
begin
if AwardBIOSver=0 then begin
 asm
  mov al,$11;
  out $70,al;
  in al,$71;
  mov Pwd,al;
  mov al,$5E;
  out $70,al;
  in al,$71;
  mov UserPwd0,al;
  mov al,$62;
  out $70,al;
  in al,$71;
  mov UserPwd1,al;
 end;
 UserPwd:=0;
 Supervisor:=(Pwd shr 1) and 1;
 PwdStat:=Pwd and 1;
 UserPwd450g:=UserPwd0 and 1;
 UserPwd451pg:=UserPwd1 and 1;
 if (UserPwd450g=1) or (UserPwd451pg=1) then UserPwd:=1;
end;
end;

procedure AmiPassword(a:byte);
begin
asm
 mov al,$38;
 out $70,al;
 in al,$71;
 mov AmiSupervisor,al;
 mov al,$4C;
 out $70,al;
 in al,$71;
 mov AmiUser,al;
 mov al,$29;
 out $70,al;
 in al,$71
 mov AmiPwdStat,al;
end;
AmiPwdStat:=AmiPwdStat and 16;
if AmiSupervisor<>0 then AmiSupervisor:=1;
if AmiUser<>0 then AmiUser:=1;
if AmiPwdStat<>0 then AmiPwdStat:=1;
end;













procedure TForm1.BitBtn1Click(Sender: TObject);
begin
if AwardBIOSver=0 then begin
 if Supervisor=1 then begin
  asm
   mov al,$11;
   out $70,al;
   in al,$71;
   and al,$FD;
   xchg ah,al;
   mov al,$11;
   out $70,al;
   xchg ah,al;
   out $71,al;
   mov al,$2E;
   out $70,al;
   in al,$71;
   mov ch,al;
   mov al,$2F;
   out $70,al;
   in al,$71;
   mov cl,al;
   dec cx;
   dec cx;
   mov al,$2E;
   out $70,al;
   mov al,ch;
   out $71,al;
   mov al,$2F;
   out $70,al;
   mov al,cl;
   out $71,al;
  end;
 end;

 if UserPwd450g=1 then begin
  asm
   mov al,$5E;
   out $70,al;
   in al,$71;
   and al,$FE;
   xchg ah,al;
   mov al,$5E;
   out $70,al;
   xchg ah,al;
   out $71,al;
   mov al,$7A;
   out $70,al;
   in al,$71;
   mov ch,al;
   mov al,$7B;
   out $70,al;
   in al,$71;
   mov cl,al;
   dec cx;
   mov al,$7A;
   out $70,al;
   mov al,ch;
   out $71,al;
   mov al,$7B;
   out $70,al;
   mov al,cl;
   out $71,al;
  end;
 end;

 if UserPwd451pg=1 then begin
  asm
   mov al,$62;
   out $70,al;
   in al,$71;
   and al,$FE;
   xchg ah,al;
   mov al,$62;
   out $70,al;
   xchg ah,al;
   out $71,al;
   mov al,$7A;
   out $70,al;
   in al,$71;
   mov ch,al;
   mov al,$7B;
   out $70,al;
   in al,$71;
   mov cl,al;
   dec cx;
   mov al,$7A;
   out $70,al;
   mov al,ch;
   out $71,al;
   mov al,$7B;
   out $70,al;
   mov al,cl;
   out $71,al;
  end;
 end;
 AWARDPassword(a);
end;
if Supervisor=1 then image25.picture:=image5.picture else image25.picture:=image4.picture;
if UserPwd=1 then image27.picture:=image5.picture else image27.picture:=image4.picture;
if PwdStat=1 then image28.picture:=image5.picture else image28.picture:=image4.picture;
if PwdStat=0 then image29.picture:=image5.picture else image29.picture:=image4.picture;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
 sayac:byte;
begin
for sayac:=0 to 255 do
 begin
  asm
   mov al,sayac;
   out $70,al;
   mov al,0;
   out $71,al;
  end;
 end;
AWARDPassword(a);
if Supervisor=1 then image25.picture:=image5.picture else image25.picture:=image4.picture;
if UserPwd=1 then image27.picture:=image5.picture else image27.picture:=image4.picture;
if PwdStat=1 then image28.picture:=image5.picture else image28.picture:=image4.picture;
if PwdStat=0 then image29.picture:=image5.picture else image29.picture:=image4.picture;
AmiPassword(a);
if AmiSupervisor=1 then AmiSupLed.picture:=image5.picture else AmiSupLed.picture:=image4.picture;
if AmiUser=1 then AmiUserLed.picture:=image5.picture else AmiUserLed.picture:=image4.picture;
if AmiPwdStat=1 then AmiSysLed.picture:=image5.picture else AmiSysLed.picture:=image4.picture;
if AmiPwdStat=0 then AmiSetupLed.picture:=image5.picture else AmiSetupLed.picture:=image4.picture;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
asm
 mov al,$0B;
 out $70,al;
 in al,$71;
 and al,1;
 not al;
 xchg ah,al;
 mov al,$0B;
 out $70,al;
 xchg ah,al;
 out $71,al;
end;
CMOSTime(a);
if Daylight=1 then
begin
 image3.picture:=image5.picture;
 panel28.caption:='A??k';
end
else
begin
 image3.picture:=image4.picture;
 panel28.caption:='Kapal?';
end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
 ExitWindowsEx(EWX_REBOOT,0);
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
 ExitWindowsEx(EWX_SHUTDOWN,0);
end;

procedure Copyright();
begin
 form1.TabbedNotebook1.PageIndex:=3;

 form1.caption:='B';
 form1.caption:=form1.caption+'I';
 form1.caption:=form1.caption+'O';
 form1.caption:=form1.caption+'S';
 form1.caption:=form1.caption+'P';
 form1.caption:=form1.caption+'Y';
 form1.caption:=form1.caption+' ';
 form1.caption:=form1.caption+'(';
 form1.caption:=form1.caption+'B';
 form1.caption:=form1.caption+'I';
 form1.caption:=form1.caption+'O';
 form1.caption:=form1.caption+'S';
 form1.caption:=form1.caption+'-';
 form1.caption:=form1.caption+'S';
 form1.caption:=form1.caption+'e';
 form1.caption:=form1.caption+'t';
 form1.caption:=form1.caption+'u';
 form1.caption:=form1.caption+'p';
 form1.caption:=form1.caption+' ';
 form1.caption:=form1.caption+'P';
 form1.caption:=form1.caption+'a';
 form1.caption:=form1.caption+'s';
 form1.caption:=form1.caption+'s';
 form1.caption:=form1.caption+'w';
 form1.caption:=form1.caption+'o';
 form1.caption:=form1.caption+'r';
 form1.caption:=form1.caption+'d';
 form1.caption:=form1.caption+' ';
 form1.caption:=form1.caption+'C';
 form1.caption:=form1.caption+'r';
 form1.caption:=form1.caption+'a';
 form1.caption:=form1.caption+'c';
 form1.caption:=form1.caption+'k';
 form1.caption:=form1.caption+'e';
 form1.caption:=form1.caption+'r';
 form1.caption:=form1.caption+' ';
 form1.caption:=form1.caption+'&';
 form1.caption:=form1.caption+' ';
 form1.caption:=form1.caption+'I';
 form1.caption:=form1.caption+'n';
 form1.caption:=form1.caption+'f';
 form1.caption:=form1.caption+'o';
 form1.caption:=form1.caption+'r';
 form1.caption:=form1.caption+'m';
 form1.caption:=form1.caption+'a';
 form1.caption:=form1.caption+'t';
 form1.caption:=form1.caption+'i';
 form1.caption:=form1.caption+'o';
 form1.caption:=form1.caption+'n';
 form1.caption:=form1.caption+' ';
 form1.caption:=form1.caption+'S';
 form1.caption:=form1.caption+'p';
 form1.caption:=form1.caption+'y';
 form1.caption:=form1.caption+')';

 form1.label1.caption:='B';
 form1.label1.caption:=form1.label1.caption+'I';
 form1.label1.caption:=form1.label1.caption+'O';
 form1.label1.caption:=form1.label1.caption+'S';
 form1.label1.caption:=form1.label1.caption+'P';
 form1.label1.caption:=form1.label1.caption+'Y';

 form1.label2.caption:='B';
 form1.label2.caption:=form1.label2.caption+'I';
 form1.label2.caption:=form1.label2.caption+'O';
 form1.label2.caption:=form1.label2.caption+'S';
 form1.label2.caption:=form1.label2.caption+'-';
 form1.label2.caption:=form1.label2.caption+'S';
 form1.label2.caption:=form1.label2.caption+'e';
 form1.label2.caption:=form1.label2.caption+'t';
 form1.label2.caption:=form1.label2.caption+'u';
 form1.label2.caption:=form1.label2.caption+'p';
 form1.label2.caption:=form1.label2.caption+' ';
 form1.label2.caption:=form1.label2.caption+'V';
 form1.label2.caption:=form1.label2.caption+'e';
 form1.label2.caption:=form1.label2.caption+'r';
 form1.label2.caption:=form1.label2.caption+'i';
 form1.label2.caption:=form1.label2.caption+' ';
 form1.label2.caption:=form1.label2.caption+'G';
 form1.label2.caption:=form1.label2.caption+'?';
 form1.label2.caption:=form1.label2.caption+'s';
 form1.label2.caption:=form1.label2.caption+'t';
 form1.label2.caption:=form1.label2.caption+'e';
 form1.label2.caption:=form1.label2.caption+'r';
 form1.label2.caption:=form1.label2.caption+'m';
 form1.label2.caption:=form1.label2.caption+'e';
 form1.label2.caption:=form1.label2.caption+' ';
 form1.label2.caption:=form1.label2.caption+',';
 form1.label2.caption:=form1.label2.caption+' ';
 form1.label2.caption:=form1.label2.caption+'?';
 form1.label2.caption:=form1.label2.caption+'i';
 form1.label2.caption:=form1.label2.caption+'f';
 form1.label2.caption:=form1.label2.caption+'r';
 form1.label2.caption:=form1.label2.caption+'e';
 form1.label2.caption:=form1.label2.caption+' ';
 form1.label2.caption:=form1.label2.caption+'?';
 form1.label2.caption:=form1.label2.caption+'p';
 form1.label2.caption:=form1.label2.caption+'t';
 form1.label2.caption:=form1.label2.caption+'a';
 form1.label2.caption:=form1.label2.caption+'l';
 form1.label2.caption:=form1.label2.caption+' ';
 form1.label2.caption:=form1.label2.caption+'P';
 form1.label2.caption:=form1.label2.caption+'r';
 form1.label2.caption:=form1.label2.caption+'o';
 form1.label2.caption:=form1.label2.caption+'g';
 form1.label2.caption:=form1.label2.caption+'r';
 form1.label2.caption:=form1.label2.caption+'a';
 form1.label2.caption:=form1.label2.caption+'m';
 form1.label2.caption:=form1.label2.caption+'?';

 form1.label3.caption:='S';
 form1.label3.caption:=form1.label3.caption+'?';
 form1.label3.caption:=form1.label3.caption+'l';
 form1.label3.caption:=form1.label3.caption+'e';
 form1.label3.caption:=form1.label3.caption+'y';
 form1.label3.caption:=form1.label3.caption+'m';
 form1.label3.caption:=form1.label3.caption+'a';
 form1.label3.caption:=form1.label3.caption+'n';
 form1.label3.caption:=form1.label3.caption+' ';
 form1.label3.caption:=form1.label3.caption+'G';
 form1.label3.caption:=form1.label3.caption+'?';
 form1.label3.caption:=form1.label3.caption+'N';
 form1.label3.caption:=form1.label3.caption+'E';
 form1.label3.caption:=form1.label3.caption+'L';

 form1.label4.caption:='F';
 form1.label4.caption:=form1.label4.caption+'r';
 form1.label4.caption:=form1.label4.caption+'e';
 form1.label4.caption:=form1.label4.caption+'e';
 form1.label4.caption:=form1.label4.caption+'w';
 form1.label4.caption:=form1.label4.caption+'a';
 form1.label4.caption:=form1.label4.caption+'r';
 form1.label4.caption:=form1.label4.caption+'e';
 form1.label4.caption:=form1.label4.caption+' ';
 form1.label4.caption:=form1.label4.caption+'-';
 form1.label4.caption:=form1.label4.caption+' ';
 form1.label4.caption:=form1.label4.caption+'2';
 form1.label4.caption:=form1.label4.caption+'0';
 form1.label4.caption:=form1.label4.caption+'0';
 form1.label4.caption:=form1.label4.caption+'1';

 form1.label31.caption:='e';
 form1.label31.caption:=form1.label31.caption+'-';
 form1.label31.caption:=form1.label31.caption+'m';
 form1.label31.caption:=form1.label31.caption+'a';
 form1.label31.caption:=form1.label31.caption+'i';
 form1.label31.caption:=form1.label31.caption+'l';
 form1.label31.caption:=form1.label31.caption+':';
 form1.label31.caption:=form1.label31.caption+' ';
 form1.label31.caption:=form1.label31.caption+'i';
 form1.label31.caption:=form1.label31.caption+'n';
 form1.label31.caption:=form1.label31.caption+'t';
 form1.label31.caption:=form1.label31.caption+'e';
 form1.label31.caption:=form1.label31.caption+'r';
 form1.label31.caption:=form1.label31.caption+'r';
 form1.label31.caption:=form1.label31.caption+'u';
 form1.label31.caption:=form1.label31.caption+'p';
 form1.label31.caption:=form1.label31.caption+'t';
 form1.label31.caption:=form1.label31.caption+'2';
 form1.label31.caption:=form1.label31.caption+'1';
 form1.label31.caption:=form1.label31.caption+'@';
 form1.label31.caption:=form1.label31.caption+'y';
 form1.label31.caption:=form1.label31.caption+'a';
 form1.label31.caption:=form1.label31.caption+'h';
 form1.label31.caption:=form1.label31.caption+'o';
 form1.label31.caption:=form1.label31.caption+'o';
 form1.label31.caption:=form1.label31.caption+'.';
 form1.label31.caption:=form1.label31.caption+'c';
 form1.label31.caption:=form1.label31.caption+'o';
 form1.label31.caption:=form1.label31.caption+'m';

 form1.label32.caption:='n';
 form1.label32.caption:=form1.label32.caption+'e';
 form1.label32.caption:=form1.label32.caption+'t';
 form1.label32.caption:=form1.label32.caption+':';
 form1.label32.caption:=form1.label32.caption+' ';
 form1.label32.caption:=form1.label32.caption+'h';
 form1.label32.caption:=form1.label32.caption+'t';
 form1.label32.caption:=form1.label32.caption+'t';
 form1.label32.caption:=form1.label32.caption+'p';
 form1.label32.caption:=form1.label32.caption+':';
 form1.label32.caption:=form1.label32.caption+'/';
 form1.label32.caption:=form1.label32.caption+'/';
 form1.label32.caption:=form1.label32.caption+'w';
 form1.label32.caption:=form1.label32.caption+'w';
 form1.label32.caption:=form1.label32.caption+'w';
 form1.label32.caption:=form1.label32.caption+'.';
 form1.label32.caption:=form1.label32.caption+'g';
 form1.label32.caption:=form1.label32.caption+'e';
 form1.label32.caption:=form1.label32.caption+'o';
 form1.label32.caption:=form1.label32.caption+'c';
 form1.label32.caption:=form1.label32.caption+'i';
 form1.label32.caption:=form1.label32.caption+'t';
 form1.label32.caption:=form1.label32.caption+'i';
 form1.label32.caption:=form1.label32.caption+'e';
 form1.label32.caption:=form1.label32.caption+'s';
 form1.label32.caption:=form1.label32.caption+'.';
 form1.label32.caption:=form1.label32.caption+'c';
 form1.label32.caption:=form1.label32.caption+'o';
 form1.label32.caption:=form1.label32.caption+'m';
 form1.label32.caption:=form1.label32.caption+'/';
 form1.label32.caption:=form1.label32.caption+'i';
 form1.label32.caption:=form1.label32.caption+'n';
 form1.label32.caption:=form1.label32.caption+'t';
 form1.label32.caption:=form1.label32.caption+'e';
 form1.label32.caption:=form1.label32.caption+'r';
 form1.label32.caption:=form1.label32.caption+'r';
 form1.label32.caption:=form1.label32.caption+'u';
 form1.label32.caption:=form1.label32.caption+'p';
 form1.label32.caption:=form1.label32.caption+'t';
 form1.label32.caption:=form1.label32.caption+'2';
 form1.label32.caption:=form1.label32.caption+'1';
end;


procedure TForm1.ncekiBoyut1Click(Sender: TObject);
begin
 CoolTrayIcon1.ShowMainForm;
end;

procedure TForm1.Kapat1Click(Sender: TObject);
begin
   Halt(0);
end;

procedure TForm1.CoolTrayIcon1Click(Sender: TObject);
begin
 CoolTrayIcon1.ShowMainForm;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
 Total,ChkSum:word;
 garb,sayac0,sayac:byte;
begin
Total:=0;
if AmiSupervisor=1 then begin
 for sayac0:=0 to 1 do begin
  for sayac:=($38+sayac0*20) to ($3D+sayac0*20) do
   begin
    asm
     mov al,sayac;
     out $70,al;
     in al,$71;
     mov garb,al;
     mov al,0;
     out $71,al;
    end;
    Total:=Total+garb;
   end;
  end;
end;

asm
 mov al,$3E;
 out $70,al;
 in al,$71;
 mov ch,al;
 mov al,$3F;
 out $70,al;
 in al,$71;
 mov cl,al;
 mov ChkSum,cx;
end;
ChkSum:=ChkSum-Total;
asm
 mov cx,ChkSum;
 mov al,$3E;
 out $70,al;
 mov al,ch;
 out $71,al
 mov al,$3F;
 out $70,al;
 mov al,cl;
 out $71,al
end;
AmiPassword(a);
if AmiSupervisor=1 then AmiSupLed.picture:=image5.picture else AmiSupLed.picture:=image4.picture;
if AmiUser=1 then AmiUserLed.picture:=image5.picture else AmiUserLed.picture:=image4.picture;
if AmiPwdStat=1 then AmiSysLed.picture:=image5.picture else AmiSysLed.picture:=image4.picture;
if AmiPwdStat=0 then AmiSetupLed.picture:=image5.picture else AmiSetupLed.picture:=image4.picture;
end;

procedure TForm1.VerListChange(Sender: TObject);
begin
AwardBIOSver:=verlist.itemindex;
if AwardBIOSver=1 then AwardBIOSver:=0;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
 PwdS:byte;
 Cx2:word;
begin
PwdS:=abs(PwdStat-1);
if AwardBIOSver=0 then begin
 asm
  mov al,$11;
  out $70,al;
  in al,$71;
  and al,$FE;
  or al,PwdS;
  xchg ah,al;
  mov al,$11;
  out $70,al;
  xchg ah,al;
  out $71,al;
  mov al,$2E;
  out $70,al;
  in al,$71;
  mov ch,al;
  mov al,$2F;
  out $70,al;
  in al,$71;
  mov cl,al;
  mov Cx2,cx;
 end;
 if PwdS=0 then Cx2:=Cx2-1 else Cx2:=Cx2+1;
 asm
  mov cx,Cx2;
  mov al,$2E;
  out $70,al;
  mov al,ch;
  out $71,al;
  mov al,$2F;
  out $70,al;
  mov al,cl;
  out $71,al;
 end;
 AWARDPassword(a);
end;
CMOSCopy;
if Supervisor=1 then image25.picture:=image5.picture else image25.picture:=image4.picture;
if UserPwd=1 then image27.picture:=image5.picture else image27.picture:=image4.picture;
if PwdStat=1 then image28.picture:=image5.picture else image28.picture:=image4.picture;
if PwdStat=0 then image29.picture:=image5.picture else image29.picture:=image4.picture;
end;


procedure TForm1.Button3Click(Sender: TObject);
var
 PwdS:byte;
 Cx2:word;
begin
PwdS:=abs(AmiPwdStat-1)*16;
asm
 mov al,$29;
 out $70,al;
 in al,$71;
 and al,$EF;
 or al,PwdS;
 xchg ah,al;
 mov al,$29;
 out $70,al;
 xchg ah,al;
 out $71,al;
 mov al,$2E;
 out $70,al;
 in al,$71;
 mov ch,al;
 mov al,$2F;
 out $70,al;
 in al,$71;
 mov cl,al;
 mov Cx2,cx;
end;
if PwdS=0 then Cx2:=Cx2-16 else Cx2:=Cx2+16;
asm
 mov cx,Cx2;
 mov al,$2E;
 out $70,al;
 mov al,ch;
 out $71,al;
 mov al,$2F;
 out $70,al;
 mov al,cl;
 out $71,al;
end;
AmiPassword(a);
if AmiSupervisor=1 then AmiSupLed.picture:=image5.picture else AmiSupLed.picture:=image4.picture;
if AmiUser=1 then AmiUserLed.picture:=image5.picture else AmiUserLed.picture:=image4.picture;
if AmiPwdStat=1 then AmiSysLed.picture:=image5.picture else AmiSysLed.picture:=image4.picture;
if AmiPwdStat=0 then AmiSetupLed.picture:=image5.picture else AmiSetupLed.picture:=image4.picture;
end;


procedure TForm1.Button4Click(Sender: TObject);
var
 i,j,k,c1,c2:byte;
 c:char;
 NwSupPass,cchk:word;
begin
if AwardBIOSver=0 then begin
 NwSupPass:=0;k:=0;cchk:=0;
 for i := 1 to Length(SupPassEdit.Text) do begin
  c:=(SupPassEdit.Text[i]);
  for j:=0 to 255 do
   if c=chr(j) then k:=j;
  if (k<32) or (k>127) then Exit;
  asm
   mov cl,2;
   rol NwSupPass,cl;
  end;
  NwSupPass:=NwSupPass+k;
 end;

 asm
  mov al,$1C;
  out $70,al;
  in al,$71;
  mov c1,al;
  mov al,$1D;
  out $70,al;
  in al,$71;
  mov c2,al;
  mov al,$2E;
  out $70,al;
  in al,$71;
  xchg al,ch;
  mov al,$2F;
  out $70,al;
  in al,$71;
  xchg al,cl;
  mov cchk,cx;
 end;
 cchk:=cchk-c1-c2;

 asm
  mov cx,NwSupPass;
  mov c1,ch;
  mov c2,cl;
  mov al,$1C;
  out $70,al;
  mov al,cl;
  out $71,al;
  mov al,$1D;
  out $70,al;
  mov al,ch;
  out $71,al;
 end;
 cchk:=cchk+c1+c2;

 asm
  mov cx,cchk;
  mov al,$2E;
  out $70,al;
  mov al,ch;
  out $71,al;
  mov al,$2F;
  out $70,al;
  mov al,cl;
  out $71,al;
 end;

 if Supervisor=0 then begin
  asm
   mov al,$11;
   out $70,al;
   in al,$71;
   or al,2;
   xchg ah,al;
   mov al,$11;
   out $70,al;
   xchg ah,al;
   out $71,al;
   mov al,$2E;
   out $70,al;
   in al,$71;
   mov ch,al;
   mov al,$2F;
   out $70,al;
   in al,$71;
   mov cl,al;
   inc cx;
   inc cx;
   mov al,$2E;
   out $70,al;
   mov al,ch;
   out $71,al;
   mov al,$2F;
   out $70,al;
   mov al,cl;
   out $71,al;
  end;
 end;
 CMOSCopy;
end;
end;

procedure CMOSCopy();
var i,j:byte;
begin
 for i:=$0E to $7F do begin
  j:=i+$80;
  asm
   mov al,i;
   out $70,al;
   in al,$71;
   xchg ah,al;
   mov al,j;
   out $70,al;
   xchg ah,al;
   out $71,al;
  end;
 end;
end;

procedure CMOSChecksum();
var
 i,c:byte;
 cw1,cw2:word;
begin
 cw1:=0;cw2:=0;
asm
 mov al,$2E;
 out $70,al;
 in al,$71;
 xchg al,ch;
 mov al,$2F;
 out $70,al;
 in al,$71;
 xchg al,cl;
 mov cw1,cx;
end;

for i:=$10 to $2D do begin
 asm
  mov al,i;
  out $70,al;
  in al,$71;
  mov c,al;
 end;
 cw2:=cw2+c;
end;
if cw1=cw2 then CMOSchk:=1 else CMOSchk:=0;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked=true then
  SupPassEdit.PasswordChar:='*'
 else
  SupPassEdit.PasswordChar:=#0;
end;
procedure TForm1.FormShow(Sender: TObject);
begin
 form1.top:=(screen.height-form1.height) div 2;
 form1.left:=(screen.width-form1.width) div 2;
end;

end.
