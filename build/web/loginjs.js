var modal1 = document.getElementById('id01');

var flag = 0;

function show(){
    
    if(flag === 0){
        
        modall.style.display = "block";
        flag = 1;
    }else{
        
        modall.style.display = "none";
        flag = 0;
    }
}