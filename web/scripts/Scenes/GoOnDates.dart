import "../LifeSimLib.dart";


class GoOnDates extends Scene {
    String backgroundName = "Shittydanceparty.png";
    GoOnDates(owner) : super(owner);


    //should be bottom in list, only acitvates if nothing better to do.
  @override
  bool triggered() {
      if(owner.rand.nextDouble() > triggerChance) return false;
      return owner.spouses.isNotEmpty;
  }

  @override
  Future<Null> renderContent(Element element, World w) async {
      others.clear();
      Entity date = owner.rand.pickFrom(owner.spouses);
      others.add(date);
      owner.addStat(StatFactory.ROMCOMMERY, 1);
      text = "${owner.name} has romantic fun times with ${date}";
      super.renderContent(element, w);

  }

}