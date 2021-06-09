object data_connection: Tdata_connection
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 295
  Width = 410
  object consorcio_con: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Password=JMV@xrms9'
      'Database=dtbs_arq'
      'DriverID=MySQL')
    Connected = True
    Left = 40
    Top = 120
  end
  object transaction: TFDTransaction
    Connection = consorcio_con
    Left = 40
    Top = 184
  end
  object qr_pessoa: TFDQuery
    Connection = consorcio_con
    SQL.Strings = (
      'select * from dtbs_arq_new.pessoa')
    Left = 304
    Top = 184
  end
  object data_pessoa: TDataSource
    DataSet = qr_pessoa
    Left = 304
    Top = 112
  end
  object data_consorcio: TDataSource
    DataSet = qr_consorcio
    Left = 368
    Top = 112
  end
  object qr_consorcio: TFDQuery
    Connection = consorcio_con
    SQL.Strings = (
      'select * from dtbs_arq_new.tbconsor_plano')
    Left = 368
    Top = 184
  end
  object qr_endereco: TFDQuery
    Connection = consorcio_con
    SQL.Strings = (
      'select * from dtbs_arq_new.endereco')
    Left = 240
    Top = 184
  end
  object data_endereco: TDataSource
    DataSet = qr_endereco
    Left = 240
    Top = 112
  end
  object qr_vsPessoaCon: TFDQuery
    Connection = consorcio_con
    SQL.Strings = (
      
        'select  b.id as '#39'C'#243'digo'#39','#10#9#9'b.nome as '#39'Nome Completo'#39','#10#9#9'b.cpf a' +
        's '#39'CPF'#39','#10'        b.rg as '#39'RG'#39','#10#9#9'c.id as '#39'C'#243'digo Plano'#39','#10#9#9'c.dsp' +
        'lano as '#39'Descri'#231#227'o do plano'#39','#10'        a.logradouro as '#39'Logradour' +
        'o'#39','#10'        a.bairro as '#39'Bairro'#39' ,'#10'        a.cidade as '#39'Cidade'#39',' +
        #10'        a.estado as '#39'Estado'#39','#10'        a.numero as '#39'N'#250'mero'#39#10'from' +
        ' '#9'dtbs_arq_new.endereco a,'#10#9#9'dtbs_arq_new.pessoa b,'#10#9#9'dtbs_arq_n' +
        'ew.tbconsor_plano c,'#10#9#9'dtbs_arq_new.pessoa_endereco d,'#10#9#9'dtbs_ar' +
        'q_new.pessoa_consorcio e'#10'where '#9'd.id_pessoa = b.id'#10#9#9'and'#9'e.id_pe' +
        'ssoa = b.id'#10#9#9'and'#9'd.id_endereco = a.codigo'#10#9#9'and'#9'e.id_plano = c.' +
        'id')
    Left = 144
    Top = 56
  end
  object data_vsPessoaCon: TDataSource
    DataSet = qr_vsPessoaCon
    Left = 144
    Top = 8
  end
end
