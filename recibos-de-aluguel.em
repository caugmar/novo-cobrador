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
    <tr> <td> Valor...R$ </td>                        <td> 533,50 </td> </tr>
    <tr> <td> - Desconto...R$ </td>                   <td>   0,00 </td> </tr>
    <tr> <td> + Luz (0,00%)...R$ </td>                <td>   0,00 </td> </tr>
    <tr> <td> + Água (0,00%)...R$ </td>               <td>   0,00 </td> </tr>
    <tr> <td> + IPTU/2010 01/11 </td>                 <td>  24,88 </td> </tr>
    <tr> <td> Líquido...R$ </td>                      <td> 558,38 </td> </tr>
</table>

<p class="principal"> Recebi de ANDRADE ALVES PISOS LTDA. - ME, inscrita no
C.N.P.J.  sob o n.º 08.347.797/0001-00, estabelecida à Av. Ver. Benedito de
Campos, n.° 156-A, Ibiúna, SP, a importância líquida de R$ 558,38 (quinhentos e
cinqüenta e oito reais e trinta e oito centavos) referente ao aluguel mensal de
um salão comercial no 1.º pavimento do imóvel no endereço acima, vencido em
@vcto, cabendo 33,33% da referida importância líquida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibiúna, @pgto.</p>

<p class="assinatura">
___________________________________ <br />
ELIZEU MARCICANO E OUTROS
</p>

<div class="fim">
ELIZEU MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibiúna - SP
</div>

<p class="periodo">Período do Contrato de Locação: 25/09/2009 a 24/09/2010</p>


@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IMÓVEL</h1>

@empy.replayDiversion("ANDRADE")
<hr />

<h1>AVISO DE ALUGUEL DE IMÓVEL</h1>

@empy.replayDiversion("ANDRADE")
<br class="page-break" />
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
    <tr> <td> + Luz (10,00%)...R$ </td>               <td>   0,00 </td> </tr>
    <tr> <td> + Água (10,00%)...R$ </td>              <td>   0,00 </td> </tr>
    <tr> <td> + IPTU/2010 01/11 </td>                 <td>   8,09 </td> </tr>
    <tr> <td> Líquido...R$ </td>                      <td> 188,09 </td> </tr>
</table>

<p class="principal"> Recebi de EDINÉIA KELLER DE SOUZA, estabelecida à Av.
Ver. Benedito de Campos, n.° 156, Ibiúna, SP, a importância líquida de R$
188,09 (cento e oitenta e oito reais e nove centavos) referente ao aluguel
mensal de uma sala n.º 4 no 3.º pavimento do imóvel no endereço acima, vencido
em @vcto, cabendo 33,33% da referida importância líquida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibiúna, @pgto.</p>

<p class="assinatura">
___________________________________ <br />
ELIZEU MARCICANO E OUTROS
</p>

<div class="fim">
ELIZEU MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibiúna - SP
</div>

<p class="periodo">Período do Contrato de Locação: 01/10/2009 a 30/09/2010</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IMÓVEL</h1>

@empy.replayDiversion("EDINEIA")
<hr />

<h1>AVISO DE ALUGUEL DE IMÓVEL</h1>

@empy.replayDiversion("EDINEIA")
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
    <tr> <td> + Luz (10,00%)...R$ </td>               <td>  28,64 </td> </tr>
    <tr> <td> + Água (10,00%)...R$ </td>              <td>   4,72 </td> </tr>
    <tr> <td> + IPTU/2010 01/11 </td>                 <td>   8,46 </td> </tr>
    <tr> <td> Líquido...R$ </td>                      <td> 191,82 </td> </tr>
</table>

<p class="principal"> Recebi de ELIZEU MARCICANO, estabelecido à Av. Ver.
Benedito de Campos, n.° 156, Ibiúna, SP, a importância líquida de R$ 191,82
(cento e noventa e um reais e oitenta e dois centavos) referente ao aluguel
mensal de uma sala n.º 4 no 2.º pavimento do imóvel no endereço acima, vencido
em @vcto, cabendo 33,33% da referida importância líquida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibiúna, @pgto.</p>

<p class="assinatura">
___________________________________ <br />
ELIZEU MARCICANO E OUTROS
</p>

<div class="fim">
ELIZEU MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibiúna - SP
</div>

<p class="periodo">Período do Contrato de Locação: 01/10/2009 a 30/09/2010</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IMÓVEL</h1>

@empy.replayDiversion("ELIZEU")
<hr />

<h1>AVISO DE ALUGUEL DE IMÓVEL</h1>

@empy.replayDiversion("ELIZEU")
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
    <tr> <td> + Água (0,00%)...R$ </td>               <td>   0,00 </td> </tr>
    <tr> <td> + IPTU/2010 01/11 </td>                 <td>  30,60 </td> </tr>
    <tr> <td> Líquido...R$ </td>                      <td> 870,10 </td> </tr>
</table>

<p class="principal"> Recebi de LÍDIA MEIRE BARRETO LOPES MADEIRAS - ME,
inscrita no C.N.P.J. sob o n.º 07.333.536/0001-78, estabelecida à Av. Ver.
Benedito de Campos, n.° 156, Ibiúna, SP, a importância líquida de R$ 870,10
(oitocentos e setenta reais e dez centavos) referente ao aluguel mensal de um
salão comercial no 1.º pavimento do imóvel no endereço acima, vencido em
@lidia_vcto, cabendo 33,33% da referida importância líquida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibiúna, 20 de @mes_pgto.</p>

<p class="assinatura">
___________________________________ <br />
ELIZEU MARCICANO E OUTROS
</p>

<div class="fim">
ELIZEU MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibiúna - SP
</div>

<p class="periodo">Vencimento no 20.° dia do 3.º mês subseqüente - Período do Contrato de Locação: 01/04/2009 a 31/03/2010</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IMÓVEL</h1>

@empy.replayDiversion("LIDIA1")
<hr />

<h1>AVISO DE ALUGUEL DE IMÓVEL</h1>

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
    <tr> <td> + Água (0,00%)...R$ </td>               <td>   0,00 </td> </tr>
    <tr> <td> + IPTU/2010 01/11 </td>                 <td>  30,10 </td> </tr>
    <tr> <td> Líquido...R$ </td>                      <td> 481,60 </td> </tr>
</table>

<p class="principal"> Recebi de LÍDIA MEIRE BARRETO LOPES MADEIRAS - ME,
inscrita no C.N.P.J. sob o n.º 07.333.536/0001-78, estabelecida à Av. Ver.
Benedito de Campos, n.° 156, Ibiúna, SP, a importância líquida de R$ 481,60
(quatrocentos e oitenta e um reais e sessenta centavos) referente ao aluguel
mensal de um salão comercial n.° 156-B no 1.º pavimento do imóvel no endereço
acima, vencido em @vcto, cabendo 33,33% da referida importância líquida a cada
locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibiúna, 10 de @mes_pgto.</p>

<p class="assinatura">
___________________________________ <br />
ELIZEU MARCICANO E OUTROS
</p>

<div class="fim">
ELIZEU MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibiúna - SP
</div>

<p class="periodo">Período do Contrato de Locação: 01/07/2009 a 30/06/2010</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IMÓVEL</h1>

@empy.replayDiversion("LIDIA2")
<hr />

<h1>AVISO DE ALUGUEL DE IMÓVEL</h1>

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
    <tr> <td> + Água (0,00%)...R$ </td>               <td>   0,00 </td> </tr>
    <tr> <td> + Condomínio...R$ </td>                 <td>  15,00 </td> </tr>
    <tr> <td> + IPTU/2010 01/11 </td>                 <td>   7,95 </td> </tr>
    <tr> <td> Líquido...R$ </td>                      <td> 200,73 </td> </tr>
</table>

<p class="principal"> Recebi de MOVETAKER COMUNICAÇÃO LTDA., inscrita no
C.N.P.J. sob o n.° 03.251.978/0001-14, estabelecida à Av. Ver. Benedito de
Campos, n.° 156, Ibiúna, SP, a importância líquida de R$ 200,73 (duzentos
reais e setenta e três centavos) referente ao aluguel mensal de uma sala
n.º 3 no 3.º pavimento do imóvel no endereço acima, vencido em @vcto, cabendo
33,33% da referida importância líquida a cada locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibiúna, 10 de @mes_pgto.</p>

<p class="assinatura">
___________________________________ <br />
ELIZEU MARCICANO E OUTROS
</p>

<div class="fim">
ELIZEU MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibiúna - SP
</div>

<p class="periodo">Período do Contrato de Locação: 10/10/2009 a 09/10/2010</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IMÓVEL</h1>

@empy.replayDiversion("MOVETAKER")
<hr />

<h1>AVISO DE ALUGUEL DE IMÓVEL</h1>

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
    <tr> <td> + Luz (40,00%)...R$ </td>               <td> 114,54 </td> </tr>
    <tr> <td> + Água (30,00%)...R$ </td>              <td>  14,15 </td> </tr>
    <tr> <td> + IPTU/2010 01/11 </td>                 <td>  38,97 </td> </tr>
    <tr> <td> Líquido...R$ </td>                      <td> 821,66 </td> </tr>
</table>

<p class="principal"> Recebi de FISCONT - Ass. Cont. e Auditoria Ltda. - ME,
inscrita no C.N.P.J. sob o n.° 10.666.623/0001-51, estabelecido à Av. Ver.
Benedito de Campos, n.° 156, Ibiúna, SP, a importância líquida de R$ 821,66
(oitocentos e vinte um reais e sessenta e seis centavos), referente ao aluguel
mensal de três salas, n.ºs 1, 2 e 3, no 2.º pavimento do imóvel no endereço
acima, vencido em @vcto, cabendo 33,33% da referida importância líquida a cada
locador.</p>

<p>Para maior clareza, firmo o presente.</p>

<p class="data">Ibiúna, @pgto.</p>

<p class="assinatura">
___________________________________ <br />
ELIZEU MARCICANO E OUTROS
</p>

<div class="fim">
ELIZEU MARCICANO E OUTROS <br />
Avenida Vereador Benedito de Campos, 156 <br />
Centro - Ibiúna - SP
</div>

<p class="periodo">Período do Contrato de Locação: 13/02/2009 a 12/02/2010</p>

@empy.stopDiverting()

<h1>RECIBO DE ALUGUEL DE IMÓVEL</h1>

@empy.replayDiversion("FISCONT")
<hr />

<h1>AVISO DE ALUGUEL DE IMÓVEL</h1>

@empy.replayDiversion("FISCONT")
<br class="page-break" />
</body>
</html>
