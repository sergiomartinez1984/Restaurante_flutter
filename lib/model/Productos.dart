class Productos {
  String titulo;
  String ingredientes;
  String estado1;
  String estado2;
  String foto;
  String tag;

  Productos({
    required this.titulo,
    required this.ingredientes,
    required this.estado1,
    required this.estado2,
    required this.foto,
    required this.tag,
  });

  static List<Productos> listaProductos = [
    Productos(
        titulo: "Cabezas de Champiñon",
        ingredientes: "champiñones y pollo",
        estado1: "Cold",
        estado2: "Fresh",
        foto: 'assets/champiñones.jpg',
        tag: "cakeitem"),
    Productos(
        titulo: "Perritos de Dedos",
        ingredientes: "HotDogs",
        estado1: "Cold",
        estado2: "Fresh",
        foto: 'assets/Dedos.jpg',
        tag: "cakeitem"),
    Productos(
        titulo: "Ensalada Monstruosa",
        ingredientes: "Ensalada mixta,huevos cocidos",
        estado1: "Cold",
        estado2: "Fresh",
        foto: 'assets/ensalada.jpg',
        tag: "cakeitem"),
    Productos(
        titulo: "Gusanos Salteados",
        ingredientes: "Gulas,cooscus",
        estado1: "Cold",
        estado2: "Fresh",
        foto: 'assets/gusanos.jpg',
        tag: "cakeitem"),
    Productos(
        titulo: "Hamburguesa Sangrienta",
        ingredientes: "Hamburguesa completa,patatas ",
        estado1: "Cold",
        estado2: "Fresh",
        foto: 'assets/hamburguesa.jpg',
        tag: "cakeitem"),
    Productos(
        titulo: "Hamburguesa Mohosa",
        ingredientes: "Hamburguesa de pollo,pan vegano",
        estado1: "Cold",
        estado2: "Fresh",
        foto: 'assets/hamburguesa1.jpg',
        tag: "cakeitem"),
    Productos(
        titulo: "Mano al Horno",
        ingredientes: "Costilla de cerdo",
        estado1: "Cold",
        estado2: "Fresh",
        foto: 'assets/mano.jpg',
        tag: "cakeitem"),
    Productos(
        titulo: "Pizza demoniaca",
        ingredientes: "Pizza 4 estaciones,salchichas",
        estado1: "Cold",
        estado2: "Fresh",
        foto: 'assets/pizza.jpg',
        tag: "cakeitem"),
    Productos(
        titulo: "Pollo del Infierno",
        ingredientes: "Pollo kentucky,salsa picante",
        estado1: "Cold",
        estado2: "Fresh",
        foto: 'assets/pollo.jpg',
        tag: "cakeitem"),
    Productos(
        titulo: "Cerebro Relleno",
        ingredientes: "Tarta RedVelvet",
        estado1: "Cold",
        estado2: "Fresh",
        foto: 'assets/Tarta.jpg',
        tag: "cakeitem"),
  ];
}
