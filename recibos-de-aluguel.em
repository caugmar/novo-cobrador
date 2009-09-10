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
            line-height: 1em;
            margin: 0;
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
            font-size: 9pt;
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
        td {
            margin: 0;
            padding: 0;
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
            font-size: 9pt;
        }
        br.page-break {
            page-break-after: always;
        }
    </style>
</head>
<body>
@empy.startDiversion("ANDRADE")

<div class="notas">
    <p><strong>@mes_vcto</strong></p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 485,00 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>   0,00 </td> </tr>
    <tr> <td> + Luz (0,00%)...R$ </td>                <td>   0,00 </td> </tr>
    <tr> <td> + �gua (0,00%)...R$ </td>               <td>   0,00 </td> </tr>
    <tr> <td> + Parcela @iptu - IPTU/2009...R$ </td>  <td>  17,32 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 502,32 </td> </tr>
</table>

<p class="principal">
Recebi de ANDRADE ALVES PISOS LTDA. - ME, inscrita no C.N.P.J.
sob o n.� 08.347.797/0001-00, estabelecida � Av. Ver. Benedito
de Campos, n.� 156-A, Ibi�na, SP, a import�ncia l�quida de R$ 502,32
(quinhentos e dois reais e trinta e dois centavos) referente
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

<p class="periodo">Per�odo do Contrato de Loca��o: 25/09/2008 a 24/09/2009</p>


@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("ANDRADE")
<hr />

<h1>AVISO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("ANDRADE")
<br class="page-break" />
@empy.startDiversion("ELIZEU")

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
    <tr> <td> + Luz (10,00%)...R$ </td>               <td>  28,69 </td> </tr>
    <tr> <td> + �gua (10,00%)...R$ </td>              <td>   4,72 </td> </tr>
    <tr> <td> + Parcela @iptu - IPTU/2009...R$ </td>  <td>   7,52 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 190,93 </td> </tr>
</table>

<p class="principal">
Recebi de ELIZEU MARCICANO, estabelecido � Av. Ver. Benedito de Campos,
n.� 156, Ibi�na, SP, a import�ncia l�quida de R$ 190,93 (cento e noventa reais
e noventa e tr�s centavos) referente ao aluguel mensal de uma sala n.�
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

<p class="periodo">Per�odo do Contrato de Loca��o: 01/10/2008 a 30/09/2009</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("ELIZEU")
<hr />

<h1>AVISO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("ELIZEU")
<br class="page-break" />
@empy.startDiversion("LDG")

<div class="notas">
    <p><strong>@mes_vcto</strong></p>
    <p>L�QUIDO: R$ 1.524,37 MENSAL</p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 1.685,00 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>   160,63 </td> </tr>
    <tr> <td> + Luz (0,00%)...R$ </td>                <td>     0,00 </td> </tr>
    <tr> <td> + �gua (0,00%)...R$ </td>               <td>     0,00 </td> </tr>
    <tr> <td> + Parcela @iptu - IPTU/2009...R$ </td>  <td>    71,18 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 1.595,55 </td> </tr>
</table>

<p class="principal">
Recebi de LDG BRASIL LTDA. - ME, inscrita no C.N.P.J. sob o n.�
02.412.626/0001-30, estabelecida � Av. Ver. Benedito de Campos, n.� 156,
Ibi�na, SP, a import�ncia l�quida de R$ 1.595,55 (um mil quinhentos e noventa
e cinco reais e cinq�enta e cinco centavos), referente ao aluguel mensal das
salas n.�s 1, 2, 4, 5, 6 e 7 no 3.� pavimento do im�vel no endere�o acima,
vencido em @vcto, cabendo 33,33% da referida import�ncia l�quida a cada
locador.</p>

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

<p class="periodo">Per�odo do Contrato de Loca��o: ver contratos individuais</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("LDG")
<hr />

<h1>AVISO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("LDG")
<br class="page-break" />
@empy.startDiversion("LIDIA1")

<div class="notas">
    <p><strong>@lidia_mes_vcto</strong></p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 839,50 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>   0,00 </td> </tr>
    <tr> <td> + Luz (0,00%)...R$ </td>                <td>   0,00 </td> </tr>
    <tr> <td> + �gua (0,00%)...R$ </td>               <td>   0,00 </td> </tr>
    <tr> <td> + Parcela @iptu - IPTU/2009...R$ </td>  <td>  29,34 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 868,84 </td> </tr>
</table>

<p class="principal">
Recebi de L�DIA MEIRE BARRETO LOPES, inscrita no C.P.F. sob o n.� 025.891.964-74,
estabelecida � Av. Ver. Benedito de Campos, n.� 156, Ibi�na, SP, a import�ncia l�quida de
R$ 868,84 (oitocentos e oitenta e seis reais e oitenta e quatro centavos) referente
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

<p class="periodo">Vencimento no 20.� dia do 3.� m�s subseq�ente - Per�odo do Contrato de Loca��o: 01/04/2009 a 31/03/2010</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("LIDIA1")
<hr />

<h1>AVISO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("LIDIA1")
<br class="page-break" />
@empy.startDiversion("LIDIA2")

<div class="notas">
    <p><strong>@mes_vcto</strong></p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 451,50 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>   0,00 </td> </tr>
    <tr> <td> + Luz (0,00%)...R$ </td>                <td>   0,00 </td> </tr>
    <tr> <td> + �gua (0,00%)...R$ </td>               <td>   0,00 </td> </tr>
    <tr> <td> + Parcela @iptu - IPTU/2009...R$ </td>  <td>  28,25 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 479,75 </td> </tr>
</table>

<p class="principal">
Recebi de L�DIA MEIRE BARRETO LOPES, inscrita no C.P.F. sob o
n.� 025.891.964-74, estabelecida � Av. Ver. Benedito de
Campos, n.� 156, Ibi�na, SP, a import�ncia l�quida de R$ 479,75 (quatrocentos
e setenta e nove reais e setenta e cinco centavos) referente ao aluguel mensal
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

<p class="periodo">Per�odo do Contrato de Loca��o: 01/07/2008 a 30/06/2009</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("LIDIA2")
<hr />

<h1>AVISO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("LIDIA2")
<br class="page-break" />
@empy.startDiversion("MOVETAKER")

<div class="notas">
    <p><strong>@mes_vcto</strong></p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 177,78 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>   0,00 </td> </tr>
    <tr> <td> + Luz (0,00%)...R$ </td>                <td>   0,00 </td> </tr>
    <tr> <td> + �gua (0,00%)...R$ </td>               <td>   0,00 </td> </tr>
    <tr> <td> + Condom�nio...R$ </td>                 <td>  15,00 </td> </tr>
    <tr> <td> + Parcela @iptu - IPTU/2009...R$ </td>  <td>   7,95 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 200,73 </td> </tr>
</table>

<p class="principal">
Recebi de MOVETAKER COMUNICA��O LTDA., inscrita no C.N.P.J. sob o n.�
03.251.978/0001-14, estabelecida � Av. Ver. Benedito de Campos, n.� 156,
Ibi�na, SP, a import�ncia l�quida de R$ 200,73 (duzentos reais e setenta e
tr�s centavos) referente ao aluguel mensal de uma sala n.� 3 no 3.� pavimento do
im�vel no endere�o acima, vencido em @vcto, cabendo 33,33% da referida
import�ncia l�quida a cada locador.</p>

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

<p class="periodo">Per�odo do Contrato de Loca��o: 10/10/2008 a 09/10/2009</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("MOVETAKER")
<hr />

<h1>AVISO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("MOVETAKER")
<br class="page-break" />
@empy.startDiversion("FISCONT")

<div class="notas">
    <p><strong>@mes_vcto</strong></p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 733,42 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>  79,42 </td> </tr>
    <tr> <td> + Luz (40,00%)...R$ </td>               <td> 114,76 </td> </tr>
    <tr> <td> + �gua (30,00%)...R$ </td>              <td>  14,15 </td> </tr>
    <tr> <td> + Parcela @iptu - IPTU/2009...R$ </td>  <td>  29,87 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 812,78 </td> </tr>
</table>

<p class="principal">
Recebi de FISCONT - Ass. Cont. e Auditoria Ltda. - ME, inscrita no
C.N.P.J. sob o n.� 10.666.623/0001-51, estabelecido � Av. Ver. Benedito de
Campos, n.� 156, Ibi�na, SP, a import�ncia l�quida de R$ 812,78
(oitocentos e doze reais e setenta e oito centavos), referente ao
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

<p class="periodo">Per�odo do Contrato de Loca��o: 13/02/2009 a 12/02/2010</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("FISCONT")
<hr />

<h1>AVISO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("FISCONT")
<br class="page-break" />
</body>
</html>
