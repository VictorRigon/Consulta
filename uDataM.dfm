object DataM: TDataM
  OldCreateOrder = False
  Height = 734
  Width = 889
  object fdConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Victor\Desktop\Projetos\Consulta\BASESGMASTER.' +
        'FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object ADQConsulta: TFDQuery
    Active = True
    Connection = fdConexao
    SQL.Strings = (
      'select * from testoque')
    Left = 240
    Top = 24
    object ADQConsultaCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Origin = 'CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ADQConsultaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
      Size = 100
    end
    object ADQConsultaTIPOBARRA: TStringField
      FieldName = 'TIPOBARRA'
      Origin = 'TIPOBARRA'
      Size = 100
    end
    object ADQConsultaCODBARRAS: TStringField
      FieldName = 'CODBARRAS'
      Origin = 'CODBARRAS'
      Size = 500
    end
    object ADQConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 6
    end
    object ADQConsultaPRECOCUSTO: TBCDField
      FieldName = 'PRECOCUSTO'
      Origin = 'PRECOCUSTO'
      Required = True
      Precision = 18
    end
    object ADQConsultaPERCLUCRO: TBCDField
      FieldName = 'PERCLUCRO'
      Origin = 'PERCLUCRO'
      Required = True
      Precision = 18
    end
    object ADQConsultaPRECOVENDA: TBCDField
      FieldName = 'PRECOVENDA'
      Origin = 'PRECOVENDA'
      Required = True
      Precision = 18
    end
    object ADQConsultaCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
      Origin = 'CODGRUPO'
    end
    object ADQConsultaGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Size = 100
    end
    object ADQConsultaOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object ADQConsultaCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
    end
    object ADQConsultaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 100
    end
    object ADQConsultaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Origin = 'TAMANHO'
      Size = 100
    end
    object ADQConsultaPESO: TBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
    end
    object ADQConsultaCUSTOULTIMACOMPRA: TBCDField
      FieldName = 'CUSTOULTIMACOMPRA'
      Origin = 'CUSTOULTIMACOMPRA'
      Precision = 18
    end
    object ADQConsultaCUSTOMEDIO: TBCDField
      FieldName = 'CUSTOMEDIO'
      Origin = 'CUSTOMEDIO'
      Precision = 18
    end
    object ADQConsultaQTDETOTALCOMPRADA: TBCDField
      FieldName = 'QTDETOTALCOMPRADA'
      Origin = 'QTDETOTALCOMPRADA'
      Precision = 18
    end
    object ADQConsultaQTDETOTALVENDIDA: TBCDField
      FieldName = 'QTDETOTALVENDIDA'
      Origin = 'QTDETOTALVENDIDA'
      Precision = 18
    end
    object ADQConsultaDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
      Origin = 'DATAULTIMACOMPRA'
    end
    object ADQConsultaDATAULTIMAVENDA: TDateField
      FieldName = 'DATAULTIMAVENDA'
      Origin = 'DATAULTIMAVENDA'
    end
    object ADQConsultaDATAHORACADASTRO: TSQLTimeStampField
      FieldName = 'DATAHORACADASTRO'
      Origin = 'DATAHORACADASTRO'
    end
    object ADQConsultaQTDEMINIMA: TBCDField
      FieldName = 'QTDEMINIMA'
      Origin = 'QTDEMINIMA'
      Precision = 18
    end
    object ADQConsultaQTDEMAXIMA: TBCDField
      FieldName = 'QTDEMAXIMA'
      Origin = 'QTDEMAXIMA'
      Precision = 18
    end
    object ADQConsultaQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
    end
    object ADQConsultaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 3
    end
    object ADQConsultaNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 50
    end
    object ADQConsultaPERCREDITOCICMS: TBCDField
      FieldName = 'PERCREDITOCICMS'
      Origin = 'PERCREDITOCICMS'
      Precision = 18
    end
    object ADQConsultaUSAGRADE: TStringField
      FieldName = 'USAGRADE'
      Origin = 'USAGRADE'
      Size = 10
    end
    object ADQConsultaUSASERIAL: TStringField
      FieldName = 'USASERIAL'
      Origin = 'USASERIAL'
      Size = 3
    end
    object ADQConsultaORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
      Size = 300
    end
    object ADQConsultaCODTRIBUTACAOIPI: TStringField
      FieldName = 'CODTRIBUTACAOIPI'
      Origin = 'CODTRIBUTACAOIPI'
      Size = 4
    end
    object ADQConsultaTRIBUTACAOIPI: TStringField
      FieldName = 'TRIBUTACAOIPI'
      Origin = 'TRIBUTACAOIPI'
      Size = 100
    end
    object ADQConsultaCODTRIBUTACAOPIS: TStringField
      FieldName = 'CODTRIBUTACAOPIS'
      Origin = 'CODTRIBUTACAOPIS'
      Size = 4
    end
    object ADQConsultaCODTRIBUTACAOCOFINS: TStringField
      FieldName = 'CODTRIBUTACAOCOFINS'
      Origin = 'CODTRIBUTACAOCOFINS'
      Size = 4
    end
    object ADQConsultaTRIBUTACAOPIS: TStringField
      FieldName = 'TRIBUTACAOPIS'
      Origin = 'TRIBUTACAOPIS'
      Size = 300
    end
    object ADQConsultaTRIBUTACAOCOFINS: TStringField
      FieldName = 'TRIBUTACAOCOFINS'
      Origin = 'TRIBUTACAOCOFINS'
      Size = 300
    end
    object ADQConsultaTIPOTRIBUTACAO: TStringField
      FieldName = 'TIPOTRIBUTACAO'
      Origin = 'TIPOTRIBUTACAO'
      Size = 80
    end
    object ADQConsultaPERCICMSSTINTERNA: TFMTBCDField
      FieldName = 'PERCICMSSTINTERNA'
      Origin = 'PERCICMSSTINTERNA'
      Precision = 18
      Size = 2
    end
    object ADQConsultaPERCMVAORIGINAL: TFMTBCDField
      FieldName = 'PERCMVAORIGINAL'
      Origin = 'PERCMVAORIGINAL'
      Precision = 18
      Size = 2
    end
    object ADQConsultaPOSSUIICMSST: TStringField
      FieldName = 'POSSUIICMSST'
      Origin = 'POSSUIICMSST'
      Size = 3
    end
    object ADQConsultaISENTO: TStringField
      FieldName = 'ISENTO'
      Origin = 'ISENTO'
      Size = 3
    end
    object ADQConsultaPERCICMSPROPRIOST: TFMTBCDField
      FieldName = 'PERCICMSPROPRIOST'
      Origin = 'PERCICMSPROPRIOST'
      Precision = 18
      Size = 2
    end
    object ADQConsultaIAT: TStringField
      FieldName = 'IAT'
      Origin = 'IAT'
      Required = True
      Size = 1
    end
    object ADQConsultaIPPT: TStringField
      FieldName = 'IPPT'
      Origin = 'IPPT'
      Required = True
      Size = 1
    end
    object ADQConsultaTRIBUTADO: TStringField
      FieldName = 'TRIBUTADO'
      Origin = 'TRIBUTADO'
      Required = True
      Size = 3
    end
    object ADQConsultaCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 3
    end
    object ADQConsultaDESCRICAOCSOSN: TStringField
      FieldName = 'DESCRICAOCSOSN'
      Origin = 'DESCRICAOCSOSN'
      Size = 300
    end
    object ADQConsultaPESADO: TStringField
      FieldName = 'PESADO'
      Origin = 'PESADO'
      Required = True
      Size = 3
    end
    object ADQConsultaBASECALCULOICMSSTRETIDO: TFMTBCDField
      FieldName = 'BASECALCULOICMSSTRETIDO'
      Origin = 'BASECALCULOICMSSTRETIDO'
      Precision = 18
      Size = 2
    end
    object ADQConsultaVALORICMSSTRETIDO: TFMTBCDField
      FieldName = 'VALORICMSSTRETIDO'
      Origin = 'VALORICMSSTRETIDO'
      Precision = 18
      Size = 2
    end
    object ADQConsultaALIQUOTAICMSECF: TFMTBCDField
      FieldName = 'ALIQUOTAICMSECF'
      Origin = 'ALIQUOTAICMSECF'
      Precision = 18
      Size = 2
    end
    object ADQConsultaFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object ADQConsultaMD5: TStringField
      FieldName = 'MD5'
      Origin = 'MD5'
      Size = 100
    end
    object ADQConsultaMENSAGEMNFE: TStringField
      FieldName = 'MENSAGEMNFE'
      Origin = 'MENSAGEMNFE'
      Size = 500
    end
    object ADQConsultaCODMENSAGEMNFE: TIntegerField
      FieldName = 'CODMENSAGEMNFE'
      Origin = 'CODMENSAGEMNFE'
    end
    object ADQConsultaCODUNIDADEMEDIDA: TIntegerField
      FieldName = 'CODUNIDADEMEDIDA'
      Origin = 'CODUNIDADEMEDIDA'
      Required = True
    end
    object ADQConsultaCODAPLICACAOPRODUTO: TStringField
      FieldName = 'CODAPLICACAOPRODUTO'
      Origin = 'CODAPLICACAOPRODUTO'
      Size = 2
    end
    object ADQConsultaAPLICACAOPRODUTO: TStringField
      FieldName = 'APLICACAOPRODUTO'
      Origin = 'APLICACAOPRODUTO'
      Size = 100
    end
    object ADQConsultaMD5E2: TStringField
      FieldName = 'MD5E2'
      Origin = 'MD5E2'
      Size = 80
    end
    object ADQConsultaQTDEINICIAL: TBCDField
      FieldName = 'QTDEINICIAL'
      Origin = 'QTDEINICIAL'
      Precision = 18
    end
    object ADQConsultaALIQUOTAISS: TBCDField
      FieldName = 'ALIQUOTAISS'
      Origin = 'ALIQUOTAISS'
      Precision = 18
    end
    object ADQConsultaCODIMPOSTOMEDIO: TIntegerField
      FieldName = 'CODIMPOSTOMEDIO'
      Origin = 'CODIMPOSTOMEDIO'
    end
    object ADQConsultaPERCIMPOSTOMEDIO: TCurrencyField
      FieldName = 'PERCIMPOSTOMEDIO'
      Origin = 'PERCIMPOSTOMEDIO'
    end
    object ADQConsultaCODCSTORIGEM: TIntegerField
      FieldName = 'CODCSTORIGEM'
      Origin = 'CODCSTORIGEM'
      Required = True
    end
    object ADQConsultaCODIGOCSTORIGEM: TIntegerField
      FieldName = 'CODIGOCSTORIGEM'
      Origin = 'CODIGOCSTORIGEM'
    end
    object ADQConsultaCODEMITENTE: TIntegerField
      FieldName = 'CODEMITENTE'
      Origin = 'CODEMITENTE'
    end
    object ADQConsultaDIASVALIDADEPRODUTO: TIntegerField
      FieldName = 'DIASVALIDADEPRODUTO'
      Origin = 'DIASVALIDADEPRODUTO'
    end
    object ADQConsultaFATORCONVERSAO: TStringField
      FieldName = 'FATORCONVERSAO'
      Origin = 'FATORCONVERSAO'
      Required = True
      Size = 2
    end
    object ADQConsultaTRIBUTACAOSERVICO: TStringField
      FieldName = 'TRIBUTACAOSERVICO'
      Origin = 'TRIBUTACAOSERVICO'
      Size = 100
    end
    object ADQConsultaREDUCAOBASECALCULOSERVICO: TFMTBCDField
      FieldName = 'REDUCAOBASECALCULOSERVICO'
      Origin = 'REDUCAOBASECALCULOSERVICO'
      Precision = 18
      Size = 2
    end
    object ADQConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object ADQConsultaDESCRICAOCOMPLEMENTAR: TStringField
      FieldName = 'DESCRICAOCOMPLEMENTAR'
      Origin = 'DESCRICAOCOMPLEMENTAR'
      Size = 100
    end
    object ADQConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 100
    end
    object ADQConsultaPRECOVENDAUSS: TFMTBCDField
      FieldName = 'PRECOVENDAUSS'
      Origin = 'PRECOVENDAUSS'
      Precision = 18
      Size = 2
    end
    object ADQConsultaPERCMAXIMODESCONTO: TFMTBCDField
      FieldName = 'PERCMAXIMODESCONTO'
      Origin = 'PERCMAXIMODESCONTO'
      Precision = 18
      Size = 2
    end
    object ADQConsultaVALORCOMISSAOFIXO: TFMTBCDField
      FieldName = 'VALORCOMISSAOFIXO'
      Origin = 'VALORCOMISSAOFIXO'
      Precision = 18
      Size = 2
    end
    object ADQConsultaPERCCOMISSAO: TFMTBCDField
      FieldName = 'PERCCOMISSAO'
      Origin = 'PERCCOMISSAO'
      Precision = 18
      Size = 2
    end
    object ADQConsultaPRECOMINIMOUSS: TFMTBCDField
      FieldName = 'PRECOMINIMOUSS'
      Origin = 'PRECOMINIMOUSS'
      Precision = 18
      Size = 2
    end
    object ADQConsultaPRECOMINIMO: TFMTBCDField
      FieldName = 'PRECOMINIMO'
      Origin = 'PRECOMINIMO'
      Precision = 18
      Size = 2
    end
    object ADQConsultaCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      Origin = 'CODCOMPRA'
    end
    object ADQConsultaVALORCONVERSAO: TFMTBCDField
      FieldName = 'VALORCONVERSAO'
      Origin = 'VALORCONVERSAO'
      Precision = 18
    end
    object ADQConsultaVALORFRETE: TBCDField
      FieldName = 'VALORFRETE'
      Origin = 'VALORFRETE'
      Precision = 18
    end
    object ADQConsultaVALOROUTROS: TBCDField
      FieldName = 'VALOROUTROS'
      Origin = 'VALOROUTROS'
      Precision = 18
    end
    object ADQConsultaVALORICMSST: TBCDField
      FieldName = 'VALORICMSST'
      Origin = 'VALORICMSST'
      Precision = 18
    end
    object ADQConsultaVALORIPI: TBCDField
      FieldName = 'VALORIPI'
      Origin = 'VALORIPI'
      Precision = 18
    end
    object ADQConsultaVALORUNITARIOCOMPRA: TBCDField
      FieldName = 'VALORUNITARIOCOMPRA'
      Origin = 'VALORUNITARIOCOMPRA'
      Precision = 18
    end
    object ADQConsultaPERCPIS: TFMTBCDField
      FieldName = 'PERCPIS'
      Origin = 'PERCPIS'
      Precision = 18
      Size = 2
    end
    object ADQConsultaPERCCOFINS: TFMTBCDField
      FieldName = 'PERCCOFINS'
      Origin = 'PERCCOFINS'
      Precision = 18
      Size = 2
    end
    object ADQConsultaCAMPO1: TStringField
      FieldName = 'CAMPO1'
      Origin = 'CAMPO1'
      Size = 100
    end
    object ADQConsultaCAMPO2: TStringField
      FieldName = 'CAMPO2'
      Origin = 'CAMPO2'
      Size = 100
    end
    object ADQConsultaCAMPO3: TStringField
      FieldName = 'CAMPO3'
      Origin = 'CAMPO3'
      Size = 100
    end
    object ADQConsultaCAMPO4: TStringField
      FieldName = 'CAMPO4'
      Origin = 'CAMPO4'
      Size = 100
    end
    object ADQConsultaCAMPO5: TStringField
      FieldName = 'CAMPO5'
      Origin = 'CAMPO5'
      Size = 100
    end
    object ADQConsultaCAMPO6: TStringField
      FieldName = 'CAMPO6'
      Origin = 'CAMPO6'
      Size = 100
    end
    object ADQConsultaCAMPO7: TStringField
      FieldName = 'CAMPO7'
      Origin = 'CAMPO7'
      Size = 100
    end
    object ADQConsultaCAMPO8: TStringField
      FieldName = 'CAMPO8'
      Origin = 'CAMPO8'
      Size = 100
    end
    object ADQConsultaCAMPO9: TStringField
      FieldName = 'CAMPO9'
      Origin = 'CAMPO9'
      Size = 100
    end
    object ADQConsultaCAMPO10: TStringField
      FieldName = 'CAMPO10'
      Origin = 'CAMPO10'
      Size = 100
    end
    object ADQConsultaMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 100
    end
    object ADQConsultaPERCREDUCAOBC: TFMTBCDField
      FieldName = 'PERCREDUCAOBC'
      Origin = 'PERCREDUCAOBC'
      Precision = 18
      Size = 2
    end
    object ADQConsultaPERCREDUCAOBCST: TFMTBCDField
      FieldName = 'PERCREDUCAOBCST'
      Origin = 'PERCREDUCAOBCST'
      Precision = 18
      Size = 2
    end
    object ADQConsultaCODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
      Origin = 'CODSUBGRUPO'
    end
    object ADQConsultaSUBGRUPO: TStringField
      FieldName = 'SUBGRUPO'
      Origin = 'SUBGRUPO'
      Size = 100
    end
    object ADQConsultaCONTROLARVALIDADE: TStringField
      FieldName = 'CONTROLARVALIDADE'
      Origin = 'CONTROLARVALIDADE'
      Size = 3
    end
    object ADQConsultaCODMARCA: TIntegerField
      FieldName = 'CODMARCA'
      Origin = 'CODMARCA'
    end
    object ADQConsultaPRECOREVENDA: TFMTBCDField
      FieldName = 'PRECOREVENDA'
      Origin = 'PRECOREVENDA'
      Precision = 18
      Size = 2
    end
    object ADQConsultaPERCIPI: TFMTBCDField
      FieldName = 'PERCIPI'
      Origin = 'PERCIPI'
      Precision = 18
      Size = 2
    end
    object ADQConsultaCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object ADQConsultaUNIDADECONVERSAOVENDA: TStringField
      FieldName = 'UNIDADECONVERSAOVENDA'
      Origin = 'UNIDADECONVERSAOVENDA'
      Size = 6
    end
    object ADQConsultaVALORCONVERSAOVENDA: TFMTBCDField
      FieldName = 'VALORCONVERSAOVENDA'
      Origin = 'VALORCONVERSAOVENDA'
      Precision = 18
    end
    object ADQConsultaCODTABELAPRECO: TIntegerField
      FieldName = 'CODTABELAPRECO'
      Origin = 'CODTABELAPRECO'
    end
    object ADQConsultaNOMETABELAPRECO: TStringField
      FieldName = 'NOMETABELAPRECO'
      Origin = 'NOMETABELAPRECO'
      Size = 200
    end
    object ADQConsultaPERCIMPOSTOMEDIOESTADUAL: TFMTBCDField
      FieldName = 'PERCIMPOSTOMEDIOESTADUAL'
      Origin = 'PERCIMPOSTOMEDIOESTADUAL'
      Precision = 18
      Size = 2
    end
    object ADQConsultaPERCIMPOSTOMEDIOMUNICIPAL: TFMTBCDField
      FieldName = 'PERCIMPOSTOMEDIOMUNICIPAL'
      Origin = 'PERCIMPOSTOMEDIOMUNICIPAL'
      Precision = 18
      Size = 2
    end
    object ADQConsultaCODIGOENQUADRAMENTOIPI: TStringField
      FieldName = 'CODIGOENQUADRAMENTOIPI'
      Origin = 'CODIGOENQUADRAMENTOIPI'
      Size = 3
    end
    object ADQConsultaCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object ADQConsultaQTDEEMPRODUCAO: TBCDField
      FieldName = 'QTDEEMPRODUCAO'
      Origin = 'QTDEEMPRODUCAO'
      Precision = 18
    end
    object ADQConsultaQTDEPEDIDOVENDA: TBCDField
      FieldName = 'QTDEPEDIDOVENDA'
      Origin = 'QTDEPEDIDOVENDA'
      Precision = 18
    end
    object ADQConsultaQTDEPEDIDOCOMPRA: TBCDField
      FieldName = 'QTDEPEDIDOCOMPRA'
      Origin = 'QTDEPEDIDOCOMPRA'
      Precision = 18
    end
    object ADQConsultaQTDERESERVADA: TBCDField
      FieldName = 'QTDERESERVADA'
      Origin = 'QTDERESERVADA'
      Precision = 18
    end
    object ADQConsultaQTDEREAL: TBCDField
      FieldName = 'QTDEREAL'
      Origin = 'QTDEREAL'
      Precision = 18
    end
    object ADQConsultaQTDEEMPRODUCAOMP: TBCDField
      FieldName = 'QTDEEMPRODUCAOMP'
      Origin = 'QTDEEMPRODUCAOMP'
      Precision = 18
    end
    object ADQConsultaUNIDADEMEDIDAETIQUETA: TStringField
      FieldName = 'UNIDADEMEDIDAETIQUETA'
      Origin = 'UNIDADEMEDIDAETIQUETA'
      Size = 100
    end
    object ADQConsultaFATORCONVERSAOETIQUETA: TFMTBCDField
      FieldName = 'FATORCONVERSAOETIQUETA'
      Origin = 'FATORCONVERSAOETIQUETA'
      Precision = 18
      Size = 2
    end
    object ADQConsultaCODIGOANP: TStringField
      FieldName = 'CODIGOANP'
      Origin = 'CODIGOANP'
      Size = 10
    end
    object ADQConsultaDESCRICAOANP: TStringField
      FieldName = 'DESCRICAOANP'
      Origin = 'DESCRICAOANP'
      Size = 95
    end
    object ADQConsultaPERCGLPCOMB: TBCDField
      FieldName = 'PERCGLPCOMB'
      Origin = 'PERCGLPCOMB'
      Precision = 18
    end
    object ADQConsultaPERCGNNCOMB: TBCDField
      FieldName = 'PERCGNNCOMB'
      Origin = 'PERCGNNCOMB'
      Precision = 18
    end
    object ADQConsultaPERCGNICOMB: TBCDField
      FieldName = 'PERCGNICOMB'
      Origin = 'PERCGNICOMB'
      Precision = 18
    end
    object ADQConsultaVALORPARTIDACOMB: TFMTBCDField
      FieldName = 'VALORPARTIDACOMB'
      Origin = 'VALORPARTIDACOMB'
      Precision = 18
      Size = 2
    end
    object ADQConsultaCNPJFABRICANTE: TStringField
      FieldName = 'CNPJFABRICANTE'
      Origin = 'CNPJFABRICANTE'
    end
    object ADQConsultaCODBENEFICIOFISCAL: TStringField
      FieldName = 'CODBENEFICIOFISCAL'
      Origin = 'CODBENEFICIOFISCAL'
      Size = 10
    end
    object ADQConsultaCODIGOANVISA: TStringField
      FieldName = 'CODIGOANVISA'
      Origin = 'CODIGOANVISA'
      Size = 13
    end
    object ADQConsultaSELOIPI: TStringField
      FieldName = 'SELOIPI'
      Origin = 'SELOIPI'
      Size = 7
    end
    object ADQConsultaALIQUOTAFCP: TFMTBCDField
      FieldName = 'ALIQUOTAFCP'
      Origin = 'ALIQUOTAFCP'
      Precision = 18
      Size = 2
    end
    object ADQConsultaPERCFCPST: TFMTBCDField
      FieldName = 'PERCFCPST'
      Origin = 'PERCFCPST'
      Precision = 18
      Size = 2
    end
    object ADQConsultaCODUNIDADETRIBUTAVEL: TIntegerField
      FieldName = 'CODUNIDADETRIBUTAVEL'
      Origin = 'CODUNIDADETRIBUTAVEL'
    end
    object ADQConsultaUNIDADETRIBUTAVEL: TStringField
      FieldName = 'UNIDADETRIBUTAVEL'
      Origin = 'UNIDADETRIBUTAVEL'
      Size = 6
    end
    object ADQConsultaQTDETRIBUTAVEL: TBCDField
      FieldName = 'QTDETRIBUTAVEL'
      Origin = 'QTDETRIBUTAVEL'
      Precision = 18
    end
    object ADQConsultaDESMONTARNAVENDA: TIntegerField
      FieldName = 'DESMONTARNAVENDA'
      Origin = 'DESMONTARNAVENDA'
    end
    object ADQConsultaALIQUOTAICMSSTRET: TFMTBCDField
      FieldName = 'ALIQUOTAICMSSTRET'
      Origin = 'ALIQUOTAICMSSTRET'
      Precision = 18
      Size = 2
    end
    object ADQConsultaVALORBCICMSSTRET: TFMTBCDField
      FieldName = 'VALORBCICMSSTRET'
      Origin = 'VALORBCICMSSTRET'
      Precision = 18
      Size = 2
    end
    object ADQConsultaVALORICMSSTRET: TFMTBCDField
      FieldName = 'VALORICMSSTRET'
      Origin = 'VALORICMSSTRET'
      Precision = 18
      Size = 2
    end
    object ADQConsultaALIQUOTAICMSEFET: TBCDField
      FieldName = 'ALIQUOTAICMSEFET'
      Origin = 'ALIQUOTAICMSEFET'
      Precision = 18
    end
    object ADQConsultaPERCREDUCAOICMSEFET: TBCDField
      FieldName = 'PERCREDUCAOICMSEFET'
      Origin = 'PERCREDUCAOICMSEFET'
      Precision = 18
    end
    object ADQConsultaVALORBCICMSEFET: TFMTBCDField
      FieldName = 'VALORBCICMSEFET'
      Origin = 'VALORBCICMSEFET'
      Precision = 18
      Size = 2
    end
    object ADQConsultaVALORICMSEFET: TFMTBCDField
      FieldName = 'VALORICMSEFET'
      Origin = 'VALORICMSEFET'
      Precision = 18
      Size = 2
    end
    object ADQConsultaVALORICMSSUBSTITUTO: TFMTBCDField
      FieldName = 'VALORICMSSUBSTITUTO'
      Origin = 'VALORICMSSUBSTITUTO'
      Precision = 18
      Size = 2
    end
    object ADQConsultaCODBARRASCAIXA: TStringField
      FieldName = 'CODBARRASCAIXA'
      Origin = 'CODBARRASCAIXA'
    end
    object ADQConsultaENVIARDADOS: TIntegerField
      FieldName = 'ENVIARDADOS'
      Origin = 'ENVIARDADOS'
    end
    object ADQConsultaVALORPMC: TFMTBCDField
      FieldName = 'VALORPMC'
      Origin = 'VALORPMC'
      Precision = 18
      Size = 2
    end
    object ADQConsultaMD5O: TStringField
      FieldName = 'MD5O'
      Origin = 'MD5O'
      Size = 32
    end
    object ADQConsultaMD5S: TStringField
      FieldName = 'MD5S'
      Origin = 'MD5S'
      Size = 32
    end
    object ADQConsultaVALORFCPST: TFMTBCDField
      FieldName = 'VALORFCPST'
      Origin = 'VALORFCPST'
      Precision = 18
      Size = 2
    end
    object ADQConsultaLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 100
    end
    object ADQConsultaVOLUME: TIntegerField
      FieldName = 'VOLUME'
      Origin = 'VOLUME'
    end
    object ADQConsultaMOSTRARCOZINHA: TStringField
      FieldName = 'MOSTRARCOZINHA'
      Origin = 'MOSTRARCOZINHA'
      FixedChar = True
      Size = 1
    end
    object ADQConsultaCODBARRASINTERNO: TStringField
      FieldName = 'CODBARRASINTERNO'
      Origin = 'CODBARRASINTERNO'
      Size = 30
    end
    object ADQConsultaCODBARRASTRIB: TStringField
      FieldName = 'CODBARRASTRIB'
      Origin = 'CODBARRASTRIB'
      Size = 30
    end
  end
  object DTSConsulta: TDataSource
    DataSet = ADQConsulta
    Left = 312
    Top = 24
  end
  object Driver: TFDPhysFBDriverLink
    VendorLib = 'C:\Users\Victor\Desktop\Projetos\Consulta\fbclient.dll'
    Embedded = True
    Left = 792
    Top = 336
  end
  object ADQLote: TFDQuery
    Active = True
    Connection = fdConexao
    SQL.Strings = (
      'select * from tvalidadeestoque')
    Left = 240
    Top = 88
    object ADQLoteCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Origin = 'CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ADQLoteCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Required = True
    end
    object ADQLotePRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
      Size = 100
    end
    object ADQLoteLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 100
    end
    object ADQLoteDATAVALIDADE: TDateField
      FieldName = 'DATAVALIDADE'
      Origin = 'DATAVALIDADE'
      Required = True
    end
    object ADQLoteDATAHORACADASTRO: TSQLTimeStampField
      FieldName = 'DATAHORACADASTRO'
      Origin = 'DATAHORACADASTRO'
      Required = True
    end
    object ADQLoteTERMINOUESTOQUE: TStringField
      FieldName = 'TERMINOUESTOQUE'
      Origin = 'TERMINOUESTOQUE'
      Required = True
      Size = 3
    end
    object ADQLoteDATAFABRICACAO: TDateField
      FieldName = 'DATAFABRICACAO'
      Origin = 'DATAFABRICACAO'
    end
    object ADQLoteQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
      Size = 2
    end
    object ADQLoteCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      Origin = 'CODCOMPRA'
    end
    object ADQLoteCODITEMCOMPRA: TIntegerField
      FieldName = 'CODITEMCOMPRA'
      Origin = 'CODITEMCOMPRA'
    end
  end
  object DTSLote: TDataSource
    DataSet = ADQLote
    Left = 312
    Top = 88
  end
end
