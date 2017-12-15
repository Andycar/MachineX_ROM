.class public Landroid/view/GhostView;
.super Landroid/view/View;
.source "GhostView.java"


# instance fields
.field private mBeingMoved:Z

.field private mReferences:I

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    .line 40
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iput-object p0, v1, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 41
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 42
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroid/view/GhostView;->setGhostedVisibility(I)V

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/ViewGroup;->mRecreateDisplayList:Z

    .line 44
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDisplayList()Landroid/view/RenderNode;

    .line 45
    return-void
.end method

.method public static addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    move-result-object v0

    return-object v0
.end method

.method public static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;
    .registers 14
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    instance-of v9, v9, Landroid/view/ViewGroup;

    if-nez v9, :cond_10

    .line 102
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Ghosted views must be parented by a ViewGroup"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 104
    :cond_10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v4

    .line 105
    .local v4, "overlay":Landroid/view/ViewGroupOverlay;
    iget-object v5, v4, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 106
    .local v5, "overlayViewGroup":Landroid/view/ViewOverlay$OverlayViewGroup;
    iget-object v1, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 107
    .local v1, "ghostView":Landroid/view/GhostView;
    const/4 v7, 0x0

    .line 108
    .local v7, "previousRefCount":I
    if-eqz v1, :cond_2f

    .line 109
    invoke-virtual {v1}, Landroid/view/GhostView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 110
    .local v3, "oldParent":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 111
    .local v2, "oldGrandParent":Landroid/view/ViewGroup;
    if-eq v2, v5, :cond_2f

    .line 112
    iget v7, v1, Landroid/view/GhostView;->mReferences:I

    .line 113
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 114
    const/4 v1, 0x0

    .line 117
    .end local v2    # "oldGrandParent":Landroid/view/ViewGroup;
    .end local v3    # "oldParent":Landroid/view/View;
    :cond_2f
    if-nez v1, :cond_72

    .line 118
    if-nez p2, :cond_3b

    .line 119
    new-instance p2, Landroid/graphics/Matrix;

    .end local p2    # "matrix":Landroid/graphics/Matrix;
    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 120
    .restart local p2    # "matrix":Landroid/graphics/Matrix;
    invoke-static {p0, p1, p2}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    .line 122
    :cond_3b
    new-instance v1, Landroid/view/GhostView;

    .end local v1    # "ghostView":Landroid/view/GhostView;
    invoke-direct {v1, p0}, Landroid/view/GhostView;-><init>(Landroid/view/View;)V

    .line 123
    .restart local v1    # "ghostView":Landroid/view/GhostView;
    invoke-virtual {v1, p2}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    .line 124
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 125
    .local v6, "parent":Landroid/widget/FrameLayout;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 126
    invoke-static {p1, v6}, Landroid/view/GhostView;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 127
    invoke-static {p1, v1}, Landroid/view/GhostView;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 128
    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 129
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v8, "tempViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v9, v4, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v9, v8}, Landroid/view/GhostView;->moveGhostViewsToTop(Landroid/view/ViewGroup;Ljava/util/ArrayList;)I

    move-result v0

    .line 131
    .local v0, "firstGhost":I
    iget-object v9, v4, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v9, v6, v1, v8, v0}, Landroid/view/GhostView;->insertIntoOverlay(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/GhostView;Ljava/util/ArrayList;I)V

    .line 132
    iput v7, v1, Landroid/view/GhostView;->mReferences:I

    .line 136
    .end local v0    # "firstGhost":I
    .end local v6    # "parent":Landroid/widget/FrameLayout;
    .end local v8    # "tempViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_6b
    :goto_6b
    iget v9, v1, Landroid/view/GhostView;->mReferences:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Landroid/view/GhostView;->mReferences:I

    .line 137
    return-object v1

    .line 133
    :cond_72
    if-eqz p2, :cond_6b

    .line 134
    invoke-virtual {v1, p2}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_6b
.end method

.method public static calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 94
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 95
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 96
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 98
    return-void
.end method

.method private static copySize(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p0, "from"    # Landroid/view/View;
    .param p1, "to"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->setLeft(I)V

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->setTop(I)V

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRight(I)V

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBottom(I)V

    .line 165
    return-void
.end method

.method public static getGhost(Landroid/view/View;)Landroid/view/GhostView;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    return-object v0
.end method

.method private static getInsertIndex(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;I)I
    .registers 10
    .param p0, "overlayViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "firstGhost"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "viewParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p2, "tempParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move v1, p3

    .line 244
    .local v1, "low":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 246
    .local v0, "high":I
    :goto_7
    if-gt v1, v0, :cond_2e

    .line 247
    add-int v5, v1, v0

    div-int/lit8 v2, v5, 0x2

    .line 248
    .local v2, "mid":I
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 249
    .local v4, "wrapper":Landroid/view/ViewGroup;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/GhostView;

    .line 250
    .local v3, "midView":Landroid/view/GhostView;
    iget-object v5, v3, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-static {v5, p2}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 251
    invoke-static {p1, p2}, Landroid/view/GhostView;->isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 252
    add-int/lit8 v1, v2, 0x1

    .line 256
    :goto_27
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    .line 254
    :cond_2b
    add-int/lit8 v0, v2, -0x1

    goto :goto_27

    .line 259
    .end local v2    # "mid":I
    .end local v3    # "midView":Landroid/view/GhostView;
    .end local v4    # "wrapper":Landroid/view/ViewGroup;
    :cond_2e
    return v1
.end method

.method private static getParents(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 309
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_f

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_f

    .line 310
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 312
    :cond_f
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    return-void
.end method

.method private static insertIntoOverlay(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/GhostView;Ljava/util/ArrayList;I)V
    .registers 8
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "wrapper"    # Landroid/view/ViewGroup;
    .param p2, "ghostView"    # Landroid/view/GhostView;
    .param p4, "firstGhost"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/GhostView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p3, "tempParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, -0x1

    if-ne p4, v2, :cond_7

    .line 222
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 234
    :goto_6
    return-void

    .line 224
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v1, "viewParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p2, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-static {v2, v1}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 227
    invoke-static {p0, v1, p3, p4}, Landroid/view/GhostView;->getInsertIndex(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;I)I

    move-result v0

    .line 228
    .local v0, "index":I
    if-ltz v0, :cond_1d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_21

    .line 229
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 231
    :cond_21
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_6
.end method

.method private static isGhostWrapper(Landroid/view/View;)Z
    .registers 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 266
    instance-of v3, p0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_15

    move-object v1, p0

    .line 267
    check-cast v1, Landroid/widget/FrameLayout;

    .line 268
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 269
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/view/GhostView;

    .line 273
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_15
    return v2
.end method

.method private static isOnTop(Landroid/view/View;Landroid/view/View;)Z
    .registers 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "comparedWith"    # Landroid/view/View;

    .prologue
    .line 321
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 323
    .local v6, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 324
    .local v2, "childrenCount":I
    invoke-virtual {v6}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v7

    .line 325
    .local v7, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v7, :cond_30

    invoke-virtual {v6}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v8

    if-eqz v8, :cond_30

    const/4 v3, 0x1

    .line 331
    .local v3, "customOrder":Z
    :goto_17
    const/4 v5, 0x1

    .line 332
    .local v5, "isOnTop":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v2, :cond_2a

    .line 333
    if-eqz v3, :cond_32

    invoke-virtual {v6, v2, v4}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v1

    .line 334
    .local v1, "childIndex":I
    :goto_21
    if-nez v7, :cond_34

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 336
    .local v0, "child":Landroid/view/View;
    :goto_27
    if-ne v0, p0, :cond_3c

    .line 337
    const/4 v5, 0x0

    .line 345
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    :cond_2a
    :goto_2a
    if-eqz v7, :cond_2f

    .line 346
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 348
    :cond_2f
    return v5

    .line 325
    .end local v3    # "customOrder":Z
    .end local v4    # "i":I
    .end local v5    # "isOnTop":Z
    :cond_30
    const/4 v3, 0x0

    goto :goto_17

    .restart local v3    # "customOrder":Z
    .restart local v4    # "i":I
    .restart local v5    # "isOnTop":Z
    :cond_32
    move v1, v4

    .line 333
    goto :goto_21

    .line 334
    .restart local v1    # "childIndex":I
    :cond_34
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object v0, v8

    goto :goto_27

    .line 339
    .restart local v0    # "child":Landroid/view/View;
    :cond_3c
    if-ne v0, p1, :cond_40

    .line 340
    const/4 v5, 0x1

    .line 341
    goto :goto_2a

    .line 332
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_19
.end method

.method private static isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "viewParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "comparedWith":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 283
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_18

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_18

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_19

    .line 301
    :cond_18
    :goto_18
    return v3

    .line 288
    :cond_19
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 289
    .local v1, "depth":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_26
    if-ge v2, v1, :cond_3e

    .line 290
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 291
    .local v4, "viewParent":Landroid/view/View;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 293
    .local v0, "comparedWithParent":Landroid/view/View;
    if-eq v4, v0, :cond_3b

    .line 295
    invoke-static {v4, v0}, Landroid/view/GhostView;->isOnTop(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    goto :goto_18

    .line 289
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 300
    .end local v0    # "comparedWithParent":Landroid/view/View;
    .end local v4    # "viewParent":Landroid/view/View;
    :cond_3e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v1, :cond_45

    .line 301
    .local v3, "isComparedWithTheParent":Z
    :goto_44
    goto :goto_18

    .end local v3    # "isComparedWithTheParent":Z
    :cond_45
    move v3, v5

    .line 300
    goto :goto_44
.end method

.method private static moveGhostViewsToTop(Landroid/view/ViewGroup;Ljava/util/ArrayList;)I
    .registers 9
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "tempViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 174
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 175
    .local v4, "numChildren":I
    if-nez v4, :cond_9

    .line 176
    const/4 v1, -0x1

    .line 212
    :cond_8
    :goto_8
    return v1

    .line 177
    :cond_9
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 179
    add-int/lit8 v1, v4, -0x1

    .line 180
    .local v1, "firstGhost":I
    add-int/lit8 v3, v4, -0x2

    .local v3, "i":I
    :goto_19
    if-ltz v3, :cond_8

    .line 181
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 184
    move v1, v3

    .line 180
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 190
    .end local v1    # "firstGhost":I
    .end local v3    # "i":I
    :cond_29
    add-int/lit8 v3, v4, -0x2

    .restart local v3    # "i":I
    :goto_2b
    if-ltz v3, :cond_4d

    .line 191
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 193
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/GhostView;

    .line 195
    .local v2, "ghostView":Landroid/view/GhostView;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/view/GhostView;->mBeingMoved:Z

    .line 196
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 197
    iput-boolean v6, v2, Landroid/view/GhostView;->mBeingMoved:Z

    .line 190
    .end local v2    # "ghostView":Landroid/view/GhostView;
    :cond_4a
    add-int/lit8 v3, v3, -0x1

    goto :goto_2b

    .line 202
    :cond_4d
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 203
    const/4 v1, -0x1

    .restart local v1    # "firstGhost":I
    goto :goto_8

    .line 205
    .end local v1    # "firstGhost":I
    :cond_55
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 207
    .restart local v1    # "firstGhost":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_5f
    if-ltz v3, :cond_6d

    .line 208
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 207
    add-int/lit8 v3, v3, -0x1

    goto :goto_5f

    .line 210
    :cond_6d
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_8
.end method

.method public static removeGhost(Landroid/view/View;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 146
    .local v0, "ghostView":Landroid/view/GhostView;
    if-eqz v0, :cond_1d

    .line 147
    iget v3, v0, Landroid/view/GhostView;->mReferences:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/view/GhostView;->mReferences:I

    .line 148
    iget v3, v0, Landroid/view/GhostView;->mReferences:I

    if-nez v3, :cond_1d

    .line 149
    invoke-virtual {v0}, Landroid/view/GhostView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 150
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 151
    .local v1, "grandParent":Landroid/view/ViewGroup;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    .end local v1    # "grandParent":Landroid/view/ViewGroup;
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_1d
    return-void
.end method

.method private setGhostedVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 75
    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, -0xd

    or-int/2addr v1, p1

    iput v1, v0, Landroid/view/View;->mViewFlags:I

    .line 76
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 80
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 81
    iget-boolean v1, p0, Landroid/view/GhostView;->mBeingMoved:Z

    if-nez v1, :cond_20

    .line 82
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/GhostView;->setGhostedVisibility(I)V

    .line 83
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 84
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 85
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_20

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/ViewGroup;->mRecreateDisplayList:Z

    .line 87
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDisplayList()Landroid/view/RenderNode;

    .line 90
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_20
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 49
    instance-of v2, p1, Landroid/view/HardwareCanvas;

    if-eqz v2, :cond_21

    move-object v0, p1

    .line 50
    check-cast v0, Landroid/view/HardwareCanvas;

    .line 51
    .local v0, "hwCanvas":Landroid/view/HardwareCanvas;
    iget-object v2, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/View;->mRecreateDisplayList:Z

    .line 52
    iget-object v2, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDisplayList()Landroid/view/RenderNode;

    move-result-object v1

    .line 53
    .local v1, "renderNode":Landroid/view/RenderNode;
    invoke-virtual {v1}, Landroid/view/RenderNode;->isValid()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 54
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->insertReorderBarrier()V

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/HardwareCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 56
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->insertInorderBarrier()V

    .line 59
    .end local v0    # "hwCanvas":Landroid/view/HardwareCanvas;
    .end local v1    # "renderNode":Landroid/view/RenderNode;
    :cond_21
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .registers 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/view/GhostView;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setAnimationMatrix(Landroid/graphics/Matrix;)Z

    .line 63
    return-void
.end method

.method public setVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    if-ne v1, p0, :cond_f

    .line 69
    if-nez p1, :cond_10

    const/4 v0, 0x4

    .line 70
    .local v0, "inverseVisibility":I
    :goto_c
    invoke-direct {p0, v0}, Landroid/view/GhostView;->setGhostedVisibility(I)V

    .line 72
    .end local v0    # "inverseVisibility":I
    :cond_f
    return-void

    .line 69
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method
