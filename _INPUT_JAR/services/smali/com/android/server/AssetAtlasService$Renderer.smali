.class Lcom/android/server/AssetAtlasService$Renderer;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssetAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Renderer"
.end annotation


# instance fields
.field private mAtlasBitmap:Landroid/graphics/Bitmap;

.field private final mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeBitmap:J

.field private final mPixelCount:I

.field final synthetic this$0:Lcom/android/server/AssetAtlasService;


# direct methods
.method constructor <init>(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;I)V
    .registers 4
    .param p3, "pixelCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p2, p0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    .line 205
    iput p3, p0, Lcom/android/server/AssetAtlasService$Renderer;->mPixelCount:I

    .line 206
    return-void
.end method

.method private acquireCanvas(II)Landroid/graphics/Canvas;
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 329
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 330
    .local v0, "canvas":Landroid/graphics/Canvas;
    # invokes: Lcom/android/server/AssetAtlasService;->nAcquireAtlasCanvas(Landroid/graphics/Canvas;II)J
    invoke-static {v0, p1, p2}, Lcom/android/server/AssetAtlasService;->access$700(Landroid/graphics/Canvas;II)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:J

    .line 331
    return-object v0
.end method

.method private releaseCanvas(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 361
    iget-wide v0, p0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:J

    # invokes: Lcom/android/server/AssetAtlasService;->nReleaseAtlasCanvas(Landroid/graphics/Canvas;J)V
    invoke-static {p1, v0, v1}, Lcom/android/server/AssetAtlasService;->access$800(Landroid/graphics/Canvas;J)V

    .line 363
    return-void
.end method

.method private renderAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Atlas;I)Z
    .registers 31
    .param p1, "buffer"    # Landroid/view/GraphicBuffer;
    .param p2, "atlas"    # Landroid/graphics/Atlas;
    .param p3, "packCount"    # I

    .prologue
    .line 252
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 253
    .local v16, "paint":Landroid/graphics/Paint;
    new-instance v22, Landroid/graphics/PorterDuffXfermode;

    sget-object v23, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v22 .. v23}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/view/GraphicBuffer;->getWidth()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/GraphicBuffer;->getHeight()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/AssetAtlasService$Renderer;->acquireCanvas(II)Landroid/graphics/Canvas;

    move-result-object v6

    .line 258
    .local v6, "canvas":Landroid/graphics/Canvas;
    if-nez v6, :cond_2a

    const/16 v18, 0x0

    .line 314
    :goto_29
    return v18

    .line 260
    :cond_2a
    new-instance v12, Landroid/graphics/Atlas$Entry;

    invoke-direct {v12}, Landroid/graphics/Atlas$Entry;-><init>()V

    .line 262
    .local v12, "entry":Landroid/graphics/Atlas$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v22, v0

    mul-int/lit8 v23, p3, 0x4

    move/from16 v0, v23

    new-array v0, v0, [J

    move-object/from16 v23, v0

    # setter for: Lcom/android/server/AssetAtlasService;->mAtlasMap:[J
    invoke-static/range {v22 .. v23}, Lcom/android/server/AssetAtlasService;->access$402(Lcom/android/server/AssetAtlasService;[J)[J

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mAtlasMap:[J
    invoke-static/range {v22 .. v22}, Lcom/android/server/AssetAtlasService;->access$400(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v4

    .line 264
    .local v4, "atlasMap":[J
    const/4 v14, 0x0

    .line 266
    .local v14, "mapIndex":I
    const/16 v18, 0x0

    .line 268
    .local v18, "result":Z
    :try_start_4d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 269
    .local v20, "startRender":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I
    :try_end_5a
    .catchall {:try_start_4d .. :try_end_5a} :catchall_18f

    move-result v7

    .line 271
    .local v7, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    move v15, v14

    .end local v14    # "mapIndex":I
    .local v15, "mapIndex":I
    :goto_5d
    if-ge v13, v7, :cond_97

    .line 272
    :try_start_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 273
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v12}, Landroid/graphics/Atlas;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object v22

    if-eqz v22, :cond_186

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mAtlasMap:[J
    invoke-static/range {v22 .. v22}, Lcom/android/server/AssetAtlasService;->access$400(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v15, v0, :cond_10b

    .line 278
    # invokes: Lcom/android/server/AssetAtlasService;->deleteDataFile()V
    invoke-static {}, Lcom/android/server/AssetAtlasService;->access$500()V

    .line 297
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_97
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 298
    .local v8, "endRender":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_b5

    .line 299
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    # invokes: Lcom/android/server/AssetAtlasService;->nUploadAtlas(Landroid/view/GraphicBuffer;J)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/AssetAtlasService;->access$600(Landroid/view/GraphicBuffer;J)Z

    move-result v18

    .line 302
    :cond_b5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 304
    .local v10, "endUpload":J
    sub-long v22, v8, v20

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x447a0000    # 1000.0f

    div-float v22, v22, v23

    const/high16 v23, 0x447a0000    # 1000.0f

    div-float v17, v22, v23

    .line 305
    .local v17, "renderDuration":F
    sub-long v22, v10, v8

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x447a0000    # 1000.0f

    div-float v22, v22, v23

    const/high16 v23, 0x447a0000    # 1000.0f

    div-float v19, v22, v23

    .line 306
    .local v19, "uploadDuration":F
    const-string v22, "Atlas"

    const-string v23, "Rendered atlas in %.2fms (%.2f+%.2fms)"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    add-float v26, v17, v19

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_104
    .catchall {:try_start_5f .. :try_end_104} :catchall_196

    .line 311
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/AssetAtlasService$Renderer;->releaseCanvas(Landroid/graphics/Canvas;)V

    goto/16 :goto_29

    .line 282
    .end local v8    # "endRender":J
    .end local v10    # "endUpload":J
    .end local v17    # "renderDuration":F
    .end local v19    # "uploadDuration":F
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_10b
    :try_start_10b
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 283
    iget v0, v12, Landroid/graphics/Atlas$Entry;->x:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/Atlas$Entry;->y:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 284
    iget-boolean v0, v12, Landroid/graphics/Atlas$Entry;->rotated:Z

    move/from16 v22, v0

    if-eqz v22, :cond_146

    .line 285
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 286
    const/high16 v22, 0x42b40000    # 90.0f

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 288
    :cond_146
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v6, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 289
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V
    :try_end_158
    .catchall {:try_start_10b .. :try_end_158} :catchall_196

    .line 290
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "mapIndex":I
    .restart local v14    # "mapIndex":I
    :try_start_15a
    iget-wide v0, v5, Landroid/graphics/Bitmap;->mNativeBitmap:J

    move-wide/from16 v22, v0

    aput-wide v22, v4, v15
    :try_end_160
    .catchall {:try_start_15a .. :try_end_160} :catchall_18f

    .line 291
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "mapIndex":I
    .restart local v15    # "mapIndex":I
    :try_start_162
    iget v0, v12, Landroid/graphics/Atlas$Entry;->x:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v4, v14
    :try_end_16d
    .catchall {:try_start_162 .. :try_end_16d} :catchall_196

    .line 292
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "mapIndex":I
    .restart local v14    # "mapIndex":I
    :try_start_16f
    iget v0, v12, Landroid/graphics/Atlas$Entry;->y:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v4, v15
    :try_end_17a
    .catchall {:try_start_16f .. :try_end_17a} :catchall_18f

    .line 293
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "mapIndex":I
    .restart local v15    # "mapIndex":I
    :try_start_17c
    iget-boolean v0, v12, Landroid/graphics/Atlas$Entry;->rotated:Z

    move/from16 v22, v0

    if-eqz v22, :cond_18c

    const-wide/16 v22, 0x1

    :goto_184
    aput-wide v22, v4, v14
    :try_end_186
    .catchall {:try_start_17c .. :try_end_186} :catchall_196

    :cond_186
    move v14, v15

    .line 271
    .end local v15    # "mapIndex":I
    .restart local v14    # "mapIndex":I
    add-int/lit8 v13, v13, 0x1

    move v15, v14

    .end local v14    # "mapIndex":I
    .restart local v15    # "mapIndex":I
    goto/16 :goto_5d

    .line 293
    :cond_18c
    const-wide/16 v22, 0x0

    goto :goto_184

    .line 311
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "count":I
    .end local v13    # "i":I
    .end local v15    # "mapIndex":I
    .end local v20    # "startRender":J
    .restart local v14    # "mapIndex":I
    :catchall_18f
    move-exception v22

    :goto_190
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/AssetAtlasService$Renderer;->releaseCanvas(Landroid/graphics/Canvas;)V

    throw v22

    .end local v14    # "mapIndex":I
    .restart local v7    # "count":I
    .restart local v13    # "i":I
    .restart local v15    # "mapIndex":I
    .restart local v20    # "startRender":J
    :catchall_196
    move-exception v22

    move v14, v15

    .end local v15    # "mapIndex":I
    .restart local v14    # "mapIndex":I
    goto :goto_190
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 221
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    iget-object v3, p0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/AssetAtlasService$Renderer;->mPixelCount:I

    iget-object v5, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    # getter for: Lcom/android/server/AssetAtlasService;->mVersionName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/AssetAtlasService;->access$000(Lcom/android/server/AssetAtlasService;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/AssetAtlasService;->chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/AssetAtlasService;->access$100(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v1

    .line 222
    .local v1, "config":Lcom/android/server/AssetAtlasService$Configuration;
    const-string v2, "Atlas"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded configuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-eqz v1, :cond_66

    .line 225
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    iget v4, v1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    const/16 v5, 0x100

    invoke-static {v3, v4, v6, v5}, Landroid/view/GraphicBuffer;->create(IIII)Landroid/view/GraphicBuffer;

    move-result-object v3

    # setter for: Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;
    invoke-static {v2, v3}, Lcom/android/server/AssetAtlasService;->access$202(Lcom/android/server/AssetAtlasService;Landroid/view/GraphicBuffer;)Landroid/view/GraphicBuffer;

    .line 228
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    # getter for: Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->access$200(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 229
    new-instance v0, Landroid/graphics/Atlas;

    iget-object v2, v1, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    iget v4, v1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    iget v5, v1, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;III)V

    .line 230
    .local v0, "atlas":Landroid/graphics/Atlas;
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    # getter for: Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->access$200(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;

    move-result-object v2

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/AssetAtlasService$Renderer;->renderAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Atlas;I)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 231
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    # getter for: Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->access$300(Lcom/android/server/AssetAtlasService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 235
    .end local v0    # "atlas":Landroid/graphics/Atlas;
    :cond_66
    return-void
.end method
