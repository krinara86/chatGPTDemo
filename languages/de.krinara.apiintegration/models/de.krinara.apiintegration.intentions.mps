<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fb1f266c-12df-4001-9f40-510b6ab494e9(de.krinara.apiintegration.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="9fx6" ref="r:53d8c7f7-95c3-4b0f-947f-13875fb31da5(de.krinara.apiintegration.behavior)" />
    <import index="d2mr" ref="r:c7c4d9f1-3259-49fe-a272-5a7e05822fe2(de.krinara.apiintegration.structure)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="5763944538902644732" name="jetbrains.mps.baseLanguage.structure.StaticMethodCallOperation" flags="ng" index="2PDubS" />
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4040588429969021681" name="jetbrains.mps.lang.smodel.structure.ModuleReferenceExpression" flags="nn" index="3rM5sP">
        <property id="4040588429969021683" name="moduleId" index="3rM5sR" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2S6QgY" id="7p$XkWpUowK">
    <property role="TrG5h" value="TestXMLGeneration" />
    <ref role="2ZfgGC" to="d2mr:7p$XkWpQA4N" resolve="APIIntegrations" />
    <node concept="2S6ZIM" id="7p$XkWpUowL" role="2ZfVej">
      <node concept="3clFbS" id="7p$XkWpUowM" role="2VODD2">
        <node concept="3clFbF" id="7p$XkWpUpOw" role="3cqZAp">
          <node concept="Xl_RD" id="7p$XkWpUpOv" role="3clFbG">
            <property role="Xl_RC" value="Generate XML" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7p$XkWpUowN" role="2ZfgGD">
      <node concept="3clFbS" id="7p$XkWpUowO" role="2VODD2">
        <node concept="3cpWs8" id="7p$XkWpUupe" role="3cqZAp">
          <node concept="3cpWsn" id="7p$XkWpUupf" role="3cpWs9">
            <property role="TrG5h" value="serializer" />
            <node concept="3uibUv" id="7p$XkWpUupg" role="1tU5fm">
              <ref role="3uigEE" to="9fx6:6W$F1JvlTFt" resolve="APIIntegrationSerializer" />
            </node>
            <node concept="2ShNRf" id="7p$XkWpUuqi" role="33vP2m">
              <node concept="1pGfFk" id="7p$XkWpUuCh" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="9fx6:7p$XkWpUua2" resolve="APIIntegrationSerializer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7p$XkWpUvj1" role="3cqZAp">
          <node concept="3cpWsn" id="7p$XkWpUvj2" role="3cpWs9">
            <property role="TrG5h" value="xmlString" />
            <node concept="17QB3L" id="7p$XkWpUvj0" role="1tU5fm" />
            <node concept="2OqwBi" id="7p$XkWpUuMi" role="33vP2m">
              <node concept="37vLTw" id="7p$XkWpUuD9" role="2Oq$k0">
                <ref role="3cqZAo" node="7p$XkWpUupf" resolve="serializer" />
              </node>
              <node concept="liA8E" id="7p$XkWpUv92" role="2OqNvi">
                <ref role="37wK5l" to="9fx6:6W$F1JvlTHh" resolve="serialise" />
                <node concept="2Sf5sV" id="7p$XkWpUv9N" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7p$XkWpUvnT" role="3cqZAp">
          <node concept="2OqwBi" id="7p$XkWpUvKT" role="3clFbG">
            <node concept="10M0yZ" id="7p$XkWpUvpD" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="7p$XkWpUwts" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="37vLTw" id="7p$XkWpUwu8" role="37wK5m">
                <ref role="3cqZAo" node="7p$XkWpUvj2" resolve="xmlString" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="7p$XkWq0_P8">
    <property role="TrG5h" value="GetNodeFromXML" />
    <ref role="2ZfgGC" to="d2mr:7p$XkWpQA4N" resolve="APIIntegrations" />
    <node concept="2S6ZIM" id="7p$XkWq0_P9" role="2ZfVej">
      <node concept="3clFbS" id="7p$XkWq0_Pa" role="2VODD2">
        <node concept="3clFbF" id="7p$XkWq0_Uc" role="3cqZAp">
          <node concept="Xl_RD" id="7p$XkWq0_Ub" role="3clFbG">
            <property role="Xl_RC" value="Get API Integration from XML" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7p$XkWq0_Pb" role="2ZfgGD">
      <node concept="3clFbS" id="7p$XkWq0_Pc" role="2VODD2">
        <node concept="3cpWs8" id="5srnMPx1VIF" role="3cqZAp">
          <node concept="3cpWsn" id="5srnMPx1VIG" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="5srnMPx1V85" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="3rM5sP" id="5srnMPx1VIH" role="33vP2m">
              <property role="3rM5sR" value="cea7302f-0b0a-4155-bed3-dd0d7da915fa" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7p$XkWq0AX6" role="3cqZAp">
          <node concept="3cpWsn" id="7p$XkWq0AX9" role="3cpWs9">
            <property role="TrG5h" value="pathString" />
            <node concept="17QB3L" id="7p$XkWq0AX4" role="1tU5fm" />
            <node concept="Xl_RD" id="7p$XkWq0Czt" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6WnTJkDBq5y" role="3cqZAp">
          <node concept="3clFbS" id="6WnTJkDBq5z" role="3clFbx">
            <node concept="3cpWs8" id="3YjQI$hN7m_" role="3cqZAp">
              <node concept="3cpWsn" id="3YjQI$hN7mA" role="3cpWs9">
                <property role="TrG5h" value="m" />
                <node concept="3uibUv" id="3YjQI$hN7mB" role="1tU5fm">
                  <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                </node>
                <node concept="1eOMI4" id="3YjQI$hN7mC" role="33vP2m">
                  <node concept="10QFUN" id="3YjQI$hN7mD" role="1eOMHV">
                    <node concept="3uibUv" id="3YjQI$hN7mE" role="10QFUM">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                    <node concept="37vLTw" id="3YjQI$hN7mF" role="10QFUP">
                      <ref role="3cqZAo" node="5srnMPx1VIG" resolve="module" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7p$XkWq0B0S" role="3cqZAp">
              <node concept="37vLTI" id="7p$XkWq0B88" role="3clFbG">
                <node concept="37vLTw" id="7p$XkWq0BaO" role="37vLTJ">
                  <ref role="3cqZAo" node="7p$XkWq0AX9" resolve="pathString" />
                </node>
                <node concept="2OqwBi" id="5srnMPx3Z4B" role="37vLTx">
                  <node concept="2OqwBi" id="5srnMPx3OV4" role="2Oq$k0">
                    <node concept="37vLTw" id="5srnMPx3OV5" role="2Oq$k0">
                      <ref role="3cqZAo" node="3YjQI$hN7mA" resolve="m" />
                    </node>
                    <node concept="liA8E" id="5srnMPx3OV6" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleSourceDir()" resolve="getModuleSourceDir" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5srnMPx407R" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6WnTJkDBq66" role="3clFbw">
            <node concept="2ZW3vV" id="6WnTJkDBq67" role="3uHU7B">
              <node concept="3uibUv" id="6WnTJkDBq68" role="2ZW6by">
                <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
              </node>
              <node concept="37vLTw" id="6WnTJkDBq69" role="2ZW6bz">
                <ref role="3cqZAo" node="5srnMPx1VIG" resolve="module" />
              </node>
            </node>
            <node concept="3y3z36" id="6WnTJkDBq6a" role="3uHU7w">
              <node concept="10Nm6u" id="6WnTJkDBq6b" role="3uHU7w" />
              <node concept="2OqwBi" id="6WnTJkDBq6c" role="3uHU7B">
                <node concept="1eOMI4" id="6WnTJkDBq6d" role="2Oq$k0">
                  <node concept="10QFUN" id="6WnTJkDBq6e" role="1eOMHV">
                    <node concept="3uibUv" id="6WnTJkDBq6f" role="10QFUM">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                    <node concept="37vLTw" id="6WnTJkDBq6g" role="10QFUP">
                      <ref role="3cqZAo" node="5srnMPx1VIG" resolve="module" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6WnTJkDBq6h" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleSourceDir()" resolve="getModuleSourceDir" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7p$XkWq0Bng" role="3cqZAp">
          <node concept="3cpWsn" id="7p$XkWq0Bnj" role="3cpWs9">
            <property role="TrG5h" value="pathToXML" />
            <node concept="17QB3L" id="7p$XkWq0Bne" role="1tU5fm" />
            <node concept="3cpWs3" id="7p$XkWq0BMc" role="33vP2m">
              <node concept="Xl_RD" id="7p$XkWq0BME" role="3uHU7w">
                <property role="Xl_RC" value="/xmlfiles/apiintegration1.xml" />
              </node>
              <node concept="37vLTw" id="7p$XkWq0BvK" role="3uHU7B">
                <ref role="3cqZAo" node="7p$XkWq0AX9" resolve="pathString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7p$XkWq0QzX" role="3cqZAp">
          <node concept="3cpWsn" id="7p$XkWq0QzY" role="3cpWs9">
            <property role="TrG5h" value="parser" />
            <node concept="3uibUv" id="7p$XkWq0QzZ" role="1tU5fm">
              <ref role="3uigEE" to="9fx6:7p$XkWpScIi" resolve="APIIntegratorXMLParser" />
            </node>
            <node concept="2ShNRf" id="7p$XkWq0QCD" role="33vP2m">
              <node concept="1pGfFk" id="7p$XkWq0Rbw" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="9fx6:7p$XkWq0J0s" resolve="APIIntegratorXMLParser" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7p$XkWq12zg" role="3cqZAp">
          <node concept="3cpWsn" id="7p$XkWq12zj" role="3cpWs9">
            <property role="TrG5h" value="newIntegration" />
            <node concept="3Tqbb2" id="7p$XkWq12ze" role="1tU5fm">
              <ref role="ehGHo" to="d2mr:7p$XkWpQA4N" resolve="APIIntegrations" />
            </node>
            <node concept="2OqwBi" id="7p$XkWq0Rpi" role="33vP2m">
              <node concept="37vLTw" id="7p$XkWq0Rep" role="2Oq$k0">
                <ref role="3cqZAo" node="7p$XkWq0QzY" resolve="parser" />
              </node>
              <node concept="liA8E" id="7p$XkWq0RNz" role="2OqNvi">
                <ref role="37wK5l" to="9fx6:6W$F1JujXpK" resolve="parse" />
                <node concept="2OqwBi" id="7p$XkWq0RYj" role="37wK5m">
                  <node concept="37vLTw" id="7p$XkWq0ROU" role="2Oq$k0">
                    <ref role="3cqZAo" node="7p$XkWq0QzY" resolve="parser" />
                  </node>
                  <node concept="2PDubS" id="7p$XkWq0SgO" role="2OqNvi">
                    <ref role="37wK5l" to="9fx6:7p$XkWq0gYT" resolve="readXMLFileAsString" />
                    <node concept="37vLTw" id="7p$XkWq0SqX" role="37wK5m">
                      <ref role="3cqZAo" node="7p$XkWq0Bnj" resolve="pathToXML" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7p$XkWq132J" role="3cqZAp">
          <node concept="2OqwBi" id="7p$XkWq132G" role="3clFbG">
            <node concept="10M0yZ" id="7p$XkWq132H" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" />
              <ref role="3cqZAo" to="wyt6:~System.out" />
            </node>
            <node concept="liA8E" id="7p$XkWq132I" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.Object)" resolve="println" />
              <node concept="37vLTw" id="7p$XkWq13cI" role="37wK5m">
                <ref role="3cqZAo" node="7p$XkWq12zj" resolve="newIntegration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7p$XkWq1pNa" role="3cqZAp">
          <node concept="3cpWsn" id="7p$XkWq1pNb" role="3cpWs9">
            <property role="TrG5h" value="serializer" />
            <node concept="3uibUv" id="7p$XkWq1pNc" role="1tU5fm">
              <ref role="3uigEE" to="9fx6:6W$F1JvlTFt" resolve="APIIntegrationSerializer" />
            </node>
            <node concept="2ShNRf" id="7p$XkWq1q9h" role="33vP2m">
              <node concept="1pGfFk" id="7p$XkWq1qwG" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="9fx6:7p$XkWpUua2" resolve="APIIntegrationSerializer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7p$XkWq1rSv" role="3cqZAp">
          <node concept="3cpWsn" id="7p$XkWq1rSw" role="3cpWs9">
            <property role="TrG5h" value="xmlString" />
            <node concept="17QB3L" id="7p$XkWq1rSu" role="1tU5fm" />
            <node concept="2OqwBi" id="7p$XkWq1r35" role="33vP2m">
              <node concept="37vLTw" id="7p$XkWq1qKV" role="2Oq$k0">
                <ref role="3cqZAo" node="7p$XkWq1pNb" resolve="serializer" />
              </node>
              <node concept="liA8E" id="7p$XkWq1rmA" role="2OqNvi">
                <ref role="37wK5l" to="9fx6:6W$F1JvlTHh" resolve="serialise" />
                <node concept="37vLTw" id="7p$XkWq1rnm" role="37wK5m">
                  <ref role="3cqZAo" node="7p$XkWq12zj" resolve="newIntegration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7p$XkWq1sqz" role="3cqZAp">
          <node concept="2OqwBi" id="7p$XkWq1tGQ" role="3clFbG">
            <node concept="10M0yZ" id="7p$XkWq1tcY" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="7p$XkWq1uCA" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="37vLTw" id="7p$XkWq1uHv" role="37wK5m">
                <ref role="3cqZAo" node="7p$XkWq1rSw" resolve="xmlString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7p$XkWq0Aor" role="3cqZAp">
          <node concept="2OqwBi" id="7p$XkWq1f3F" role="3clFbG">
            <node concept="2Sf5sV" id="7p$XkWq1eec" role="2Oq$k0" />
            <node concept="1P9Npp" id="7p$XkWq1fun" role="2OqNvi">
              <node concept="37vLTw" id="7p$XkWq1fwL" role="1P9ThW">
                <ref role="3cqZAo" node="7p$XkWq12zj" resolve="newIntegration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

