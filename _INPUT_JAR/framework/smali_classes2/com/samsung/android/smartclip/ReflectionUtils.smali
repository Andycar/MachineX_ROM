.class Lcom/samsung/android/smartclip/ReflectionUtils;
.super Ljava/lang/Object;
.source "SmartClipDataCropperImpl.java"


# static fields
.field public static final MATCH_TYPE_CLASS_NAME_ONLY:I = 0x1

.field public static final MATCH_TYPE_FULL_NAME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ReflectionUtils"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpClassHierarchy(Ljava/lang/Object;)V
    .registers 9
    .param p0, "objToDump"    # Ljava/lang/Object;

    .prologue
    .line 1345
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 1347
    .local v4, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "ReflectionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-------- Class hierarchy dump start : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ----------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    move-object v0, v4

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_27
    if-eqz v0, :cond_73

    .line 1350
    const-string v5, "ReflectionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- Class name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 1353
    .local v2, "clz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4a
    array-length v5, v2

    if-ge v3, v5, :cond_6e

    .line 1354
    aget-object v1, v2, v3

    .line 1355
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "ReflectionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   + interfaces : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 1349
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6e
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_27

    .line 1358
    .end local v2    # "clz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "i":I
    :cond_73
    const-string v5, "ReflectionUtils"

    const-string v6, "-------- Class hierarchy dump finished ----------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    return-void
.end method

.method public static dumpObjectFields(Ljava/lang/Object;Ljava/lang/String;I)V
    .registers 12
    .param p0, "objToDump"    # Ljava/lang/Object;
    .param p1, "objName"    # Ljava/lang/String;
    .param p2, "maxDepth"    # I

    .prologue
    const/4 v3, 0x0

    .line 1203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1205
    .local v1, "objList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "ReflectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------- Field list dump start : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ----------"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    move-object v7, v3

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v0, "ReflectionUtils"

    const-string v2, "-------- Field list dump finished ----------"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return-void
.end method

.method protected static dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 40
    .param p0, "objToDump"    # Ljava/lang/Object;
    .param p2, "fieldNamePrefix"    # Ljava/lang/String;
    .param p3, "fieldInfo"    # Ljava/lang/reflect/Field;
    .param p4, "fullPath"    # Ljava/lang/String;
    .param p5, "depth"    # I
    .param p6, "maxDepth"    # I
    .param p7, "classTypeFilter"    # Ljava/lang/String;
    .param p8, "valueFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1213
    .local p1, "dumpedObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-nez p0, :cond_3

    .line 1322
    :cond_2
    :goto_2
    return-void

    .line 1217
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    .line 1218
    .local v17, "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    .line 1219
    .local v29, "objectTypeStr":Ljava/lang/String;
    const/16 v30, 0x0

    .line 1221
    .local v30, "objectValueStr":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/samsung/android/smartclip/ReflectionUtils;->findObjFromArrayList(Ljava/util/ArrayList;Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1c4

    const/4 v14, 0x1

    .line 1223
    .local v14, "alreadyDumpedObj":Z
    :goto_19
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2b

    const-string v4, "java.lang."

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1c7

    .line 1224
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1228
    :goto_2f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->isArray()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5d

    .line 1229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [arraySize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/samsung/android/smartclip/ReflectionUtils;->getArraySize(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1232
    :cond_5d
    invoke-static/range {p5 .. p5}, Lcom/samsung/android/smartclip/ReflectionUtils;->getIndentString(I)Ljava/lang/String;

    move-result-object v24

    .line 1234
    .local v24, "indent":Ljava/lang/String;
    if-eqz p3, :cond_1e4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    .line 1235
    .local v20, "fieldTypeStr":Ljava/lang/String;
    :goto_6b
    const-string v4, "[L"

    const-string v5, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 1237
    if-nez p2, :cond_79

    .line 1238
    const-string p2, ""

    .line 1240
    :cond_79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_1e8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_8a
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1242
    .local v19, "fieldName":Ljava/lang/String;
    if-nez p4, :cond_96

    .line 1243
    const-string p4, ""

    .line 1246
    :cond_96
    if-eqz p7, :cond_a3

    move-object/from16 v0, p7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_100

    :cond_a3
    if-eqz p8, :cond_b0

    move-object/from16 v0, p8

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_100

    .line 1249
    :cond_b0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c2

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1ec

    .line 1250
    :cond_c2
    const-string v4, "ReflectionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_100
    :goto_100
    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11f

    .line 1256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1258
    :cond_11f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/smartclip/ReflectionUtils;->extractClassNameFromFullClassPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1260
    if-nez v14, :cond_2

    .line 1261
    add-int/lit8 v4, p5, 0x1

    move/from16 v0, p6

    if-ge v4, v0, :cond_157

    .line 1262
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    :cond_157
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->isArray()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_266

    .line 1269
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/samsung/android/smartclip/ReflectionUtils;->getArraySize(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v16

    .line 1271
    .local v16, "arrayLength":I
    const/16 v12, 0x64

    .line 1272
    .local v12, "accessLimit":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_16a
    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_238

    const/16 v4, 0x64

    move/from16 v0, v22

    if-ge v0, v4, :cond_238

    .line 1273
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/samsung/android/smartclip/ReflectionUtils;->getArrayValueObject(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 1275
    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_1c1

    .line 1276
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_196

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c1

    .line 1277
    :cond_196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    add-int/lit8 v7, p5, 0x1

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lcom/samsung/android/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1272
    :cond_1c1
    add-int/lit8 v22, v22, 0x1

    goto :goto_16a

    .line 1221
    .end local v2    # "o":Ljava/lang/Object;
    .end local v12    # "accessLimit":I
    .end local v14    # "alreadyDumpedObj":Z
    .end local v16    # "arrayLength":I
    .end local v19    # "fieldName":Ljava/lang/String;
    .end local v20    # "fieldTypeStr":Ljava/lang/String;
    .end local v22    # "i":I
    .end local v24    # "indent":Ljava/lang/String;
    :cond_1c4
    const/4 v14, 0x0

    goto/16 :goto_19

    .line 1226
    .restart local v14    # "alreadyDumpedObj":Z
    :cond_1c7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_2f

    .line 1234
    .restart local v24    # "indent":Ljava/lang/String;
    :cond_1e4
    const-string v20, ""

    goto/16 :goto_6b

    .line 1240
    .restart local v20    # "fieldTypeStr":Ljava/lang/String;
    :cond_1e8
    const-string v4, ""

    goto/16 :goto_8a

    .line 1252
    .restart local v19    # "fieldName":Ljava/lang/String;
    :cond_1ec
    const-string v4, "ReflectionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " / "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_100

    .line 1281
    .restart local v12    # "accessLimit":I
    .restart local v16    # "arrayLength":I
    .restart local v22    # "i":I
    :cond_238
    const/16 v4, 0x64

    move/from16 v0, v16

    if-le v0, v4, :cond_2

    .line 1282
    const-string v4, "ReflectionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\t[Dumped until index "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x64

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1285
    .end local v12    # "accessLimit":I
    .end local v16    # "arrayLength":I
    .end local v22    # "i":I
    :cond_266
    invoke-static/range {v29 .. v29}, Lcom/samsung/android/smartclip/ReflectionUtils;->isPrimitiveDataType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "java.lang."

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1286
    :goto_276
    if-eqz v17, :cond_2

    .line 1287
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v21

    .line 1289
    .local v21, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v15, v21

    .local v15, "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v15

    move/from16 v28, v0

    .local v28, "len$":I
    const/16 v23, 0x0

    .local v23, "i$":I
    :goto_283
    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_2e6

    aget-object v6, v15, v23

    .line 1290
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .line 1294
    .local v3, "fieldObject":Ljava/lang/Object;
    :try_start_28c
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v13

    .line 1295
    .local v13, "accessable":Z
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1296
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1297
    invoke-virtual {v6, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_29d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28c .. :try_end_29d} :catch_2d4
    .catch Ljava/lang/IllegalAccessException; {:try_start_28c .. :try_end_29d} :catch_2da

    .line 1306
    .end local v3    # "fieldObject":Ljava/lang/Object;
    .end local v13    # "accessable":Z
    :goto_29d
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2e0

    const/16 v26, 0x1

    .line 1307
    .local v26, "isFinalField":Z
    :goto_2a7
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2e3

    const/16 v27, 0x1

    .line 1308
    .local v27, "isStaticField":Z
    :goto_2b1
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v25

    .line 1310
    .local v25, "isEnumField":Z
    if-nez v25, :cond_2d1

    if-eqz v27, :cond_2bb

    if-nez v26, :cond_2d1

    .line 1313
    :cond_2bb
    add-int/lit8 v4, p5, 0x1

    move/from16 v0, p6

    if-ge v4, v0, :cond_2d1

    .line 1314
    const/4 v5, 0x0

    add-int/lit8 v8, p5, 0x1

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v3 .. v11}, Lcom/samsung/android/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1289
    :cond_2d1
    add-int/lit8 v23, v23, 0x1

    goto :goto_283

    .line 1298
    .end local v25    # "isEnumField":Z
    .end local v26    # "isFinalField":Z
    .end local v27    # "isStaticField":Z
    :catch_2d4
    move-exception v18

    .line 1299
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    .line 1300
    .restart local v3    # "fieldObject":Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_29d

    .line 1301
    .end local v3    # "fieldObject":Ljava/lang/Object;
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2da
    move-exception v18

    .line 1302
    .local v18, "e":Ljava/lang/IllegalAccessException;
    const/4 v3, 0x0

    .line 1303
    .restart local v3    # "fieldObject":Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_29d

    .line 1306
    .end local v3    # "fieldObject":Ljava/lang/Object;
    .end local v18    # "e":Ljava/lang/IllegalAccessException;
    :cond_2e0
    const/16 v26, 0x0

    goto :goto_2a7

    .line 1307
    .restart local v26    # "isFinalField":Z
    :cond_2e3
    const/16 v27, 0x0

    goto :goto_2b1

    .line 1319
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v26    # "isFinalField":Z
    :cond_2e6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v17

    .line 1320
    goto :goto_276
.end method

.method public static dumpObjectFieldsWithClassTypeFilter(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13
    .param p0, "objToDump"    # Ljava/lang/Object;
    .param p1, "objName"    # Ljava/lang/String;
    .param p2, "maxDepth"    # I
    .param p3, "classTypeFilter"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1185
    .local v1, "objList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "ReflectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------- Field list dump start : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / Object type filter : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ----------"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    move-object v7, p3

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string v0, "ReflectionUtils"

    const-string v2, "-------- Field list dump finished ----------"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    return-void
.end method

.method public static dumpObjectFieldsWithValueFilter(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13
    .param p0, "objToDump"    # Ljava/lang/Object;
    .param p1, "objName"    # Ljava/lang/String;
    .param p2, "maxDepth"    # I
    .param p3, "valueFilter"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1195
    .local v1, "objList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "ReflectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------- Field list dump start : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / Value filter : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ----------"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    move-object v7, v3

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1197
    const-string v0, "ReflectionUtils"

    const-string v2, "-------- Field list dump finished ----------"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return-void
.end method

.method public static dumpObjectMethods(Ljava/lang/Object;)V
    .registers 11
    .param p0, "objToDump"    # Ljava/lang/Object;

    .prologue
    .line 1326
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1328
    .local v2, "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "ReflectionUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-------- Method list dump start : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ----------"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :goto_26
    if-eqz v2, :cond_66

    .line 1331
    const-string v7, "ReflectionUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " -- Methods of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " class --"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1334
    .local v6, "methods":[Ljava/lang/reflect/Method;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_51
    if-ge v3, v4, :cond_61

    aget-object v5, v0, v3

    .line 1335
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v1

    .line 1336
    .local v1, "curMethodName":Ljava/lang/String;
    const-string v7, "ReflectionUtils"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 1338
    .end local v1    # "curMethodName":Ljava/lang/String;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_61
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 1339
    goto :goto_26

    .line 1341
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    :cond_66
    const-string v7, "ReflectionUtils"

    const-string v8, "-------- Method list dump finished ----------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    return-void
.end method

.method protected static extractClassNameFromFullClassPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "classPath"    # Ljava/lang/String;

    .prologue
    .line 1175
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1176
    .local v0, "strs":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_c

    .line 1177
    const-string v1, ""

    .line 1179
    :goto_b
    return-object v1

    :cond_c
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_b
.end method

.method protected static findObjFromArrayList(Ljava/util/ArrayList;Ljava/lang/Object;)I
    .registers 5
    .param p1, "objToFind"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1158
    .local p0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1159
    .local v0, "arraySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 1160
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_e

    .line 1164
    .end local v1    # "i":I
    :goto_d
    return v1

    .line 1159
    .restart local v1    # "i":I
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1164
    :cond_11
    const/4 v1, -0x1

    goto :goto_d
.end method

.method protected static getArraySize(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "objectTypeStr"    # Ljava/lang/String;

    .prologue
    .line 1087
    const/4 v0, 0x0

    .line 1089
    .local v0, "arrayLength":I
    const-string v1, "[I"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1090
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [I

    array-length v0, p0

    .line 1110
    :goto_e
    return v0

    .line 1091
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_f
    const-string v1, "[Z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1092
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Z

    array-length v0, p0

    goto :goto_e

    .line 1093
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1d
    const-string v1, "[J"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1094
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [J

    array-length v0, p0

    goto :goto_e

    .line 1095
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2b
    const-string v1, "[B"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1096
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [B

    array-length v0, p0

    goto :goto_e

    .line 1097
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_39
    const-string v1, "[F"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1098
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [F

    array-length v0, p0

    goto :goto_e

    .line 1099
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_47
    const-string v1, "[C"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1100
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [C

    array-length v0, p0

    goto :goto_e

    .line 1101
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_55
    const-string v1, "[S"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1102
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [S

    array-length v0, p0

    goto :goto_e

    .line 1103
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_63
    const-string v1, "[D"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1104
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [D

    array-length v0, p0

    goto :goto_e

    .line 1105
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_71
    const-string v1, "[L"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1106
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    goto :goto_e

    .line 1108
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_7f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected static getArrayValueObject(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 8
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    .line 1115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1116
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1118
    .local v1, "dataTypeStr":Ljava/lang/String;
    const-string v2, "[I"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1119
    new-instance v2, Ljava/lang/Integer;

    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [I

    aget v3, p0, p1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 1137
    :goto_1b
    return-object v2

    .line 1120
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1c
    const-string v2, "[Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1121
    new-instance v2, Ljava/lang/Boolean;

    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Z

    aget-boolean v3, p0, p1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_1b

    .line 1122
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_30
    const-string v2, "[J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1123
    new-instance v2, Ljava/lang/Long;

    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [J

    aget-wide v4, p0, p1

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1b

    .line 1124
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_44
    const-string v2, "[B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1125
    new-instance v2, Ljava/lang/Byte;

    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [B

    aget-byte v3, p0, p1

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_1b

    .line 1126
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_58
    const-string v2, "[F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 1127
    new-instance v2, Ljava/lang/Float;

    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [F

    aget v3, p0, p1

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    goto :goto_1b

    .line 1128
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6c
    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 1129
    new-instance v2, Ljava/lang/Integer;

    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [C

    aget-char v3, p0, p1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1b

    .line 1130
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_80
    const-string v2, "[S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 1131
    new-instance v2, Ljava/lang/Short;

    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [S

    aget-short v3, p0, p1

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    goto :goto_1b

    .line 1132
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_94
    const-string v2, "[D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 1133
    new-instance v2, Ljava/lang/Double;

    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [D

    aget-wide v4, p0, p1

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_1b

    .line 1134
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_a9
    const-string v2, "[L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 1135
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    aget-object v2, p0, p1

    goto/16 :goto_1b

    .line 1137
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_b9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1b
.end method

.method public static getFieldObjectByFieldName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 14
    .param p0, "srcObj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 1458
    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move-object v5, v9

    .line 1484
    :goto_7
    return-object v5

    .line 1462
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 1463
    .local v3, "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_c
    if-eqz v3, :cond_3c

    .line 1464
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1466
    .local v6, "fields":[Ljava/lang/reflect/Field;
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_15
    if-ge v7, v8, :cond_37

    aget-object v4, v1, v7

    .line 1467
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1468
    .local v2, "curFieldName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v11, :cond_34

    .line 1471
    :try_start_23
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 1472
    .local v0, "accessable":Z
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1473
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1474
    .local v5, "fieldObject":Ljava/lang/Object;
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_32} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_32} :catch_3e

    goto :goto_7

    .line 1477
    .end local v0    # "accessable":Z
    .end local v5    # "fieldObject":Ljava/lang/Object;
    :catch_33
    move-exception v10

    .line 1466
    :cond_34
    :goto_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 1482
    .end local v2    # "curFieldName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_37
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 1483
    goto :goto_c

    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_3c
    move-object v5, v9

    .line 1484
    goto :goto_7

    .line 1478
    .restart local v1    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v2    # "curFieldName":Ljava/lang/String;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v6    # "fields":[Ljava/lang/reflect/Field;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    :catch_3e
    move-exception v10

    goto :goto_34
.end method

.method protected static getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;ILjava/util/ArrayList;IIZ)V
    .registers 32
    .param p0, "srcObj"    # Ljava/lang/Object;
    .param p1, "matchType"    # I
    .param p2, "fieldObjectType"    # Ljava/lang/String;
    .param p3, "maxSearchResultCount"    # I
    .param p5, "curDepth"    # I
    .param p6, "maxDepth"    # I
    .param p7, "skipWellKnownClass"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 1362
    .local p4, "searchResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p0, :cond_a

    if-eqz p2, :cond_a

    move/from16 v0, p5

    move/from16 v1, p6

    if-ne v0, v1, :cond_b

    .line 1437
    :cond_a
    return-void

    .line 1366
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 1368
    .local v14, "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_f
    if-eqz v14, :cond_a

    .line 1369
    const/4 v3, 0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_2e

    .line 1370
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1371
    .local v12, "className":Ljava/lang/String;
    if-eqz v12, :cond_2e

    .line 1372
    const-string v3, "android.view."

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    const-string v3, "java."

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    .line 1378
    .end local v12    # "className":Ljava/lang/String;
    :cond_2e
    invoke-virtual {v14}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v17

    .line 1380
    .local v17, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v11, v17

    .local v11, "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v11

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    move/from16 v20, v19

    .end local v19    # "i$":I
    .local v20, "i$":I
    :goto_3b
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_cc

    aget-object v15, v11, v20

    .line 1381
    .local v15, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    .line 1382
    .local v13, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1386
    .local v16, "fieldType":Ljava/lang/String;
    :try_start_4b
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v10

    .line 1387
    .local v10, "accessable":Z
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1388
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1389
    .local v2, "memberObj":Ljava/lang/Object;
    invoke-virtual {v15, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1391
    if-eqz v2, :cond_97

    .line 1392
    const/16 v22, 0x0

    .line 1394
    .local v22, "matched":Z
    packed-switch p1, :pswitch_data_d4

    .line 1401
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 1405
    :goto_6b
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_b8

    .line 1406
    const/16 v18, 0x0

    .line 1409
    .local v18, "haveSameObject":Z
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .end local v20    # "i$":I
    .local v19, "i$":Ljava/util/Iterator;
    :cond_76
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    .line 1410
    .local v23, "o":Ljava/lang/Object;
    move-object/from16 v0, v23

    if-ne v0, v2, :cond_76

    .line 1411
    const/16 v18, 0x1

    .line 1416
    .end local v23    # "o":Ljava/lang/Object;
    :cond_86
    if-nez v18, :cond_8d

    .line 1418
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    .end local v18    # "haveSameObject":Z
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_8d
    :goto_8d
    if-lez p3, :cond_97

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p3

    if-ge v3, v0, :cond_a

    .line 1380
    .end local v2    # "memberObj":Ljava/lang/Object;
    .end local v10    # "accessable":Z
    .end local v22    # "matched":Z
    :cond_97
    :goto_97
    add-int/lit8 v19, v20, 0x1

    .local v19, "i$":I
    move/from16 v20, v19

    .end local v19    # "i$":I
    .restart local v20    # "i$":I
    goto :goto_3b

    .line 1396
    .restart local v2    # "memberObj":Ljava/lang/Object;
    .restart local v10    # "accessable":Z
    .restart local v22    # "matched":Z
    :pswitch_9c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    .line 1397
    goto :goto_6b

    .line 1421
    :cond_b8
    add-int/lit8 v7, p5, 0x1

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;ILjava/util/ArrayList;IIZ)V
    :try_end_c9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_c9} :catch_ca
    .catch Ljava/lang/IllegalAccessException; {:try_start_4b .. :try_end_c9} :catch_d2

    goto :goto_8d

    .line 1429
    .end local v2    # "memberObj":Ljava/lang/Object;
    .end local v10    # "accessable":Z
    .end local v20    # "i$":I
    .end local v22    # "matched":Z
    :catch_ca
    move-exception v3

    goto :goto_97

    .line 1434
    .end local v13    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "fieldType":Ljava/lang/String;
    .restart local v20    # "i$":I
    :cond_cc
    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v14

    .line 1435
    goto/16 :goto_f

    .line 1430
    .end local v20    # "i$":I
    .restart local v13    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v15    # "field":Ljava/lang/reflect/Field;
    .restart local v16    # "fieldType":Ljava/lang/String;
    :catch_d2
    move-exception v3

    goto :goto_97

    .line 1394
    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_9c
    .end packed-switch
.end method

.method public static getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IIZ)[Ljava/lang/Object;
    .registers 14
    .param p0, "srcObj"    # Ljava/lang/Object;
    .param p1, "matchType"    # I
    .param p2, "fieldObjectType"    # Ljava/lang/String;
    .param p3, "maxSearchResultCount"    # I
    .param p4, "maxDepth"    # I
    .param p5, "skipWellKnownClass"    # Z

    .prologue
    .line 1445
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1447
    .local v4, "searchResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p0, :cond_9

    if-nez p2, :cond_e

    .line 1448
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1453
    :goto_d
    return-object v0

    .line 1451
    :cond_e
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;ILjava/util/ArrayList;IIZ)V

    .line 1453
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_d
.end method

.method public static getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IZ)[Ljava/lang/Object;
    .registers 11
    .param p0, "srcObj"    # Ljava/lang/Object;
    .param p1, "matchType"    # I
    .param p2, "fieldObjectType"    # Ljava/lang/String;
    .param p3, "maxSearchResultCount"    # I
    .param p4, "skipWellKnownClass"    # Z

    .prologue
    .line 1441
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IIZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected static getIndentString(I)Ljava/lang/String;
    .registers 5
    .param p0, "depth"    # I

    .prologue
    .line 1168
    const-string v1, ""

    .line 1169
    .local v1, "indent":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, p0, :cond_1b

    .line 1170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1169
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1171
    :cond_1b
    return-object v1
.end method

.method protected static isPrimitiveDataType(Ljava/lang/String;)Z
    .registers 3
    .param p0, "dataType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1142
    const-string/jumbo v1, "short"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_42

    const-string v1, "int"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_42

    const-string v1, "long"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_42

    const-string v1, "char"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_42

    const-string v1, "byte"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_42

    const-string v1, "float"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_42

    const-string v1, "double"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_42

    const-string v1, "boolean"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_43

    .line 1153
    :cond_42
    :goto_42
    return v0

    :cond_43
    const/4 v0, 0x0

    goto :goto_42
.end method
