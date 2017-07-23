function print_1 () {
  try {
    console.log(1)
  }
  catch(SyntaxError) {
    console.log('error')
  }
  catch {
    console.log(Error)
  }
}
