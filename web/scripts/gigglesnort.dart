import 'dart:html';
import "LifeSimLib.dart";
import 'dart:async';


Element div;
void main() {
  div = querySelector("#output");
  //in theory i could strike through these as you find them...but then i'd need to know how to identify them
  giggleSnort("The Mathematician can calculate one for you.");
  giggleSnort("I wonder if LORAS has any eggs???");
  giggleSnort("Thinking like a Waste might find one for you, but only if you remember where to go.");
  giggleSnort("What if you combine all the things???");
  giggleSnort("Have you seen what lies beyond the Void???");
  giggleSnort("Have you Been the Arms?");
  giggleSnort("Have you met the Drunk Philosopher?");

}

void giggleSnort(String hideytalk) {
    DivElement snort = new DivElement();
    snort.text = hideytalk;
    div.append(snort);
}