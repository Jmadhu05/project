/*Array some()
Array from()
Array keys()
Array entries()
Array with()
Array Spread (...)
Array Rest (...)
enhe bhi smajhao 

Ye sab JavaScript ke array methods/features hain. Main har ek ko simple Hindi me examples ke saath samjhata hoon.

1. Array.some()

Ye check karta hai ki array me kam se kam ek element condition ko satisfy karta hai ya nahi.

Syntax:

array.some(callback)

Example:

let numbers = [10, 20, 30, 40];

let result = numbers.some(num => num > 25);

console.log(result);

Output

true

Kyun?

30 > 25 ✔
40 > 25 ✔

Ek bhi mil gaya to true.

Agar:

let result = numbers.some(num => num > 100);

console.log(result);

Output:

false
2. Array.from()

Ye kisi iterable ya array-like object ko real array me convert karta hai.

Example 1

let str = "Hello";

let arr = Array.from(str);

console.log(arr);

Output

['H', 'e', 'l', 'l', 'o']

Example 2

let set = new Set([1,2,3]);

let arr = Array.from(set);

console.log(arr);

Output

[1,2,3]
3. Array.keys()

Ye array ke indexes return karta hai.

let fruits = ["Apple", "Mango", "Banana"];

let keys = fruits.keys();

for(let k of keys){
    console.log(k);
}

Output

0
1
2

Ye values nahi, sirf indexes deta hai.

4. Array.entries()

Ye index aur value dono return karta hai.

let fruits = ["Apple", "Mango", "Banana"];

for(let item of fruits.entries()){
    console.log(item);
}

Output

[0, 'Apple']
[1, 'Mango']
[2, 'Banana']

Destructuring ke saath:

for(let [index, value] of fruits.entries()){
    console.log(index, value);
}

Output

0 Apple
1 Mango
2 Banana
5. Array.with()

Ye original array ko change nahi karta.

Ek naya array banata hai jisme kisi ek index ki value replace hoti hai.

let arr = [10,20,30];

let newArr = arr.with(1, 99);

console.log(arr);
console.log(newArr);

Output

[10,20,30]
[10,99,30]

Original array same rehta hai.

6. Array Spread (...)

Spread operator array ko individual values me tod deta hai.

let arr = [10,20,30];

console.log(...arr);

Output

10 20 30
Array Copy
let arr1 = [1,2,3];

let arr2 = [...arr1];

console.log(arr2);

Output

[1,2,3]
Merge Arrays
let a = [1,2];
let b = [3,4];

let c = [...a, ...b];

console.log(c);

Output

[1,2,3,4]
Add New Elements
let arr = [2,3];

let newArr = [1, ...arr, 4];

console.log(newArr);

Output

[1,2,3,4]
7. Rest Operator (...)

Rest operator multiple values ko ek array me collect karta hai.

Function Example
function sum(...numbers){
    console.log(numbers);
}

sum(10,20,30);

Output

[10,20,30]
Sum Example
function sum(...numbers){
    return numbers.reduce((a,b)=>a+b,0);
}

console.log(sum(10,20,30,40));

Output

100
Array Destructuring
let arr = [10,20,30,40,50];

let [first, second, ...rest] = arr;

console.log(first);
console.log(second);
console.log(rest);

Output

10
20
[30,40,50]
Spread vs Rest
Spread (...)	Rest (...)
Array ko expand karta hai	Values ko collect karta hai
Copy aur merge me use hota hai	Function parameters aur destructuring me use hota hai
[...arr]	function sum(...nums)
Quick Revision
Method/Feature	Kya karta hai?
Array.some()	Check karta hai ki kam se kam ek element condition satisfy karta hai ya nahi.
Array.from()	Iterable ya array-like object ko array me convert karta hai.
Array.keys()	Array ke indexes return karta hai.
Array.entries()	Index aur value dono return karta hai.
Array.with()	Original array badle bina ek index ki value replace karke naya array banata hai.
... Spread	Array ko expand karta hai; copy, merge aur elements pass karne ke liye use hota hai.
... Rest	Multiple values ko ek array me collect karta hai; function parameters aur destructuring me use hota hai.
array or set me difference kya hai 

JavaScript me Array aur Set dono multiple values store karte hain, lekin unka behavior alag hota hai.

Array	Set
Duplicate values allow karta hai.	Duplicate values allow nahi karta.
Index hota hai (0, 1, 2...).	Koi index nahi hota.
Order maintain karta hai.	Insertion order maintain karta hai.
length property hoti hai.	size property hoti hai.
push(), pop(), map(), filter() jaise methods milte hain.	add(), delete(), has(), clear() jaise methods milte hain. */

/*
"WeakSet JavaScript ka special Set hai jo sirf objects ko store karta hai.
 Isme objects weak references ke saath store hote hain, isliye agar object
  ka aur koi reference nahi bachta, to Garbage Collector use automatically memory 
  se remove kar sakta hai. WeakSet iterable nahi hota, isme size property nahi hoti,
   aur sirf add(), has(), aur delete() methods available hote hain.
 Iska common use processed objects ko track karna ya memory leaks avoid karna hota hai. 
 */

 /*
 Map me object ko key kyu bana sakte hain?

Answer: "JavaScript Map me key kisi bhi data type ki ho sakti hai, including objects.
         Jab object key banta hai to Map us object ke reference ko store karti hai,
         na ki uske content ko. Isliye wahi exact
         object reference use karke hi value retrieve ki ja sakti hai."
 */