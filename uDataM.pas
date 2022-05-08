unit uDataM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Data.Win.ADODB;

type
  TDataM = class(TDataModule)
    fdConexao: TFDConnection;
    ADQConsulta: TFDQuery;
    DTSConsulta: TDataSource;
    Driver: TFDPhysFBDriverLink;
    ADQLote: TFDQuery;
    DTSLote: TDataSource;
    ADQConsultaCONTROLE: TIntegerField;
    ADQConsultaPRODUTO: TStringField;
    ADQConsultaTIPOBARRA: TStringField;
    ADQConsultaCODBARRAS: TStringField;
    ADQConsultaUNIDADE: TStringField;
    ADQConsultaPRECOCUSTO: TBCDField;
    ADQConsultaPERCLUCRO: TBCDField;
    ADQConsultaPRECOVENDA: TBCDField;
    ADQConsultaCODGRUPO: TIntegerField;
    ADQConsultaGRUPO: TStringField;
    ADQConsultaOBS: TMemoField;
    ADQConsultaCODFORNECEDOR: TIntegerField;
    ADQConsultaFORNECEDOR: TStringField;
    ADQConsultaTAMANHO: TStringField;
    ADQConsultaPESO: TBCDField;
    ADQConsultaCUSTOULTIMACOMPRA: TBCDField;
    ADQConsultaCUSTOMEDIO: TBCDField;
    ADQConsultaQTDETOTALCOMPRADA: TBCDField;
    ADQConsultaQTDETOTALVENDIDA: TBCDField;
    ADQConsultaDATAULTIMACOMPRA: TDateField;
    ADQConsultaDATAULTIMAVENDA: TDateField;
    ADQConsultaDATAHORACADASTRO: TSQLTimeStampField;
    ADQConsultaQTDEMINIMA: TBCDField;
    ADQConsultaQTDEMAXIMA: TBCDField;
    ADQConsultaQTDE: TBCDField;
    ADQConsultaATIVO: TStringField;
    ADQConsultaNCM: TStringField;
    ADQConsultaPERCREDITOCICMS: TBCDField;
    ADQConsultaUSAGRADE: TStringField;
    ADQConsultaUSASERIAL: TStringField;
    ADQConsultaORIGEM: TStringField;
    ADQConsultaCODTRIBUTACAOIPI: TStringField;
    ADQConsultaTRIBUTACAOIPI: TStringField;
    ADQConsultaCODTRIBUTACAOPIS: TStringField;
    ADQConsultaCODTRIBUTACAOCOFINS: TStringField;
    ADQConsultaTRIBUTACAOPIS: TStringField;
    ADQConsultaTRIBUTACAOCOFINS: TStringField;
    ADQConsultaTIPOTRIBUTACAO: TStringField;
    ADQConsultaPERCICMSSTINTERNA: TFMTBCDField;
    ADQConsultaPERCMVAORIGINAL: TFMTBCDField;
    ADQConsultaPOSSUIICMSST: TStringField;
    ADQConsultaISENTO: TStringField;
    ADQConsultaPERCICMSPROPRIOST: TFMTBCDField;
    ADQConsultaIAT: TStringField;
    ADQConsultaIPPT: TStringField;
    ADQConsultaTRIBUTADO: TStringField;
    ADQConsultaCSOSN: TStringField;
    ADQConsultaDESCRICAOCSOSN: TStringField;
    ADQConsultaPESADO: TStringField;
    ADQConsultaBASECALCULOICMSSTRETIDO: TFMTBCDField;
    ADQConsultaVALORICMSSTRETIDO: TFMTBCDField;
    ADQConsultaALIQUOTAICMSECF: TFMTBCDField;
    ADQConsultaFOTO: TBlobField;
    ADQConsultaMD5: TStringField;
    ADQConsultaMENSAGEMNFE: TStringField;
    ADQConsultaCODMENSAGEMNFE: TIntegerField;
    ADQConsultaCODUNIDADEMEDIDA: TIntegerField;
    ADQConsultaCODAPLICACAOPRODUTO: TStringField;
    ADQConsultaAPLICACAOPRODUTO: TStringField;
    ADQConsultaMD5E2: TStringField;
    ADQConsultaQTDEINICIAL: TBCDField;
    ADQConsultaALIQUOTAISS: TBCDField;
    ADQConsultaCODIMPOSTOMEDIO: TIntegerField;
    ADQConsultaPERCIMPOSTOMEDIO: TCurrencyField;
    ADQConsultaCODCSTORIGEM: TIntegerField;
    ADQConsultaCODIGOCSTORIGEM: TIntegerField;
    ADQConsultaCODEMITENTE: TIntegerField;
    ADQConsultaDIASVALIDADEPRODUTO: TIntegerField;
    ADQConsultaFATORCONVERSAO: TStringField;
    ADQConsultaTRIBUTACAOSERVICO: TStringField;
    ADQConsultaREDUCAOBASECALCULOSERVICO: TFMTBCDField;
    ADQConsultaSTATUS: TStringField;
    ADQConsultaDESCRICAOCOMPLEMENTAR: TStringField;
    ADQConsultaREFERENCIA: TStringField;
    ADQConsultaPRECOVENDAUSS: TFMTBCDField;
    ADQConsultaPERCMAXIMODESCONTO: TFMTBCDField;
    ADQConsultaVALORCOMISSAOFIXO: TFMTBCDField;
    ADQConsultaPERCCOMISSAO: TFMTBCDField;
    ADQConsultaPRECOMINIMOUSS: TFMTBCDField;
    ADQConsultaPRECOMINIMO: TFMTBCDField;
    ADQConsultaCODCOMPRA: TIntegerField;
    ADQConsultaVALORCONVERSAO: TFMTBCDField;
    ADQConsultaVALORFRETE: TBCDField;
    ADQConsultaVALOROUTROS: TBCDField;
    ADQConsultaVALORICMSST: TBCDField;
    ADQConsultaVALORIPI: TBCDField;
    ADQConsultaVALORUNITARIOCOMPRA: TBCDField;
    ADQConsultaPERCPIS: TFMTBCDField;
    ADQConsultaPERCCOFINS: TFMTBCDField;
    ADQConsultaCAMPO1: TStringField;
    ADQConsultaCAMPO2: TStringField;
    ADQConsultaCAMPO3: TStringField;
    ADQConsultaCAMPO4: TStringField;
    ADQConsultaCAMPO5: TStringField;
    ADQConsultaCAMPO6: TStringField;
    ADQConsultaCAMPO7: TStringField;
    ADQConsultaCAMPO8: TStringField;
    ADQConsultaCAMPO9: TStringField;
    ADQConsultaCAMPO10: TStringField;
    ADQConsultaMARCA: TStringField;
    ADQConsultaPERCREDUCAOBC: TFMTBCDField;
    ADQConsultaPERCREDUCAOBCST: TFMTBCDField;
    ADQConsultaCODSUBGRUPO: TIntegerField;
    ADQConsultaSUBGRUPO: TStringField;
    ADQConsultaCONTROLARVALIDADE: TStringField;
    ADQConsultaCODMARCA: TIntegerField;
    ADQConsultaPRECOREVENDA: TFMTBCDField;
    ADQConsultaPERCIPI: TFMTBCDField;
    ADQConsultaCFOP: TStringField;
    ADQConsultaUNIDADECONVERSAOVENDA: TStringField;
    ADQConsultaVALORCONVERSAOVENDA: TFMTBCDField;
    ADQConsultaCODTABELAPRECO: TIntegerField;
    ADQConsultaNOMETABELAPRECO: TStringField;
    ADQConsultaPERCIMPOSTOMEDIOESTADUAL: TFMTBCDField;
    ADQConsultaPERCIMPOSTOMEDIOMUNICIPAL: TFMTBCDField;
    ADQConsultaCODIGOENQUADRAMENTOIPI: TStringField;
    ADQConsultaCEST: TStringField;
    ADQConsultaQTDEEMPRODUCAO: TBCDField;
    ADQConsultaQTDEPEDIDOVENDA: TBCDField;
    ADQConsultaQTDEPEDIDOCOMPRA: TBCDField;
    ADQConsultaQTDERESERVADA: TBCDField;
    ADQConsultaQTDEREAL: TBCDField;
    ADQConsultaQTDEEMPRODUCAOMP: TBCDField;
    ADQConsultaUNIDADEMEDIDAETIQUETA: TStringField;
    ADQConsultaFATORCONVERSAOETIQUETA: TFMTBCDField;
    ADQConsultaCODIGOANP: TStringField;
    ADQConsultaDESCRICAOANP: TStringField;
    ADQConsultaPERCGLPCOMB: TBCDField;
    ADQConsultaPERCGNNCOMB: TBCDField;
    ADQConsultaPERCGNICOMB: TBCDField;
    ADQConsultaVALORPARTIDACOMB: TFMTBCDField;
    ADQConsultaCNPJFABRICANTE: TStringField;
    ADQConsultaCODBENEFICIOFISCAL: TStringField;
    ADQConsultaCODIGOANVISA: TStringField;
    ADQConsultaSELOIPI: TStringField;
    ADQConsultaALIQUOTAFCP: TFMTBCDField;
    ADQConsultaPERCFCPST: TFMTBCDField;
    ADQConsultaCODUNIDADETRIBUTAVEL: TIntegerField;
    ADQConsultaUNIDADETRIBUTAVEL: TStringField;
    ADQConsultaQTDETRIBUTAVEL: TBCDField;
    ADQConsultaDESMONTARNAVENDA: TIntegerField;
    ADQConsultaALIQUOTAICMSSTRET: TFMTBCDField;
    ADQConsultaVALORBCICMSSTRET: TFMTBCDField;
    ADQConsultaVALORICMSSTRET: TFMTBCDField;
    ADQConsultaALIQUOTAICMSEFET: TBCDField;
    ADQConsultaPERCREDUCAOICMSEFET: TBCDField;
    ADQConsultaVALORBCICMSEFET: TFMTBCDField;
    ADQConsultaVALORICMSEFET: TFMTBCDField;
    ADQConsultaVALORICMSSUBSTITUTO: TFMTBCDField;
    ADQConsultaCODBARRASCAIXA: TStringField;
    ADQConsultaENVIARDADOS: TIntegerField;
    ADQConsultaVALORPMC: TFMTBCDField;
    ADQConsultaMD5O: TStringField;
    ADQConsultaMD5S: TStringField;
    ADQConsultaVALORFCPST: TFMTBCDField;
    ADQConsultaLOCALIZACAO: TStringField;
    ADQConsultaVOLUME: TIntegerField;
    ADQConsultaMOSTRARCOZINHA: TStringField;
    ADQConsultaCODBARRASINTERNO: TStringField;
    ADQConsultaCODBARRASTRIB: TStringField;
    ADQLoteCONTROLE: TIntegerField;
    ADQLoteCODPRODUTO: TIntegerField;
    ADQLotePRODUTO: TStringField;
    ADQLoteLOTE: TStringField;
    ADQLoteDATAVALIDADE: TDateField;
    ADQLoteDATAHORACADASTRO: TSQLTimeStampField;
    ADQLoteTERMINOUESTOQUE: TStringField;
    ADQLoteDATAFABRICACAO: TDateField;
    ADQLoteQTDE: TFMTBCDField;
    ADQLoteCODCOMPRA: TIntegerField;
    ADQLoteCODITEMCOMPRA: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataM: TDataM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uConsulta;

{$R *.dfm}

end.
