.class public Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
.super Ljava/lang/Object;
.source "SmartClipDataElementImpl.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;


# static fields
.field public static final EXTRACTION_LEVEL_0:I = 0x0

.field public static final EXTRACTION_LEVEL_1:I = 0x1

.field public static final EXTRACTION_MODE_DRAG_AND_DROP:I = 0x2

.field public static final EXTRACTION_MODE_NORMAL:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "SmartClipDataElementImpl"


# instance fields
.field protected mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mId:I

.field protected mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mRectOnScreen:Landroid/graphics/Rect;

.field protected mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field public mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mId:I

    .line 50
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 53
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    .line 56
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 59
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 62
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 65
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 68
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 71
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 74
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 200
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V
    .registers 4
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mId:I

    .line 50
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 53
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    .line 56
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 59
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 62
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 65
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 68
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 71
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 74
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 204
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 205
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .param p2, "screenRect"    # Landroid/graphics/Rect;

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V

    .line 216
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 217
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;)V
    .registers 3
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V

    .line 210
    iput-object p2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    .line 211
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "screenRect"    # Landroid/graphics/Rect;

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;)V

    .line 222
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 223
    return-void
.end method

.method private setNextSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V
    .registers 2
    .param p1, "sibling"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 418
    return-void
.end method

.method private setParent(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V
    .registers 2
    .param p1, "parent"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 422
    return-void
.end method

.method private setPrevSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V
    .registers 2
    .param p1, "sibling"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 414
    return-void
.end method


# virtual methods
.method public addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z
    .registers 8
    .param p1, "childToAdd"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 350
    if-nez p1, :cond_6

    .line 373
    :cond_5
    :goto_5
    return v2

    :cond_6
    move-object v0, p1

    .line 354
    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 356
    .local v0, "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-nez v4, :cond_1c

    .line 357
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 358
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 359
    invoke-direct {v0, v5}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 360
    invoke-direct {v0, v5}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 361
    invoke-direct {v0, p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setParent(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    move v2, v3

    .line 362
    goto :goto_5

    .line 363
    :cond_1c
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-eqz v4, :cond_5

    .line 364
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 365
    .local v1, "lastChild":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 366
    invoke-direct {v1, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 367
    invoke-direct {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 368
    invoke-direct {v0, p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setParent(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    move v2, v3

    .line 373
    goto :goto_5
.end method

.method public addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V
    .registers 4
    .param p1, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    .line 161
    if-nez p1, :cond_3

    .line 172
    :cond_2
    :goto_2
    return-void

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_e

    .line 166
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 169
    :cond_e
    invoke-static {p1}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->isValidMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 170
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public addTag(Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;)V
    .registers 3
    .param p1, "tagSet"    # Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_b

    .line 180
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 183
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->addAll(Ljava/util/Collection;)Z

    .line 184
    return-void
.end method

.method public clearMetaData()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 230
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTagTable(Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;)V

    .line 231
    return-void
.end method

.method public createChildInstance()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .registers 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->newInstance()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    move-result-object v0

    .line 330
    .local v0, "newElement":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    .line 331
    return-object v0
.end method

.method public dump()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 608
    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "dumpStr":Ljava/lang/String;
    const-string v2, "SmartClipDataElementImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    .line 612
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_e
    if-eqz v1, :cond_18

    .line 613
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->dump()Z

    .line 614
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    goto :goto_e

    .line 616
    :cond_18
    return v3
.end method

.method public getAllTag()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_a

    .line 93
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 95
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->getCopy()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v0

    goto :goto_9
.end method

.method public getChildCount()I
    .registers 3

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 467
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_3
    if-eqz v1, :cond_c

    .line 468
    add-int/lit8 v0, v0, 0x1

    .line 469
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    goto :goto_3

    .line 471
    :cond_c
    return v0
.end method

.method public getDataRepository()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    return-object v0
.end method

.method public getDumpString(ZZ)Ljava/lang/String;
    .registers 20
    .param p1, "addIndent"    # Z
    .param p2, "showValue"    # Z

    .prologue
    .line 514
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    .line 515
    .local v8, "result":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParentCount()I

    move-result v6

    .line 517
    .local v6, "parentCount":I
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_27

    .line 518
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v6, :cond_27

    .line 519
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 518
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 523
    .end local v4    # "i":I
    :cond_27
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    if-eqz v15, :cond_1e9

    .line 524
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Rect("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 529
    :goto_98
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    if-eqz v15, :cond_132

    .line 530
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 533
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v7

    .line 534
    .local v7, "resId":I
    const/4 v15, -0x1

    if-eq v7, v15, :cond_22c

    if-ltz v7, :cond_22c

    .line 536
    :try_start_ca
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v14

    .line 537
    .local v14, "viewResName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_f2} :catch_1fe

    move-result-object v8

    .line 546
    .end local v14    # "viewResName":Ljava/lang/String;
    :goto_f3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 547
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_132

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_132

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v15

    const/16 v16, -0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_132

    .line 548
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Opacity BG("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 553
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v7    # "resId":I
    :cond_132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v15, :cond_272

    .line 554
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v15}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v10

    .line 555
    .local v10, "tagCount":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_141
    if-ge v4, v10, :cond_285

    .line 556
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v15, v4}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 558
    .local v9, "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v9}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v12

    .line 559
    .local v12, "type":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 560
    .local v13, "value":Ljava/lang/String;
    const-string v3, ""

    .line 562
    .local v3, "extra":Ljava/lang/String;
    if-nez v13, :cond_160

    .line 563
    new-instance v13, Ljava/lang/String;

    .end local v13    # "value":Ljava/lang/String;
    const-string v15, "null"

    invoke-direct {v13, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 566
    .restart local v13    # "value":Ljava/lang/String;
    :cond_160
    instance-of v15, v9, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    if-eqz v15, :cond_1bb

    move-object v11, v9

    .line 567
    check-cast v11, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    .line 569
    .local v11, "tagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    invoke-virtual {v11}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v15

    if-eqz v15, :cond_189

    .line 570
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ", Extra data size = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 573
    :cond_189
    invoke-virtual {v11}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v15

    if-eqz v15, :cond_1bb

    .line 574
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", Extra parcelable = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 575
    invoke-virtual {v11}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v5

    .line 576
    .local v5, "obj":Landroid/os/Parcelable;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 581
    .end local v5    # "obj":Landroid/os/Parcelable;
    .end local v11    # "tagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    :cond_1bb
    const/4 v15, 0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_259

    .line 582
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 555
    :goto_1e5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_141

    .line 526
    .end local v3    # "extra":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v9    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v10    # "tagCount":I
    .end local v12    # "type":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_1e9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mRectOnScreen(NULL)\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_98

    .line 538
    .restart local v7    # "resId":I
    :catch_1fe
    move-exception v2

    .line 539
    .local v2, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "@"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->hashCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 540
    goto/16 :goto_f3

    .line 542
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_22c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "@"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->hashCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_f3

    .line 584
    .end local v7    # "resId":I
    .restart local v3    # "extra":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v9    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .restart local v10    # "tagCount":I
    .restart local v12    # "type":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/String;
    :cond_259
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1e5

    .line 588
    .end local v3    # "extra":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v9    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v10    # "tagCount":I
    .end local v12    # "type":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_272
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "No meta tag\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 603
    :cond_285
    return-object v8
.end method

.method public getExtractionLevel()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-nez v2, :cond_6

    .line 292
    :cond_5
    :goto_5
    return v1

    .line 287
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getSmartClipDataCropper()Lcom/samsung/android/smartclip/SmartClipDataCropper;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    .line 288
    .local v0, "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    if-eqz v0, :cond_5

    .line 292
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getExtractionLevel()I

    move-result v1

    goto :goto_5
.end method

.method public getExtractionMode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-nez v2, :cond_6

    .line 271
    :cond_5
    :goto_5
    return v1

    .line 266
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getSmartClipDataCropper()Lcom/samsung/android/smartclip/SmartClipDataCropper;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    .line 267
    .local v0, "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    if-eqz v0, :cond_5

    .line 271
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getExtractionMode()I

    move-result v1

    goto :goto_5
.end method

.method public getFirstChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getLastChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getMetaAreaRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getParentCount()I
    .registers 3

    .prologue
    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, "parentCount":I
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 480
    .local v0, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_5
    if-eqz v0, :cond_e

    .line 481
    add-int/lit8 v1, v1, 0x1

    .line 482
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    goto :goto_5

    .line 484
    :cond_e
    return v1
.end method

.method public getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .registers 4
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v1, :cond_a

    .line 137
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 141
    :goto_9
    return-object v0

    .line 140
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v1, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    .line 141
    .local v0, "typedArray":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    goto :goto_9
.end method

.method public getTagTable()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isEmptyTag(Z)Z
    .registers 6
    .param p1, "includeChild"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 300
    if-nez p1, :cond_13

    .line 301
    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 316
    :cond_10
    :goto_10
    return v1

    :cond_11
    move v1, v2

    .line 304
    goto :goto_10

    .line 307
    :cond_13
    move-object v0, p0

    .line 309
    .local v0, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_14
    if-eqz v0, :cond_27

    .line 310
    iget-object v3, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v3, :cond_22

    iget-object v3, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v3

    if-gtz v3, :cond_10

    .line 314
    :cond_22
    invoke-virtual {v0, p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    goto :goto_14

    :cond_27
    move v1, v2

    .line 316
    goto :goto_10
.end method

.method public newInstance()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .registers 3

    .prologue
    .line 340
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V

    return-object v0
.end method

.method public removeChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z
    .registers 7
    .param p1, "childToRemove"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    .prologue
    const/4 v1, 0x0

    .line 380
    if-nez p1, :cond_4

    .line 408
    :goto_3
    return v1

    :cond_4
    move-object v0, p1

    .line 384
    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 386
    .local v0, "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    if-eq v2, p0, :cond_2a

    .line 387
    const-string v2, "SmartClipDataElementImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeChild : Incorrect parent of SlookSmartClipDataElement. element="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->dump()Z

    goto :goto_3

    .line 392
    :cond_2a
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-ne v1, v0, :cond_34

    .line 393
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 396
    :cond_34
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-ne v1, v0, :cond_3e

    .line 397
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 400
    :cond_3e
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 401
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 404
    :cond_4f
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 405
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 408
    :cond_60
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public removeTag(Ljava/lang/String;)V
    .registers 3
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_5

    .line 151
    :goto_4
    return-void

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->removeTag(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setDataRepository(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V
    .registers 2
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 246
    return-void
.end method

.method public setMetaAreaRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 83
    return-void
.end method

.method public setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z
    .registers 4
    .param p1, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    const/4 v0, 0x0

    .line 115
    if-nez p1, :cond_4

    .line 131
    :cond_3
    :goto_3
    return v0

    .line 119
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v1, :cond_f

    .line 120
    new-instance v1, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 123
    :cond_f
    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 124
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->removeTag(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    .line 131
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public setTagTable(Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;)V
    .registers 2
    .param p1, "tagsArray"    # Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 191
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    .line 236
    return-void
.end method

.method public traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .registers 5
    .param p1, "topMostNodeOfTraverse"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    const/4 v1, 0x0

    .line 491
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-eqz v2, :cond_8

    .line 492
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 509
    :cond_7
    :goto_7
    return-object v1

    .line 494
    :cond_8
    if-eq p0, p1, :cond_7

    .line 497
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-eqz v2, :cond_11

    .line 498
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    goto :goto_7

    .line 500
    :cond_11
    move-object v0, p0

    .line 501
    .local v0, "n":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_12
    if-eqz v0, :cond_21

    iget-object v2, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-nez v2, :cond_21

    if-eqz p1, :cond_1e

    iget-object v2, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-eq v2, p1, :cond_21

    .line 502
    :cond_1e
    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    goto :goto_12

    .line 505
    :cond_21
    if-eqz v0, :cond_7

    .line 506
    iget-object v1, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    goto :goto_7
.end method
