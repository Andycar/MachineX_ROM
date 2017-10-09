.class Lcom/android/server/wm/TaskStack$BlackBackground;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlackBackground"
.end annotation


# static fields
.field static final DEBUG_BG:Z = false

.field static final TAG_BG:Ljava/lang/String; = "TaskStack::BlackBackground"


# instance fields
.field mBaseWindow:Lcom/android/server/wm/WindowState;

.field mBlackSurface:Lcom/android/server/wm/DimLayer;

.field mBottomLayer:I

.field mDimBounds:Landroid/graphics/Rect;

.field mLayer:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mShown:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v1, -0x1

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1260
    new-instance v0, Lcom/android/server/wm/DimLayer;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    .line 1261
    iput v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    .line 1262
    iput v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    .line 1263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    .line 1264
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mDimBounds:Landroid/graphics/Rect;

    .line 1265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    .line 1266
    iput-object p1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1267
    return-void
.end method


# virtual methods
.method animateBlackBackground()V
    .registers 13

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1320
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    if-nez v7, :cond_7

    .line 1357
    :cond_6
    :goto_6
    return-void

    .line 1323
    :cond_7
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    iget-object v8, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 1324
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    if-nez v7, :cond_1e

    .line 1325
    iget-boolean v6, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    if-eqz v6, :cond_6

    .line 1327
    iget-object v6, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 1328
    iput-boolean v5, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    goto :goto_6

    .line 1331
    :cond_1e
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    if-nez v7, :cond_36

    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_98

    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_98

    :cond_36
    move v4, v6

    .line 1332
    .local v4, "isVisible":Z
    :goto_37
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x3e9

    if-eq v7, v8, :cond_4b

    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x3ec

    if-ne v7, v8, :cond_9a

    :cond_4b
    move v1, v6

    .line 1333
    .local v1, "isMediaWin":Z
    :goto_4c
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_9c

    move v3, v6

    .line 1334
    .local v3, "isOpaqueWin":Z
    :goto_56
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    .line 1335
    .local v2, "isMinimized":Z
    if-eqz v4, :cond_8b

    if-nez v2, :cond_8b

    if-nez v1, :cond_69

    if-nez v3, :cond_8b

    :cond_69
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v7

    if-nez v7, :cond_8b

    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    if-nez v7, :cond_8b

    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_85

    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    if-nez v7, :cond_8b

    :cond_85
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v7, :cond_9e

    .line 1342
    :cond_8b
    iget-boolean v6, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    if-eqz v6, :cond_6

    .line 1344
    iget-object v6, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 1345
    iput-boolean v5, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    goto/16 :goto_6

    .end local v1    # "isMediaWin":Z
    .end local v2    # "isMinimized":Z
    .end local v3    # "isOpaqueWin":Z
    .end local v4    # "isVisible":Z
    :cond_98
    move v4, v5

    .line 1331
    goto :goto_37

    .restart local v4    # "isVisible":Z
    :cond_9a
    move v1, v5

    .line 1332
    goto :goto_4c

    .restart local v1    # "isMediaWin":Z
    :cond_9c
    move v3, v5

    .line 1333
    goto :goto_56

    .line 1348
    .restart local v2    # "isMinimized":Z
    .restart local v3    # "isOpaqueWin":Z
    :cond_9e
    iget v5, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    add-int/lit8 v0, v5, -0x1

    .line 1349
    .local v0, "dimlayer":I
    iget v5, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    if-ne v5, v0, :cond_aa

    iget-boolean v5, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    if-nez v5, :cond_6

    .line 1351
    :cond_aa
    iput v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    .line 1352
    iget-object v5, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    iget v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x0

    invoke-virtual {v5, v7, v8, v10, v11}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 1353
    iput-boolean v6, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    goto/16 :goto_6
.end method

.method destroySurface()V
    .registers 2

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 1300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    .line 1301
    return-void
.end method

.method hide()V
    .registers 2

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    if-eqz v0, :cond_10

    .line 1306
    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 1307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    .line 1309
    :cond_10
    return-void
.end method

.method notifyVisibleWindow(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v2, -0x1

    .line 1270
    if-nez p1, :cond_9

    .line 1272
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    .line 1273
    iput v2, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    .line 1295
    :cond_8
    :goto_8
    return-void

    .line 1277
    :cond_9
    iget v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    if-eq v1, v2, :cond_13

    iget v1, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v2, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    if-ge v1, v2, :cond_17

    .line 1278
    :cond_13
    iget v1, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    .line 1282
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_1e

    .line 1284
    iput-object p1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    goto :goto_8

    .line 1285
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v1, v2, :cond_46

    .line 1286
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_36

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3ec

    if-ne v1, v2, :cond_44

    :cond_36
    const/4 v0, 0x1

    .line 1287
    .local v0, "isMediaWin":Z
    :goto_37
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v1, v2, :cond_8

    .line 1289
    iput-object p1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    goto :goto_8

    .line 1286
    .end local v0    # "isMediaWin":Z
    :cond_44
    const/4 v0, 0x0

    goto :goto_37

    .line 1291
    :cond_46
    iget-object v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v1, v2, :cond_8

    .line 1293
    iput-object p1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    goto :goto_8
.end method

.method setBound(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1314
    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1316
    :cond_d
    return-void
.end method
