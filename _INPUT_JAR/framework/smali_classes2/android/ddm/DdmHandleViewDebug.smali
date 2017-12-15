.class public Landroid/ddm/DdmHandleViewDebug;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleViewDebug.java"


# static fields
.field public static final CHUNK_VUGL:I

.field private static final CHUNK_VULW:I

.field private static final CHUNK_VUOP:I

.field private static final CHUNK_VURT:I

.field private static final ERR_EXCEPTION:I = -0x3

.field private static final ERR_INVALID_OP:I = -0x1

.field private static final ERR_INVALID_PARAM:I = -0x2

.field private static final TAG:Ljava/lang/String; = "DdmViewDebug"

.field private static final VUOP_CAPTURE_VIEW:I = 0x1

.field private static final VUOP_DUMP_DISPLAYLIST:I = 0x2

.field private static final VUOP_INVOKE_VIEW_METHOD:I = 0x4

.field private static final VUOP_PROFILE_VIEW:I = 0x3

.field private static final VUOP_SET_LAYOUT_PARAMETER:I = 0x5

.field private static final VURT_CAPTURE_LAYERS:I = 0x2

.field private static final VURT_DUMP_HIERARCHY:I = 0x1

.field private static final VURT_DUMP_THEME:I = 0x3

.field private static final sInstance:Landroid/ddm/DdmHandleViewDebug;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-string v0, "VUGL"

    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUGL:I

    .line 48
    const-string v0, "VULW"

    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    .line 51
    const-string v0, "VURT"

    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    .line 66
    const-string v0, "VUOP"

    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    .line 94
    new-instance v0, Landroid/ddm/DdmHandleViewDebug;

    invoke-direct {v0}, Landroid/ddm/DdmHandleViewDebug;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private captureLayers(Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 10
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 247
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x400

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 248
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 250
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_c
    invoke-static {p1, v2}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_20
    .catchall {:try_start_c .. :try_end_f} :catchall_43

    .line 256
    :try_start_f
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_48

    .line 262
    :goto_12
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 263
    .local v1, "data":[B
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    const/4 v6, 0x0

    array-length v7, v1

    invoke-direct {v4, v5, v1, v6, v7}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .end local v1    # "data":[B
    :goto_1f
    return-object v4

    .line 251
    :catch_20
    move-exception v3

    .line 252
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x1

    :try_start_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected error while obtaining view hierarchy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    :try_end_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_43

    move-result-object v4

    .line 256
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_1f

    .line 257
    :catch_41
    move-exception v5

    goto :goto_1f

    .line 255
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_43
    move-exception v4

    .line 256
    :try_start_44
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_4a

    .line 259
    :goto_47
    throw v4

    .line 257
    :catch_48
    move-exception v4

    goto :goto_12

    :catch_4a
    move-exception v5

    goto :goto_47
.end method

.method private captureView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 10
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    .line 283
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 285
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    :try_start_7
    invoke-static {p1, v0, p2}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_18

    .line 291
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 292
    .local v1, "data":[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v4, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    const/4 v5, 0x0

    array-length v6, v1

    invoke-direct {v3, v4, v1, v5, v6}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .end local v1    # "data":[B
    :goto_17
    return-object v3

    .line 286
    :catch_18
    move-exception v2

    .line 287
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected error while capturing view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v3

    goto :goto_17
.end method

.method private dumpDisplayLists(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 4
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    .line 297
    new-instance v0, Landroid/ddm/DdmHandleViewDebug$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/ddm/DdmHandleViewDebug$1;-><init>(Landroid/ddm/DdmHandleViewDebug;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method private dumpHierarchy(Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 12
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 230
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    if-lez v7, :cond_27

    move v4, v5

    .line 231
    .local v4, "skipChildren":Z
    :goto_9
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    if-lez v7, :cond_29

    move v3, v5

    .line 233
    .local v3, "includeProperties":Z
    :goto_10
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x400

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 235
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    :try_start_17
    invoke-static {p1, v4, v3, v0}, Landroid/view/ViewDebug;->dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_2b

    .line 241
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 242
    .local v1, "data":[B
    new-instance v5, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v7, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    array-length v8, v1

    invoke-direct {v5, v7, v1, v6, v8}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .end local v1    # "data":[B
    :goto_26
    return-object v5

    .end local v0    # "b":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "includeProperties":Z
    .end local v4    # "skipChildren":Z
    :cond_27
    move v4, v6

    .line 230
    goto :goto_9

    .restart local v4    # "skipChildren":Z
    :cond_29
    move v3, v6

    .line 231
    goto :goto_10

    .line 236
    .restart local v0    # "b":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "includeProperties":Z
    :catch_2b
    move-exception v2

    .line 237
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected error while obtaining view hierarchy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_26
.end method

.method private dumpTheme(Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 9
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 270
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 272
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    :try_start_7
    invoke-static {p1, v0}, Landroid/view/ViewDebug;->dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_18

    .line 278
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 279
    .local v1, "data":[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v4, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    const/4 v5, 0x0

    array-length v6, v1

    invoke-direct {v3, v4, v1, v5, v6}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .end local v1    # "data":[B
    :goto_17
    return-object v3

    .line 273
    :catch_18
    move-exception v2

    .line 274
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected error while dumping the theme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v3

    goto :goto_17
.end method

.method private getRootView(Ljava/nio/ByteBuffer;)Landroid/view/View;
    .registers 6
    .param p1, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 198
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 199
    .local v2, "viewRootNameLength":I
    invoke-static {p1, v2}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "viewRootName":Ljava/lang/String;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/WindowManagerGlobal;->getRootView(Ljava/lang/String;)Landroid/view/View;
    :try_end_f
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v3

    .line 202
    .end local v1    # "viewRootName":Ljava/lang/String;
    .end local v2    # "viewRootNameLength":I
    :goto_10
    return-object v3

    .line 201
    :catch_11
    move-exception v0

    .line 202
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    const/4 v3, 0x0

    goto :goto_10
.end method

.method private getTargetView(Landroid/view/View;Ljava/nio/ByteBuffer;)Landroid/view/View;
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 211
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 212
    .local v1, "viewLength":I
    invoke-static {p2, v1}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_7} :catch_d

    move-result-object v2

    .line 217
    .local v2, "viewName":Ljava/lang/String;
    invoke-static {p1, v2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .end local v1    # "viewLength":I
    .end local v2    # "viewName":Ljava/lang/String;
    :goto_c
    return-object v3

    .line 213
    :catch_d
    move-exception v0

    .line 214
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    const/4 v3, 0x0

    goto :goto_c
.end method

.method private handleOpenGlTrace(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 4
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 169
    invoke-static {p1}, Landroid/ddm/DdmHandleViewDebug;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 170
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->setTracingLevel(I)V

    .line 171
    const/4 v1, 0x0

    return-object v1
.end method

.method private invokeViewMethod(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 19
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 323
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 324
    .local v7, "l":I
    move-object/from16 v0, p3

    invoke-static {v0, v7}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v9

    .line 328
    .local v9, "methodName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v12

    if-nez v12, :cond_26

    .line 329
    const/4 v12, 0x0

    new-array v2, v12, [Ljava/lang/Class;

    .line 330
    .local v2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v12, 0x0

    new-array v3, v12, [Ljava/lang/Object;

    .line 380
    .local v3, "args":[Ljava/lang/Object;
    :cond_16
    const/4 v8, 0x0

    .line 382
    .local v8, "method":Ljava/lang/reflect/Method;
    :try_start_17
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12, v9, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_1e} :catch_f8

    move-result-object v8

    .line 390
    :try_start_1f
    move-object/from16 v0, p2

    invoke-static {v0, v8, v3}, Landroid/view/ViewDebug;->invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_133

    .line 400
    const/4 v12, 0x0

    .end local v8    # "method":Ljava/lang/reflect/Method;
    :goto_25
    return-object v12

    .line 332
    .end local v2    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "args":[Ljava/lang/Object;
    :cond_26
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 334
    .local v11, "nArgs":I
    new-array v2, v11, [Ljava/lang/Class;

    .line 335
    .restart local v2    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v3, v11, [Ljava/lang/Object;

    .line 337
    .restart local v3    # "args":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2f
    if-ge v6, v11, :cond_16

    .line 338
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v4

    .line 339
    .local v4, "c":C
    sparse-switch v4, :sswitch_data_16e

    .line 373
    const-string v12, "DdmViewDebug"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "arg "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", unrecognized type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v12, -0x2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unsupported parameter type ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") to invoke view method."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v12

    goto :goto_25

    .line 341
    :sswitch_79
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v2, v6

    .line 342
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    if-nez v12, :cond_8d

    const/4 v12, 0x0

    :goto_84
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v3, v6

    .line 337
    :goto_8a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 342
    :cond_8d
    const/4 v12, 0x1

    goto :goto_84

    .line 345
    :sswitch_8f
    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v12, v2, v6

    .line 346
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v3, v6

    goto :goto_8a

    .line 349
    :sswitch_9e
    sget-object v12, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v12, v2, v6

    .line 350
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    aput-object v12, v3, v6

    goto :goto_8a

    .line 353
    :sswitch_ad
    sget-object v12, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v12, v2, v6

    .line 354
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    aput-object v12, v3, v6

    goto :goto_8a

    .line 357
    :sswitch_bc
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v2, v6

    .line 358
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v6

    goto :goto_8a

    .line 361
    :sswitch_cb
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v2, v6

    .line 362
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v3, v6

    goto :goto_8a

    .line 365
    :sswitch_da
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v12, v2, v6

    .line 366
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v3, v6

    goto :goto_8a

    .line 369
    :sswitch_e9
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v12, v2, v6

    .line 370
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v3, v6

    goto :goto_8a

    .line 383
    .end local v4    # "c":C
    .end local v6    # "i":I
    .end local v11    # "nArgs":I
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    :catch_f8
    move-exception v5

    .line 384
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    const-string v12, "DdmViewDebug"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No such method: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v12, -0x2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No such method: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v12

    goto/16 :goto_25

    .line 391
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :catch_133
    move-exception v5

    .line 392
    .local v5, "e":Ljava/lang/Exception;
    const-string v12, "DdmViewDebug"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception while invoking method: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 394
    .local v10, "msg":Ljava/lang/String;
    if-nez v10, :cond_166

    .line 395
    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 397
    :cond_166
    const/4 v12, -0x3

    invoke-static {v12, v10}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v12

    goto/16 :goto_25

    .line 339
    nop

    :sswitch_data_16e
    .sparse-switch
        0x42 -> :sswitch_8f
        0x43 -> :sswitch_9e
        0x44 -> :sswitch_e9
        0x46 -> :sswitch_da
        0x49 -> :sswitch_bc
        0x4a -> :sswitch_cb
        0x53 -> :sswitch_ad
        0x5a -> :sswitch_79
    .end sparse-switch
.end method

.method private listWindows()Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 10

    .prologue
    .line 176
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/WindowManagerGlobal;->getViewRootNames()[Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, "windowNames":[Ljava/lang/String;
    const/4 v5, 0x4

    .line 179
    .local v5, "responseLength":I
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_c
    if-ge v1, v2, :cond_1c

    aget-object v3, v0, v1

    .line 180
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x4

    .line 181
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 184
    .end local v3    # "name":Ljava/lang/String;
    :cond_1c
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 185
    .local v4, "out":Ljava/nio/ByteBuffer;
    sget-object v7, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 187
    array-length v7, v6

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 188
    move-object v0, v6

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v2, :cond_3d

    aget-object v3, v0, v1

    .line 189
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 190
    invoke-static {v4, v3}, Landroid/ddm/DdmHandleViewDebug;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 193
    .end local v3    # "name":Ljava/lang/String;
    :cond_3d
    new-instance v7, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v8, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    invoke-direct {v7, v8, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v7
.end method

.method private profileView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 11
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    const v5, 0x8000

    .line 420
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 421
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 423
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_12
    invoke-static {p2, v1}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_26
    .catchall {:try_start_12 .. :try_end_15} :catchall_49

    .line 428
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_4e

    .line 434
    :goto_18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 435
    .local v2, "data":[B
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    const/4 v6, 0x0

    array-length v7, v2

    invoke-direct {v4, v5, v2, v6, v7}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .end local v2    # "data":[B
    :goto_25
    return-object v4

    .line 424
    :catch_26
    move-exception v3

    .line 425
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x1

    :try_start_28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected error while profiling view: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_49

    move-result-object v4

    .line 428
    :try_start_43
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_25

    .line 429
    :catch_47
    move-exception v5

    goto :goto_25

    .line 427
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_49
    move-exception v4

    .line 428
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_50

    .line 431
    :goto_4d
    throw v4

    .line 429
    :catch_4e
    move-exception v4

    goto :goto_18

    :catch_50
    move-exception v5

    goto :goto_4d
.end method

.method public static register()V
    .registers 2

    .prologue
    .line 100
    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUGL:I

    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 101
    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 102
    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 103
    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 104
    return-void
.end method

.method private setLayoutParameter(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 11
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 404
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 405
    .local v1, "l":I
    invoke-static {p3, v1}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "param":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 408
    .local v3, "value":I
    :try_start_c
    invoke-static {p2, v2, v3}, Landroid/view/ViewDebug;->setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_11

    .line 415
    const/4 v4, 0x0

    :goto_10
    return-object v4

    .line 409
    :catch_11
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DdmViewDebug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception setting layout parameter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v4, -0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error accessing field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v4

    goto :goto_10
.end method


# virtual methods
.method public connected()V
    .registers 1

    .prologue
    .line 108
    return-void
.end method

.method public disconnected()V
    .registers 1

    .prologue
    .line 112
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 10
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 116
    iget v4, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 118
    .local v4, "type":I
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUGL:I

    if-ne v4, v5, :cond_d

    .line 119
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleViewDebug;->handleOpenGlTrace(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    .line 161
    :goto_c
    return-object v5

    .line 120
    :cond_d
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    if-ne v4, v5, :cond_16

    .line 121
    invoke-direct {p0}, Landroid/ddm/DdmHandleViewDebug;->listWindows()Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_c

    .line 124
    :cond_16
    invoke-static {p1}, Landroid/ddm/DdmHandleViewDebug;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 125
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 127
    .local v1, "op":I
    invoke-direct {p0, v0}, Landroid/ddm/DdmHandleViewDebug;->getRootView(Ljava/nio/ByteBuffer;)Landroid/view/View;

    move-result-object v2

    .line 128
    .local v2, "rootView":Landroid/view/View;
    if-nez v2, :cond_2b

    .line 129
    const-string v5, "Invalid View Root"

    invoke-static {v6, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_c

    .line 132
    :cond_2b
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    if-ne v4, v5, :cond_5f

    .line 133
    const/4 v5, 0x1

    if-ne v1, v5, :cond_37

    .line 134
    invoke-direct {p0, v2, v0}, Landroid/ddm/DdmHandleViewDebug;->dumpHierarchy(Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_c

    .line 135
    :cond_37
    const/4 v5, 0x2

    if-ne v1, v5, :cond_3f

    .line 136
    invoke-direct {p0, v2}, Landroid/ddm/DdmHandleViewDebug;->captureLayers(Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_c

    .line 137
    :cond_3f
    const/4 v5, 0x3

    if-ne v1, v5, :cond_47

    .line 138
    invoke-direct {p0, v2}, Landroid/ddm/DdmHandleViewDebug;->dumpTheme(Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_c

    .line 140
    :cond_47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown view root operation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_c

    .line 143
    :cond_5f
    invoke-direct {p0, v2, v0}, Landroid/ddm/DdmHandleViewDebug;->getTargetView(Landroid/view/View;Ljava/nio/ByteBuffer;)Landroid/view/View;

    move-result-object v3

    .line 144
    .local v3, "targetView":Landroid/view/View;
    if-nez v3, :cond_6c

    .line 145
    const-string v5, "Invalid target view"

    invoke-static {v6, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_c

    .line 148
    :cond_6c
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    if-ne v4, v5, :cond_a9

    .line 149
    packed-switch v1, :pswitch_data_c6

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown view operation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_c

    .line 151
    :pswitch_8b
    invoke-direct {p0, v2, v3}, Landroid/ddm/DdmHandleViewDebug;->captureView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto/16 :goto_c

    .line 153
    :pswitch_91
    invoke-direct {p0, v2, v3}, Landroid/ddm/DdmHandleViewDebug;->dumpDisplayLists(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto/16 :goto_c

    .line 155
    :pswitch_97
    invoke-direct {p0, v2, v3}, Landroid/ddm/DdmHandleViewDebug;->profileView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto/16 :goto_c

    .line 157
    :pswitch_9d
    invoke-direct {p0, v2, v3, v0}, Landroid/ddm/DdmHandleViewDebug;->invokeViewMethod(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto/16 :goto_c

    .line 159
    :pswitch_a3
    invoke-direct {p0, v2, v3, v0}, Landroid/ddm/DdmHandleViewDebug;->setLayoutParameter(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto/16 :goto_c

    .line 164
    :cond_a9
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown packet "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 149
    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_91
        :pswitch_97
        :pswitch_9d
        :pswitch_a3
    .end packed-switch
.end method
