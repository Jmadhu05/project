/*
let a = 'AbDeJa'

let text= ''

for(i=0 ;i<a.length;i++)
{
  
    if(a.charCodeAt(i) >= 97)
    {
        text += a[i]
    }
    else{
        text += String.fromCharCode(a.charCodeAt(i) + 32)
    }
}



console.log(text)





let text ="ABCDEFGHIJKJLMNOPQU"
let length =text.length

console.log(length)
a="abc"
console.log(a.charAt(0))
console.log(a.charCodeAt(0))
console.log(a.at(2))

let part ="Apple,Banana,kiwi"



*/

/*
function sayhello() {
    return "hello world "
}

a=sayhello()
console.log(a)

function multiply(a,b){
    return a*b 
}

b=multiply(5,3)
console.log(b)


function old(a,b){
    return "Done"

    return a*b  //next line will never run 
}

let result = old(2,3)


function checkage(age){
    if (age<18){
        return "Too young"
    }
    return "Access granted"
}

answer =checkage(19)
console.log(answer)


*//*

// standard function 
function  details(name,number){
    return name ,number
}

// function expression 
const neww=function(name,number){
    return {name ,number}
}

console.log(neww('arun',456645))


//arrow function 
const add=(a,b)=>{
    return a+b
}

console.log(add(5,4))


const person ={
    name :"John",
    greet :function(){
        return this.name ;
    }
}

console.log(person.greet())

const car ={
    type :"fiat",
    model :"500",
    color :"white"
}

console.log(car.model)
*/
function sayHELLO(){
    return "Hello world";

}

let s=sayHELLO()

const object={}

//add properties
object.firstname ="John";
object.lastname="doe";
object.age=50;
object.eyecolor="blue"

console.log(object.lastname)
delete object.age
console.log(object.age)


myobj={
    name:"Ram",
    age:39,
    mycars :{
        car1:"Ford",
        car2:"BMW"
    }
}

console.log(myobj.mycars.car1)


const person1={
    name:'ran',
    hello:function(){
        return "Hello" + this.name
    }
}

console.log(person1.hello())

console.log(this)


console.log(this===window)