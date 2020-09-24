{*******************************************************************************
Title: T2Ti ERP                                                                 
Description:  VO  relacionado � tabela [ECF_VENDA_CABECALHO] 
                                                                                
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
unit EcfVendaCabecalhoVO;

interface

uses
  VO, Atributos, Classes, Constantes, Generics.Collections, SysUtils;

type
  [TEntity]
  [TTable('ECF_VENDA_CABECALHO')]
  TEcfVendaCabecalhoVO = class(TVO)
  private
    FID: Integer;
    FNOME_CAIXA: String;
    FID_GERADO_CAIXA: Integer;
    FID_EMPRESA: Integer;
    FID_CLIENTE: Integer;
    FID_ECF_FUNCIONARIO: Integer;
    FID_ECF_MOVIMENTO: Integer;
    FID_ECF_DAV: Integer;
    FID_ECF_PRE_VENDA_CABECALHO: Integer;
    FCFOP: Integer;
    FCOO: Integer;
    FCCF: Integer;
    FDATA_VENDA: TDateTime;
    FHORA_VENDA: String;
    FVALOR_VENDA: Extended;
    FTAXA_DESCONTO: Extended;
    FDESCONTO: Extended;
    FTAXA_ACRESCIMO: Extended;
    FACRESCIMO: Extended;
    FVALOR_FINAL: Extended;
    FVALOR_RECEBIDO: Extended;
    FTROCO: Extended;
    FVALOR_CANCELADO: Extended;
    FTOTAL_PRODUTOS: Extended;
    FTOTAL_DOCUMENTO: Extended;
    FBASE_ICMS: Extended;
    FICMS: Extended;
    FICMS_OUTRAS: Extended;
    FISSQN: Extended;
    FPIS: Extended;
    FCOFINS: Extended;
    FACRESCIMO_ITENS: Extended;
    FDESCONTO_ITENS: Extended;
    FSTATUS_VENDA: String;
    FNOME_CLIENTE: String;
    FCPF_CNPJ_CLIENTE: String;
    FCUPOM_CANCELADO: String;
    FHASH_TRIPA: String;
    FHASH_INCREMENTO: Integer;
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
    [TColumn('ID_CLIENTE','Id Cliente',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdCliente: Integer  read FID_CLIENTE write FID_CLIENTE;
    [TColumn('ID_ECF_FUNCIONARIO','Id Ecf Funcionario',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdEcfFuncionario: Integer  read FID_ECF_FUNCIONARIO write FID_ECF_FUNCIONARIO;
    [TColumn('ID_ECF_MOVIMENTO','Id Ecf Movimento',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdEcfMovimento: Integer  read FID_ECF_MOVIMENTO write FID_ECF_MOVIMENTO;
    [TColumn('ID_ECF_DAV','Id Ecf Dav',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdEcfDav: Integer  read FID_ECF_DAV write FID_ECF_DAV;
    [TColumn('ID_ECF_PRE_VENDA_CABECALHO','Id Ecf Pre Venda Cabecalho',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdEcfPreVendaCabecalho: Integer  read FID_ECF_PRE_VENDA_CABECALHO write FID_ECF_PRE_VENDA_CABECALHO;
    [TColumn('CFOP','Cfop',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Cfop: Integer  read FCFOP write FCFOP;
    [TColumn('COO','Coo',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Coo: Integer  read FCOO write FCOO;
    [TColumn('CCF','Ccf',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Ccf: Integer  read FCCF write FCCF;
    [TColumn('DATA_VENDA','Data Venda',80,[ldGrid, ldLookup, ldCombobox], False)]
    property DataVenda: TDateTime  read FDATA_VENDA write FDATA_VENDA;
    [TColumn('HORA_VENDA','Hora Venda',64,[ldGrid, ldLookup, ldCombobox], False)]
    property HoraVenda: String  read FHORA_VENDA write FHORA_VENDA;
    [TColumn('VALOR_VENDA','Valor Venda',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property ValorVenda: Extended  read FVALOR_VENDA write FVALOR_VENDA;
    [TColumn('TAXA_DESCONTO','Taxa Desconto',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property TaxaDesconto: Extended  read FTAXA_DESCONTO write FTAXA_DESCONTO;
    [TColumn('DESCONTO','Desconto',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property Desconto: Extended  read FDESCONTO write FDESCONTO;
    [TColumn('TAXA_ACRESCIMO','Taxa Acrescimo',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property TaxaAcrescimo: Extended  read FTAXA_ACRESCIMO write FTAXA_ACRESCIMO;
    [TColumn('ACRESCIMO','Acrescimo',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property Acrescimo: Extended  read FACRESCIMO write FACRESCIMO;
    [TColumn('VALOR_FINAL','Valor Final',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property ValorFinal: Extended  read FVALOR_FINAL write FVALOR_FINAL;
    [TColumn('VALOR_RECEBIDO','Valor Recebido',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property ValorRecebido: Extended  read FVALOR_RECEBIDO write FVALOR_RECEBIDO;
    [TColumn('TROCO','Troco',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property Troco: Extended  read FTROCO write FTROCO;
    [TColumn('VALOR_CANCELADO','Valor Cancelado',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property ValorCancelado: Extended  read FVALOR_CANCELADO write FVALOR_CANCELADO;
    [TColumn('TOTAL_PRODUTOS','Total Produtos',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property TotalProdutos: Extended  read FTOTAL_PRODUTOS write FTOTAL_PRODUTOS;
    [TColumn('TOTAL_DOCUMENTO','Total Documento',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property TotalDocumento: Extended  read FTOTAL_DOCUMENTO write FTOTAL_DOCUMENTO;
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
    [TColumn('ACRESCIMO_ITENS','Acrescimo Itens',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property AcrescimoItens: Extended  read FACRESCIMO_ITENS write FACRESCIMO_ITENS;
    [TColumn('DESCONTO_ITENS','Desconto Itens',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property DescontoItens: Extended  read FDESCONTO_ITENS write FDESCONTO_ITENS;
    [TColumn('STATUS_VENDA','Status Venda',8,[ldGrid, ldLookup, ldCombobox], False)]
    property StatusVenda: String  read FSTATUS_VENDA write FSTATUS_VENDA;
    [TColumn('NOME_CLIENTE','Nome Cliente',450,[ldGrid, ldLookup, ldCombobox], False)]
    property NomeCliente: String  read FNOME_CLIENTE write FNOME_CLIENTE;
    [TColumn('CPF_CNPJ_CLIENTE','Cpf Cnpj Cliente',112,[ldGrid, ldLookup, ldCombobox], False)]
    property CpfCnpjCliente: String  read FCPF_CNPJ_CLIENTE write FCPF_CNPJ_CLIENTE;
    [TColumn('CUPOM_CANCELADO','Cupom Cancelado',8,[ldGrid, ldLookup, ldCombobox], False)]
    property CupomCancelado: String  read FCUPOM_CANCELADO write FCUPOM_CANCELADO;
    [TColumn('HASH_TRIPA','Hash Tripa',256,[ldGrid, ldLookup, ldCombobox], False)]
    property HashTripa: String  read FHASH_TRIPA write FHASH_TRIPA;
    [TColumn('HASH_INCREMENTO','Hash Incremento',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property HashIncremento: Integer  read FHASH_INCREMENTO write FHASH_INCREMENTO;
    [TColumn('DATA_SINCRONIZACAO','Data Sincronizacao',80,[ldGrid, ldLookup, ldCombobox], False)]
    property DataSincronizacao: TDateTime  read FDATA_SINCRONIZACAO write FDATA_SINCRONIZACAO;
    [TColumn('HORA_SINCRONIZACAO','Hora Sincronizacao',64,[ldGrid, ldLookup, ldCombobox], False)]
    property HoraSincronizacao: String  read FHORA_SINCRONIZACAO write FHORA_SINCRONIZACAO;

  end;

implementation



end.
