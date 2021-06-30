
//função para criar os elementos e aplicar as classes
function novoElemento(tagName, className){
    const elem = document.createElement(tagName)
    elem.className = className
    return elem
}

//função para criar as barreiras
function Barreira(reversa = false){ //parâmetro padrão para barreira reversa
    
    //definindo as propriedas das barreiras
    this.elemento = novoElemento('div','barries')

    //criando as barreiras
    const borda = novoElemento('div','border')
    const corpo = novoElemento('div','body')

    //condições para definir os lados da barreira
    this.elemento.appendChild(reversa ? corpo : borda)
    this.elemento.appendChild(reversa ? borda : corpo)

    //altura da barreira
    this.setAltura = altura => corpo.style.height = `${altura}px`

}



//função para gerar as barreiras considerando a altura, a abertura e a posição dela na tela
function ParDeBarreiras(altura, abertura, x){
    //criando o par de barreiras
    this.elemento = novoElemento('div', 'barries-pair')

    //instanciando as barreiras inversas
    this.superior = new Barreira(true)
    this.inferior = new Barreira(false)

    //inserindo no dom (elemento) as barreiras
    this.elemento.appendChild(this.superior.elemento)
    this.elemento.appendChild(this.inferior.elemento)

    //sorteando o tamanho da abertura entre as barreiras
    //obs: o this, quando aplicado faz com que o atributo seja visível fora da função (público)
    //neste sentido, a função sortearAbertura poderá ser utilizada fora da função
    this.sortearAbertura = () => {
        //cálculo da altura da barra superior: um número aleaório entre 1 e 10 * altura do jogo - abertura entre as barrerias
        const alturaSuperior = Math.random() * (altura - abertura)
        //cálculo da algura da barra inferior: altura do jogo - abertura - altura superior
        const alturaInferior = altura - abertura - alturaSuperior
        this.superior.setAltura(alturaSuperior)
        this.inferior.setAltura(alturaInferior)
    }
    //localizar a posição atual do par de barreiras
    this.getX = () => parseInt(this.elemento.style.left.split('px')[0]) //pegando o valor da posição em stringo (ex: 200px), removendo o px e em seguida transformando a string em inteiro

    //alterando o X a partir da posição atual para que a animação das barreiras seja ativada
    this.setX = x => this.elemento.style.left = `${x}px` //seta o valor recebido por parâmetro em pixels na posição X
    //obtendo a largura
    this.getLartura = () => this.elemento.clientWidth

    //chamando as funções
    this.sortearAbertura()
    this.setX(x)
}

//const b = new ParDeBarreiras(300,100,500)
//document.querySelector('[wm-flappy]').appendChild(b.elemento)

//criando multiplas barreiras
function Barreiras(altura, largura, abertura, espaco, notificarPonto){
    //array para armazenar a quantidade de barreiras que serão exibidas simultaneamente na tela
    this.pares = [
        new ParDeBarreiras(altura, abertura, largura),
        new ParDeBarreiras(altura, abertura, largura + espaco),
        new ParDeBarreiras(altura, abertura, largura + espaco * 2),
        new ParDeBarreiras(altura, abertura, largura + espaco * 3),   
    ]

    const deslocamento = 3
    //função para animar os array de pares de barreiras
    this.animar = () => {
        this.pares.forEach(par => {
            par.setX(par.getX() - deslocamento) //o X (posição da barreira) recebe a quantidade de deslocamento

            //quando a barreira sair da área do jogo, isto é, o valor de x for menor que o da tela do jogo e da largura da própria barreira, significa que ela sumiu do jogo de deve voltar para o início.
            if (par.getX() < -par.getLargura()) {
            // o par.setX vai receber o elemento + espaço do jogo * a quantidade de elementos do array 
              par.setX(par.getX() + espaco * this.pares.lenght)
              par.sortearAbertura()  
            }

            const meio = largura / 2
            const   cruzouOMeio = par.getX() + deslocamento >= meio && par.getX() < meio
            if(cruzouOMeio) notificarPonto()
        })

    }
}

const barreiras = new Barreiras(700, 1200, 200, 400)
const areaDoJogo = document.querySelector('[wm-flappy')
barreiras.pares.forEach(par => areaDoJogo.appendChild(par.elemento))
setInterval(()=> {
    barreiras.animar()
},20)