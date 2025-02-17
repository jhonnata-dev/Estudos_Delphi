object dtmPrincipal: TdtmPrincipal
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object memTarefas: TFDMemTable
    BeforePost = memTarefasBeforePost
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 32
    Top = 24
    object memTarefasId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Id'
    end
    object memTarefasData: TDateTimeField
      FieldName = 'Data'
    end
    object memTarefasSituacao: TSmallintField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'Situacao'
      OnGetText = memTarefasSituacaoGetText
    end
    object memTarefasTempoEstimado: TTimeField
      DisplayLabel = 'Tempo Estimado'
      FieldName = 'TempoEstimado'
    end
    object memTarefasDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Size = 500
    end
  end
end
