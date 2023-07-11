<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:41215dab-f1b5-4353-92c5-c60b603e429b(de.krinara.apiintegration.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="d2mr" ref="r:c7c4d9f1-3259-49fe-a272-5a7e05822fe2(de.krinara.apiintegration.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="7p$XkWpQA4a">
    <ref role="1XX52x" to="d2mr:7p$XkWpQA3V" resolve="APINode" />
    <node concept="3EZMnI" id="7p$XkWpQA4c" role="2wV5jI">
      <node concept="3F0A7n" id="7p$XkWpQA4q" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="7p$XkWpQA4w" role="3EZMnx">
        <property role="3F0ifm" value="--&gt;" />
      </node>
      <node concept="3F2HdR" id="7p$XkWpQA4C" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="d2mr:7p$XkWpQA41" resolve="uses" />
        <node concept="2iRfu4" id="7p$XkWpQA4E" role="2czzBx" />
      </node>
      <node concept="2iRfu4" id="7p$XkWpQA4f" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7p$XkWpQA4X">
    <ref role="1XX52x" to="d2mr:7p$XkWpQA4N" resolve="APIIntegrations" />
    <node concept="3EZMnI" id="7p$XkWpQA4Z" role="2wV5jI">
      <node concept="2iRkQZ" id="7p$XkWpQA50" role="2iSdaV" />
      <node concept="3EZMnI" id="7p$XkWpRcTz" role="3EZMnx">
        <node concept="2iRfu4" id="7p$XkWpRcT$" role="2iSdaV" />
        <node concept="3F0ifn" id="7p$XkWpQRU5" role="3EZMnx">
          <property role="3F0ifm" value="API Integrations" />
        </node>
        <node concept="3F0A7n" id="7p$XkWpRcTO" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
      <node concept="3F0ifn" id="7p$XkWpQRUf" role="3EZMnx">
        <property role="3F0ifm" value="----------------" />
      </node>
      <node concept="3F2HdR" id="7p$XkWpQA55" role="3EZMnx">
        <ref role="1NtTu8" to="d2mr:7p$XkWpQA4O" resolve="nodes" />
        <node concept="2iRkQZ" id="7p$XkWpQA57" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="7p$XkWpQRUr" role="3EZMnx">
        <property role="3F0ifm" value="---------------" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7p$XkWpQOa_">
    <ref role="1XX52x" to="d2mr:7p$XkWpQA3Y" resolve="APINodeReference" />
    <node concept="1iCGBv" id="7p$XkWpQOaB" role="2wV5jI">
      <ref role="1NtTu8" to="d2mr:7p$XkWpQOas" resolve="target" />
      <node concept="1sVBvm" id="7p$XkWpQOaD" role="1sWHZn">
        <node concept="3F0A7n" id="7p$XkWpQOaN" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
</model>

