
  var correto = `2px solid greenyellow`;
  var incorreto = `2px solid red`
  
  var number_correto = `greenyellow`
  var number_incorreto = `rgb(175, 22, 22)`


  function hard_disk(){

  var h = input_lc_23.value;
  var a = input_lc_24.value;
  var r = input_lc_25.value;
  var d = input_lc_26.value;
  var d2 = input_lc_28.value;
  var i = input_lc_29.value;
  var s = input_lc_210.value;
  var k = input_lc_211.value;

  if( h.toUpperCase() == 'H' && a.toUpperCase() == 'A' && r.toUpperCase() == 'R' && d.toUpperCase() == 'D'
  && d2.toUpperCase() == 'D' && i.toUpperCase() == 'I' &&  s.toUpperCase() == 'S' && k.toUpperCase() == 'K'){

      div_lc_23.style.border = correto;
      div_lc_24.style.border = correto;
      div_lc_25.style.border = correto;
      div_lc_26.style.border = correto;
      div_lc_27.style.border = correto;
      div_lc_28.style.border = correto;
      div_lc_29.style.border = correto;
      div_lc_210.style.border = correto;
      div_lc_211.style.border = correto;

      div_n8.style.color = number_correto;
      div_dica8.style.color = number_correto;
      span_dica8.innerHTML = ` HARD DISK `
      span_dica8.style.color = number_correto;

    }else{

      div_lc_23.style.border = incorreto;
      div_lc_24.style.border = incorreto;
      div_lc_25.style.border = incorreto;
      div_lc_26.style.border = incorreto;

      div_lc_27.style.border = incorreto;

      div_lc_28.style.border = incorreto;
      div_lc_29.style.border = incorreto;
      div_lc_210.style.border = incorreto;
      div_lc_211.style.border = incorreto;

      div_n8.style.color = number_incorreto;
      div_dica8.style.color = number_incorreto;
      span_dica8.innerHTML = ' _ _ _ _ ' + '  ' + ' _ _ _ _ ';
      span_dica8.style.color = number_incorreto;

    }

    ganhar();

}

    function icinco(){

        var i = input_lc_29.value;
        var cinco = input_lc_39.value;

        if(i.toUpperCase() == 'I' && cinco.toUpperCase() == '5'){

            div_lc_29.style.border = correto;
            div_lc_39.style.border = correto;

            div_n13.style.color = number_correto;

            input_lc_29.readonly = `true`;
            input_lc_39.readonly = `true`;

            div_dica13.style.color = number_correto;
            span_dica13.innerHTML = ` I5 `
            span_dica13.style.color = number_correto;

        }else{

            div_lc_29.style.border = incorreto;
            div_lc_39.style.border = incorreto;

            div_n13.style.color = number_incorreto;

            div_dica13.style.color = number_incorreto;
            span_dica13.innerHTML = ` _ _ `
            span_dica13.style.color = number_incorreto;

        }

        ganhar();

    }

    function ula(){

        var u = input_lc_313.value;
        var l = input_lc_314.value;
        var a = input_lc_315.value;

        if(u.toUpperCase() == 'U' && l.toUpperCase() == 'L' && a.toUpperCase() == 'A'){

            div_lc_313.style.border = correto;
            div_lc_314.style.border = correto;
            div_lc_315.style.border = correto;

            div_n2.style.color = number_correto;
            div_dica2.style.color = number_correto;
            span_dica2.innerHTML = ` ULA `
            span_dica2.style.color = number_correto;

        }else{

            div_lc_313.style.border = incorreto;
            div_lc_314.style.border = incorreto;
            div_lc_315.style.border = incorreto;

            div_n2.style.color = number_incorreto;

            div_dica2.style.color = number_incorreto;
            span_dica2.innerHTML = ` _ _ _ `
            span_dica2.style.color = number_incorreto;

        }

        ganhar();

    }

    function registradores(){

        var r = input_lc_25.value;
        var e = input_lc_35.value;
        var g = input_lc_45.value;
        var i = input_lc_55.value;
        var s = input_lc_65.value;
        var t = input_lc_75.value;
        var r2 = input_lc_85.value;
        var a = input_lc_95.value;
        var d = input_lc_105.value;
        var o = input_lc_115.value;
        var r3 = input_lc_125.value;
        var e2 = input_lc_135.value;
        var s2 = input_lc_145.value;

    if(r.toUpperCase() == `R` && e.toUpperCase() == `E` && g.toUpperCase() == `G` && i.toUpperCase() == `I` &&
    s.toUpperCase() == `S` && t.toUpperCase() == `T` && r2.toUpperCase() == `R` && a.toUpperCase() == `A` &&
    d.toUpperCase() == `D` && o.toUpperCase() == `O` && r3.toUpperCase() == `R` && e2.toUpperCase() == `E` &&
    s2.toUpperCase() == `S`){

        div_lc_25.style.border = correto;
        div_lc_35.style.border = correto;
        div_lc_45.style.border = correto;
        div_lc_55.style.border = correto;
        div_lc_65.style.border = correto;
        div_lc_75.style.border = correto;
        div_lc_85.style.border = correto;
        div_lc_95.style.border = correto;
        div_lc_105.style.border = correto;
        div_lc_115.style.border = correto;
        div_lc_125.style.border = correto;
        div_lc_135.style.border = correto;
        div_lc_145.style.border = correto;

        div_n3.style.color = number_correto;
        div_dica3.style.color = number_correto;
        span_dica3.innerHTML = ` REGISTRADORES `
        span_dica3.style.color = number_correto;

    }else{

        div_lc_25.style.border = incorreto;
        div_lc_35.style.border = incorreto;
        div_lc_45.style.border = incorreto;
        div_lc_55.style.border = incorreto;
        div_lc_65.style.border = incorreto;
        div_lc_75.style.border = incorreto;
        div_lc_85.style.border = incorreto;
        div_lc_95.style.border = incorreto;
        div_lc_105.style.border = incorreto;
        div_lc_115.style.border = incorreto;
        div_lc_125.style.border = incorreto;
        div_lc_135.style.border = incorreto;
        div_lc_145.style.border = incorreto;

        div_n3.style.color = number_incorreto;
        div_dica3.style.color = number_incorreto;
        span_dica3.innerHTML = ` _ _ _ _ _ _ _ _ _ _ _ _ _ `
        span_dica3.style.color = number_incorreto;

    }
    
    ganhar();

    }

    function data_bus(){

        var d = input_lc_215.value;
        var a = input_lc_315.value;
        var t = input_lc_415.value;
        var a2 = input_lc_515.value;
        var b = input_lc_715.value;
        var u = input_lc_815.value;
        var s = input_lc_915.value;

    if( d.toUpperCase() == 'D' && a.toUpperCase() == 'A' && t.toUpperCase() == 'T' &&
    a2.toUpperCase() == 'A' && b.toUpperCase() == 'B' && u.toUpperCase() == 'U'
    && s.toUpperCase() == 'S' ){

        div_lc_215.style.border = correto;
        div_lc_315.style.border = correto;
        div_lc_415.style.border = correto;
        div_lc_515.style.border = correto;

        div_lc_615.style.border = correto;

        div_lc_715.style.border = correto;
        div_lc_815.style.border = correto;
        div_lc_915.style.border = correto;

        div_n12.style.color = number_correto;
        div_dica12.style.color = number_correto;
        span_dica12.innerHTML = ` DATA BUS `
        span_dica12.style.color = number_correto;

    }else{

        div_lc_215.style.border = incorreto;
        div_lc_315.style.border = incorreto;
        div_lc_415.style.border = incorreto;
        div_lc_515.style.border = incorreto;

        div_lc_615.style.border = incorreto;

        div_lc_715.style.border = incorreto;
        div_lc_815.style.border = incorreto;
        div_lc_915.style.border = incorreto;

        div_n12.style.color = number_incorreto;
        div_dica12.style.color = number_incorreto;
        span_dica12.innerHTML = '_ _ _ _' + ' ' + ' _ _ _ '
        span_dica12.style.color = number_incorreto;

    }

    ganhar();

    }

    function dma(){

        var d = input_lc_513.value;
        var m = input_lc_514.value;
        var a = input_lc_515.value;

        if(d.toUpperCase() == 'D' && m.toUpperCase() == 'M' && a.toUpperCase() == 'A'){

            div_lc_513.style.border = correto;
            div_lc_514.style.border = correto;
            div_lc_515.style.border = correto;

            div_n9.style.color = number_correto;
            div_dica9.style.color = number_correto;
            span_dica9.innerHTML = ` DMA `
            span_dica9.style.color = number_correto;

        }else{

            div_lc_513.style.border = incorreto;
            div_lc_514.style.border = incorreto;
            div_lc_515.style.border = incorreto;

            div_n9.style.color = number_incorreto;
            div_dica9.style.color = number_incorreto;
            span_dica9.innerHTML = ` _ _ _ `
            span_dica9.style.color = number_incorreto;

        }

        ganhar();

    }

    function isete(){

        var i = input_lc_55.value;
        var sete = input_lc_56.value;

        if( i.toUpperCase() == 'I' && sete == '7' ){

            div_lc_55.style.border = correto;
            div_lc_56.style.border = correto;

            div_n14.style.color = number_correto;
            div_dica14.style.color = number_correto;
            span_dica14.innerHTML = ` I7 `
            span_dica14.style.color = number_correto;

        }else{

            div_lc_55.style.border = incorreto;
            div_lc_56.style.border = incorreto;

            div_n14.style.color = number_incorreto;
            div_dica14.style.color = number_incorreto;
            span_dica14.innerHTML = ` _ _ `
            span_dica14.style.color = number_incorreto;

        }

        ganhar();

    }

    function rom(){

        var r = input_lc_85.value;
        var o = input_lc_86.value;
        var m = input_lc_87.value;

        if( r.toUpperCase() == 'R' && o.toUpperCase() == 'O' && m.toUpperCase() == 'M' ){

            div_lc_85.style.border = correto;
            div_lc_86.style.border = correto;
            div_lc_87.style.border = correto;

            div_n5.style.color = number_correto;
            div_dica5.style.color = number_correto;
            span_dica5.innerHTML = ` ROM `
            span_dica5.style.color = number_correto;

        }else{

            div_lc_85.style.border = incorreto;
            div_lc_86.style.border = incorreto;
            div_lc_87.style.border = incorreto;

            div_n5.style.color = number_incorreto;
            div_dica5.style.color = number_incorreto;
            span_dica5.innerHTML = ` _ _ _ `
            span_dica5.style.color = number_incorreto;

        }

        ganhar();

    }

    function adress_bus(){

        var a  = input_lc_95.value;
        var d = input_lc_96.value;
        var d2 = input_lc_97.value;
        var r = input_lc_98.value;
        var e = input_lc_99.value;
        var s1 = input_lc_910.value;
        var s2 = input_lc_911.value;

        var b = input_lc_913.value;
        var u = input_lc_914.value;
        var s3 = input_lc_915.value;

        if(a.toUpperCase() == 'A' && d.toUpperCase() == 'D' && d2.toUpperCase() == 'D' && r.toUpperCase() == 'R'
        && e.toUpperCase() == 'E' && s1.toUpperCase() == 'S' && s2.toUpperCase() == 'S' && b.toUpperCase() == 'B'
        && u.toUpperCase() == 'U' && s3.toUpperCase() == 'S'){

            div_lc_95.style.border = correto;
            div_lc_96.style.border = correto;
            div_lc_97.style.border = correto;
            div_lc_98.style.border = correto;
            div_lc_99.style.border = correto;
            div_lc_910.style.border = correto;
            div_lc_911.style.border = correto;
            
            div_lc_912.style.border = correto;

            div_lc_913.style.border = correto;
            div_lc_914.style.border = correto;
            div_lc_915.style.border = correto;
            
            div_n11.style.color = number_correto;
            div_dica11.style.color = number_correto;
            span_dica11.innerHTML = ` ADDRESS BUS `
            span_dica11.style.color = number_correto;

        }else{
 
            div_lc_95.style.border = incorreto;
            div_lc_96.style.border = incorreto;
            div_lc_97.style.border = incorreto;
            div_lc_98.style.border = incorreto;
            div_lc_99.style.border = incorreto;
            div_lc_910.style.border = incorreto;
            div_lc_911.style.border = incorreto;
            
            div_lc_912.style.border = incorreto;

            div_lc_913.style.border = incorreto;
            div_lc_914.style.border = incorreto;
            div_lc_915.style.border = incorreto;
            
            div_n11.style.color = number_incorreto;
            div_dica11.style.color = number_incorreto;
            span_dica11.innerHTML = ' _ _ _ _ _ _ _ ' + ' ' + '_ _ _'
            span_dica11.style.color = number_incorreto;

        }

        ganhar();

    }

    function dual_core(){

    var d = input_lc_105.value;
    var u = input_lc_106.value;
    var a = input_lc_107.value;
    var l = input_lc_108.value;
    var c = input_lc_1010.value;
    var o = input_lc_1011.value;
    var r = input_lc_1012.value;
    var e = input_lc_1013.value;

    if( d.toUpperCase() == 'D' && u.toUpperCase() == 'U' && a.toUpperCase() == 'A' && l.toUpperCase() == 'L'
    && c.toUpperCase() == 'C' && o.toUpperCase() == 'O' && r.toUpperCase() == 'R' && e.toUpperCase() == 'E'){

        div_lc_105.style.border = correto;
        div_lc_106.style.border = correto;
        div_lc_107.style.border = correto;
        div_lc_108.style.border = correto;
        div_lc_109.style.border = correto;
        div_lc_1010.style.border = correto;
        div_lc_1011.style.border = correto;
        div_lc_1012.style.border = correto;
        div_lc_1013.style.border = correto;

        div_n15.style.color = number_correto;
        div_dica15.style.color = number_correto;
        span_dica15.innerHTML = ` DUAL CORE `
        span_dica15.style.color = number_correto;

    }else{

        div_lc_105.style.border = incorreto;
        div_lc_106.style.border = incorreto;
        div_lc_107.style.border = incorreto;
        div_lc_108.style.border = incorreto;
        div_lc_109.style.border = incorreto;
        div_lc_1010.style.border = incorreto;
        div_lc_1011.style.border = incorreto;
        div_lc_1012.style.border = incorreto;
        div_lc_1013.style.border = incorreto;

        div_n15.style.color = number_incorreto;
        div_dica15.style.color = number_incorreto;
        span_dica15.innerHTML = ' _ _ _ _ ' + '  ' + ' _ _ _ _ '
        span_dica15.style.color = number_incorreto;

    }

    ganhar();

    }

    function cs(){

        var c = input_lc_811.value;
        var s = input_lc_911.value;

        if( c.toUpperCase() == 'C' && s.toUpperCase() == 'S' ){

            div_lc_811.style.border = correto;
            div_lc_911.style.border = correto;
            
            div_n10.style.color = number_correto;
            div_dica10.style.color = number_correto;
            span_dica10.innerHTML = ` CS `
            span_dica10.style.color = number_correto;

        }else{
            
            div_lc_811.style.border = incorreto;
            div_lc_911.style.border = incorreto;
            
            div_n10.style.color = number_incorreto;
            div_dica10.style.color = number_incorreto;
            span_dica10.innerHTML = ` _ _ `
            span_dica10.style.color = number_incorreto;

        }

        ganhar();

    }

    function ram(){

        var r = input_lc_134.value;
        var a = input_lc_144.value;
        var m = input_lc_154.value;

        if( r.toUpperCase() == 'R' && a.toUpperCase() == 'A' && m.toUpperCase() == 'M' ){

            div_lc_134.style.border = correto;
            div_lc_144.style.border = correto;
            div_lc_154.style.border = correto;

            div_n4.style.color = number_correto;
            div_dica4.style.color = number_correto;
            span_dica4.innerHTML = ` RAM `
            span_dica4.style.color = number_correto;
            

        }else{

            div_lc_134.style.border = incorreto;
            div_lc_144.style.border = incorreto;
            div_lc_154.style.border = incorreto;

            div_n4.style.color = number_incorreto;
            div_dica4.style.color = number_incorreto;
            span_dica4.innerHTML = ` _ _ _ `
            span_dica4.style.color = number_incorreto;

        }

        ganhar();

    }

    function flash(){

        var f = input_lc_142.value;
        var l = input_lc_143.value;
        var a = input_lc_144.value;
        var s = input_lc_145.value;
        var h = input_lc_146.value;

        if( f.toUpperCase() == 'F' && l.toUpperCase() == 'L' && a.toUpperCase() == 'A' && s.toUpperCase() == 'S'
        && h.toUpperCase() == 'H'){

            div_lc_142.style.border = correto;
            div_lc_143.style.border = correto;
            div_lc_144.style.border = correto;
            div_lc_145.style.border = correto;
            div_lc_146.style.border = correto;

            div_n7.style.color = number_correto;
            div_dica7.style.color = number_correto;
            span_dica7.innerHTML = ` FLASH `;
            span_dica7.style.color = number_correto;

        }else{

            div_lc_142.style.border = incorreto;
            div_lc_143.style.border = incorreto;
            div_lc_144.style.border = incorreto;
            div_lc_145.style.border = incorreto;
            div_lc_146.style.border = incorreto;

            div_n7.style.color = number_incorreto;
            div_dica7.style.color = number_incorreto;
            span_dica7.innerHTML = ` _ _ _ _ _ `
            span_dica7.style.color = number_incorreto;

        }

        ganhar();

    }

    function quad_core(){

        var q = input_lc_137.value;
        var u = input_lc_138.value;
        var a = input_lc_139.value;
        var d = input_lc_1310.value;
        var c = input_lc_1312.value;
        var o = input_lc_1313.value;
        var r = input_lc_1314.value;
        var e = input_lc_1315.value;

        if( q.toUpperCase() == 'Q' && u.toUpperCase() == 'U' && a.toUpperCase() == 'A' && d.toUpperCase() == 'D'
        && c.toUpperCase() == 'C' && o.toUpperCase() == 'O' && r.toUpperCase() == 'R' && e.toUpperCase() == 'E'){

            div_lc_137.style.border = correto;
            div_lc_138.style.border = correto;
            div_lc_139.style.border = correto;
            div_lc_1310.style.border = correto;

            div_lc_1311.style.border = correto;

            div_lc_1312.style.border = correto;
            div_lc_1313.style.border = correto;
            div_lc_1314.style.border = correto;
            div_lc_1315.style.border = correto;

            div_n16.style.color = number_correto;
            div_dica16.style.color = number_correto;
            span_dica16.innerHTML = ` QUAD CORE `;
            span_dica16.style.color = number_correto;

        }else{

            div_lc_137.style.border = incorreto;
            div_lc_138.style.border = incorreto;
            div_lc_139.style.border = incorreto;
            div_lc_1310.style.border = incorreto;

            div_lc_1311.style.border = incorreto;

            div_lc_1312.style.border = incorreto;
            div_lc_1313.style.border = incorreto;
            div_lc_1314.style.border = incorreto;
            div_lc_1315.style.border = incorreto;

            div_n16.style.color = number_incorreto;
            div_dica16.style.color = number_incorreto;
            span_dica16.innerHTML = ' _ _ _ _ ' + '  ' + ' _ _ _ _';
            span_dica16.style.color = number_incorreto;

        }

        ganhar();

    }
  
    function cpu(){

        var c = input_lc_1312.value;
        var p = input_lc_1412.value;
        var u = input_lc_1512.value;

        if( c.toUpperCase() == 'C' && p.toUpperCase() == 'P' && u.toUpperCase() == 'U' ){

            div_lc_1312.style.border = correto;
            div_lc_1412.style.border = correto;
            div_lc_1512.style.border = correto;

            div_n1.style.color = number_correto;
            div_dica1.style.color = number_correto;
            span_dica1.innerHTML = ` CPU `;
            span_dica1.style.color = number_correto;

        }else{
            
            div_lc_1312.style.border = incorreto;
            div_lc_1412.style.border = incorreto;
            div_lc_1512.style.border = incorreto;

            div_n1.style.color = number_incorreto;
            div_dica1.style.color = number_incorreto;
            span_dica1.innerHTML = ` _ _ _ `;
            span_dica1.style.color = number_incorreto;

        }

        ganhar();

    }

    function eprom(){

        var e = input_lc_1315.value;
        var p = input_lc_1415.value;
        var r = input_lc_1515.value;
        var o = input_lc_1615.value;
        var m = input_lc_1715.value;

        if( e.toUpperCase() == 'E' && p.toUpperCase() == 'P' && r.toUpperCase() == 'R' && o.toUpperCase() == 'O'
        && m.toUpperCase() == 'M'){

            div_lc_1315.style.border = correto;
            div_lc_1415.style.border = correto;
            div_lc_1515.style.border = correto;
            div_lc_1615.style.border = correto;
            div_lc_1715.style.border = correto;

            div_n6.style.color = number_correto;
            div_dica6.style.color = number_correto;
            span_dica6.innerHTML = ` EPROM `;
            span_dica6.style.color = number_correto;

        }else{

            div_lc_1315.style.border = incorreto;
            div_lc_1415.style.border = incorreto;
            div_lc_1515.style.border = incorreto;
            div_lc_1615.style.border = incorreto;
            div_lc_1715.style.border = incorreto;

            div_n6.style.color = number_incorreto;
            div_dica6.style.color = number_incorreto;
            span_dica6.innerHTML = ` _ _ _ _ _ `;
            span_dica6.style.color = number_incorreto;

        }

        ganhar();

    }

    function ganhar(){

        if(div_dica1.style.color == number_correto && div_dica2.style.color == number_correto && 
           div_dica3.style.color == number_correto && div_dica4.style.color == number_correto &&
           div_dica5.style.color == number_correto && div_dica6.style.color == number_correto &&
           div_dica7.style.color == number_correto && div_dica8.style.color == number_correto &&
           div_dica9.style.color == number_correto && div_dica10.style.color == number_correto &&
           div_dica11.style.color == number_correto && div_dica12.style.color == number_correto &&
           div_dica13.style.color == number_correto && div_dica14.style.color == number_correto &&
           div_dica15.style.color == number_correto && div_dica16.style.color == number_correto){

alert('PARABÉNS VOCÊ COMPLETOU AS PALAVRAS CRUZADAS\n\nSe quiser tentar novamente, aperte no botão "Resetar" no fim da página');

            h2_dicas.style.color = number_correto;
            but_resetar.style.display = `block`;

           }else{

            h2_dicas.style.color = number_incorreto;
            but_resetar.style.display = `none`;

           }

    }

    function resetar(){

        window.location.reload()

    }