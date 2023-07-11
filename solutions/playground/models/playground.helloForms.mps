<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f526ccc7-9718-4ad4-938e-5f5c338ff125(playground.helloForms)">
  <persistence version="9" />
  <languages>
    <use id="cea7302f-0b0a-4155-bed3-dd0d7da915fa" name="de.krinara.apiintegration" version="0" />
    <devkit ref="f5033491-c843-46f7-a472-14eca43edcdf(de.voelter.chatgptdemo)" />
  </languages>
  <imports />
  <registry>
    <language id="cea7302f-0b0a-4155-bed3-dd0d7da915fa" name="de.krinara.apiintegration">
      <concept id="8531213314231525683" name="de.krinara.apiintegration.structure.APIIntegrations" flags="ng" index="1JJDhW">
        <child id="8531213314231525684" name="nodes" index="1JJDhV" />
      </concept>
      <concept id="8531213314231525630" name="de.krinara.apiintegration.structure.APINodeReference" flags="ng" index="1JJDmL">
        <reference id="8531213314231583388" name="target" index="1JJVvj" />
      </concept>
      <concept id="8531213314231525627" name="de.krinara.apiintegration.structure.APINode" flags="ng" index="1JJDmO">
        <child id="8531213314231525633" name="uses" index="1JJDhe" />
      </concept>
    </language>
    <language id="8387094c-8d3d-4bd0-8f06-6fc8065096d2" name="de.voelter.forms">
      <concept id="8008715273098238499" name="de.voelter.forms.structure.FormTest" flags="ng" index="2foboS">
        <reference id="8008715273098238500" name="form" index="2foboZ" />
        <child id="8008715273098238593" name="contents" index="2fobqq" />
      </concept>
      <concept id="8008715273098238591" name="de.voelter.forms.structure.FieldValue" flags="ng" index="2fobp$">
        <reference id="8008715273098238623" name="field" index="2fobq4" />
        <child id="8008715273098238665" name="value" index="2fobri" />
      </concept>
      <concept id="8008715273098238709" name="de.voelter.forms.structure.CalcAssert" flags="ng" index="2fobrI">
        <reference id="8008715273098238712" name="calc" index="2fobrz" />
        <child id="8008715273098238714" name="expected" index="2fobrx" />
      </concept>
      <concept id="8008715273098373287" name="de.voelter.forms.structure.FormTestRoot" flags="ng" index="2foCiW">
        <child id="8008715273098373358" name="tests" index="2foCjP" />
      </concept>
      <concept id="4253771607368430228" name="de.voelter.forms.structure.FormsChatGPTConfig" flags="ng" index="1RRxKD" />
    </language>
    <language id="cfaa4966-b7d5-4b69-b66a-309a6e1a7290" name="org.iets3.core.expr.base">
      <concept id="7425695345928347719" name="org.iets3.core.expr.base.structure.Expression" flags="ng" index="2vmvVl" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c83bec13-da66-49d6-8783-522e7fada865" name="de.voelter.chatgpt.util">
      <concept id="4253771607368385351" name="de.voelter.chatgpt.util.structure.ChatGPTConsole" flags="ng" index="1RRqRU">
        <property id="8008715273072600076" name="showOnlyLatest" index="2LA4wn" />
        <child id="4253771607368385352" name="nodes" index="1RRqRP" />
        <child id="4253771607368385354" name="config" index="1RRqRR" />
      </concept>
    </language>
  </registry>
  <node concept="2foCiW" id="6W$F1JwhNeR">
    <node concept="2foboS" id="2Fbvgl_N$Eq" role="2foCjP">
      <ref role="2foboZ" node="2FbvglAyImQ" resolve="SleeplessnessForm" />
      <node concept="2fobp$" id="2Fbvgl_OG79" role="2fobqq">
        <ref role="2fobq4" node="2FbvglAyImU" resolve="difficultyFallingAsleep" />
        <node concept="2vmvVl" id="2Fbvgl_OG7a" role="2fobri" />
      </node>
      <node concept="2fobp$" id="2Fbvgl_OG7b" role="2fobqq">
        <ref role="2fobq4" node="2FbvglAyImW" resolve="wakingUpDuringNight" />
        <node concept="2vmvVl" id="2Fbvgl_OG7c" role="2fobri" />
      </node>
      <node concept="2fobp$" id="2Fbvgl_OG7d" role="2fobqq">
        <ref role="2fobq4" node="2Fbvgl_O_cM" resolve="feelingTired" />
        <node concept="2vmvVl" id="2Fbvgl_OG7e" role="2fobri" />
      </node>
      <node concept="2fobp$" id="2Fbvgl_OG7f" role="2fobqq">
        <ref role="2fobq4" node="2FbvglAyImS" resolve="hoursOfSleep" />
        <node concept="2vmvVl" id="2Fbvgl_OG7g" role="2fobri" />
      </node>
      <node concept="2fobp$" id="2Fbvgl_OG7h" role="2fobqq">
        <ref role="2fobq4" node="2FbvglAyIn2" resolve="expectedSleepDuration" />
        <node concept="2vmvVl" id="2Fbvgl_OG7i" role="2fobri" />
      </node>
      <node concept="2fobrI" id="2Fbvgl_OG7j" role="2fobqq">
        <ref role="2fobrz" node="2FbvglAyIn5" resolve="sleepRatio" />
        <node concept="2vmvVl" id="2Fbvgl_OG7k" role="2fobrx" />
      </node>
      <node concept="2fobrI" id="2Fbvgl_OG7l" role="2fobqq">
        <ref role="2fobrz" node="2Fbvgl_O_cT" resolve="hasProblemsSleepingEnough" />
        <node concept="2vmvVl" id="2Fbvgl_OG7m" role="2fobrx" />
      </node>
      <node concept="2fobrI" id="2Fbvgl_OG7n" role="2fobqq">
        <ref role="2fobrz" node="2FbvglAyIn3" resolve="overallSleepQuality" />
        <node concept="2vmvVl" id="2Fbvgl_OG7o" role="2fobrx" />
      </node>
      <node concept="2fobrI" id="2Fbvgl_OG7p" role="2fobqq">
        <ref role="2fobrz" node="2Fbvgl_O_cX" resolve="isSleepQualityGood" />
        <node concept="2vmvVl" id="2Fbvgl_OG7q" role="2fobrx" />
      </node>
    </node>
  </node>
  <node concept="1RRqRU" id="47bF0SmjXkj">
    <property role="2LA4wn" value="true" />
    <node concept="1RRxKD" id="47bF0SmjXkl" role="1RRqRR" />
    <node concept="1JJDhW" id="7p$XkWpQRTE" role="1RRqRP">
      <node concept="1JJDmO" id="7p$XkWpQVql" role="1JJDhV">
        <property role="TrG5h" value="node1" />
        <node concept="1JJDmL" id="7p$XkWpQVqn" role="1JJDhe">
          <ref role="1JJVvj" node="7p$XkWpQVqp" resolve="node2" />
        </node>
        <node concept="1JJDmL" id="7p$XkWpQVr2" role="1JJDhe">
          <ref role="1JJVvj" node="7p$XkWpQROb" resolve="node2" />
        </node>
      </node>
      <node concept="1JJDmO" id="7p$XkWpQVqp" role="1JJDhV">
        <property role="TrG5h" value="node2" />
        <node concept="1JJDmL" id="7p$XkWpQVr5" role="1JJDhe">
          <ref role="1JJVvj" node="7p$XkWpQVql" resolve="node1" />
        </node>
      </node>
      <node concept="1JJDmO" id="7p$XkWpQVqv" role="1JJDhV">
        <property role="TrG5h" value="node3" />
        <node concept="1JJDmL" id="7p$XkWpQVq_" role="1JJDhe">
          <ref role="1JJVvj" node="7p$XkWpQVqp" resolve="node2" />
        </node>
        <node concept="1JJDmL" id="7p$XkWpQVr9" role="1JJDhe">
          <ref role="1JJVvj" node="7p$XkWpQVqL" resolve="node4" />
        </node>
      </node>
      <node concept="1JJDmO" id="7p$XkWpQVqL" role="1JJDhV">
        <property role="TrG5h" value="node4" />
        <node concept="1JJDmL" id="7p$XkWpQVrc" role="1JJDhe">
          <ref role="1JJVvj" node="7p$XkWpQVqp" resolve="node2" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1JJDhW" id="7p$XkWq2B0j">
    <property role="TrG5h" value="integration1" />
    <node concept="1JJDmO" id="7p$XkWq2B0k" role="1JJDhV">
      <property role="TrG5h" value="node1" />
      <node concept="1JJDmL" id="7p$XkWq2B0n" role="1JJDhe">
        <ref role="1JJVvj" node="7p$XkWq2B0l" resolve="node2" />
      </node>
    </node>
    <node concept="1JJDmO" id="7p$XkWq2B0l" role="1JJDhV">
      <property role="TrG5h" value="node2" />
      <node concept="1JJDmL" id="7p$XkWq2B0o" role="1JJDhe">
        <ref role="1JJVvj" node="7p$XkWq2B0k" resolve="node1" />
      </node>
    </node>
    <node concept="1JJDmO" id="7p$XkWq2B0m" role="1JJDhV">
      <property role="TrG5h" value="node3" />
      <node concept="1JJDmL" id="7p$XkWq2B0p" role="1JJDhe">
        <ref role="1JJVvj" node="7p$XkWq2B0k" resolve="node1" />
      </node>
      <node concept="1JJDmL" id="7p$XkWq2B0q" role="1JJDhe">
        <ref role="1JJVvj" node="7p$XkWq2B0l" resolve="node2" />
      </node>
    </node>
  </node>
</model>

