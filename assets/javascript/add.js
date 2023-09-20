  function ajouterCouleur() {
    var newColorInput = document.getElementById('newColor');
    var newColor = newColorInput.value.trim();

    if (newColor !== '') {
      var couleurContainer = document.getElementById('couleurContainer');

      // Vérifiez d'abord si un bouton radio avec la même valeur existe
      var existingRadio = couleurContainer.querySelector('input[type="radio"][value="' + newColor + '"]');

      if (!existingRadio) {
        // S'il n'existe pas, ajoutez-le
        var div = document.createElement('div');
        div.innerHTML = `
                <label for="${newColor}">
                    <input id="${newColor}" type="radio" name="couleur" value="${newColor}" checked />
                    <span>${newColor}</span>
                </label>
            `;
        couleurContainer.appendChild(div);
      } else {
        // S'il existe déjà, sélectionnez-le
        existingRadio.checked = true;
      }

      // Effacer le champ de saisie
      newColorInput.value = '';
    } else {
      alert("Veuillez entrer une couleur valide.");
    }
  }



  function ajouterMarque() {
    var newMarqueInput = document.getElementById('newMarque');
    var newMarque = newMarqueInput.value.trim();

    if (newMarque !== '') {
      var marqueContainer = document.getElementById('marqueContainer');

      // Vérifiez d'abord si un bouton radio avec la même valeur existe
      var existingRadio = marqueContainer.querySelector('input[type="radio"][value="' + newMarque + '"]');

      if (!existingRadio) {
        // S'il n'existe pas, ajoutez-le
        var div = document.createElement('div');
        div.innerHTML = `
                <label for="${newMarque}">
                    <input id="${newMarque}" type="radio" name="marque" value="${newMarque}" checked />
                    <span>${newMarque}</span>
                </label>
            `;
        marqueContainer.appendChild(div);
      } else {
        // S'il existe déjà, sélectionnez-le
        existingRadio.checked = true;
      }

      // Effacer le champ de saisie
      newMarqueInput.value = '';
    } else {
      alert("Veuillez entrer une marque valide.");
    }
  }



  function ajouterTaille() {
    var newTailleInput = document.getElementById('newTaille');
    var newTaille = newTailleInput.value.trim();

    if (newTaille !== '') {
      var tailleContainer = document.getElementById('tailleContainer');

      // Vérifiez d'abord si un bouton radio avec la même valeur existe
      var existingRadio = tailleContainer.querySelector('input[type="radio"][value="' + newTaille + '"]');

      if (!existingRadio) {
        // S'il n'existe pas, ajoutez-le
        var div = document.createElement('div');
        div.innerHTML = `
                <label for="${newTaille}">
                    <input id="${newTaille}" type="radio" name="taille" value="${newTaille}" checked />
                    <span>${newTaille}</span>
                </label>
            `;
        tailleContainer.appendChild(div);
      } else {
        // S'il existe déjà, sélectionnez-le
        existingRadio.checked = true;
      }

      // Effacer le champ de saisie
      newTailleInput.value = '';
    } else {
      alert("Veuillez entrer une taille valide.");
    }
  }


