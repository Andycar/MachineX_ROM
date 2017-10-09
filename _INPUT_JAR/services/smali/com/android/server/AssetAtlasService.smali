.class public Lcom/android/server/AssetAtlasService;
.super Landroid/view/IAssetAtlas$Stub;
.source "AssetAtlasService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AssetAtlasService$ComputeWorker;,
        Lcom/android/server/AssetAtlasService$WorkerResult;,
        Lcom/android/server/AssetAtlasService$Configuration;,
        Lcom/android/server/AssetAtlasService$Renderer;
    }
.end annotation


# static fields
.field public static final ASSET_ATLAS_SERVICE:Ljava/lang/String; = "assetatlas"

.field private static final ATLAS_MAP_ENTRY_FIELD_COUNT:I = 0x4

.field private static final DEBUG_ATLAS:Z = true

.field private static final DEBUG_ATLAS_TEXTURE:Z = false

.field private static final GRAPHIC_BUFFER_USAGE:I = 0x100

.field private static final LOG_TAG:Ljava/lang/String; = "Atlas"

.field private static final MAX_SIZE:I = 0x800

.field private static final MIN_SIZE:I = 0x300

.field private static final PACKING_THRESHOLD:F = 0.8f

.field private static final STEP:I = 0x40


# instance fields
.field private mAtlasMap:[J

.field private final mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBuffer:Landroid/view/GraphicBuffer;

.field private final mContext:Landroid/content/Context;

.field private final mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/view/IAssetAtlas$Stub;-><init>()V

    .line 104
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v7, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    iput-object p1, p0, Lcom/android/server/AssetAtlasService;->mContext:Landroid/content/Context;

    .line 132
    invoke-static {p1}, Lcom/android/server/AssetAtlasService;->queryVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AssetAtlasService;->mVersionName:Ljava/lang/String;

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    const/16 v7, 0x12c

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v1, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v6, 0x0

    .line 138
    .local v6, "totalPixelCount":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 139
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v3

    .line 141
    .local v3, "drawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 142
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    if-ge v4, v2, :cond_4e

    .line 143
    invoke-virtual {v3, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable$ConstantState;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v7, v8, :cond_4b

    .line 145
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 142
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 152
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4e
    new-instance v7, Lcom/android/server/AssetAtlasService$1;

    invoke-direct {v7, p0}, Lcom/android/server/AssetAtlasService$1;-><init>(Lcom/android/server/AssetAtlasService;)V

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/server/AssetAtlasService$Renderer;

    invoke-direct {v8, p0, v1, v6}, Lcom/android/server/AssetAtlasService$Renderer;-><init>(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;I)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AssetAtlasService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AssetAtlasService;->chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/AssetAtlasService;Landroid/view/GraphicBuffer;)Landroid/view/GraphicBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;
    .param p1, "x1"    # Landroid/view/GraphicBuffer;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/AssetAtlasService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/AssetAtlasService;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasMap:[J

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/AssetAtlasService;[J)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;
    .param p1, "x1"    # [J

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/server/AssetAtlasService;->mAtlasMap:[J

    return-object p1
.end method

.method static synthetic access$500()V
    .registers 0

    .prologue
    .line 63
    invoke-static {}, Lcom/android/server/AssetAtlasService;->deleteDataFile()V

    return-void
.end method

.method static synthetic access$600(Landroid/view/GraphicBuffer;J)Z
    .registers 4
    .param p0, "x0"    # Landroid/view/GraphicBuffer;
    .param p1, "x1"    # J

    .prologue
    .line 63
    invoke-static {p0, p1, p2}, Lcom/android/server/AssetAtlasService;->nUploadAtlas(Landroid/view/GraphicBuffer;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/graphics/Canvas;II)J
    .registers 5
    .param p0, "x0"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 63
    invoke-static {p0, p1, p2}, Lcom/android/server/AssetAtlasService;->nAcquireAtlasCanvas(Landroid/graphics/Canvas;II)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Landroid/graphics/Canvas;J)V
    .registers 4
    .param p0, "x0"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # J

    .prologue
    .line 63
    invoke-static {p0, p1, p2}, Lcom/android/server/AssetAtlasService;->nReleaseAtlasCanvas(Landroid/graphics/Canvas;J)V

    return-void
.end method

.method private checkBuildIdentifier(Ljava/io/BufferedReader;Ljava/lang/String;)Z
    .registers 6
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "versionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-direct {p0, p2}, Lcom/android/server/AssetAtlasService;->getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "deviceBuildId":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "buildId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .registers 7
    .param p2, "pixelCount"    # I
    .param p3, "versionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/AssetAtlasService$Configuration;"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 470
    .local v0, "config":Lcom/android/server/AssetAtlasService$Configuration;
    invoke-static {}, Lcom/android/server/AssetAtlasService;->getDataFile()Ljava/io/File;

    move-result-object v1

    .line 471
    .local v1, "dataFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 472
    invoke-direct {p0, v1, p3}, Lcom/android/server/AssetAtlasService;->readConfiguration(Ljava/io/File;Ljava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v0

    .line 475
    :cond_f
    if-nez v0, :cond_1a

    .line 476
    invoke-static {p1, p2}, Lcom/android/server/AssetAtlasService;->computeBestConfiguration(Ljava/util/ArrayList;I)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_1a

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/AssetAtlasService;->writeConfiguration(Lcom/android/server/AssetAtlasService$Configuration;Ljava/io/File;Ljava/lang/String;)V

    .line 480
    :cond_1a
    return-object v0
.end method

.method private static computeBestConfiguration(Ljava/util/ArrayList;I)Lcom/android/server/AssetAtlasService$Configuration;
    .registers 24
    .param p1, "pixelCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)",
            "Lcom/android/server/AssetAtlasService$Configuration;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const-string v8, "Atlas"

    const-string v9, "Computing best atlas configuration..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 395
    .local v12, "begin":J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 398
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/AssetAtlasService$WorkerResult;>;"
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v14

    .line 399
    .local v14, "cpuCount":I
    const/4 v8, 0x1

    if-ne v14, v8, :cond_90

    .line 400
    new-instance v4, Lcom/android/server/AssetAtlasService$ComputeWorker;

    const/16 v5, 0x300

    const/16 v6, 0x800

    const/16 v7, 0x40

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move/from16 v9, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/AssetAtlasService$ComputeWorker;-><init>(IIILjava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4}, Lcom/android/server/AssetAtlasService$ComputeWorker;->run()V

    .line 423
    :goto_32
    new-instance v8, Lcom/android/server/AssetAtlasService$2;

    invoke-direct {v8}, Lcom/android/server/AssetAtlasService$2;-><init>()V

    invoke-static {v10, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 433
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v12

    long-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float v15, v8, v9

    .line 434
    .local v15, "delay":F
    const-string v8, "Atlas"

    const-string v9, "Found best atlas configuration in %.2fs"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v8, 0x0

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/AssetAtlasService$WorkerResult;

    .line 438
    .local v18, "result":Lcom/android/server/AssetAtlasService$WorkerResult;
    new-instance v8, Lcom/android/server/AssetAtlasService$Configuration;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->type:Landroid/graphics/Atlas$Type;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->width:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->height:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->count:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v8, v9, v0, v1, v2}, Lcom/android/server/AssetAtlasService$Configuration;-><init>(Landroid/graphics/Atlas$Type;III)V

    .end local v15    # "delay":F
    .end local v18    # "result":Lcom/android/server/AssetAtlasService$WorkerResult;
    :goto_8f
    return-object v8

    .line 402
    :cond_90
    const/16 v5, 0x300

    .line 403
    .local v5, "start":I
    add-int/lit8 v8, v14, -0x1

    mul-int/lit8 v8, v8, 0x40

    rsub-int v6, v8, 0x800

    .line 404
    .local v6, "end":I
    mul-int/lit8 v7, v14, 0x40

    .line 406
    .local v7, "step":I
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v11, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 408
    .local v11, "signal":Ljava/util/concurrent/CountDownLatch;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_a1
    move/from16 v0, v17

    if-ge v0, v14, :cond_d6

    .line 409
    new-instance v4, Lcom/android/server/AssetAtlasService$ComputeWorker;

    move-object/from16 v8, p0

    move/from16 v9, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/AssetAtlasService$ComputeWorker;-><init>(IIILjava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    .line 411
    .local v4, "worker":Lcom/android/server/AssetAtlasService$ComputeWorker;
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Atlas Worker #"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v19, v17, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 408
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v5, v5, 0x40

    add-int/lit8 v6, v6, 0x40

    goto :goto_a1

    .line 415
    .end local v4    # "worker":Lcom/android/server/AssetAtlasService$ComputeWorker;
    :cond_d6
    const-wide/16 v8, 0xa

    :try_start_d8
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v19

    invoke-virtual {v11, v8, v9, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_df
    .catch Ljava/lang/InterruptedException; {:try_start_d8 .. :try_end_df} :catch_e1

    goto/16 :goto_32

    .line 416
    :catch_e1
    move-exception v16

    .line 417
    .local v16, "e":Ljava/lang/InterruptedException;
    const-string v8, "Atlas"

    const-string v9, "Could not complete configuration computation"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v8, 0x0

    goto :goto_8f
.end method

.method private static deleteDataFile()V
    .registers 2

    .prologue
    .line 451
    const-string v0, "Atlas"

    const-string v1, "Current configuration inconsistent with assets list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {}, Lcom/android/server/AssetAtlasService;->getDataFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_18

    .line 453
    const-string v0, "Atlas"

    const-string v1, "Could not delete the current configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_18
    return-void
.end method

.method private getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2f

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.build.fingerprint"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/AssetAtlasService;->getFrameworkResourcesFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDataFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 446
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 447
    .local v0, "systemDirectory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "framework_atlas.config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getFrameworkResourcesFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 458
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/AssetAtlasService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static native nAcquireAtlasCanvas(Landroid/graphics/Canvas;II)J
.end method

.method private static native nReleaseAtlasCanvas(Landroid/graphics/Canvas;J)V
.end method

.method private static native nUploadAtlas(Landroid/view/GraphicBuffer;J)Z
.end method

.method private static queryVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 177
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 181
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_f
    return-object v3

    .line 178
    :catch_10
    move-exception v0

    .line 179
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Atlas"

    const-string v4, "Could not get package info"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    const/4 v3, 0x0

    goto :goto_f
.end method

.method private readConfiguration(Ljava/io/File;Ljava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .registers 16
    .param p1, "file"    # Ljava/io/File;
    .param p2, "versionName"    # Ljava/lang/String;

    .prologue
    .line 522
    const/4 v8, 0x0

    .line 523
    .local v8, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 525
    .local v6, "config":Lcom/android/server/AssetAtlasService$Configuration;
    :try_start_2
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_11} :catch_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_11} :catch_72
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_95
    .catchall {:try_start_2 .. :try_end_11} :catchall_b8

    .line 527
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_11
    invoke-direct {p0, v9, p2}, Lcom/android/server/AssetAtlasService;->checkBuildIdentifier(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d3

    .line 528
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Atlas$Type;->valueOf(Ljava/lang/String;)Landroid/graphics/Atlas$Type;

    move-result-object v1

    .line 529
    .local v1, "type":Landroid/graphics/Atlas$Type;
    const/16 v10, 0x300

    const/16 v11, 0x800

    invoke-static {v9, v10, v11}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    move-result v2

    .line 530
    .local v2, "width":I
    const/16 v10, 0x300

    const/16 v11, 0x800

    invoke-static {v9, v10, v11}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    move-result v3

    .line 531
    .local v3, "height":I
    const/4 v10, 0x0

    const v11, 0x7fffffff

    invoke-static {v9, v10, v11}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    move-result v4

    .line 532
    .local v4, "count":I
    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    invoke-static {v9, v10, v11}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    move-result v5

    .line 534
    .local v5, "flags":I
    new-instance v0, Lcom/android/server/AssetAtlasService$Configuration;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AssetAtlasService$Configuration;-><init>(Landroid/graphics/Atlas$Type;IIII)V
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_45} :catch_ca
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_45} :catch_c7
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_45} :catch_c4
    .catchall {:try_start_11 .. :try_end_45} :catchall_c1

    .line 543
    .end local v1    # "type":Landroid/graphics/Atlas$Type;
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "count":I
    .end local v5    # "flags":I
    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .local v0, "config":Lcom/android/server/AssetAtlasService$Configuration;
    :goto_45
    if-eqz v9, :cond_d0

    .line 545
    :try_start_47
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4c

    move-object v8, v9

    .line 551
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :goto_4b
    return-object v0

    .line 546
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_4c
    move-exception v10

    move-object v8, v9

    .line 548
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_4b

    .line 536
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_4f
    move-exception v7

    .line 537
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :goto_50
    :try_start_50
    const-string v10, "Atlas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid parameter value in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_b8

    .line 543
    if-eqz v8, :cond_cd

    .line 545
    :try_start_6a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6f

    move-object v0, v6

    .line 548
    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_4b

    .line 546
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_6f
    move-exception v10

    move-object v0, v6

    .line 548
    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_4b

    .line 538
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_72
    move-exception v7

    .line 539
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_73
    :try_start_73
    const-string v10, "Atlas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not read "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_73 .. :try_end_8b} :catchall_b8

    .line 543
    if-eqz v8, :cond_cd

    .line 545
    :try_start_8d
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_92

    move-object v0, v6

    .line 548
    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_4b

    .line 546
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_92
    move-exception v10

    move-object v0, v6

    .line 548
    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_4b

    .line 540
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_95
    move-exception v7

    .line 541
    .local v7, "e":Ljava/io/IOException;
    :goto_96
    :try_start_96
    const-string v10, "Atlas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not read "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ae
    .catchall {:try_start_96 .. :try_end_ae} :catchall_b8

    .line 543
    if-eqz v8, :cond_cd

    .line 545
    :try_start_b0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b5

    move-object v0, v6

    .line 548
    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_4b

    .line 546
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_b5
    move-exception v10

    move-object v0, v6

    .line 548
    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_4b

    .line 543
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catchall_b8
    move-exception v10

    :goto_b9
    if-eqz v8, :cond_be

    .line 545
    :try_start_bb
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf

    .line 548
    :cond_be
    :goto_be
    throw v10

    .line 546
    :catch_bf
    move-exception v11

    goto :goto_be

    .line 543
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catchall_c1
    move-exception v10

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_b9

    .line 540
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_c4
    move-exception v7

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_96

    .line 538
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_c7
    move-exception v7

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_73

    .line 536
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_ca
    move-exception v7

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_50

    :cond_cd
    move-object v0, v6

    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto/16 :goto_4b

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_d0
    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_4b

    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_d3
    move-object v0, v6

    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto/16 :goto_45
.end method

.method private static readInt(Ljava/io/BufferedReader;II)I
    .registers 4
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .param p1, "min"    # I
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private writeConfiguration(Lcom/android/server/AssetAtlasService$Configuration;Ljava/io/File;Ljava/lang/String;)V
    .registers 10
    .param p1, "config"    # Lcom/android/server/AssetAtlasService$Configuration;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "versionName"    # Ljava/lang/String;

    .prologue
    .line 487
    const/4 v1, 0x0

    .line 489
    .local v1, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_10} :catch_60
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_81
    .catchall {:try_start_1 .. :try_end_10} :catchall_a2

    .line 490
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_10
    invoke-direct {p0, p3}, Lcom/android/server/AssetAtlasService;->getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 492
    iget-object v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    invoke-virtual {v3}, Landroid/graphics/Atlas$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 494
    iget v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 496
    iget v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 498
    iget v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 500
    iget v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_56
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_56} :catch_b1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_56} :catch_ae
    .catchall {:try_start_10 .. :try_end_56} :catchall_ab

    .line 507
    if-eqz v2, :cond_b4

    .line 509
    :try_start_58
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5d

    move-object v1, v2

    .line 515
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    :cond_5c
    :goto_5c
    return-void

    .line 510
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_5d
    move-exception v3

    move-object v1, v2

    .line 512
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_5c

    .line 502
    :catch_60
    move-exception v0

    .line 503
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_61
    :try_start_61
    const-string v3, "Atlas"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_61 .. :try_end_79} :catchall_a2

    .line 507
    if-eqz v1, :cond_5c

    .line 509
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_5c

    .line 510
    :catch_7f
    move-exception v3

    goto :goto_5c

    .line 504
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_81
    move-exception v0

    .line 505
    .local v0, "e":Ljava/io/IOException;
    :goto_82
    :try_start_82
    const-string v3, "Atlas"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_82 .. :try_end_9a} :catchall_a2

    .line 507
    if-eqz v1, :cond_5c

    .line 509
    :try_start_9c
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_5c

    .line 510
    :catch_a0
    move-exception v3

    goto :goto_5c

    .line 507
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_a2
    move-exception v3

    :goto_a3
    if-eqz v1, :cond_a8

    .line 509
    :try_start_a5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    .line 512
    :cond_a8
    :goto_a8
    throw v3

    .line 510
    :catch_a9
    move-exception v4

    goto :goto_a8

    .line 507
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catchall_ab
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_a3

    .line 504
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_ae
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_82

    .line 502
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_b1
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_61

    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :cond_b4
    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_5c
.end method


# virtual methods
.method public getBuffer()Landroid/view/GraphicBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMap()[J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasMap:[J

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isCompatible(I)Z
    .registers 3
    .param p1, "ppid"    # I

    .prologue
    .line 372
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public systemRunning()V
    .registers 1

    .prologue
    .line 189
    return-void
.end method
