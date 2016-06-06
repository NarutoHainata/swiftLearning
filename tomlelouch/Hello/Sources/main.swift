if Process.arguments.count != 2 {
  print("Using: Hola, Swift!!!")
} else {
  let name = Process.arguments[1]
  sayHello(name)
}
