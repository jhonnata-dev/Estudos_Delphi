object dtmPrincipal: TdtmPrincipal
  Height = 480
  Width = 640
  object memTarefas: TFDMemTable
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
      FieldName = 'Id'
    end
    object memTarefasData: TDateTimeField
      FieldName = 'Data'
    end
    object memTarefasSituacao: TSmallintField
      FieldName = 'Situacao'
    end
    object memTarefasTempoEstimado: TTimeField
      FieldName = 'TempoEstimado'
    end
    object memTarefasDescricao: TStringField
      FieldName = 'Descricao'
      Size = 500
    end
  end
end
