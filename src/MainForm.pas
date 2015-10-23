unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.IOUtils,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Controls.Presentation, FMX.StdCtrls,
  Winapi.ShellAPI, Winapi.Windows, FMX.Platform.Win, FMX.Edit;

type
  TMainForm = class(TForm)
    TabControl1: TTabControl;
    服务器端: TTabItem;
    数据库: TTabItem;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    桌面编程: TTabItem;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    TabItem4: TTabItem;
    btn10: TButton;
    GroupBox1: TGroupBox;
    lbl1: TLabel;
    edt1: TEdit;
    btn11: TButton;
    btn12: TButton;
    btn13: TButton;
    TabItem1: TTabItem;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure btn13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TMainForm;

implementation

{$R *.fmx}

uses
  Devtools.Utils;

procedure TMainForm.btn10Click(Sender: TObject);
begin
  AppExec('run.cmd', 'run_freemind', SW_HIDE);
end;

procedure TMainForm.btn12Click(Sender: TObject);
begin
  AppExec('run.cmd', 'run_sftp_net_drive', SW_HIDE);
end;

procedure TMainForm.btn13Click(Sender: TObject);
begin
  AppExec('run.cmd', 'run_node_shell', SW_HIDE)
end;

procedure TMainForm.btn1Click(Sender: TObject);
begin
  AppExec('run.cmd', 'services', SW_HIDE);

end;

procedure TMainForm.btn2Click(Sender: TObject);
begin
  AppExec('run.cmd', 'install_nginx_service', SW_HIDE);
end;

procedure TMainForm.btn3Click(Sender: TObject);
begin
  AppExec('run.cmd', 'uninstall_nginx_service', SW_HIDE);
end;

procedure TMainForm.btn4Click(Sender: TObject);
begin
  AppExec('run.cmd', 'run_sqlmanager', SW_HIDE);
end;

procedure TMainForm.btn5Click(Sender: TObject);
begin
  WinExec('cmd /k run.cmd login_mysql', SW_SHOWNORMAL);
end;

procedure TMainForm.btn6Click(Sender: TObject);
begin
  AppExec('run.cmd', 'run_autohotkey_spy', SW_HIDE);
end;

procedure TMainForm.btn7Click(Sender: TObject);
begin
  AppExec('run.cmd', 'run_procexp', SW_HIDE);
end;

procedure TMainForm.btn8Click(Sender: TObject);
begin
  AppExec('run.cmd', 'run_phpMyAdmin', SW_HIDE);
end;

procedure TMainForm.btn9Click(Sender: TObject);
begin
  AppExec('run.cmd', 'run_putty', SW_HIDE);
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  current_dir: string;
  filepath: string;

begin
  current_dir := TPath.GetLibraryPath;
  filepath := TPath.Combine(current_dir, 'delphiXE.png');
  //ShowMessage(filepath);
  //SetCurrentDir(current_dir);



  //Exec('C:\Windows\System32\CMD.exe', '/k run.cmd services');
  //ShowMessage(CmdPath);
  // 管理者権限で実行
  //RunAsAdmin(CmdPath, '');

end;

end.
