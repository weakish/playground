class Animal {
    say() {
        alert("I am an animal.")
    }
}

class Cat extends Animal {
    say() {
        alert("I am a cat.")
    }
    mew() {
        alert("mew")
    }	
}

function letAnimalSay(animal: Animal) {
    animal.say()
}

const cat = new Cat()

letAnimalSay(cat)

function hi(f: (cat: Cat) => void, arg: Animal) {
    f(arg)
}

function g(animal: Animal): void {
    alert("g")
    animal.say()
}

const animal: Animal = new Animal()

hi(g, animal) // works, just as Java

function higher(f: (cat: Cat) => Animal, arg: Cat) {
    f(arg).say()
}

function h(animal: Animal): Cat {
    alert("calling h")
    animal.say()
    const kitty = new Cat()
    return kitty
}

higher(h, cat) // works

// After TypeScript 2.6, with `--strict`, function parameters are check contravariantly.
function hf(f: (animal: Animal) => Cat, arg: Animal) {
    f(arg).say()
}

function p(cat: Cat): Animal {
    cat.mew()
    return animal
}

hf(p, animal)
hf(p, cat)
let q: (animal: Animal) => Cat = p

function v(arg: string): string {
  return arg
}
let u: (arg: string | number) => string = v
