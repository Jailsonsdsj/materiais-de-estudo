# jQuery Essencial



## Fundamentos



### Selecionar elementos DOM utilizando seletores

~~~~javascript
console.log($("div"));
~~~~



### Contando a quantidade de elementos

~~~~javascript
console.log($("div").length);
console.log($("div a").length);

~~~~

### Alterando o CSS

~~~~javascript
$("nav a").css("color","red");
$("nav a").css("text-decoration","none");
$("nav a:first").css("text-decoration","none");
~~~~

### Selecionar elementos através de atributos

No HTML

~~~~html
<ul>
            <li class="vermelho">Curso HTML5 Essencial</li>
            <li class="verde">Curso CSS3 Essencial</li>
            <li id="texto1">Curso Javascript Essencial</li>
            <li id="texto2">Curso jQuery Fundamental</li>             
    	</ul>
~~~~

No Script

~~~~javascript
$(function(e){
                $("li[id]").css("background-color","#FF9");
            });

            $(function(e){
                $("li[id='texto2']").css("background-color","#FFF");
            });

            $(function(e){
                $("li[id='texto2'][title]").css("background-color","#FFF");
 });

~~~~

### Inserir elementos no HTML

No HTML

~~~~html
 <body>
    	<h1></h1>
    
		<ul id="listacursos">
            <li>Curso HTML5 Essencial</li>
            <li>Curso CSS3 Essencial</li>
            <li>Curso Javascript Essencial</li>
            <li>Curso jQuery Fundamental</li>
        </ul>
    </body>
</html>
~~~~

No Script

~~~~javascript
$( function(e) {
                $("h1").html("Formação de Desenvolvimento Humano");
                $("ul#listacursos").append("<li>PHP</li>");
                $("ul#listacursos").prepend("<li>JavaScript</li>");
                
			} );
~~~~



### Alterar atributos de um elemento

~~~~html
<a href="imagem/foto6_grande.jpg"><img src="imagem/foto6.jpg"></a>
~~~~

~~~~javascript
$( function(e) {
                $("a").attr("title","Alpes Suiços"); //Altera o título da imagem (link)
                $("a").attr("target","_blank"); 
                $("a").removeAttr("target","_blank"); //remove o atributo
			} );
~~~~



### Detectar as dimensões da janela de um documento

~~~~javascript
jQuery(document).ready(function() {
				console.log("Altura da janela: " + $(window).height());
				console.log("Largura da janela: " + $(window).width());

                console.log("Altura do documento: " + $(document).height());
				console.log("Largura do documento: " + $(document).width());
});
~~~~



### Evento de Clique

~~~~html
<input type="button" id="cursohtml" value="Curso HTML5" />
<input type="button" id="cursocss" 	value="Curso CSS3" />
~~~~

~~~~javascript
	$(function(){
                $('#cursohtml').click(function(){
                    alert("Clicou no botão");
                });

                $('#cursohtml').hover(function(){
                    alert("Passou o mouse no botão");
                });
                
                function mostrarMessagem(){
                    alert("pasosu o mouse por cima do botao css");
                    $('#cursocss').off("mouseover",mostrarMensagem);
                }
            }
~~~~



### Mostrar e esconder elementos com clique

~~~~html
<input type="button" id="mostrar" 	value="Mostrar" />
<input type="button" id="esconder" 	value="Esconder" />
        
<div id="janela"></div>
~~~~

~~~~javascript
//Função genérica
			$(function(e){
                $("#janela").hide();

            });

            //Aplicando a função a partir do click no butão
            $('#mostrar').click(mostrarElemento);
            $('#esconder').click(ocultarElemento);

            function mostrarElemento(e){
                $("#janela").show();
            };

            function ocultarElemento(e){
                $("#janela").hide();
            };
~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~



~~~~javascript

~~~~

