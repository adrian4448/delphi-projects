object data_api: Tdata_api
  OldCreateOrder = False
  Height = 322
  Width = 426
  object api_CEP: TRESTClient
    BaseURL = 'http://viacep.com.br/ws/cep/json'
    Params = <
      item
        Name = 'cep'
      end>
    Left = 64
    Top = 48
  end
  object api_CEP_request: TRESTRequest
    Client = api_CEP
    Params = <>
    Response = api_response
    SynchronizedEvents = False
    Left = 64
    Top = 128
  end
  object api_response: TRESTResponse
    Left = 64
    Top = 200
  end
end
