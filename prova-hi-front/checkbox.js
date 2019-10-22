function getNames() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      let obj = JSON.parse(this.response);
      createList(obj, false);
    }
  };
  xhttp.open("GET", "https://raw.githubusercontent.com/HiPlatform/prova-frontend/master/data.json", true);
  xhttp.send();
}

function createList(json) {
  parseIssues(json);
  document.getElementById("list").innerHTML = html;
};

html = "";
function parseIssues(issues, hidden) {   
  let checkHidden = hidden ? 'child-check-hidden' : "child-check-active";

  html += "<ul class='" + checkHidden +  "'>";

  for (var code in issues) {
      let level = issues[code].level + "." + code;

      var issue = issues[code],
          name = typeof(issue) == "string" ? issue : issue.name, // Get the right name according to each element
          input = template(code, name, level); // Creates the html for the checkbox
          
      html += "<li>" + input;

      if (issue.children) {
          parseIssues(issue.children, true); // Calls a function which does similar to this for with the children.
      }
      html += "</li>";

  }
  html += "</ul>";
}

function template(value, name, level) {
    return  `
    <input class="form-check-input" type="checkbox" id="${level}" value="${value}" name="${name}" >
    <label class="container form-check-label for="${level}"> ${name} </label> 
    `;
}

function toggleView(item) {
  let ulChild = item.parentNode.lastChild;

  if(ulChild.className.indexOf('-hidden') > -1 ) {
    ulChild.classList.remove('child-check-hidden');
    ulChild.classList.add("child-check-active");
  }else {
    ulChild.classList.remove('child-check-active')
    ulChild.classList.add("child-check-hidden")
  };

}


// source: https://css-tricks.com/indeterminate-checkboxes/
//  helper function to create nodeArrays (not collections)
const nodeArray = (selector, parent=document) => [].slice.call(parent.querySelectorAll(selector));
addEventListener('change', e => {
    let check = e.target;

    //  check/unchek children (includes check itself)
    const children = nodeArray('input', check.parentNode);
    children.forEach(child => child.checked = check.checked);
    
    //  traverse up from target check
    while(check){
        
        //  find parent and sibling checkboxes (quick'n'dirty)
        const parent   = (check.closest(['ul']).parentNode).querySelector('input');
        const siblings = nodeArray('input', parent.closest('li').querySelector(['ul']));

        //  get checked state of siblings
        //  are every or some siblings checked (using Boolean as test function) 
        const checkStatus = siblings.map(check => check.checked);
        const every  = checkStatus.every(Boolean);
        const some = checkStatus.some(Boolean);     
        
        //  check parent if all siblings are checked
        //  set indeterminate if not all and not none are checked
        parent.checked = every;     
        parent.indeterminate = !every && every !== some;

        //  prepare for nex loop
        check = check != parent ? parent : 0;
    }
})

addEventListener('click', function(event) {

  if(event.target.className.indexOf('label') != -1) {
    toggleView(event.target);
  }

})