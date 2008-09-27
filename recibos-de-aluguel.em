<html>
<head>
    <meta http-equiv="CONTENT-TYPE" content="text/html; charset=iso-8859-1">
    <title>Recibos de Aluguel</title>
    <style type="text/css">
        @@page { 
            size: a4;
        }
        body {
            font-family: "Arial";
            font-size: 10pt;
            text-align: justify;
            line-height: 1.25em;
            margin: 0 1.5cm 2cm 1.5cm;
        }
        div.notas {
            float: left;
            margin: 0;
            padding: 0;
        }
        div.notas p {
            margin: 0.25cm 0 0 0;
            padding: 0;
        }
        table.detalhes {
            font-family: "Arial";
            font-size: 10pt;
            margin-bottom: 0.5cm;
            float: right;
            text-align: right;
        }
        table.detalhes col.desc {
            width: 40em;
        }
        table.detalhes col.valor {
            width: 2cm;
        }
        p {
            text-align: justify;
            margin-bottom: 0.4cm;
        }
        h1 {
            font-size: 115%;
            font-weight: bold;
            text-decoration: underline;
            margin-bottom: 0cm;
            text-align: left;
            padding-top: 0.8cm;
        }
        p.principal {
            clear: both;
        }
        p.data {
            text-align: right;
            margin-bottom: 1cm;
        }
        p.assinatura {
            text-align: right;
            margin-bottom: 0;
        }
        div.fim {
            text-align: left;
            margin: 0;
            padding: 0;
        }
        div.fim p {
            margin: 0;
            padding: 0;
        }
        p.periodo {
            text-align: right;
        }
        br.page-break {
            page-break-after: always;
        }
    </style>
</head>
<body>
@empy.startDiversion("ANDRADE")

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>
<div class="notas">
    <p><strong>@mes_vcto</strong></p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 450,00 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>   0,00 </td> </tr>
    <tr> <td> + Luz (0,00%)...R$ </td>                <td>   0,00 </td> </tr>
    <tr> <td> + �gua (0,00%)...R$ </td>               <td>   0,00 </td> </tr>
    <tr> <td> + Parcela @iptu - IPTU/2008...R$ </td>  <td>  17,32 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 467,32 </td> </tr>
</table>

<p class="principal">                                                    
Recebi de ANDRADE ALVES PISOS LTDA. - ME, inscrita no C.N.P.J. 
sob o n.� 08.347.797/0001-00, estabelecida � Av. Ver. Benedito
de Campos, n.� 156-A, Ibi�na, SP, a import�ncia l�quida de R$ 467,32
(quatrocentos e sessenta e sete reais e trinta e dois centavos) referente
ao aluguel mensal de um sal�o comercial no 1.� pavimento do im�vel no
endere�o acima, vencido em @vcto, cabendo 33,33% da referida
import�ncia l�quida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibi�na, @pgto.</p>

<p class="assinatura">
___________________________________ <br />
ELIZEU MARCICANO E OUTROS
</p>

<div class="fim">
ELIZEU MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibi�na - SP
</div>

<p class="periodo">Per�odo do Contrato de Loca��o: 25/09/2007 a 24/09/2008</p>


@empy.stopDiverting()
@empy.replayDiversion("ANDRADE")
<hr />
@empy.replayDiversion("ANDRADE")
<br class="page-break" />
@empy.startDiversion("ELIZEU")

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>
<div class="notas">
    <p><strong>@mes_vcto</strong></p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 150,00 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>   0,00 </td> </tr>
    <tr> <td> + Luz (10,00%)...R$ </td>               <td>  23,30 </td> </tr>
    <tr> <td> + �gua (10,00%)...R$ </td>              <td>   5,02 </td> </tr>
    <tr> <td> + Parcela @iptu - IPTU/2008...R$ </td>  <td>   7,52 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 185,84 </td> </tr>
</table>

<p class="principal">
Recebi de ELIZEU MARCICANO, estabelecido � Av. Ver. Benedito de Campos,
n.� 156, Ibi�na, SP, a import�ncia l�quida de R$ 185,84 (cento e oitenta e
cinco reais e oitenta e quatro centavos) referente ao aluguel mensal de uma sala n.�
4 no 2.� pavimento do im�vel no endere�o acima, vencido em @vcto,
cabendo 33,33% da referida import�ncia l�quida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibi�na, @pgto.</p>

<p class="assinatura">
___________________________________ <br />
ELIZEU MARCICANO E OUTROS
</p>

<div class="fim">
ELIZEU MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibi�na - SP
</div>

<p class="periodo">Per�odo do Contrato de Loca��o: 01/10/2007 a 30/09/2008</p>

@empy.stopDiverting()
@empy.replayDiversion("ELIZEU")
<hr />
@empy.replayDiversion("ELIZEU")
<br class="page-break" />
@empy.startDiversion("LDG")

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>
<div class="notas">
    <p><strong>@mes_vcto</strong></p>
    <p>L�QUIDO: R$ 1.471,18 MENSAL</p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 1.600,00 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>   200,00 </td> </tr>
    <tr> <td> + Luz (0,00%)...R$ </td>                <td>     0,00 </td> </tr>
    <tr> <td> + �gua (0,00%)...R$ </td>               <td>     0,00 </td> </tr>
    <tr> <td> + Parcela @iptu - IPTU/2008...R$ </td>  <td>    71,18 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 1.471,18 </td> </tr>
</table>

<p class="principal">
Recebi de LDG BRASIL LTDA. - ME, inscrita no C.N.P.J. sob o n.�
02.412.626/0001-30, estabelecida � Av. Ver. Benedito de Campos, n.� 156,
Ibi�na, SP, a import�ncia l�quida de R$ 1.471,18 (um mil quatrocentos e setenta
e um reais e dezoito centavos), referente ao aluguel mensal das salas n.�s 1,
2, 4, 5, 6 e 7 no 3.� pavimento do im�vel no endere�o acima, vencido em @vcto,
cabendo 33,33% da referida import�ncia l�quida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibi�na, 28 de @mes_pgto.</p>

<p class="assinatura">
___________________________________ <br />
ELIZEU MARCICANO E OUTROS
</p>

<div class="fim">
ELIZEU MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibi�na - SP <br /> 
</div>

<p class="periodo">Per�odo do Contrato de Loca��o: 16/02/2008 a 15/02/2009</p>

@empy.stopDiverting()
@empy.replayDiversion("LDG")
<hr />
@empy.replayDiversion("LDG")
<br class="page-break" />
@empy.startDiversion("LIDIA1")

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>
<div class="notas">
    <p><strong>@lidia_mes_vcto</strong></p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 698,00 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>   0,00 </td> </tr>
    <tr> <td> + Luz (0,00%)...R$ </td>                <td>   0,00 </td> </tr>
    <tr> <td> + �gua (0,00%)...R$ </td>               <td>   0,00 </td> </tr>
    <tr> <td> + Parcela @iptu - IPTU/2008...R$ </td>  <td>  29,34 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 728,09 </td> </tr>
</table>

<p class="principal">
Recebi de L�DIA MEIRE BARRETO LOPES, inscrita no C.P.F. sob o n.� 025.891.964-74,
estabelecida � Av. Ver. Benedito de Campos, n.� 156, Ibi�na, SP, a import�ncia l�quida de 
R$ 728,09 (setecentos e vinte e oito reais e nove centavos) referente
ao aluguel mensal de um sal�o comercial no 1.� pavimento do im�vel no
endere�o acima, vencido em @lidia_vcto, cabendo 33,33% da referida
import�ncia l�quida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibi�na, 20 de @mes_pgto.</p>

<p class="assinatura">
___________________________________ <br />
ELIZEU MARCICANO E OUTROS
</p>

<div class="fim">
ELIZEU MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibi�na - SP
</div>

<p class="periodo">Vencimento no 20.� dia do 3.� m�s subseq�ente - Per�odo do Contrato de Loca��o: 01/04/2007 a 31/03/2008</p>

@empy.stopDiverting()
@empy.replayDiversion("LIDIA1")
<hr />
@empy.replayDiversion("LIDIA1")
<br class="page-break" />
@empy.startDiversion("LIDIA2")

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>
<div class="notas">
    <p><strong>@mes_vcto</strong></p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 376,25 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>   0,00 </td> </tr>
    <tr> <td> + Luz (0,00%)...R$ </td>                <td>   0,00 </td> </tr>
    <tr> <td> + �gua (0,00%)...R$ </td>               <td>   0,00 </td> </tr>
    <tr> <td> + Parcela @iptu - IPTU/2008...R$ </td>  <td>  28,25 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 404,50 </td> </tr>
</table>

<p class="principal">
Recebi de L�DIA MEIRE BARRETO LOPES, inscrita no C.P.F. sob o 
n.� 025.891.964-74,
estabelecida � Av. Ver. Benedito de
Campos, n.� 156, Ibi�na, SP, a import�ncia l�quida de R$ 404,50 (quatrocentos
e quatro reais e cinq�enta centavos) referente ao aluguel mensal
de um sal�o comercial n.� 156-B no 1.� pavimento do im�vel no endere�o
acima, vencido em @vcto, cabendo 33,33% da referida import�ncia
l�quida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibi�na, 10 de @mes_pgto.</p>

<p class="assinatura">
___________________________________ <br />
ELIZEU MARCICANO E OUTROS
</p>

<div class="fim">
ELIZEU MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibi�na - SP
</div>

<p class="periodo">Per�odo do Contrato de Loca��o: 01/07/2007 a 30/06/2008</p>
                  
@empy.stopDiverting()
@empy.replayDiversion("LIDIA2")
<hr />
@empy.replayDiversion("LIDIA2")
<br class="page-break" />
@empy.startDiversion("MOVETAKER")

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>
<div class="notas">
    <p><strong>@mes_vcto</strong></p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 161,62 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>   0,00 </td> </tr>
    <tr> <td> + Luz (0,00%)...R$ </td>                <td>   0,00 </td> </tr>
    <tr> <td> + �gua (0,00%)...R$ </td>               <td>   0,00 </td> </tr>
    <tr> <td> + Condom�nio...R$ </td>                 <td>  15,00 </td> </tr>
    <tr> <td> + Parcela @iptu - IPTU/2008...R$ </td>  <td>   7,95 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 184,57 </td> </tr>
</table>

<p class="principal">
Recebi de MOVETAKER COMUNICA��O LTDA., inscrita no C.N.P.J. sob o n.�
03.251.978/0001-14, estabelecida � Av. Ver. Benedito de Campos, n.� 156,
Ibi�na, SP, a import�ncia l�quida de R$ 184,57 (cento e oitenta e quatro
reais e cinq�enta e sete centavos) referente ao aluguel mensal de uma sala
n.� 3 no 3.� pavimento do im�vel no endere�o acima, vencido em @vcto,
cabendo 33,33% da referida import�ncia l�quida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibi�na, 10 de @mes_pgto.</p>

<p class="assinatura">
___________________________________ <br />
ELIZEU MARCICANO E OUTROS
</p>

<div class="fim">
ELIZEU MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibi�na - SP
</div>

<p class="periodo">Per�odo do Contrato de Loca��o: 10/10/2007 a 09/10/2008</p>

@empy.stopDiverting()
@empy.replayDiversion("MOVETAKER")
<hr />
@empy.replayDiversion("MOVETAKER")
<br class="page-break" />
@empy.startDiversion("SERVIPRODI")

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>
<div class="notas">
    <p><strong>@mes_vcto</strong></p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 682,25 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>  82,25 </td> </tr>
    <tr> <td> + Luz (40,00%)...R$ </td>               <td> 100,81 </td> </tr>
    <tr> <td> + �gua (30,00%)...R$ </td>              <td>  13,46 </td> </tr>
    <tr> <td> + Parcela @iptu - IPTU/2008...R$ </td>  <td>  29,87 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 744,14 </td> </tr>
</table>

<p class="principal">
Recebi de SERVIPRODI - Serv. Proc. Dados Ibi�na Ltda. - ME, inscrita no
C.N.P.J. sob o n.� 04.588.446/0001-30, estabelecido � Av. Ver. Benedito de
Campos, n.� 156, Ibi�na, SP, a import�ncia l�quida de R$ 744,14
(setecentos e quarenta e quatro reais e quatorze centavos), referente ao
aluguel mensal de tr�s salas, n.�s 1, 2 e 3, no 2.� pavimento do im�vel no
endere�o acima, vencido em @vcto, cabendo 33,33% da referida
import�ncia l�quida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibi�na, @pgto.</p>

<p class="assinatura">
___________________________________ <br />
ELIZEU MARCICANO E OUTROS
</p>

<div class="fim">
ELIZEU MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibi�na - SP
</div>

<p class="periodo">Per�odo do Contrato de Loca��o: 01/10/2007 a 31/09/2008</p>
              
@empy.stopDiverting()
@empy.replayDiversion("SERVIPRODI")
<hr />
@empy.replayDiversion("SERVIPRODI")
<br class="page-break" />
</body>
</html>
