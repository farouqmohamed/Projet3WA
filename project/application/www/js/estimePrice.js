function calcul(e) {
    e.preventDefault()
  let blog = document.querySelector('#blog').checked
  let ecommerce = document.querySelector('#ecommerce').checked
  let siteweb = document.querySelector('#siteweb').checked
  let autres = document.querySelector('#autres').checked
  let oui = document.querySelector('#oui').checked
  let non = document.querySelector('#non').checked
  let normal = document.querySelector('#normal').checked
  let avance = document.querySelector('#avance').checked
  let surmesure = document.querySelector('#surmesure').checked
  let particulier = document.querySelector('#particulier').checked
  let association = document.querySelector('#association').checked
  let administration = document.querySelector('#administration').checked
  let entreprise = document.querySelector('#entreprise').checked
  let nbrPage = document.querySelector('#nbrPage').value
  
  let form = document.querySelector('#tableau')
  let div = document.querySelector('#result')
  let warning = document.querySelector('#warning');
    while(warning.firstChild){
        warning.removeChild(warning.firstChild);
    }
  
    if (!blog && !ecommerce && !siteweb && !autres && !oui && !non && !normal && !avance && !surmesure && !particulier && !association && !administration && !entreprise && nbrPage === '' && nbrPage === 0) {
    let p = document.createElement('p')
    let text = document.createTextNode('vous devez repondre à toutes les questions');
    p.appendChild(text)
    warning.appendChild(p)
    warning.style.display = 'block'
  } else {
    let tarif = 0;
    
    if(blog) {
      tarif = nbrPage * 100
    } else if(ecommerce) {
      tarif = nbrPage * 200
    } else if (siteweb) {
      tarif = nbrPage * 150
    } else {
      tarif = nbrPage * 300
    }
    
    if(oui) {
      tarif += 150
    }
    
    if(avance) {
      tarif = tarif + (tarif*0.1)
    } else if (surmesure) {
      tarif = tarif + (tarif*0.2)
    }
    
    if(particulier) {
      tarif = tarif - (tarif*0.15)
    } else if(association) {
      tarif = tarif - (tarif*0.3)
    }
    
    form.style.display = 'none'
    div.style.display = 'block'
    
    let para = document.createElement('p');
    let result = document.createTextNode('Selon les données que vous communiquer le côut de création de votre site est de : '+tarif+' euros');
    let br = document.createElement('br');
    let parag = document.createElement('p');
    let resulta = document.createTextNode('Ce tarif est donné à titre indicatif, DigitalWebMo se réserve le droit de toute modification. ');
    
    
    para.appendChild(result)
    div.appendChild(para)
    parag.appendChild(resulta)
    div.appendChild(parag)
  }
  
}

document.querySelector('#button1').addEventListener('click', calcul);