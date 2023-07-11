<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:53d8c7f7-95c3-4b0f-947f-13875fb31da5(de.krinara.apiintegration.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="mmaq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:org.jdom(MPS.IDEA/)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="l0n8" ref="r:d481c127-603a-4645-9a8f-b02ec70fa5c8(de.voelter.chatgpt.util.behavior)" />
    <import index="d2mr" ref="r:c7c4d9f1-3259-49fe-a272-5a7e05822fe2(de.krinara.apiintegration.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="r9z2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:org.jdom.input(MPS.IDEA/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="capj" ref="r:133a7418-d1e8-4856-8f06-72120ccfc56b(de.voelter.chatgpt.util.structure)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271546410" name="jetbrains.mps.baseLanguage.structure.TrimOperation" flags="nn" index="17S1cR" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="4040588429969021681" name="jetbrains.mps.lang.smodel.structure.ModuleReferenceExpression" flags="nn" index="3rM5sP">
        <property id="4040588429969021683" name="moduleId" index="3rM5sR" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
    </language>
  </registry>
  <node concept="312cEu" id="6W$F1JvlTFt">
    <property role="TrG5h" value="APIIntegrationSerializer" />
    <node concept="2tJIrI" id="6W$F1JvlTSd" role="jymVt" />
    <node concept="3clFbW" id="7p$XkWpUua2" role="jymVt">
      <node concept="3cqZAl" id="7p$XkWpUua3" role="3clF45" />
      <node concept="3clFbS" id="7p$XkWpUua5" role="3clF47" />
      <node concept="3Tm1VV" id="7p$XkWpUtVm" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="6W$F1JvlTFu" role="1B3o_S" />
    <node concept="3uibUv" id="6W$F1JvlTGp" role="EKbjA">
      <ref role="3uigEE" to="l0n8:6W$F1JvjlMx" resolve="NodesToXMLSerialiser" />
    </node>
    <node concept="3clFb_" id="6W$F1JvlTHh" role="jymVt">
      <property role="TrG5h" value="serialise" />
      <node concept="17QB3L" id="6W$F1JvlTHi" role="3clF45" />
      <node concept="3Tm1VV" id="6W$F1JvlTHj" role="1B3o_S" />
      <node concept="37vLTG" id="6W$F1JvlTHl" role="3clF46">
        <property role="TrG5h" value="n" />
        <node concept="3Tqbb2" id="6W$F1JvlTHm" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6W$F1JvlTHn" role="3clF47">
        <node concept="3cpWs8" id="6W$F1JvlU3k" role="3cqZAp">
          <node concept="3cpWsn" id="6W$F1JvlU3l" role="3cpWs9">
            <property role="TrG5h" value="doc" />
            <node concept="3uibUv" id="6W$F1JvlU3m" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
            </node>
            <node concept="2ShNRf" id="6W$F1JvlU6P" role="33vP2m">
              <node concept="1pGfFk" id="6W$F1JvlU6_" role="2ShVmc">
                <ref role="37wK5l" to="mmaq:~Document.&lt;init&gt;()" resolve="Document" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6W$F1JvmXe5" role="3cqZAp">
          <node concept="3cpWsn" id="6W$F1JvmXe6" role="3cpWs9">
            <property role="TrG5h" value="apiintegration" />
            <node concept="3Tqbb2" id="6W$F1JvmXcj" role="1tU5fm">
              <ref role="ehGHo" to="d2mr:7p$XkWpQA4N" resolve="APIIntegrations" />
            </node>
            <node concept="1PxgMI" id="6W$F1JvmXe7" role="33vP2m">
              <node concept="chp4Y" id="6W$F1JvmXe8" role="3oSUPX">
                <ref role="cht4Q" to="d2mr:7p$XkWpQA4N" resolve="APIIntegrations" />
              </node>
              <node concept="37vLTw" id="6W$F1JvmXe9" role="1m5AlR">
                <ref role="3cqZAo" node="6W$F1JvlTHl" resolve="n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6W$F1JvmVlm" role="3cqZAp">
          <node concept="3cpWsn" id="6W$F1JvmVln" role="3cpWs9">
            <property role="TrG5h" value="q" />
            <node concept="3uibUv" id="6W$F1JvmVjR" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
            <node concept="2OqwBi" id="6W$F1JvmVJn" role="33vP2m">
              <node concept="2ShNRf" id="6W$F1JvmVlo" role="2Oq$k0">
                <node concept="1pGfFk" id="6W$F1JvmVlp" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                  <node concept="Xl_RD" id="3G8rFPcOIMW" role="37wK5m">
                    <property role="Xl_RC" value="apiintegration" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6W$F1JvmW94" role="2OqNvi">
                <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                <node concept="Xl_RD" id="6W$F1JvmWcs" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                </node>
                <node concept="2OqwBi" id="6W$F1JvmXJT" role="37wK5m">
                  <node concept="37vLTw" id="6W$F1JvmXr1" role="2Oq$k0">
                    <ref role="3cqZAo" node="6W$F1JvmXe6" resolve="form" />
                  </node>
                  <node concept="3TrcHB" id="6W$F1JvmY1Z" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6W$F1JvmYt_" role="3cqZAp">
          <node concept="2GrKxI" id="6W$F1JvmYtC" role="2Gsz3X">
            <property role="TrG5h" value="d" />
          </node>
          <node concept="2OqwBi" id="6W$F1JvmYQ_" role="2GsD0m">
            <node concept="37vLTw" id="6W$F1JvmYBW" role="2Oq$k0">
              <ref role="3cqZAo" node="6W$F1JvmXe6" resolve="form" />
            </node>
            <node concept="3Tsc0h" id="6W$F1JvmZ8i" role="2OqNvi">
              <ref role="3TtcxE" to="d2mr:7p$XkWpQA4O" resolve="nodes" />
            </node>
          </node>
          <node concept="3clFbS" id="6W$F1JvmYtI" role="2LFqv$">
            <node concept="3clFbJ" id="6W$F1JvmZeC" role="3cqZAp">
              <node concept="2OqwBi" id="6W$F1JvmZwF" role="3clFbw">
                <node concept="2GrUjf" id="6W$F1JvmZi$" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="6W$F1JvmYtC" resolve="d" />
                </node>
                <node concept="1mIQ4w" id="6W$F1JvmZTc" role="2OqNvi">
                  <node concept="chp4Y" id="6W$F1JvmZZv" role="cj9EA">
                    <ref role="cht4Q" to="d2mr:7p$XkWpQA3V" resolve="APINode" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6W$F1JvmZeE" role="3clFbx">
                <node concept="3cpWs8" id="6W$F1Jvn0_M" role="3cqZAp">
                  <node concept="3cpWsn" id="6W$F1Jvn0_N" role="3cpWs9">
                    <property role="TrG5h" value="api" />
                    <node concept="3Tqbb2" id="6W$F1Jvn0v6" role="1tU5fm">
                      <ref role="ehGHo" to="d2mr:7p$XkWpQA3V" resolve="APINode" />
                    </node>
                    <node concept="1PxgMI" id="6W$F1Jvn0_O" role="33vP2m">
                      <node concept="chp4Y" id="6W$F1Jvn0_P" role="3oSUPX">
                        <ref role="cht4Q" to="d2mr:7p$XkWpQA3V" resolve="APINode" />
                      </node>
                      <node concept="2GrUjf" id="6W$F1Jvn0_Q" role="1m5AlR">
                        <ref role="2Gs0qQ" node="6W$F1JvmYtC" resolve="d" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7p$XkWpRtuX" role="3cqZAp">
                  <node concept="3cpWsn" id="7p$XkWpRtuY" role="3cpWs9">
                    <property role="TrG5h" value="apielement" />
                    <node concept="3uibUv" id="7p$XkWpRtuZ" role="1tU5fm">
                      <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                    </node>
                    <node concept="2OqwBi" id="6W$F1Jvn2CB" role="33vP2m">
                      <node concept="2ShNRf" id="6W$F1Jvn1EZ" role="2Oq$k0">
                        <node concept="1pGfFk" id="6W$F1Jvn21o" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                          <node concept="Xl_RD" id="6W$F1Jvn26q" role="37wK5m">
                            <property role="Xl_RC" value="api" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6W$F1Jvn3a3" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                        <node concept="Xl_RD" id="6W$F1Jvn3fg" role="37wK5m">
                          <property role="Xl_RC" value="name" />
                        </node>
                        <node concept="2OqwBi" id="6W$F1Jvn3Wr" role="37wK5m">
                          <node concept="37vLTw" id="6W$F1Jvn3Gt" role="2Oq$k0">
                            <ref role="3cqZAo" node="6W$F1Jvn0_N" resolve="api" />
                          </node>
                          <node concept="3TrcHB" id="7p$XkWpRz9n" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7p$XkWpVZfx" role="3cqZAp">
                  <node concept="2OqwBi" id="7p$XkWpW1h$" role="3clFbG">
                    <node concept="10M0yZ" id="7p$XkWpW0Qo" role="2Oq$k0">
                      <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    </node>
                    <node concept="liA8E" id="7p$XkWpW1Vm" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                      <node concept="3cpWs3" id="7p$XkWpW4oC" role="37wK5m">
                        <node concept="2OqwBi" id="7p$XkWpW5y_" role="3uHU7w">
                          <node concept="37vLTw" id="7p$XkWpW5h9" role="2Oq$k0">
                            <ref role="3cqZAo" node="6W$F1Jvn0_N" resolve="api" />
                          </node>
                          <node concept="3TrcHB" id="7p$XkWpW5Xs" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7p$XkWpW3nf" role="3uHU7B">
                          <property role="Xl_RC" value="adding node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="7p$XkWpR_wq" role="3cqZAp">
                  <node concept="2GrKxI" id="7p$XkWpR_ws" role="2Gsz3X">
                    <property role="TrG5h" value="use" />
                  </node>
                  <node concept="2OqwBi" id="7p$XkWpRBm0" role="2GsD0m">
                    <node concept="37vLTw" id="7p$XkWpRB4u" role="2Oq$k0">
                      <ref role="3cqZAo" node="6W$F1Jvn0_N" resolve="api" />
                    </node>
                    <node concept="3Tsc0h" id="7p$XkWpRBy3" role="2OqNvi">
                      <ref role="3TtcxE" to="d2mr:7p$XkWpQA41" resolve="uses" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7p$XkWpR_ww" role="2LFqv$">
                    <node concept="3cpWs8" id="7p$XkWpS3fa" role="3cqZAp">
                      <node concept="3cpWsn" id="7p$XkWpS3f9" role="3cpWs9">
                        <property role="TrG5h" value="useElement" />
                        <node concept="3uibUv" id="7p$XkWpS3fb" role="1tU5fm">
                          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                        </node>
                        <node concept="2OqwBi" id="7p$XkWpS4o3" role="33vP2m">
                          <node concept="2ShNRf" id="7p$XkWpS3Tw" role="2Oq$k0">
                            <node concept="1pGfFk" id="7p$XkWpS3TP" role="2ShVmc">
                              <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                              <node concept="Xl_RD" id="7p$XkWpS3TQ" role="37wK5m">
                                <property role="Xl_RC" value="uses" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="7p$XkWpS4o4" role="2OqNvi">
                            <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                            <node concept="Xl_RD" id="7p$XkWpS4o5" role="37wK5m">
                              <property role="Xl_RC" value="target" />
                            </node>
                            <node concept="2OqwBi" id="7p$XkWpS4o6" role="37wK5m">
                              <node concept="2OqwBi" id="7p$XkWpS4o7" role="2Oq$k0">
                                <node concept="2GrUjf" id="7p$XkWpS6E2" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="7p$XkWpR_ws" resolve="use" />
                                </node>
                                <node concept="3TrEf2" id="7p$XkWpS8Va" role="2OqNvi">
                                  <ref role="3Tt5mk" to="d2mr:7p$XkWpQOas" resolve="target" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="7p$XkWpS924" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7p$XkWpS3fh" role="3cqZAp">
                      <node concept="2OqwBi" id="7p$XkWpS4yA" role="3clFbG">
                        <node concept="37vLTw" id="7p$XkWpS3Tq" role="2Oq$k0">
                          <ref role="3cqZAo" node="7p$XkWpRtuY" resolve="apielement" />
                        </node>
                        <node concept="liA8E" id="7p$XkWpS4yB" role="2OqNvi">
                          <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element)" resolve="addContent" />
                          <node concept="37vLTw" id="7p$XkWpS4yC" role="37wK5m">
                            <ref role="3cqZAo" node="7p$XkWpS3f9" resolve="useElement" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7p$XkWpW7F2" role="3cqZAp">
                      <node concept="2OqwBi" id="7p$XkWpW8BG" role="3clFbG">
                        <node concept="10M0yZ" id="7p$XkWpW87H" role="2Oq$k0">
                          <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                          <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                        </node>
                        <node concept="liA8E" id="7p$XkWpW9rB" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                          <node concept="3cpWs3" id="7p$XkWpWbaG" role="37wK5m">
                            <node concept="2OqwBi" id="7p$XkWpWe9f" role="3uHU7w">
                              <node concept="2OqwBi" id="7p$XkWpWbVm" role="2Oq$k0">
                                <node concept="2GrUjf" id="7p$XkWpWbEe" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="7p$XkWpR_ws" resolve="use" />
                                </node>
                                <node concept="3TrEf2" id="7p$XkWpWdkW" role="2OqNvi">
                                  <ref role="3Tt5mk" to="d2mr:7p$XkWpQOas" resolve="target" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="7p$XkWpWexj" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="7p$XkWpW9K5" role="3uHU7B">
                              <property role="Xl_RC" value="adding reference " />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7p$XkWpUINM" role="3cqZAp">
                  <node concept="2OqwBi" id="7p$XkWpUJeq" role="3clFbG">
                    <node concept="37vLTw" id="7p$XkWpUINK" role="2Oq$k0">
                      <ref role="3cqZAo" node="6W$F1JvmVln" resolve="q" />
                    </node>
                    <node concept="liA8E" id="7p$XkWpUJQj" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element)" resolve="addContent" />
                      <node concept="37vLTw" id="7p$XkWpUK35" role="37wK5m">
                        <ref role="3cqZAo" node="7p$XkWpRtuY" resolve="apielement" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6W$F1JvmU9A" role="3cqZAp">
          <node concept="2OqwBi" id="6W$F1JvmUuk" role="3clFbG">
            <node concept="37vLTw" id="6W$F1JvmU9$" role="2Oq$k0">
              <ref role="3cqZAo" node="6W$F1JvlU3l" resolve="doc" />
            </node>
            <node concept="liA8E" id="6W$F1JvmUPR" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Document.setRootElement(org.jdom.Element)" resolve="setRootElement" />
              <node concept="37vLTw" id="6W$F1JvmVlr" role="37wK5m">
                <ref role="3cqZAo" node="6W$F1JvmVln" resolve="q" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="6W$F1JvEWn_" role="3cqZAp">
          <node concept="3clFbS" id="6W$F1JvEWnA" role="1zxBo7">
            <node concept="3cpWs6" id="6W$F1JvmU0x" role="3cqZAp">
              <node concept="2YIFZM" id="6W$F1JvmU5f" role="3cqZAk">
                <ref role="1Pybhc" to="l0n8:6W$F1JvmTjw" resolve="XMLUtil" />
                <ref role="37wK5l" to="l0n8:6W$F1JvmTkt" resolve="writeDocument" />
                <node concept="37vLTw" id="6W$F1JvmU7g" role="37wK5m">
                  <ref role="3cqZAo" node="6W$F1JvlU3l" resolve="doc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="6W$F1JvEWnC" role="1zxBo5">
            <node concept="3clFbS" id="6W$F1JvEWnD" role="1zc67A">
              <node concept="3clFbF" id="6W$F1JvEY_t" role="3cqZAp">
                <node concept="2OqwBi" id="6W$F1JvEYXo" role="3clFbG">
                  <node concept="37vLTw" id="6W$F1JvEY_r" role="2Oq$k0">
                    <ref role="3cqZAo" node="6W$F1JvEWnE" resolve="e" />
                  </node>
                  <node concept="liA8E" id="6W$F1JvEZVL" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6W$F1JvEXiD" role="3cqZAp">
                <node concept="10Nm6u" id="6W$F1JvEXuY" role="3cqZAk" />
              </node>
            </node>
            <node concept="XOnhg" id="6W$F1JvEWnE" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="6W$F1JvEWnF" role="1tU5fm">
                <node concept="3uibUv" id="6W$F1JvEWnB" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6W$F1JvlTHo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6W$F1JvmThs" role="jymVt" />
    <node concept="2tJIrI" id="6W$F1JvmThH" role="jymVt" />
  </node>
  <node concept="312cEu" id="7p$XkWpScIi">
    <property role="TrG5h" value="APIIntegratorXMLParser" />
    <node concept="2tJIrI" id="7p$XkWpScKB" role="jymVt" />
    <node concept="3clFbW" id="7p$XkWq0J0s" role="jymVt">
      <node concept="3cqZAl" id="7p$XkWq0J0t" role="3clF45" />
      <node concept="3clFbS" id="7p$XkWq0J0v" role="3clF47" />
      <node concept="3Tm1VV" id="7p$XkWq0GGi" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7p$XkWq0KGC" role="jymVt" />
    <node concept="3clFb_" id="6W$F1JuktnH" role="jymVt">
      <property role="TrG5h" value="annotateError" />
      <node concept="3Tm1VV" id="6W$F1JuktnK" role="1B3o_S" />
      <node concept="3clFbS" id="6W$F1JuktnL" role="3clF47">
        <node concept="3clFbF" id="6W$F1Jukvck" role="3cqZAp">
          <node concept="2OqwBi" id="6W$F1Jukvcl" role="3clFbG">
            <node concept="2OqwBi" id="6W$F1Jukvcm" role="2Oq$k0">
              <node concept="37vLTw" id="6W$F1Jukvcn" role="2Oq$k0">
                <ref role="3cqZAo" node="6W$F1JukuWL" resolve="n" />
              </node>
              <node concept="3CFZ6_" id="6W$F1Jukvco" role="2OqNvi">
                <node concept="3CFYIy" id="6W$F1Jukvcp" role="3CFYIz">
                  <ref role="3CFYIx" to="capj:6W$F1Juklka" resolve="ErrorInfo" />
                </node>
              </node>
            </node>
            <node concept="zfrQC" id="6W$F1Jukvcq" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="6W$F1JukwJK" role="3cqZAp">
          <node concept="37vLTI" id="6W$F1Jukz83" role="3clFbG">
            <node concept="37vLTw" id="6W$F1JukzYc" role="37vLTx">
              <ref role="3cqZAo" node="6W$F1Jukv1k" resolve="error" />
            </node>
            <node concept="2OqwBi" id="6W$F1JukylY" role="37vLTJ">
              <node concept="2OqwBi" id="6W$F1JukwY0" role="2Oq$k0">
                <node concept="37vLTw" id="6W$F1JukwJI" role="2Oq$k0">
                  <ref role="3cqZAo" node="6W$F1JukuWL" resolve="n" />
                </node>
                <node concept="3CFZ6_" id="6W$F1JukxyI" role="2OqNvi">
                  <node concept="3CFYIy" id="6W$F1JukxC5" role="3CFYIz">
                    <ref role="3CFYIx" to="capj:6W$F1Juklka" resolve="ErrorInfo" />
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="6W$F1JukyHT" role="2OqNvi">
                <ref role="3TsBF5" to="capj:6W$F1Juklkd" resolve="error" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6W$F1JukuWL" role="3clF46">
        <property role="TrG5h" value="n" />
        <node concept="3Tqbb2" id="6W$F1JukuWK" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6W$F1Jukv1k" role="3clF46">
        <property role="TrG5h" value="error" />
        <node concept="17QB3L" id="6W$F1JukvaF" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6W$F1Jul001" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7p$XkWpUf7S" role="jymVt" />
    <node concept="3clFb_" id="7p$XkWpXs1w" role="jymVt">
      <property role="TrG5h" value="processAPI" />
      <node concept="3clFbS" id="7p$XkWpXs1z" role="3clF47">
        <node concept="3cpWs8" id="7p$XkWpXvQw" role="3cqZAp">
          <node concept="3cpWsn" id="7p$XkWpXvQz" role="3cpWs9">
            <property role="TrG5h" value="api" />
            <node concept="3Tqbb2" id="7p$XkWpXvQv" role="1tU5fm">
              <ref role="ehGHo" to="d2mr:7p$XkWpQA3V" resolve="APINode" />
            </node>
            <node concept="2ShNRf" id="7p$XkWpXyC5" role="33vP2m">
              <node concept="3zrR0B" id="7p$XkWpX$3Q" role="2ShVmc">
                <node concept="3Tqbb2" id="7p$XkWpX$3S" role="3zrR0E">
                  <ref role="ehGHo" to="d2mr:7p$XkWpQA3V" resolve="APINode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7p$XkWpXAq4" role="3cqZAp">
          <node concept="37vLTI" id="7p$XkWpXDCp" role="3clFbG">
            <node concept="2OqwBi" id="7p$XkWpXBkN" role="37vLTJ">
              <node concept="37vLTw" id="7p$XkWpXAq2" role="2Oq$k0">
                <ref role="3cqZAo" node="7p$XkWpXvQz" resolve="api" />
              </node>
              <node concept="3TrcHB" id="7p$XkWpXCiN" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="7p$XkWpXId5" role="37vLTx">
              <node concept="37vLTw" id="7p$XkWpXHEL" role="2Oq$k0">
                <ref role="3cqZAo" node="7p$XkWpXt0l" resolve="e" />
              </node>
              <node concept="liA8E" id="7p$XkWpXJeI" role="2OqNvi">
                <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                <node concept="Xl_RD" id="7p$XkWpXJVo" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7p$XkWq22FQ" role="3cqZAp">
          <node concept="2OqwBi" id="7p$XkWq27OA" role="3clFbG">
            <node concept="2OqwBi" id="7p$XkWq23yq" role="2Oq$k0">
              <node concept="37vLTw" id="7p$XkWq22FO" role="2Oq$k0">
                <ref role="3cqZAo" node="7p$XkWpXtOo" resolve="integrations" />
              </node>
              <node concept="3Tsc0h" id="7p$XkWq24Yc" role="2OqNvi">
                <ref role="3TtcxE" to="d2mr:7p$XkWpQA4O" resolve="nodes" />
              </node>
            </node>
            <node concept="TSZUe" id="7p$XkWq2d9v" role="2OqNvi">
              <node concept="37vLTw" id="7p$XkWq2e_G" role="25WWJ7">
                <ref role="3cqZAo" node="7p$XkWpXvQz" resolve="api" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7p$XkWq1_8$" role="3cqZAp">
          <node concept="2OqwBi" id="7p$XkWq1_8x" role="3clFbG">
            <node concept="10M0yZ" id="7p$XkWq1_8y" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="7p$XkWq1_8z" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="7p$XkWq1E$e" role="37wK5m">
                <node concept="2OqwBi" id="7p$XkWq1Y$B" role="3uHU7w">
                  <node concept="37vLTw" id="7p$XkWq1XIw" role="2Oq$k0">
                    <ref role="3cqZAo" node="7p$XkWpXvQz" resolve="api" />
                  </node>
                  <node concept="3TrcHB" id="7p$XkWq200V" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="7p$XkWq1Aqd" role="3uHU7B">
                  <property role="Xl_RC" value="Adding child " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7p$XkWq1Vws" role="3cqZAp" />
      </node>
      <node concept="3Tm6S6" id="7p$XkWpXr09" role="1B3o_S" />
      <node concept="3cqZAl" id="7p$XkWpXrYE" role="3clF45" />
      <node concept="37vLTG" id="7p$XkWpXt0l" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="7p$XkWpXt0k" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
      </node>
      <node concept="37vLTG" id="7p$XkWpXtOo" role="3clF46">
        <property role="TrG5h" value="integrations" />
        <node concept="3Tqbb2" id="7p$XkWpXv9p" role="1tU5fm">
          <ref role="ehGHo" to="d2mr:7p$XkWpQA4N" resolve="APIIntegrations" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7p$XkWpXVks" role="jymVt" />
    <node concept="3clFb_" id="7p$XkWpXVsT" role="jymVt">
      <property role="TrG5h" value="processAPIReferences" />
      <node concept="3clFbS" id="7p$XkWpXVsU" role="3clF47">
        <node concept="3cpWs8" id="7p$XkWpY26h" role="3cqZAp">
          <node concept="3cpWsn" id="7p$XkWpY26i" role="3cpWs9">
            <property role="TrG5h" value="uses" />
            <node concept="3uibUv" id="7p$XkWpY26f" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="7p$XkWpY32F" role="11_B2D">
                <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
              </node>
            </node>
            <node concept="2OqwBi" id="7p$XkWpY78o" role="33vP2m">
              <node concept="37vLTw" id="7p$XkWpY6e0" role="2Oq$k0">
                <ref role="3cqZAo" node="7p$XkWpXVtc" resolve="e" />
              </node>
              <node concept="liA8E" id="7p$XkWpY8_D" role="2OqNvi">
                <ref role="37wK5l" to="mmaq:~Element.getChildren()" resolve="getChildren" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7p$XkWpZvFi" role="3cqZAp">
          <node concept="3cpWsn" id="7p$XkWpZvFl" role="3cpWs9">
            <property role="TrG5h" value="currentNode" />
            <node concept="3Tqbb2" id="7p$XkWpZvFg" role="1tU5fm">
              <ref role="ehGHo" to="d2mr:7p$XkWpQA3V" resolve="APINode" />
            </node>
            <node concept="2OqwBi" id="7p$XkWpZKWJ" role="33vP2m">
              <node concept="2OqwBi" id="7p$XkWpZHbv" role="2Oq$k0">
                <node concept="37vLTw" id="7p$XkWpZFSE" role="2Oq$k0">
                  <ref role="3cqZAo" node="7p$XkWpXVte" resolve="integrations" />
                </node>
                <node concept="3Tsc0h" id="7p$XkWpZInB" role="2OqNvi">
                  <ref role="3TtcxE" to="d2mr:7p$XkWpQA4O" resolve="nodes" />
                </node>
              </node>
              <node concept="1z4cxt" id="7p$XkWpZNZS" role="2OqNvi">
                <node concept="1bVj0M" id="7p$XkWpZNZU" role="23t8la">
                  <node concept="3clFbS" id="7p$XkWpZNZV" role="1bW5cS">
                    <node concept="3clFbF" id="7p$XkWpZPc9" role="3cqZAp">
                      <node concept="17R0WA" id="7p$XkWpZT8J" role="3clFbG">
                        <node concept="2OqwBi" id="7p$XkWpZVxS" role="3uHU7w">
                          <node concept="37vLTw" id="7p$XkWpZUoB" role="2Oq$k0">
                            <ref role="3cqZAo" node="7p$XkWpXVtc" resolve="e" />
                          </node>
                          <node concept="liA8E" id="7p$XkWpZX$f" role="2OqNvi">
                            <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                            <node concept="Xl_RD" id="7p$XkWpZYMs" role="37wK5m">
                              <property role="Xl_RC" value="name" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7p$XkWpZQ4B" role="3uHU7B">
                          <node concept="37vLTw" id="7p$XkWpZPc8" role="2Oq$k0">
                            <ref role="3cqZAo" node="7p$XkWpZNZW" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="7p$XkWpZR4f" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7p$XkWpZNZW" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7p$XkWpZNZX" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7p$XkWpYayC" role="3cqZAp">
          <node concept="2GrKxI" id="7p$XkWpYayE" role="2Gsz3X">
            <property role="TrG5h" value="use" />
          </node>
          <node concept="37vLTw" id="7p$XkWpYdvt" role="2GsD0m">
            <ref role="3cqZAo" node="7p$XkWpY26i" resolve="uses" />
          </node>
          <node concept="3clFbS" id="7p$XkWpYayI" role="2LFqv$">
            <node concept="3clFbJ" id="7p$XkWpYeC2" role="3cqZAp">
              <node concept="17R0WA" id="7p$XkWpYod_" role="3clFbw">
                <node concept="Xl_RD" id="7p$XkWpYpc6" role="3uHU7w">
                  <property role="Xl_RC" value="uses" />
                </node>
                <node concept="2OqwBi" id="7p$XkWpYgLk" role="3uHU7B">
                  <node concept="2GrUjf" id="7p$XkWpYfFs" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="7p$XkWpYayE" resolve="use" />
                  </node>
                  <node concept="liA8E" id="7p$XkWpYmDD" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7p$XkWpYeC4" role="3clFbx">
                <node concept="3cpWs8" id="7p$XkWpYrpY" role="3cqZAp">
                  <node concept="3cpWsn" id="7p$XkWpYrq1" role="3cpWs9">
                    <property role="TrG5h" value="target" />
                    <node concept="17QB3L" id="7p$XkWpYrpX" role="1tU5fm" />
                    <node concept="2OqwBi" id="7p$XkWpYv_N" role="33vP2m">
                      <node concept="2GrUjf" id="7p$XkWpYu$Z" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7p$XkWpYayE" resolve="use" />
                      </node>
                      <node concept="liA8E" id="7p$XkWpYFzU" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                        <node concept="Xl_RD" id="7p$XkWpYGHc" role="37wK5m">
                          <property role="Xl_RC" value="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7p$XkWpYJZO" role="3cqZAp">
                  <node concept="3clFbS" id="7p$XkWpYJZQ" role="3clFbx">
                    <node concept="3cpWs8" id="7p$XkWpYOPV" role="3cqZAp">
                      <node concept="3cpWsn" id="7p$XkWpYOPY" role="3cpWs9">
                        <property role="TrG5h" value="targetReference" />
                        <node concept="3Tqbb2" id="7p$XkWpYOPT" role="1tU5fm">
                          <ref role="ehGHo" to="d2mr:7p$XkWpQA3Y" resolve="APINodeReference" />
                        </node>
                        <node concept="2ShNRf" id="7p$XkWpYTCR" role="33vP2m">
                          <node concept="3zrR0B" id="7p$XkWpYVRW" role="2ShVmc">
                            <node concept="3Tqbb2" id="7p$XkWpYVRY" role="3zrR0E">
                              <ref role="ehGHo" to="d2mr:7p$XkWpQA3Y" resolve="APINodeReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="7p$XkWpZgVf" role="3cqZAp">
                      <node concept="3cpWsn" id="7p$XkWpZgVg" role="3cpWs9">
                        <property role="TrG5h" value="targetNode" />
                        <node concept="3Tqbb2" id="7p$XkWpZgVe" role="1tU5fm">
                          <ref role="ehGHo" to="d2mr:7p$XkWpQA3V" resolve="APINode" />
                        </node>
                        <node concept="2OqwBi" id="7p$XkWpZ6tw" role="33vP2m">
                          <node concept="2OqwBi" id="7p$XkWpZ2pJ" role="2Oq$k0">
                            <node concept="37vLTw" id="7p$XkWpYZ90" role="2Oq$k0">
                              <ref role="3cqZAo" node="7p$XkWpXVte" resolve="integrations" />
                            </node>
                            <node concept="3Tsc0h" id="7p$XkWpZ3Cc" role="2OqNvi">
                              <ref role="3TtcxE" to="d2mr:7p$XkWpQA4O" resolve="nodes" />
                            </node>
                          </node>
                          <node concept="1z4cxt" id="7p$XkWpZ8MO" role="2OqNvi">
                            <node concept="1bVj0M" id="7p$XkWpZ8MQ" role="23t8la">
                              <node concept="3clFbS" id="7p$XkWpZ8MR" role="1bW5cS">
                                <node concept="3clFbF" id="7p$XkWpZ9Xo" role="3cqZAp">
                                  <node concept="17R0WA" id="7p$XkWpZdl5" role="3clFbG">
                                    <node concept="37vLTw" id="7p$XkWpZeB4" role="3uHU7w">
                                      <ref role="3cqZAo" node="7p$XkWpYrq1" resolve="target" />
                                    </node>
                                    <node concept="2OqwBi" id="7p$XkWpZaNP" role="3uHU7B">
                                      <node concept="37vLTw" id="7p$XkWpZ9Xn" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7p$XkWpZ8MS" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="7p$XkWpZbBp" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="7p$XkWpZ8MS" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="7p$XkWpZ8MT" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7p$XkWpZmYZ" role="3cqZAp">
                      <node concept="37vLTI" id="7p$XkWpZqM7" role="3clFbG">
                        <node concept="37vLTw" id="7p$XkWpZrY7" role="37vLTx">
                          <ref role="3cqZAo" node="7p$XkWpZgVg" resolve="targetNode" />
                        </node>
                        <node concept="2OqwBi" id="7p$XkWpZoe7" role="37vLTJ">
                          <node concept="37vLTw" id="7p$XkWpZmYX" role="2Oq$k0">
                            <ref role="3cqZAo" node="7p$XkWpYOPY" resolve="targetReference" />
                          </node>
                          <node concept="3TrEf2" id="7p$XkWpZpu7" role="2OqNvi">
                            <ref role="3Tt5mk" to="d2mr:7p$XkWpQOas" resolve="target" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7p$XkWq01dZ" role="3cqZAp">
                      <node concept="2OqwBi" id="7p$XkWq0602" role="3clFbG">
                        <node concept="2OqwBi" id="7p$XkWq02wu" role="2Oq$k0">
                          <node concept="37vLTw" id="7p$XkWq01dX" role="2Oq$k0">
                            <ref role="3cqZAo" node="7p$XkWpZvFl" resolve="currentNode" />
                          </node>
                          <node concept="3Tsc0h" id="7p$XkWq03ta" role="2OqNvi">
                            <ref role="3TtcxE" to="d2mr:7p$XkWpQA41" resolve="uses" />
                          </node>
                        </node>
                        <node concept="TSZUe" id="7p$XkWq08uR" role="2OqNvi">
                          <node concept="37vLTw" id="7p$XkWq09R7" role="25WWJ7">
                            <ref role="3cqZAo" node="7p$XkWpYOPY" resolve="targetReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="17QLQc" id="7p$XkWpYMA1" role="3clFbw">
                    <node concept="10Nm6u" id="7p$XkWpYNK1" role="3uHU7w" />
                    <node concept="37vLTw" id="7p$XkWpYLbC" role="3uHU7B">
                      <ref role="3cqZAo" node="7p$XkWpYrq1" resolve="target" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7p$XkWpXVta" role="1B3o_S" />
      <node concept="3cqZAl" id="7p$XkWpXVtb" role="3clF45" />
      <node concept="37vLTG" id="7p$XkWpXVtc" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="7p$XkWpXVtd" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
      </node>
      <node concept="37vLTG" id="7p$XkWpXVte" role="3clF46">
        <property role="TrG5h" value="integrations" />
        <node concept="3Tqbb2" id="7p$XkWpXVtf" role="1tU5fm">
          <ref role="ehGHo" to="d2mr:7p$XkWpQA4N" resolve="APIIntegrations" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7p$XkWpXVoE" role="jymVt" />
    <node concept="2YIFZL" id="7p$XkWq0gYT" role="jymVt">
      <property role="TrG5h" value="readXMLFileAsString" />
      <node concept="37vLTG" id="7p$XkWq0gYU" role="3clF46">
        <property role="TrG5h" value="filePath" />
        <node concept="3uibUv" id="7p$XkWq0gYV" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="7p$XkWq0gYW" role="3clF47">
        <node concept="3cpWs8" id="7p$XkWq0gYY" role="3cqZAp">
          <node concept="3cpWsn" id="7p$XkWq0gYX" role="3cpWs9">
            <property role="TrG5h" value="content" />
            <node concept="3uibUv" id="7p$XkWq0gYZ" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="Xl_RD" id="7p$XkWq0gZ0" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7p$XkWq0gZh" role="3cqZAp">
          <node concept="3uVAMA" id="7p$XkWq0gZi" role="1zxBo5">
            <node concept="3clFbS" id="7p$XkWq0gZe" role="1zc67A">
              <node concept="3clFbF" id="7p$XkWq0gZf" role="3cqZAp">
                <node concept="2OqwBi" id="7p$XkWq0isD" role="3clFbG">
                  <node concept="37vLTw" id="7p$XkWq0ild" role="2Oq$k0">
                    <ref role="3cqZAo" node="7p$XkWq0gZa" resolve="e" />
                  </node>
                  <node concept="liA8E" id="7p$XkWq0isE" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="7p$XkWq0gZa" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="7p$XkWq0gZc" role="1tU5fm">
                <node concept="3uibUv" id="7p$XkWq0gZb" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7p$XkWq0gZ2" role="1zxBo7">
            <node concept="3clFbF" id="7p$XkWq0gZ3" role="3cqZAp">
              <node concept="37vLTI" id="7p$XkWq0gZ4" role="3clFbG">
                <node concept="37vLTw" id="7p$XkWq0gZ5" role="37vLTJ">
                  <ref role="3cqZAo" node="7p$XkWq0gYX" resolve="content" />
                </node>
                <node concept="2ShNRf" id="7p$XkWq0ihC" role="37vLTx">
                  <node concept="1pGfFk" id="7p$XkWq0ikW" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~String.&lt;init&gt;(byte[])" resolve="String" />
                    <node concept="2YIFZM" id="7p$XkWq0k7N" role="37wK5m">
                      <ref role="37wK5l" to="eoo2:~Files.readAllBytes(java.nio.file.Path)" resolve="readAllBytes" />
                      <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                      <node concept="2YIFZM" id="7p$XkWq0kPX" role="37wK5m">
                        <ref role="1Pybhc" to="eoo2:~Paths" resolve="Paths" />
                        <ref role="37wK5l" to="eoo2:~Paths.get(java.lang.String,java.lang.String...)" resolve="get" />
                        <node concept="37vLTw" id="7p$XkWq0l86" role="37wK5m">
                          <ref role="3cqZAo" node="7p$XkWq0gYU" resolve="filePath" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7p$XkWq0gZj" role="3cqZAp">
          <node concept="37vLTw" id="7p$XkWq0gZk" role="3cqZAk">
            <ref role="3cqZAo" node="7p$XkWq0gYX" resolve="content" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7p$XkWq0gZl" role="1B3o_S" />
      <node concept="3uibUv" id="7p$XkWq0gZm" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="7p$XkWpUdQ3" role="jymVt" />
    <node concept="3clFb_" id="6W$F1JujXpK" role="jymVt">
      <property role="TrG5h" value="parse" />
      <node concept="3Tqbb2" id="6W$F1JujX$H" role="3clF45">
        <ref role="ehGHo" to="d2mr:7p$XkWpQA4N" resolve="APIIntegrations" />
      </node>
      <node concept="3Tm1VV" id="6W$F1JujXpN" role="1B3o_S" />
      <node concept="3clFbS" id="6W$F1JujXpO" role="3clF47">
        <node concept="3clFbF" id="6HJBXF$kS8x" role="3cqZAp">
          <node concept="2OqwBi" id="6HJBXF$kS8u" role="3clFbG">
            <node concept="10M0yZ" id="6HJBXF$kS8v" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6HJBXF$kS8w" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="6HJBXF$kWwB" role="37wK5m">
                <node concept="37vLTw" id="6HJBXF$kWxi" role="3uHU7w">
                  <ref role="3cqZAo" node="6W$F1JujY1m" resolve="xml" />
                </node>
                <node concept="Xl_RD" id="6HJBXF$kTbH" role="3uHU7B">
                  <property role="Xl_RC" value="output " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6W$F1JuqdE9" role="3cqZAp">
          <node concept="37vLTI" id="6W$F1JuqeGr" role="3clFbG">
            <node concept="2OqwBi" id="6W$F1JuqfGw" role="37vLTx">
              <node concept="37vLTw" id="6W$F1JuqfkG" role="2Oq$k0">
                <ref role="3cqZAo" node="6W$F1JujY1m" resolve="xml" />
              </node>
              <node concept="17S1cR" id="6W$F1Juqh6n" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="6W$F1JuqdE7" role="37vLTJ">
              <ref role="3cqZAo" node="6W$F1JujY1m" resolve="xml" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6W$F1Juo4Rt" role="3cqZAp">
          <node concept="3cpWsn" id="6W$F1Juo4Ru" role="3cpWs9">
            <property role="TrG5h" value="xmlbegin" />
            <node concept="10Oyi0" id="6W$F1Juo4DQ" role="1tU5fm" />
            <node concept="2OqwBi" id="6W$F1Juo4Rv" role="33vP2m">
              <node concept="37vLTw" id="6W$F1Juo4Rw" role="2Oq$k0">
                <ref role="3cqZAo" node="6W$F1JujY1m" resolve="xml" />
              </node>
              <node concept="liA8E" id="6W$F1Juo4Rx" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.indexOf(java.lang.String)" resolve="indexOf" />
                <node concept="Xl_RD" id="6W$F1Juo4Ry" role="37wK5m">
                  <property role="Xl_RC" value="&lt;" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6W$F1Juo5I$" role="3cqZAp">
          <node concept="3clFbS" id="6W$F1Juo5IA" role="3clFbx">
            <node concept="3clFbF" id="6W$F1Juo864" role="3cqZAp">
              <node concept="37vLTI" id="6W$F1Juo9qU" role="3clFbG">
                <node concept="2OqwBi" id="6W$F1Juoa1H" role="37vLTx">
                  <node concept="37vLTw" id="6W$F1Juo9Vd" role="2Oq$k0">
                    <ref role="3cqZAo" node="6W$F1JujY1m" resolve="xml" />
                  </node>
                  <node concept="liA8E" id="6W$F1JuoaEF" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                    <node concept="37vLTw" id="6W$F1JuobbL" role="37wK5m">
                      <ref role="3cqZAo" node="6W$F1Juo4Ru" resolve="xmlbegin" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6W$F1Juo862" role="37vLTJ">
                  <ref role="3cqZAo" node="6W$F1JujY1m" resolve="xml" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="6W$F1Juo7r8" role="3clFbw">
            <node concept="3cmrfG" id="6W$F1Juo7wk" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="6W$F1Juo68o" role="3uHU7B">
              <ref role="3cqZAo" node="6W$F1Juo4Ru" resolve="xmlbegin" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6W$F1Juoezb" role="3cqZAp">
          <node concept="3clFbS" id="6W$F1Juoezd" role="3clFbx">
            <node concept="3clFbF" id="6W$F1Juoiq4" role="3cqZAp">
              <node concept="37vLTI" id="6W$F1JuoiS5" role="3clFbG">
                <node concept="2OqwBi" id="6W$F1JuojDh" role="37vLTx">
                  <node concept="37vLTw" id="6W$F1Juoj4D" role="2Oq$k0">
                    <ref role="3cqZAo" node="6W$F1JujY1m" resolve="xml" />
                  </node>
                  <node concept="liA8E" id="6W$F1Juokoo" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                    <node concept="3cmrfG" id="6W$F1JuokPw" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="6W$F1Juon8P" role="37wK5m">
                      <node concept="37vLTw" id="6W$F1Juomvy" role="2Oq$k0">
                        <ref role="3cqZAo" node="6W$F1JujY1m" resolve="xml" />
                      </node>
                      <node concept="liA8E" id="6W$F1JuonLi" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.lastIndexOf(java.lang.String)" resolve="lastIndexOf" />
                        <node concept="Xl_RD" id="6W$F1Juoomd" role="37wK5m">
                          <property role="Xl_RC" value="&gt;" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6W$F1Juoiq2" role="37vLTJ">
                  <ref role="3cqZAo" node="6W$F1JujY1m" resolve="xml" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6W$F1JuofaS" role="3clFbw">
            <node concept="2OqwBi" id="6W$F1Juog_q" role="3fr31v">
              <node concept="37vLTw" id="6W$F1JuofFN" role="2Oq$k0">
                <ref role="3cqZAo" node="6W$F1JujY1m" resolve="xml" />
              </node>
              <node concept="liA8E" id="6W$F1Juohay" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                <node concept="Xl_RD" id="6W$F1JuohrN" role="37wK5m">
                  <property role="Xl_RC" value="&gt;" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6W$F1Juk2gI" role="3cqZAp">
          <node concept="3cpWsn" id="6W$F1Juk2gJ" role="3cpWs9">
            <property role="TrG5h" value="apiintegrations" />
            <node concept="3Tqbb2" id="6W$F1Juk2fE" role="1tU5fm">
              <ref role="ehGHo" to="d2mr:7p$XkWpQA4N" resolve="APIIntegrations" />
            </node>
            <node concept="2ShNRf" id="6W$F1Juk2gK" role="33vP2m">
              <node concept="3zrR0B" id="6W$F1Juk2gL" role="2ShVmc">
                <node concept="3Tqbb2" id="6W$F1Juk2gM" role="3zrR0E">
                  <ref role="ehGHo" to="d2mr:7p$XkWpQA4N" resolve="APIIntegrations" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6W$F1Juk4SS" role="3cqZAp">
          <node concept="3cpWsn" id="6W$F1Juk4ST" role="3cpWs9">
            <property role="TrG5h" value="doc" />
            <node concept="3uibUv" id="6W$F1Juk4QK" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="6W$F1JujZIO" role="3cqZAp">
          <node concept="3uVAMA" id="6W$F1Juk2Pw" role="1zxBo5">
            <node concept="XOnhg" id="6W$F1Juk2Px" role="1zc67B">
              <property role="TrG5h" value="t" />
              <node concept="nSUau" id="6W$F1Juk2Py" role="1tU5fm">
                <node concept="3uibUv" id="6W$F1Juk3mC" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6W$F1Juk2Pz" role="1zc67A">
              <node concept="3clFbF" id="6W$F1Julp3a" role="3cqZAp">
                <node concept="1rXfSq" id="6W$F1Julp3b" role="3clFbG">
                  <ref role="37wK5l" node="6W$F1JuktnH" resolve="annotateError" />
                  <node concept="37vLTw" id="6W$F1Julp3c" role="37wK5m">
                    <ref role="3cqZAo" node="6W$F1Juk2gJ" resolve="form" />
                  </node>
                  <node concept="3cpWs3" id="6W$F1Julp3d" role="37wK5m">
                    <node concept="2OqwBi" id="6W$F1Julp3e" role="3uHU7w">
                      <node concept="37vLTw" id="6W$F1Julp3f" role="2Oq$k0">
                        <ref role="3cqZAo" node="6W$F1Juk2Px" resolve="t" />
                      </node>
                      <node concept="liA8E" id="6W$F1Julp3g" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="6W$F1Julp3h" role="3uHU7B">
                      <property role="Xl_RC" value="couldn't parse the XML: " />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6W$F1Julp36" role="3cqZAp">
                <node concept="2OqwBi" id="6W$F1Julp37" role="3clFbG">
                  <node concept="37vLTw" id="6W$F1Julp38" role="2Oq$k0">
                    <ref role="3cqZAo" node="6W$F1Juk2Px" resolve="t" />
                  </node>
                  <node concept="liA8E" id="6W$F1Julp39" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6W$F1Julp34" role="3cqZAp">
                <node concept="37vLTw" id="6W$F1Julp35" role="3cqZAk">
                  <ref role="3cqZAo" node="6W$F1Juk2gJ" resolve="form" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6W$F1JujZIQ" role="1zxBo7">
            <node concept="3cpWs8" id="6W$F1JujTyn" role="3cqZAp">
              <node concept="3cpWsn" id="6W$F1JujTyo" role="3cpWs9">
                <property role="TrG5h" value="builder" />
                <node concept="3uibUv" id="6W$F1JujTyp" role="1tU5fm">
                  <ref role="3uigEE" to="r9z2:~SAXBuilder" resolve="SAXBuilder" />
                </node>
                <node concept="2ShNRf" id="6W$F1JujTMO" role="33vP2m">
                  <node concept="1pGfFk" id="6W$F1JujTCs" role="2ShVmc">
                    <ref role="37wK5l" to="r9z2:~SAXBuilder.&lt;init&gt;()" resolve="SAXBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6W$F1Julkgu" role="3cqZAp">
              <node concept="37vLTI" id="6W$F1Julkgw" role="3clFbG">
                <node concept="2OqwBi" id="6W$F1Juk4SU" role="37vLTx">
                  <node concept="37vLTw" id="6W$F1Juk4SV" role="2Oq$k0">
                    <ref role="3cqZAo" node="6W$F1JujTyo" resolve="builder" />
                  </node>
                  <node concept="liA8E" id="6W$F1Juk4SW" role="2OqNvi">
                    <ref role="37wK5l" to="r9z2:~SAXBuilder.build(java.io.Reader)" resolve="build" />
                    <node concept="2ShNRf" id="6W$F1JumPsV" role="37wK5m">
                      <node concept="1pGfFk" id="6W$F1JumQFJ" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="guwi:~StringReader.&lt;init&gt;(java.lang.String)" resolve="StringReader" />
                        <node concept="37vLTw" id="6W$F1JumRdc" role="37wK5m">
                          <ref role="3cqZAo" node="6W$F1JujY1m" resolve="xml" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6W$F1Julkg$" role="37vLTJ">
                  <ref role="3cqZAo" node="6W$F1Juk4ST" resolve="doc" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7p$XkWpWshI" role="3cqZAp">
          <node concept="3clFbS" id="7p$XkWpWshK" role="3clFbx">
            <node concept="3J1_TO" id="7p$XkWpWvtf" role="3cqZAp">
              <node concept="3uVAMA" id="7p$XkWpXdku" role="1zxBo5">
                <node concept="XOnhg" id="7p$XkWpXdkv" role="1zc67B">
                  <property role="TrG5h" value="t" />
                  <node concept="nSUau" id="7p$XkWpXdkw" role="1tU5fm">
                    <node concept="3uibUv" id="7p$XkWpXe3s" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="7p$XkWpXdkx" role="1zc67A">
                  <node concept="3clFbF" id="6W$F1Jul9NL" role="3cqZAp">
                    <node concept="1rXfSq" id="6W$F1Jul9NM" role="3clFbG">
                      <ref role="37wK5l" node="6W$F1JuktnH" resolve="annotateError" />
                      <node concept="37vLTw" id="6W$F1Jul9NN" role="37wK5m">
                        <ref role="3cqZAo" node="6W$F1Juk2gJ" resolve="apiintegrations" />
                      </node>
                      <node concept="3cpWs3" id="6W$F1Julccz" role="37wK5m">
                        <node concept="2OqwBi" id="6W$F1JulcGl" role="3uHU7w">
                          <node concept="37vLTw" id="6W$F1JulchJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="7p$XkWpXdkv" resolve="t" />
                          </node>
                          <node concept="liA8E" id="6W$F1JuldyO" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="6W$F1Jul9NO" role="3uHU7B">
                          <property role="Xl_RC" value="Error: " />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6W$F1Juk40o" role="3cqZAp">
                    <node concept="2OqwBi" id="6W$F1Juk49M" role="3clFbG">
                      <node concept="37vLTw" id="6W$F1Juk40n" role="2Oq$k0">
                        <ref role="3cqZAo" node="7p$XkWpXdkv" resolve="t" />
                      </node>
                      <node concept="liA8E" id="6W$F1Juk4ns" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7p$XkWpWvth" role="1zxBo7">
                <node concept="3cpWs8" id="7p$XkWpWwGn" role="3cqZAp">
                  <node concept="3cpWsn" id="7p$XkWpWwGo" role="3cpWs9">
                    <property role="TrG5h" value="quest" />
                    <node concept="3uibUv" id="7p$XkWpWwGp" role="1tU5fm">
                      <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                    </node>
                    <node concept="2OqwBi" id="7p$XkWpWzOq" role="33vP2m">
                      <node concept="37vLTw" id="7p$XkWpWzdh" role="2Oq$k0">
                        <ref role="3cqZAo" node="6W$F1Juk4ST" resolve="doc" />
                      </node>
                      <node concept="liA8E" id="7p$XkWpW$KZ" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Document.getRootElement()" resolve="getRootElement" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7p$XkWpWAkn" role="3cqZAp">
                  <node concept="3clFbS" id="7p$XkWpWAkp" role="3clFbx">
                    <node concept="3clFbF" id="6W$F1JukWWB" role="3cqZAp">
                      <node concept="1rXfSq" id="6W$F1Juk_9_" role="3clFbG">
                        <ref role="37wK5l" node="6W$F1JuktnH" resolve="annotateError" />
                        <node concept="37vLTw" id="6W$F1Juk_ko" role="37wK5m">
                          <ref role="3cqZAo" node="6W$F1Juk2gJ" resolve="apiintegrations" />
                        </node>
                        <node concept="Xl_RD" id="6W$F1JukA2h" role="37wK5m">
                          <property role="Xl_RC" value="root node wasn't called form" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="6W$F1JukE_c" role="3cqZAp">
                      <node concept="37vLTw" id="6W$F1JukYJI" role="3cqZAk">
                        <ref role="3cqZAo" node="6W$F1Juk2gJ" resolve="apiintegrations" />
                      </node>
                    </node>
                  </node>
                  <node concept="17QLQc" id="7p$XkWpWE26" role="3clFbw">
                    <node concept="Xl_RD" id="7p$XkWpWE_W" role="3uHU7w">
                      <property role="Xl_RC" value="apiintegration" />
                    </node>
                    <node concept="2OqwBi" id="7p$XkWpWBDl" role="3uHU7B">
                      <node concept="37vLTw" id="7p$XkWpWATm" role="2Oq$k0">
                        <ref role="3cqZAo" node="7p$XkWpWwGo" resolve="quest" />
                      </node>
                      <node concept="liA8E" id="7p$XkWpWCDO" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7p$XkWpWL__" role="3cqZAp">
                  <node concept="3cpWsn" id="7p$XkWpWL_C" role="3cpWs9">
                    <property role="TrG5h" value="apiintegrationname" />
                    <node concept="17QB3L" id="7p$XkWpWL_z" role="1tU5fm" />
                    <node concept="2OqwBi" id="7p$XkWpWPyN" role="33vP2m">
                      <node concept="37vLTw" id="7p$XkWpWOy3" role="2Oq$k0">
                        <ref role="3cqZAo" node="7p$XkWpWwGo" resolve="quest" />
                      </node>
                      <node concept="liA8E" id="7p$XkWpWRGX" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                        <node concept="Xl_RD" id="7p$XkWpWShL" role="37wK5m">
                          <property role="Xl_RC" value="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7p$XkWpWU1_" role="3cqZAp">
                  <node concept="3clFbS" id="7p$XkWpWU1B" role="3clFbx">
                    <node concept="3clFbF" id="7p$XkWpWXco" role="3cqZAp">
                      <node concept="37vLTI" id="7p$XkWpWZ_4" role="3clFbG">
                        <node concept="37vLTw" id="7p$XkWpX0c3" role="37vLTx">
                          <ref role="3cqZAo" node="7p$XkWpWL_C" resolve="apiintegrationname" />
                        </node>
                        <node concept="2OqwBi" id="7p$XkWpWXTX" role="37vLTJ">
                          <node concept="37vLTw" id="7p$XkWpWXcm" role="2Oq$k0">
                            <ref role="3cqZAo" node="6W$F1Juk2gJ" resolve="apiintegrations" />
                          </node>
                          <node concept="3TrcHB" id="7p$XkWpWYPh" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="7p$XkWpWVB2" role="3clFbw">
                    <node concept="10Nm6u" id="7p$XkWpWWpU" role="3uHU7w" />
                    <node concept="37vLTw" id="7p$XkWpWUFY" role="3uHU7B">
                      <ref role="3cqZAo" node="7p$XkWpWL_C" resolve="apiintegrationname" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="7p$XkWpX1g5" role="9aQIa">
                    <node concept="3clFbS" id="7p$XkWpX1g6" role="9aQI4">
                      <node concept="3clFbF" id="7p$XkWpX1TW" role="3cqZAp">
                        <node concept="1rXfSq" id="7p$XkWpX1TV" role="3clFbG">
                          <ref role="37wK5l" node="6W$F1JuktnH" resolve="annotateError" />
                          <node concept="37vLTw" id="7p$XkWpX3RI" role="37wK5m">
                            <ref role="3cqZAo" node="6W$F1Juk2gJ" resolve="apiintegrations" />
                          </node>
                          <node concept="Xl_RD" id="7p$XkWpX4vJ" role="37wK5m">
                            <property role="Xl_RC" value="API Integration has no name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6W$F1JuoxR9" role="3cqZAp">
                  <node concept="3cpWsn" id="6W$F1JuoxRa" role="3cpWs9">
                    <property role="TrG5h" value="children" />
                    <node concept="3uibUv" id="6W$F1JuoxCR" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3uibUv" id="6W$F1JuoxCU" role="11_B2D">
                        <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6W$F1JuoxRb" role="33vP2m">
                      <node concept="37vLTw" id="6W$F1JuoxRc" role="2Oq$k0">
                        <ref role="3cqZAo" node="7p$XkWpWwGo" resolve="quest" />
                      </node>
                      <node concept="liA8E" id="6W$F1JuoxRd" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.getChildren()" resolve="getChildren" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="7p$XkWpXQ7G" role="3cqZAp">
                  <node concept="1PaTwC" id="7p$XkWpXQ7H" role="1aUNEU">
                    <node concept="3oM_SD" id="7p$XkWpXR5l" role="1PaTwD">
                      <property role="3oM_SC" value="First" />
                    </node>
                    <node concept="3oM_SD" id="7p$XkWpXR5n" role="1PaTwD">
                      <property role="3oM_SC" value="pass" />
                    </node>
                    <node concept="3oM_SD" id="7p$XkWpXR5q" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="7p$XkWpXR5u" role="1PaTwD">
                      <property role="3oM_SC" value="apis" />
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="7p$XkWpX9RM" role="3cqZAp">
                  <node concept="2GrKxI" id="7p$XkWpX9RO" role="2Gsz3X">
                    <property role="TrG5h" value="child" />
                  </node>
                  <node concept="37vLTw" id="7p$XkWpXc5m" role="2GsD0m">
                    <ref role="3cqZAo" node="6W$F1JuoxRa" resolve="children" />
                  </node>
                  <node concept="3clFbS" id="7p$XkWpX9RS" role="2LFqv$">
                    <node concept="3clFbJ" id="7p$XkWpXix1" role="3cqZAp">
                      <node concept="17R0WA" id="7p$XkWpXoEQ" role="3clFbw">
                        <node concept="Xl_RD" id="7p$XkWpXpA3" role="3uHU7w">
                          <property role="Xl_RC" value="api" />
                        </node>
                        <node concept="2OqwBi" id="7p$XkWpXkcz" role="3uHU7B">
                          <node concept="2GrUjf" id="7p$XkWpXjkk" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="7p$XkWpX9RO" resolve="child" />
                          </node>
                          <node concept="liA8E" id="7p$XkWpXnoI" role="2OqNvi">
                            <ref role="37wK5l" to="mmaq:~Element.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7p$XkWpXix3" role="3clFbx">
                        <node concept="3clFbF" id="7p$XkWpXLsA" role="3cqZAp">
                          <node concept="1rXfSq" id="7p$XkWpXLs_" role="3clFbG">
                            <ref role="37wK5l" node="7p$XkWpXs1w" resolve="processAPI" />
                            <node concept="2GrUjf" id="7p$XkWpXMj_" role="37wK5m">
                              <ref role="2Gs0qQ" node="7p$XkWpX9RO" resolve="child" />
                            </node>
                            <node concept="37vLTw" id="7p$XkWpXNJq" role="37wK5m">
                              <ref role="3cqZAo" node="6W$F1Juk2gJ" resolve="apiintegrations" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="7p$XkWpXR6j" role="3cqZAp">
                  <node concept="1PaTwC" id="7p$XkWpXR6k" role="1aUNEU">
                    <node concept="3oM_SD" id="7p$XkWpXR7w" role="1PaTwD">
                      <property role="3oM_SC" value="Second" />
                    </node>
                    <node concept="3oM_SD" id="7p$XkWpXR7y" role="1PaTwD">
                      <property role="3oM_SC" value="pass" />
                    </node>
                    <node concept="3oM_SD" id="7p$XkWpXR7_" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="7p$XkWpXR7D" role="1PaTwD">
                      <property role="3oM_SC" value="references" />
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="7p$XkWpXT1a" role="3cqZAp">
                  <node concept="2GrKxI" id="7p$XkWpXT1b" role="2Gsz3X">
                    <property role="TrG5h" value="child" />
                  </node>
                  <node concept="37vLTw" id="7p$XkWpXT1c" role="2GsD0m">
                    <ref role="3cqZAo" node="6W$F1JuoxRa" resolve="children" />
                  </node>
                  <node concept="3clFbS" id="7p$XkWpXT1d" role="2LFqv$">
                    <node concept="3clFbJ" id="7p$XkWpXT1e" role="3cqZAp">
                      <node concept="17R0WA" id="7p$XkWpXT1f" role="3clFbw">
                        <node concept="Xl_RD" id="7p$XkWpXT1g" role="3uHU7w">
                          <property role="Xl_RC" value="api" />
                        </node>
                        <node concept="2OqwBi" id="7p$XkWpXT1h" role="3uHU7B">
                          <node concept="2GrUjf" id="7p$XkWpXT1i" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="7p$XkWpXT1b" resolve="child" />
                          </node>
                          <node concept="liA8E" id="7p$XkWpXT1j" role="2OqNvi">
                            <ref role="37wK5l" to="mmaq:~Element.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7p$XkWpXT1k" role="3clFbx">
                        <node concept="3clFbF" id="7p$XkWpXT1l" role="3cqZAp">
                          <node concept="1rXfSq" id="7p$XkWpXT1m" role="3clFbG">
                            <ref role="37wK5l" node="7p$XkWpXVsT" resolve="processAPI" />
                            <node concept="2GrUjf" id="7p$XkWpXT1n" role="37wK5m">
                              <ref role="2Gs0qQ" node="7p$XkWpXT1b" resolve="child" />
                            </node>
                            <node concept="37vLTw" id="7p$XkWpXT1o" role="37wK5m">
                              <ref role="3cqZAo" node="6W$F1Juk2gJ" resolve="apiintegrations" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7p$XkWpWtp9" role="3clFbw">
            <node concept="10Nm6u" id="7p$XkWpWtq$" role="3uHU7w" />
            <node concept="37vLTw" id="7p$XkWpWsDK" role="3uHU7B">
              <ref role="3cqZAo" node="6W$F1Juk4ST" resolve="doc" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7p$XkWq0d7k" role="3cqZAp">
          <node concept="37vLTw" id="7p$XkWq0e_n" role="3cqZAk">
            <ref role="3cqZAo" node="6W$F1Juk2gJ" resolve="apiintegrations" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6W$F1JujY1m" role="3clF46">
        <property role="TrG5h" value="xml" />
        <node concept="17QB3L" id="6W$F1JujY1l" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="7p$XkWpUqIv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7p$XkWpScKU" role="jymVt" />
    <node concept="3Tm1VV" id="7p$XkWpScIj" role="1B3o_S" />
    <node concept="3uibUv" id="7p$XkWpScJQ" role="EKbjA">
      <ref role="3uigEE" to="l0n8:6W$F1JvdoIo" resolve="XMLToNodesParser" />
    </node>
  </node>
  <node concept="13h7C7" id="7p$XkWq0nLI">
    <ref role="13h7C2" to="d2mr:7p$XkWq0nru" resolve="APIChatGPTConfig" />
    <node concept="13i0hz" id="3G8rFPcPBbV" role="13h7CS">
      <property role="TrG5h" value="createSerialiserIfAvailable" />
      <ref role="13i0hy" to="l0n8:3G8rFPcPscF" resolve="createSerialiserIfAvailable" />
      <node concept="3Tm1VV" id="3G8rFPcPBbW" role="1B3o_S" />
      <node concept="3clFbS" id="3G8rFPcPBbZ" role="3clF47">
        <node concept="3clFbF" id="3G8rFPcPBC_" role="3cqZAp">
          <node concept="2ShNRf" id="3G8rFPcPBCv" role="3clFbG">
            <node concept="1pGfFk" id="7p$XkWq0s7j" role="2ShVmc">
              <ref role="37wK5l" node="7p$XkWpUua2" resolve="APIIntegrationSerializer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3G8rFPcPBc0" role="3clF45">
        <ref role="3uigEE" to="l0n8:6W$F1JvjlMx" resolve="NodesToXMLSerialiser" />
      </node>
    </node>
    <node concept="13i0hz" id="6HJBXF$dn_k" role="13h7CS">
      <property role="TrG5h" value="getSolutionRootDir" />
      <node concept="3clFbS" id="5srnMPx2tqU" role="3clF47">
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
            <node concept="3cpWs6" id="5srnMPx3XgJ" role="3cqZAp">
              <node concept="2OqwBi" id="5srnMPx3Z4B" role="3cqZAk">
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
        <node concept="3cpWs6" id="6WnTJkDBq60" role="3cqZAp">
          <node concept="10Nm6u" id="5srnMPx2AmZ" role="3cqZAk" />
        </node>
      </node>
      <node concept="17QB3L" id="5srnMPx2znG" role="3clF45" />
      <node concept="3Tm1VV" id="5srnMPx2tqT" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="6HJBXF$d3Sl" role="13h7CS">
      <property role="TrG5h" value="tutorialFilePath" />
      <ref role="13i0hy" to="l0n8:6HJBXF$d3OM" resolve="tutorialFilePath" />
      <node concept="3Tm1VV" id="6HJBXF$d3Sm" role="1B3o_S" />
      <node concept="3clFbS" id="6HJBXF$d3Sp" role="3clF47">
        <node concept="3clFbF" id="6HJBXF$hQOg" role="3cqZAp">
          <node concept="3cpWs3" id="6HJBXF$dxi0" role="3clFbG">
            <node concept="Xl_RD" id="6HJBXF$dxi1" role="3uHU7w">
              <property role="Xl_RC" value="/tutorial/tutorial.txt" />
            </node>
            <node concept="BsUDl" id="6HJBXF$dxi2" role="3uHU7B">
              <ref role="37wK5l" node="6HJBXF$dn_k" resolve="getSolutionRootDir" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="6HJBXF$d3Sq" role="3clF45" />
    </node>
    <node concept="13i0hz" id="2Fbvgl_KaWn" role="13h7CS">
      <property role="TrG5h" value="preparedPrompts" />
      <ref role="13i0hy" to="l0n8:2Fbvgl_HTSA" resolve="preparedPrompts" />
      <node concept="3Tm1VV" id="2Fbvgl_KaWo" role="1B3o_S" />
      <node concept="3clFbS" id="2Fbvgl_KaWs" role="3clF47">
        <node concept="3cpWs8" id="2Fbvgl_Kdfc" role="3cqZAp">
          <node concept="3cpWsn" id="2Fbvgl_Kdff" role="3cpWs9">
            <property role="TrG5h" value="prompts" />
            <node concept="_YKpA" id="2Fbvgl_Kdfa" role="1tU5fm">
              <node concept="17QB3L" id="2Fbvgl_KfuV" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="2Fbvgl_Kmfx" role="33vP2m">
              <node concept="Tc6Ow" id="2Fbvgl_KjZC" role="2ShVmc">
                <node concept="17QB3L" id="2Fbvgl_KjZD" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Fbvgl_Kxyh" role="3cqZAp">
          <node concept="2OqwBi" id="2Fbvgl_Kycr" role="3clFbG">
            <node concept="37vLTw" id="2Fbvgl_Kxyf" role="2Oq$k0">
              <ref role="3cqZAo" node="2Fbvgl_Kdff" resolve="prompts" />
            </node>
            <node concept="TSZUe" id="2Fbvgl_K_5G" role="2OqNvi">
              <node concept="Xl_RD" id="2Fbvgl_KBnb" role="25WWJ7">
                <property role="Xl_RC" value="Create a questionnaire form about sleeplessness." />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Fbvgl_KDJd" role="3cqZAp">
          <node concept="2OqwBi" id="2Fbvgl_KDJe" role="3clFbG">
            <node concept="37vLTw" id="2Fbvgl_KDJf" role="2Oq$k0">
              <ref role="3cqZAo" node="2Fbvgl_Kdff" resolve="prompts" />
            </node>
            <node concept="TSZUe" id="2Fbvgl_KDJg" role="2OqNvi">
              <node concept="Xl_RD" id="2Fbvgl_KDJh" role="25WWJ7">
                <property role="Xl_RC" value="Add field about the expected sleep duration." />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Fbvgl_KDJ_" role="3cqZAp">
          <node concept="2OqwBi" id="2Fbvgl_KDJA" role="3clFbG">
            <node concept="37vLTw" id="2Fbvgl_KDJB" role="2Oq$k0">
              <ref role="3cqZAo" node="2Fbvgl_Kdff" resolve="prompts" />
            </node>
            <node concept="TSZUe" id="2Fbvgl_KDJC" role="2OqNvi">
              <node concept="Xl_RD" id="2Fbvgl_KDJD" role="25WWJ7">
                <property role="Xl_RC" value="Add a calculation sleepRatio that divides the hoursOfSleep by the expectedSleepDuration, multiplied by 100 to get to percent. Add another calculation  that returns true if the sleepRatio is below 60" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Fbvgl_KDK2" role="3cqZAp">
          <node concept="2OqwBi" id="2Fbvgl_KDK3" role="3clFbG">
            <node concept="37vLTw" id="2Fbvgl_KDK4" role="2Oq$k0">
              <ref role="3cqZAo" node="2Fbvgl_Kdff" resolve="prompts" />
            </node>
            <node concept="TSZUe" id="2Fbvgl_KDK5" role="2OqNvi">
              <node concept="Xl_RD" id="2Fbvgl_KDK6" role="25WWJ7">
                <property role="Xl_RC" value="Use the below60 calculation in the overallSleepQuality calculation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2Fbvgl_Kow6" role="3cqZAp">
          <node concept="37vLTw" id="2Fbvgl_Kt1k" role="3cqZAk">
            <ref role="3cqZAo" node="2Fbvgl_Kdff" resolve="prompts" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="2Fbvgl_KaWt" role="3clF45">
        <node concept="17QB3L" id="2Fbvgl_KaWu" role="_ZDj9" />
      </node>
    </node>
    <node concept="13hLZK" id="7p$XkWq0nLJ" role="13h7CW">
      <node concept="3clFbS" id="7p$XkWq0nLK" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7p$XkWq0oFT" role="13h7CS">
      <property role="TrG5h" value="createParser" />
      <ref role="13i0hy" to="l0n8:3G8rFPcPscB" resolve="createParser" />
      <node concept="3Tm1VV" id="7p$XkWq0oFU" role="1B3o_S" />
      <node concept="3clFbS" id="7p$XkWq0oFX" role="3clF47">
        <node concept="3clFbF" id="7p$XkWq0oG0" role="3cqZAp">
          <node concept="2ShNRf" id="7p$XkWq0oOB" role="3clFbG">
            <node concept="1pGfFk" id="7p$XkWq12i5" role="2ShVmc">
              <ref role="37wK5l" node="7p$XkWq0J0s" resolve="APIIntegratorXMLParser" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7p$XkWq0oFY" role="3clF45">
        <ref role="3uigEE" to="l0n8:6W$F1JvdoIo" resolve="XMLToNodesParser" />
      </node>
    </node>
  </node>
</model>

