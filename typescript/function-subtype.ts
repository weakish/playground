class Animal {
    say() {
        alert("I am an animal.")
    }
}

class Cat {
    say() {
        alert("I am a cat.")
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

function hf(f: (animal: Animal) => Cat, arg: Animal) {
    f(arg).say()
}

function p(cat: Cat): Animal {
    alert("calling p")
    cat.say()
    const anAnimal = new Animal()
    return anAnimal
}

// bivariant function subtyping!
hf(p, animal)
hf(p, cat)