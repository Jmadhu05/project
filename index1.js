
/*
Literals (Fixed values)
Variables (Variable values)

Rules for identifiers:

Must start with a letter, _, or $
Can contain digits after the first character
Cannot be a reserved keyword (let, const, if, etc.)

Hyphens:

first-name, last-name, master-card, inter-city.

Underscore:

first_name, last_name, master_card, inter_city.

Upper Camel Case (Pascal Case):

FirstName, LastName, MasterCard, InterCity.


Lower Camel Case:

firstName, lastName, masterCard, interCity.
*/
/*
//statements

let x,y,z  //can change value must be declare before use ,can't be redeclared in the same scope

x=4;y=7;z=8;
console.log(x,y,z)

x=6
console.log(x)

const a =6  // can't be updated redeclared not initialized



console.log(a)

//console.log(a)  can't change value 

function myfunction(){
    var A=1
    let B=3
    const C=6

}
 //A,B,C can't be used here


 //change the elements of coanstant array ,change the properties of object
 const car =["Saab","BMW","DEFENDER"]
 car[0]="AUDI" //can change an element

 car.push("TOYATA") //can add an element 
 console.log(car)


 //data type
 let color ="Black" //string

 let length =45 //number

 let x=BigInt(12345678901234567891234n) //bigint

 let a=true  //boolean
 let b=false

 // Array object
const cars = ["Saab", "Volvo", "BMW"];


// Undefined
let x;
let y;

// Null
let x = null;
let y = null;

// Symbol
const x = Symbol();
const y = Symbol();

let y = 123e5;    // 12300000  //Exponential Notation
let z = 123e-5;   // 0.00123 


*/

/*
//operators

let x=10 //assignemt
let y=5
 
 let z=x+y ; z1=x-y; z2=x*y;z3=x/y  //addition ,multiplication,subtraction,division
 console.log(z,z1,z2,z3)

 // ** exponentiation ,% modulus remainder, ++increment ,--decrement


 //string and number addition
 //Adding a number and a string, will return the sum as a concatenated string like 5 + "5" = "55".

 let a1=5+5
 let a2= "5"+5
 let a3 ="Hello" +5
 
 console.log(a1,a2,a3)

 let b1= "5"
 let b2 =5

 console.log(b1==b2,b1===b2)//==equalto only value ,===equal value and equal type 


 let o
 o??=10 //the first value is undefined or null the second value is assigned 
 console.log(o)

 let k=true  // first value is true the second value is assigned
 console.log(k&&=10)

 let m=false
 console.log(m||=5) //the first value is  false the second value is assigned 


 let text="A"
 let text1="B"
 console.log(text<text1)
 let te="20"
 let te1="50"
 console.log(te>te1)

 let age =16
 let textt ="You can not drive "

 if (age>=18){
    console.log(textt="you can drive")
 }
else{
    console.log(textt="you can't drive")
}

 let a=15
let AGE =(a<19)? "Minor":"Adult";
console.log(AGE)

let day =2
switch (day){
    case 0:
        day="Sunday";
        break
    case 1:
        day="Monday"
        break
    case 2:
        day="Tuesday";
        break
    case 3:
         day = "Wednesday";
         break;
    case 4:
          day = "Thursday";
          break;
    case 5:
          day = "Friday";
         break;
    case 6:
          day = "Saturday";

    default:
        day="Invalid day "
}

console.log(day)
*/

/*
boolean 
100 is true

3.14 is true

-15 is true

true is true

"Hello" is true

"false" is true

(7 + 1 + 3.14) is true

[ ] is true

{ } is true 
  0 is false

"" is false

undefined is false

null is false

NaN is false

false is false


let x = Boolean(false);
let y = new Boolean(false);

console.log((x == y) ,(x === y)) //ek side me primitive or ek side nonprimitive ho to np ko p me change krta hai 


h=6
n=3
console.log(h<10&& y>1,(x === 5 || y === 5),!(x === y) )
*/

/*
//for loop 

let texx=""

for (let i=0 ;i<10; i++) {
    texx =i 
}
console.log(texx)

//while loop  specified condition is true 

let i=0

let texxx=""
while (i<20){
    texxx +=i;
    i++
}
console.log(texxx)

// do while execute the code block once before checking if the  condition is true then it will repeat the loop as long as the condition is true 

let doo=""

let l=7

do{
    doo+="The number is "+l;
    l++;
}
while(l<5);

console.log(doo)

const list =["BMV","Volvo","Saab","Ford"]
let len=list.length

let li="";
for (let i = 0; i<len; i++){
    li += list[i] 
}

console.log(li)

let n="" ;
for (a=0; a < 10; a++){
    if (a===11) {break; }
    n += "The number is " + a +"\n"
}
console.log(n)


let tex = "";

loop1: for (let j = 1; j < 5; j++) {
  loop2: for (let i = 1; i < 5; i++) {
    if (i === 3) { break loop1; }
    tex += i;
   }
}

console.log(tex)
let an = "";

for (let i = 1; i < 10; i++) {
  if (i === 3) { continue; }
  an += "The number is " + i + "\n";
}

console.log(an);

*/

/*
//string 

let answer = "Volvo";

let answer1 = 'volvo';

console.log(answer,answer1);

let New = ` "He's often called johnny "` ; // allow single and double quotes inside a string 

console.log(New);

let NEW1= 
 `The quick
 brown fox
 jumps over
 the lazy dog`;

console.log(NEW1) ;

let first_name = "John";
 
let second_name = "Doe";
 
let full_name = `"Welcome ${first_name} ,${second_name} !`;
console.log(full_name)


//method 

let pro = "ABCDEFGHIJKLBMP"

console.log(pro.length); // return the length 

console.log(pro.charAt(0)); // return the character at a given position

console.log(pro.charCodeAt(0),pro.codePointAt(0));//at the first position  //return the code at a  specified index 

console.log(pro.lastIndexOf("B"))// index of the last occurrence of text in a string 
console.log(pro.indexOf("B")) // index of the first  occurrence of text in a string 

console.log(pro.search(/V/))
*/
/*

// number 

let x ="100";
let y="20";
let z=10;

// + addition operators  only number me use hota hai str me concatenation ka kam krta hai 

console.log(x+y) //add 2 str result a string concatenation 

// js wll try cvert str to num in all numeric operations 

console.log(x-y) // age str number me change ho skta hai to change krega fir operators use krega age nhi ho change to nan return krega 
console.log(x/y)
console.log(x*y)

console.log(x+z)// add num and str result str concatenation 

*/
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


// function -----------------------------------

/* -------------------------------------------
  Parameters - some values are sent to the function
Arguments - some values are received by the function
Function Code - some work is done inside the function
Return Output - some value is returned from the function




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

//  this keyword makes it possible to use the same method with different objects.

console.log(this===window)

*/


/*
// Array are a special type of object 
// If you use named indexes produce incorrect results.


const cars =["Saab","Volvo","BMV"]

console.log(cars[0])

console.log(cars.sort(),cars.length)

const fruits =["Banana", "orange","Apple"]

fruits.push("Lemon") // add a new element end   pop() remove the last element 

console.log(fruits)

fruits[6] = "Mango"
console.log(fruits)

console.log(fruits instanceof Array) //return true if an object is creatd by a given constructor 

//The shift() method removes the first array element and "shifts" all other elements to a lower index.
//The unshift() method adds a new element to an array (at the beginning), and "unshifts" older elements:

fruits.unshift("Lemon")
console.log(fruits)
fruits.shift()
console.log(fruits)

//“start se copy karo, target se paste karo (same array ke andar overwrite)”

fruits.copyWithin(2, 0);

console.log(fruits)

const arr = [1, 2, [3, 4]];
console.log(arr.flat()); // nested array ko simple single array m  convert krta hai a

const arr1 = [1, [2, [3, [4]]]];
console.log(arr1.flat(3));


//flatMap()  2 kaam ek saath karta hai:map() (har element ko transform karta hai),flat() (result ko ek level flatten karta hai)

const arr3 = [1, 2, 3];

const result = arr3.flatMap(x => [x, x * 2]);

console.log(result);

const words = ["hello world", "javascript rocks"];

const result1 = words.flatMap(str => str.split(" "));

console.log(result1);

const arr1 =["Cecile","lion "];
const arr2 =["Emil","Tobias","Linus"];
const arr3 =["Robin","Morgan"]

console.log(arr1.concat(arr2,arr3))

//splice() adds new items to an array , slice() slice out a piece of an array 

const plane =["Banana","MAngo","Apple"]

console.log(plane)


//plane.splice(2,0,"Lemon","Kiwi") //2 where new element should be added 0 how many ele should be removed 

plane.splice(2, 2, "Lemon", "Kiwi");
console.log(plane)

const months =["jan","Feb","Mar","Apr"]


const spliced =months.toSpliced(0,1)//create a new array ,original array unchanged 


console.log(spliced)
console.log(months)

const newfruits =["Banana","Apple","Orange","Lemon","Apple"]

const citrus =newfruits.slice(1,3)
//select elmet frm start argumnt and the end argumnt 
//console.log(newfruits,citrus)

console.log(newfruits.indexOf("Apple",1))
let position =newfruits.lastIndexOf("App")

//console.log(newfruits.sort())// sort an array alphabetically 
//console.log(newfruits.reverse()) //toreversed original array unchanged 


console.log(newfruits.toSorted()) //create a new array original array  unchanged 



console.log(newfruits)
*/

/*
const number =[1,2,3,4,5]

let txt="";

// foreach() har element pr itrate krta hai new array return nhi krta hai 
//use mainly printing database call logging ya side effects ke liye 

number.forEach((num) =>{
    console.log(num*5)
})


console.log(txt)
//console.log(number)

number.forEach((value)=> txt+=value)

console.log(txt)


const fruitss = ["Apple", "Banana", "Mango"];

fruitss.forEach((fruit) => {
    console.log("I like " + fruit);
});

let arrr =[1,2,3,4,5]

// har elemnt ko modify krke naya array return krta hai 
//har elemt pr function chalata hai aur transformed values ka nya array return original array unchanged 


const arrr1 =arrr.map((value)=> {return value*2})

console.log(arrr1)

console.log(arrr)

const he=[1,2,3,4]
const re= he.flatMap(num => [num, num * 2])

//phle mapping krta hai fir nested array ko ek level tak flatten kr deta 
console.log("----------------------------------------------")

console.log(re) 


const h1=["Hello world ","Javascript"]
const word =h1.flatMap(str => str.split(" "))

console.log(word)



// conditions  ke basic pr elements ko select krna  true wale element ka new array return krega 

const phone =[10,11,14,15,17,18,20,1,2,3]
const greater =phone.filter(num=> num>5)

console.log(greater)


const users =[
    { name : "A" , active :true},
     {name:"B",active :false}
]

const activeusers =users.filter(user=>user.active)
console.log(activeusers)


// sare element ko combine krke ek singl value banana

const numm =[1,2,3,4]
const sum =numm.reduce((total,num)=>total +num ,1)

console.log(sum)

const a=["A","B","C","D"]

console.log(a.reduce((acc ,value) => acc + value)) // left to right add krke deta hai 
console.log(a.reduceRight((acc ,value) => acc + value)) // right to left add krke deta hai 


// const numm =[1,2,3,4]
// check krta hai sabhi element condition ko satisfy krte hai to hi true dega nhi to false 
console.log(numm.every(num=> num <5))

console.log(numm.some(num=> num <2)) // only ek  element  condition ko satisfy krna to true de dega 


let str="Hello"

//kisi iterable ya array like object ko real array me convert krta hai 
console.log(Array.from(str))

/*
  The Array.keys() method returns an Array Iterator object with the keys of an array.
  The entries() method returns an Array Iterator object with key/value pairs:
  The ... operator expands an array into individual elements.
  This can be used join arrays:
*/

/*
// set 

// create a set 
const letters = new Set()

// add values to the set 
letters.add("a"); letters.add("b"); letters.add("c")

console.log(letters)
let text=""

console.log(letters  instanceof Set)

for (const x of letters){
    text += x
}

console.log(text)

console.log(letters.size) //number of element are 

console.log(letters.has("d")) //return true if a specified value exists in a set 




const lett =new Set(["a","b","c"])

let te =""
lett.forEach(function(value){
    console.log("this is ",value)
})
console.log(te)

//const myiterator = lett.values() // get all values 
//const myiterator = lett.keys() //get all keys 
//const myiterator = lett.entries() // get keys & values 
//console.log(myiterator)

const a =new Set(['a','b','c']);
const b =new Set(['b','c','d']);

//do set ko combine krta hai & duplicate values ko remove krta hai new set return krta hai 
console.log(a.union(b))

//first set ke elemt jo second set me present nhi hai 
//console.log(a.difference(b))

//do sets ke common elemt ka new set return krta hai 
//console.log(a.intersection(b))

//agr dono sets me ek bhi common elemt nhi hai to true & false 
//console.log(a.isDisjointFrom(b))

// agr current ke sre elemt second set present hai to true return
//console.log(a.isSubsetOf(b))


//current set second set k sare elemt contain krta hai to true
//console.log(a.isSupersetOf(b))


// unique value ko return krta hai common value remove kr dta hai 
//console.log(a.symmetricDifference(b))

*/

/*
//map
//key sirf string nhi hoti object bhi ho skti h

const fruitmap =new Map();

fruitmap.set("apples" ,500) ; //add elemt ,can also be used to change 
fruitmap.set("bananas",300);
fruitmap.set("orange",200)

console.log(fruitmap)

console.log(fruitmap.get("apples")) //gets the value of a key 
console.log(fruitmap.size)
console.log(fruitmap.delete("apples")) // remove a map element 
console.log(fruitmap.get("apples")) // after delete element return undefined 

console.log(fruitmap.has('apples')) //return true if a keys exists in a map 
//clear() removes all the element 

let mapp =''
fruitmap.forEach(function(value,key){
    mapp += key +' = ' + value;
})

console.log(mapp)


let ent =''
for 
(const x of fruitmap.entries()){
    console.log(ent+=x)
}

console.log(ent)


const apples = {name :'Apples'};
const bananas = {name :'Bananas'};
const oranges ={name : 'Oranges'}

const objectmap =new Map()

objectmap.set(apples,50)
objectmap.set(bananas,40)
objectmap.set(oranges,30)

console.log(objectmap.get(apples))

*/

/*
// Iterations --> loop

let fo = ""
for (let i=0; i<7; i++) {
  fo += "The number is " + i + '\n'
}

console.log(fo)

i=11
while (i<10) {
    console.log(fo += "The is number is " + i +'\n');
    i++;
}

console.log(fo)

//the code block is executed before the condition is tested
do {
    fo +="The number is " + i;
    i++;
}
while(i<10)

console.log(fo)

const person ={fname :"john" ,lname :"Doe", age:25};

let persondetails=''

for (let x in person){
    persondetails += (x + ":" + person[x] + "\n")

}

console.log(persondetails)

const name ="Hello"

//iterable (array,string,set,map) ki values ke liye 

for (const x of name){
    console.log(x)
}


const firstperson ={
    Name :"Shinda",
    age :44
}

for (let key in firstperson){
    console.log(key,firstperson[key])
}

*/

//errors 

let result1 = ('5' + '2');
let result2 = ('5' - '2');

console.log(result1,result2)

let x = (5 == "5") // x = true
