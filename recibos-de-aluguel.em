<html>
<head>
    <!-- Estilos {{{1 -->
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
            margin: 0 2cm;
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
        br.pbreak {
            page-break-after: always;
        }
    </style>
</head>
<body>
    
<!-- Andrade Alves {{{1 -->
@empy.startDiversion("ANDRADE")

<div class="notas">
    <p><strong>@mes_vcto</strong></p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 533,50 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>   0,00 </td> </tr>
    <tr> <td> + Luz (0,00%)...R$ </td>                <td>   0,00 </td> </tr>
    <tr> <td> + �gua (0,00%)...R$ </td>               <td>   0,00 </td> </tr>
    <tr> <td> + IPTU 2010 @iptu </td>                 <td>  24,88 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 558,38 </td> </tr>
</table>

<p class="principal"> Recebi de ANDRADE ALVES PISOS LTDA. - ME, inscrita no
C.N.P.J.  sob o n.� 08.347.797/0001-00, estabelecida � Av. Ver. Benedito de
Campos, n.� 156-A, Ibi�na, SP, a import�ncia l�quida de R$ 558,38 (quinhentos e
cinq�enta e oito reais e trinta e oito centavos) referente ao aluguel mensal de
um sal�o comercial no 1.� pavimento do im�vel no endere�o acima, vencido em
@vcto, cabendo 33,33% da referida import�ncia l�quida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibi�na, @pgto.</p>

<p class="assinatura">
___________________________________ <br />
JOS� A. MARCICANO E OUTROS
</p>

<div class="fim">
JOS� A. MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibi�na - SP
</div>

<p class="periodo">Per�odo do Contrato de Loca��o: 25/09/2009 a 24/09/2010</p>


@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("ANDRADE")
<hr />

<h1>AVISO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("ANDRADE")
<br class="pbreak" />

<!-- Edin�ia {{{1 -->
@empy.startDiversion("EDINEIA")

<div class="notas">
    <p><strong>@mes_vcto</strong></p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 180,00 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>   0,00 </td> </tr>
    <tr> <td> + Luz (20,00%)...R$ </td>               <td>   3,67 </td> </tr>
    <tr> <td> + �gua (20,00%)...R$ </td>              <td>   9,85 </td> </tr>
    <tr> <td> + IPTU 2010 @iptu </td>                 <td>   8,09 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 201,61 </td> </tr>
</table>

<p class="principal"> Recebi de EDIN�IA KELLER DE SOUZA, estabelecida � Av.
Ver. Benedito de Campos, n.� 156, Ibi�na, SP, a import�ncia l�quida de R$
201,61 (duzentos e um reais e sessenta e um centavos) referente ao aluguel
mensal de uma sala n.� 4 no 3.� pavimento do im�vel no endere�o acima, vencido
em @vcto, cabendo 33,33% da referida import�ncia l�quida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibi�na, @pgto.</p>

<p class="assinatura">
___________________________________ <br />
JOS� A. MARCICANO E OUTROS
</p>

<div class="fim">
JOS� A. MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibi�na - SP
</div>

<p class="periodo">Per�odo do Contrato de Loca��o: 01/10/2009 a 30/09/2010</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("EDINEIA")
<hr />

<h1>AVISO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("EDINEIA")
<br class="pbreak" />

<!-- Elizeu {{{1 -->
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
    <tr> <td> + Luz (10,00%)...R$ </td>               <td>  29,92 </td> </tr>
    <tr> <td> + �gua (10,00%)...R$ </td>              <td>   4,93 </td> </tr>
    <tr> <td> + IPTU 2010 @iptu </td>                 <td>   8,46 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 193,31 </td> </tr>
</table>

<p class="principal"> Recebi de ELIZEU MARCICANO, estabelecido � Av. Ver.
    Benedito de Campos, n.� 156, Ibi�na, SP, a import�ncia l�quida de R$ 193,31
    (cento e noventa e tr�s reais e trinta e um centavos) referente ao aluguel
    mensal de uma sala n.� 4 no 2.� pavimento do im�vel no endere�o acima,
    vencido em @vcto, cabendo 33,33% da referida import�ncia l�quida a cada
    locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibi�na, @pgto.</p>

<p class="assinatura">
___________________________________ <br />
JOS� A. MARCICANO E OUTROS
</p>

<div class="fim">
JOS� A. MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibi�na - SP
</div>

<p class="periodo">Per�odo do Contrato de Loca��o: 01/10/2009 a 30/09/2010</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("ELIZEU")
<hr />

<h1>AVISO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("ELIZEU")
<br class="pbreak" />
<br class="pbreak" />

<!-- Lidia {{{1 -->
@empy.startDiversion("LIDIA1")

<div class="notas">
    <p><strong>@lidia_mes_vcto</strong></p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 915,06 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>   0,00 </td> </tr>
    <tr> <td> + Luz (0,00%)...R$ </td>                <td>   0,00 </td> </tr>
    <tr> <td> + �gua (0,00%)...R$ </td>               <td>   0,00 </td> </tr>
    <tr> <td> + IPTU 2010 @iptu </td>                 <td>  30,60 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 945,66 </td> </tr>
</table>

<p class="principal"> Recebi de L�DIA MEIRE BARRETO LOPES MADEIRAS - ME,
    inscrita no C.N.P.J. sob o n.� 07.333.536/0001-78, estabelecida � Av. Ver.
    Benedito de Campos, n.� 156, Ibi�na, SP, a import�ncia l�quida de R$ 945,66
    (novecentos e quarenta e cinco reais e sessenta e seis centavos) referente
    ao aluguel mensal de um sal�o comercial no 1.� pavimento do im�vel no
    endere�o acima, vencido em @lidia_vcto, cabendo 33,33% da referida
    import�ncia l�quida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibi�na, 20 de @mes_pgto.</p>

<p class="assinatura">
___________________________________ <br />
JOS� A. MARCICANO E OUTROS
</p>

<div class="fim">
JOS� A. MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibi�na - SP
</div>

<p class="periodo">Vcto no 20.� dia do 3.� m�s subseq�ente - Per�odo da Loca��o: 01/04/2009 a 31/03/2010</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("LIDIA1")
<hr />

<h1>AVISO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("LIDIA1")
<br class="pbreak" />
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
    <tr> <td> + IPTU 2010 @iptu </td>                 <td>  30,10 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 481,60 </td> </tr>
</table>

<p class="principal"> Recebi de L�DIA MEIRE BARRETO LOPES MADEIRAS - ME,
inscrita no C.N.P.J. sob o n.� 07.333.536/0001-78, estabelecida � Av. Ver.
Benedito de Campos, n.� 156, Ibi�na, SP, a import�ncia l�quida de R$ 481,60
(quatrocentos e oitenta e um reais e sessenta centavos) referente ao aluguel
mensal de um sal�o comercial n.� 156-B no 1.� pavimento do im�vel no endere�o
acima, vencido em @vcto, cabendo 33,33% da referida import�ncia l�quida a cada
locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibi�na, 10 de @mes_pgto.</p>

<p class="assinatura">
___________________________________ <br />
JOS� A. MARCICANO E OUTROS
</p>

<div class="fim">
JOS� A. MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 - Centro - Ibi�na - SP
</div>

<p class="periodo">Per�odo do Contrato de Loca��o: 01/07/2009 a 30/06/2010</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("LIDIA2")
<hr />

<h1>AVISO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("LIDIA2")
<br class="pbreak" />

<!-- Movetaker {{{1 -->
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
    <tr> <td> + IPTU 2010 @iptu </td>                 <td>   7,95 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 200,73 </td> </tr>
</table>

<p class="principal"> Recebi de MOVETAKER COMUNICA��O LTDA., inscrita no
C.N.P.J. sob o n.� 03.251.978/0001-14, estabelecida � Av. Ver. Benedito de
Campos, n.� 156, Ibi�na, SP, a import�ncia l�quida de R$ 200,73 (duzentos
reais e setenta e tr�s centavos) referente ao aluguel mensal de uma sala
n.� 3 no 3.� pavimento do im�vel no endere�o acima, vencido em @vcto, cabendo
33,33% da referida import�ncia l�quida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibi�na, 10 de @mes_pgto.</p>

<p class="assinatura">
___________________________________ <br />
JOS� A. MARCICANO E OUTROS
</p>

<div class="fim">
JOS� A. MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 - Centro - Ibi�na - SP
</div>

<p class="periodo">Per�odo do Contrato de Loca��o: 10/10/2009 a 09/10/2010</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("MOVETAKER")
<hr />

<h1>AVISO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("MOVETAKER")
<br class="pbreak" />

<!-- Fiscont {{{1 -->
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
    <tr> <td> + Luz (40,00%)...R$ </td>               <td> 119,66 </td> </tr>
    <tr> <td> + �gua (30,00%)...R$ </td>              <td>  14,78 </td> </tr>
    <tr> <td> + IPTU 2010 @iptu </td>                 <td>  38,97 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 827,41 </td> </tr>
</table>

<p class="principal" style="line-height: 1em"> Recebi de FISCONT - Ass. Cont. e
    Auditoria Ltda. - ME, inscrita no C.N.P.J. sob o n.� 10.666.623/0001-51,
    estabelecido � Av. Ver.  Benedito de Campos, n.� 156, Ibi�na, SP, a
    import�ncia l�quida de R$ 827,41 (oitocentos e vinte e sete reais e
    quarenta e um centavos), referente ao aluguel mensal de tr�s salas, n.�s 1,
    2 e 3, no 2.� pavimento do im�vel no endere�o acima, vencido em @vcto,
    cabendo 33,33% da referida import�ncia l�quida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibi�na, @pgto.</p>

<p class="assinatura">
___________________________________ <br />
JOS� A. MARCICANO E OUTROS
</p>

<div class="fim">
JOS� A. MARCICANO E OUTROS <br />
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
<br class="pbreak" />

<!-- Construtora Oliveira {{{1 -->
@empy.startDiversion("OLIVEIRA")

<div class="notas">
    <p><strong>@mes_vcto</strong></p>
</div>

<table class="detalhes">
    <colgroup>
        <col class="desc">
        <col class="valor">
    </colgroup>
    <tr> <td> Valor...R$ </td>                        <td> 180,00 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>   0,00 </td> </tr>
    <tr> <td> + Luz (40,00%)...R$ </td>               <td>   3,67 </td> </tr>
    <tr> <td> + �gua (30,00%)...R$ </td>              <td>   9,85 </td> </tr>
    <tr> <td> + IPTU 2010 @iptu </td>                 <td>   8,46 </td> </tr>
    <tr> <td> L�quido...R$ </td>                      <td> 201,98 </td> </tr>
</table>

<p class="principal" style="line-height: 1em"> Recebi de CONSTRUTORA OLIVEIRA E
    PRESTA��O DE SERVI�OS LTDA., inscrita no C.N.P.J. sob o n.�
    10.765.209/0001-08, estabelecido � Av. Ver.  Benedito de Campos, n.� 156,
    Ibi�na, SP, a import�ncia l�quida de R$ 201,98 (duzentos e um reais e
    noventa e oito centavos), referente ao aluguel mensal de uma sala n.� 5 no
    3.� pavimento do im�vel no endere�o acima, vencido em @vcto, cabendo 33,33%
    da referida import�ncia l�quida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibi�na, @pgto.</p>

<p class="assinatura">
___________________________________ <br />
JOS� A. MARCICANO E OUTROS
</p>

<div class="fim">
JOS� A. MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibi�na - SP
</div>

<p class="periodo">Per�odo do Contrato de Loca��o: 15/07/2010 a 14/07/2011</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("OLIVEIRA")
<hr />

<h1>AVISO DE ALUGUEL DE IM�VEL</h1>

@empy.replayDiversion("OLIVEIRA")
<br class="pbreak" />
</body>
</html>
