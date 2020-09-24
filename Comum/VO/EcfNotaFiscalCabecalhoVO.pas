{*******************************************************************************
Title: T2Ti ERP                                                                 
Description:  VO  relacionado � tabela [ECF_NOTA_FISCAL_CABECALHO] 
                                                                                
The MIT License                                                                 
                                                                                
Copyright: Copyright (C) 2010 T2Ti.COM                                          
                                                                                
Permission is hereby granted, free of charge, to any person                     
obtaining a copy of this software and associated documentation                  
files (the "Software"), to deal in the Software without                         
restriction, including without limitation the rights to use,                    
copy, modify, merge, publish, distribute, sublicense, and/or sell               
copies of the Software, and to permit persons to whom the                       
Software is furnished to do so, subject to the following                        
conditions:                                                                     
                                                                                
The above copyright notice and this permission notice shall be                  
included in all copies or substantial portions of the Software.                 
                                                                                
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,                 
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES                 
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND                        
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT                     
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,                    
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING                    
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR                   
OTHER DEALINGS IN THE SOFTWARE.                                                 
                                                                                
       The author may be contacted at:                                          
           t2ti.com@gmail.com                                                   
                                                                                
@author Albert Eije (t2ti.com@gmail.com)                    
@version 1.0                                                                    
*******************************************************************************}
unit EcfNotaFiscalCabecalhoVO;

interface

uses
  VO, Atributos, Classes, Constantes, Generics.Collections, SysUtils;

type
  [TEntity]
  [TTable('ECF_NOTA_FISCAL_CABECALHO')]
  TEcfNotaFiscalCabecalhoVO = class(TVO)
  private
    FID: Integer;
    FNOME_CAIXA: String;
    FID_GERADO_CAIXA: Integer;
    FID_EMPRESA: Integer;
    FID_ECF_FUNCIONARIO: Integer;
    FID_CLIENTE: Integer;
    FCPF_CNPJ_CLIENTE: String;
    FCFOP: Integer;
    FNUMERO: String;
    FDATA_EMISSAO: TDateTime;
    FHORA_EMISSAO: String;
    FSERIE: String;
    FSUBSERIE: String;
    FTOTAL_PRODUTOS: Extended;
    FTOTAL_NF: Extended;
    FBASE_ICMS: Extended;
    FICMS: Extended;
    FICMS_OUTRAS: Extended;
    FISSQN: Extended;
    FPIS: Extended;
    FCOFINS: Extended;
    FIPI: Extended;
    FTAXA_ACRESCIMO: Extended;
    FACRESCIMO: Extended;
    FACRESCIMO_ITENS: Extended;
    FTAXA_DESCONTO: Extended;
    FDESCONTO: Extended;
    FDESCONTO_ITENS: Extended;
    FCANCELADA: String;
    FTIPO_NOTA: String;
    FDATA_SINCRONIZACAO: TDateTime;
    FHORA_SINCRONIZACAO: String;

  public 
    [TId('ID')]
    [TGeneratedValue(sAuto)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Id: Integer  read FID write FID;
    [TColumn('NOME_CAIXA','Nome Caixa',240,[ldGrid, ldLookup, ldCombobox], False)]
    property NomeCaixa: String  read FNOME_CAIXA write FNOME_CAIXA;
    [TColumn('ID_GERADO_CAIXA','Id Gerado Caixa',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdGeradoCaixa: Integer  read FID_GERADO_CAIXA write FID_GERADO_CAIXA;
    [TColumn('ID_EMPRESA','Id Empresa',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdEmpresa: Integer  read FID_EMPRESA write FID_EMPRESA;
    [TColumn('ID_ECF_FUNCIONARIO','Id Ecf Funcionario',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdEcfFuncionario: Integer  read FID_ECF_FUNCIONARIO write FID_ECF_FUNCIONARIO;
    [TColumn('ID_CLIENTE','Id Cliente',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdCliente: Integer  read FID_CLIENTE write FID_CLIENTE;
    [TColumn('CPF_CNPJ_CLIENTE','Cpf Cnpj Cliente',112,[ldGrid, ldLookup, ldCombobox], False)]
    property CpfCnpjCliente: String  read FCPF_CNPJ_CLIENTE write FCPF_CNPJ_CLIENTE;
    [TColumn('CFOP','Cfop',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Cfop: Integer  read FCFOP write FCFOP;
    [TColumn('NUMERO','Numero',48,[ldGrid, ldLookup, ldCombobox], False)]
    property Numero: String  read FNUMERO write FNUMERO;
    [TColumn('DATA_EMISSAO','Data Emissao',80,[ldGrid, ldLookup, ldCombobox], False)]
    property DataEmissao: TDateTime  read FDATA_EMISSAO write FDATA_EMISSAO;
    [TColumn('HORA_EMISSAO','Hora Emissao',64,[ldGrid, ldLookup, ldCombobox], False)]
    property HoraEmissao: String  read FHORA_EMISSAO write FHORA_EMISSAO;
    [TColumn('SERIE','Serie',16,[ldGrid, ldLookup, ldCombobox], False)]
    property Serie: String  read FSERIE write FSERIE;
    [TColumn('SUBSERIE','Subserie',16,[ldGrid, ldLookup, ldCombobox], False)]
    property Subserie: String  read FSUBSERIE write FSUBSERIE;
    [TColumn('TOTAL_PRODUTOS','Total Produtos',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property TotalProdutos: Extended  read FTOTAL_PRODUTOS write FTOTAL_PRODUTOS;
    [TColumn('TOTAL_NF','Total Nf',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property TotalNf: Extended  read FTOTAL_NF write FTOTAL_NF;
    [TColumn('BASE_ICMS','Base Icms',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property BaseIcms: Extended  read FBASE_ICMS write FBASE_ICMS;
    [TColumn('ICMS','Icms',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property Icms: Extended  read FICMS write FICMS;
    [TColumn('ICMS_OUTRAS','Icms Outras',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property IcmsOutras: Extended  read FICMS_OUTRAS write FICMS_OUTRAS;
    [TColumn('ISSQN','Issqn',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property Issqn: Extended  read FISSQN write FISSQN;
    [TColumn('PIS','Pis',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property Pis: Extended  read FPIS write FPIS;
    [TColumn('COFINS','Cofins',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property Cofins: Extended  read FCOFINS write FCOFINS;
    [TColumn('IPI','Ipi',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property Ipi: Extended  read FIPI write FIPI;
    [TColumn('TAXA_ACRESCIMO','Taxa Acrescimo',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property TaxaAcrescimo: Extended  read FTAXA_ACRESCIMO write FTAXA_ACRESCIMO;
    [TColumn('ACRESCIMO','Acrescimo',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property Acrescimo: Extended  read FACRESCIMO write FACRESCIMO;
    [TColumn('ACRESCIMO_ITENS','Acrescimo Itens',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property AcrescimoItens: Extended  read FACRESCIMO_ITENS write FACRESCIMO_ITENS;
    [TColumn('TAXA_DESCONTO','Taxa Desconto',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property TaxaDesconto: Extended  read FTAXA_DESCONTO write FTAXA_DESCONTO;
    [TColumn('DESCONTO','Desconto',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property Desconto: Extended  read FDESCONTO write FDESCONTO;
    [TColumn('DESCONTO_ITENS','Desconto Itens',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property DescontoItens: Extended  read FDESCONTO_ITENS write FDESCONTO_ITENS;
    [TColumn('CANCELADA','Cancelada',8,[ldGrid, ldLookup, ldCombobox], False)]
    property Cancelada: String  read FCANCELADA write FCANCELADA;
    [TColumn('TIPO_NOTA','Tipo Nota',8,[ldGrid, ldLookup, ldCombobox], False)]
    property TipoNota: String  read FTIPO_NOTA write FTIPO_NOTA;
    [TColumn('DATA_SINCRONIZACAO','Data Sincronizacao',80,[ldGrid, ldLookup, ldCombobox], False)]
    property DataSincronizacao: TDateTime  read FDATA_SINCRONIZACAO write FDATA_SINCRONIZACAO;
    [TColumn('HORA_SINCRONIZACAO','Hora Sincronizacao',64,[ldGrid, ldLookup, ldCombobox], False)]
    property HoraSincronizacao: String  read FHORA_SINCRONIZACAO write FHORA_SINCRONIZACAO;

  end;

implementation



end.
