
// working with object and their instance variables ;


var person = {
    firstName: "nava",
    namePerson: function(){
        alert("Zyou are calling "+this.firstName);
        return this.firstName;
        },
    address:{
        village: "Nagar",
        state: "maharashtra",
        fullIntro: function(){
            alert("I am "+this.firstName+"from "+this.village+" situated in "+ this.state);
            }
        }        
    }
    
    console.log(person.firstName);
    console.log(person.namePerson());
    console.log(person.address);
    console.log(person.address.village);
    console.log(person.address.fullIntro());
    


// construcor in javascript:

function Person(name,age,address){
    this.name = name;
    this.age = age,
    this.address = address
    alert(this.name)
    this.intro = function(){
        alert("will Introduce"+name)}
    }
    
var work = new Person("bharat",12,"kada");
work.intro();
    
    // all the variables are available to the internal methods .... without this operator i.e
    // this.name is not there directly name;    