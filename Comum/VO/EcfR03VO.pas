{*******************************************************************************
Title: T2Ti ERP                                                                 
Description:  VO  relacionado � tabela [ECF_R03] 
                                                                                
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
unit EcfR03VO;

interface

uses
  VO, Atributos, Classes, Constantes, Generics.Collections, SysUtils;

type
  [TEntity]
  [TTable('ECF_R03')]
  TEcfR03VO = class(TVO)
  private
    FID: Integer;
    FNOME_CAIXA: String;
    FID_GERADO_CAIXA: Integer;
    FID_EMPRESA: Integer;
    FID_R02: Integer;
    FTOTALIZADOR_PARCIAL: String;
    FVALOR_ACUMULADO: Extended;
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
    [TColumn('ID_R02','Id R02',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdR02: Integer  read FID_R02 write FID_R02;
    [TColumn('TOTALIZADOR_PARCIAL','Totalizador Parcial',80,[ldGrid, ldLookup, ldCombobox], False)]
    property TotalizadorParcial: String  read FTOTALIZADOR_PARCIAL write FTOTALIZADOR_PARCIAL;
    [TColumn('VALOR_ACUMULADO','Valor Acumulado',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property ValorAcumulado: Extended  read FVALOR_ACUMULADO write FVALOR_ACUMULADO;
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
