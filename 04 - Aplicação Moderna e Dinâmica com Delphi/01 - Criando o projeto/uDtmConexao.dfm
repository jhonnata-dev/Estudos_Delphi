object dtmConexao: TdtmConexao
  Height = 480
  Width = 640
  object SQLConnection: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    TransactIsolationLevel = tiReadCommitted
    Connected = True
    DisableSavepoints = False
    HostName = ''
    Port = 0
    Database = 
      'Provider=SQLOLEDB.1;Password=mudar@123;Persist Security Info=Tru' +
      'e;User ID=sa;Initial Catalog=dbLayoutModerno;Data Source=DESKTOP' +
      '-FRKMC6F\SERVERCURSO'
    User = 'sa'
    Password = 'mudar@123'
    Protocol = 'ado'
    Left = 80
    Top = 48
  end
  object QryMenu: TZQuery
    Connection = SQLConnection
    SQL.Strings = (
      'SELECT TOP (1000) [menuId],'
      #9'[titulo],'
      #9'[nomeImagem],'
      #9'[nomeFormulario],'
      #9'[processo]'
      ''
      ' FROM [dbLayoutModerno].[dbo].[Menu]'
      ' WHERE processo = :processo')
    Params = <
      item
        Name = 'processo'
      end>
    Left = 288
    Top = 56
    ParamData = <
      item
        Name = 'processo'
      end>
  end
end
