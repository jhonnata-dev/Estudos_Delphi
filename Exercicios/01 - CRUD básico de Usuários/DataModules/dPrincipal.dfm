object dtmPrincipal: TdtmPrincipal
  OnCreate = DataModuleCreate
  Height = 600
  Width = 800
  PixelsPerInch = 120
  object memUsuarios: TFDMemTable
    BeforePost = memUsuariosBeforePost
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 50
    Top = 10
    object memUsuariosId: TIntegerField
      FieldName = 'Id'
    end
    object memUsuariosNome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
    object memUsuariosEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object memUsuariosIdade: TIntegerField
      FieldName = 'Idade'
    end
  end
end
