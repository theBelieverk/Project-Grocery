/*window.addEventListener('load', () => {

    //Via Query parameters - GET
     const params = (new URL(document.location)).searchParams;
    const TotalItems = params.get('total-items');
    const TotalAmount = params.get('total-amount'); 
     const YouSave = params.get('you-saved');
    // Via local Storage
    /* const name = localStorage.getItem('NAME');
    const surname = localStorage.getItem('SURNAME'); */
    
   // const item1 = sessionStorage.getItem('item1');
  //  const amount1 = sessionStorage.getItem('amount1');
   	//const  save1 = sessionStorage.getItem('save1');


    /*document.getElementById('total-items1').innerHTML = TotalItems;
    document.getElementById('total-amount1').innerHTML = TotalAmount;
     document.getElementById('you-saved1').innerHTML = YouSave;
})*/
function submit(){
    const TotalItems=document.getElementById('total-items').value;
    const TotalAmount=document.getElementById('total-amount').value;
    const YouSave=document.getElementById('you-saved').value;

    localStorage.setItem("Total Items",+TotalItems);
    localStorage.setItem("Total Amount",+TotalAmount);
    localStorage.setItem("You Save",+YouSave);

    return;
    
}