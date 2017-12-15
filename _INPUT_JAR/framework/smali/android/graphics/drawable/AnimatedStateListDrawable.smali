.class public Landroid/graphics/drawable/AnimatedStateListDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedStateListDrawable$1;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    }
.end annotation


# static fields
.field private static final ELEMENT_ITEM:Ljava/lang/String; = "item"

.field private static final ELEMENT_TRANSITION:Ljava/lang/String; = "transition"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mMutated:Z

.field private mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

.field private mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

.field private mTransitionFromIndex:I

.field private mTransitionToIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const-class v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/AnimatedStateListDrawable;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V

    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V
    .registers 6
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, -0x1

    .line 594
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;)V

    .line 75
    iput v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .line 78
    iput v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 596
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/content/res/Resources;)V

    .line 597
    .local v0, "newState":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setConstantState(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;)V

    .line 598
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    .line 599
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->jumpToCurrentState()V

    .line 600
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/AnimatedStateListDrawable$1;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Landroid/graphics/drawable/AnimatedStateListDrawable;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method private parseItem(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .registers 21
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    const/4 v3, 0x0

    .line 457
    .local v3, "drawableRes":I
    const/4 v8, 0x0

    .line 459
    .local v8, "keyframeId":I
    const/4 v6, 0x0

    .line 460
    .local v6, "j":I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    .line 461
    .local v9, "numAttrs":I
    new-array v11, v9, [I

    .line 462
    .local v11, "states":[I
    const/4 v5, 0x0

    .local v5, "i":I
    move v7, v6

    .end local v6    # "j":I
    .local v7, "j":I
    :goto_b
    if-ge v5, v9, :cond_3d

    .line 463
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v10

    .line 464
    .local v10, "stateResId":I
    sparse-switch v10, :sswitch_data_86

    .line 474
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v13}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v4

    .line 475
    .local v4, "hasState":Z
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    if-eqz v4, :cond_3b

    .end local v10    # "stateResId":I
    :goto_21
    aput v10, v11, v7

    .line 462
    .end local v4    # "hasState":Z
    :goto_23
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    .end local v6    # "j":I
    .restart local v7    # "j":I
    goto :goto_b

    .restart local v10    # "stateResId":I
    :sswitch_27
    move v6, v7

    .line 466
    .end local v7    # "j":I
    .restart local v6    # "j":I
    goto :goto_23

    .line 468
    .end local v6    # "j":I
    .restart local v7    # "j":I
    :sswitch_29
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v13}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v8

    move v6, v7

    .line 469
    .end local v7    # "j":I
    .restart local v6    # "j":I
    goto :goto_23

    .line 471
    .end local v6    # "j":I
    .restart local v7    # "j":I
    :sswitch_32
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v13}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v3

    move v6, v7

    .line 472
    .end local v7    # "j":I
    .restart local v6    # "j":I
    goto :goto_23

    .line 475
    .restart local v4    # "hasState":Z
    :cond_3b
    neg-int v10, v10

    goto :goto_21

    .line 478
    .end local v4    # "hasState":Z
    .end local v6    # "j":I
    .end local v10    # "stateResId":I
    .restart local v7    # "j":I
    :cond_3d
    invoke-static {v11, v7}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v11

    .line 481
    if-eqz v3, :cond_54

    .line 482
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 496
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    :goto_4b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v13, v11, v2, v8}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    move-result v13

    return v13

    .line 485
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_54
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v13, 0x4

    if-eq v12, v13, :cond_54

    .line 487
    const/4 v13, 0x2

    if-eq v12, v13, :cond_81

    .line 488
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "child tag defining a drawable"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 493
    :cond_81
    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_4b

    .line 464
    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_27
        0x10100d0 -> :sswitch_29
        0x1010199 -> :sswitch_32
    .end sparse-switch
.end method

.method private parseTransition(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .registers 18
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    const/4 v2, 0x0

    .line 409
    .local v2, "drawableRes":I
    const/4 v3, 0x0

    .line 410
    .local v3, "fromId":I
    const/4 v8, 0x0

    .line 411
    .local v8, "toId":I
    const/4 v6, 0x0

    .line 413
    .local v6, "reversible":Z
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v5

    .line 414
    .local v5, "numAttrs":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    if-ge v4, v5, :cond_37

    .line 415
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v7

    .line 416
    .local v7, "stateResId":I
    sparse-switch v7, :sswitch_data_78

    .line 414
    :goto_14
    :sswitch_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 420
    :sswitch_17
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v10}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v3

    .line 421
    goto :goto_14

    .line 423
    :sswitch_1f
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v10}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v8

    .line 424
    goto :goto_14

    .line 426
    :sswitch_27
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v10}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v2

    .line 427
    goto :goto_14

    .line 429
    :sswitch_2f
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v6

    goto :goto_14

    .line 435
    .end local v7    # "stateResId":I
    :cond_37
    if-eqz v2, :cond_46

    .line 436
    move-object/from16 v0, p4

    invoke-virtual {p1, v2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 450
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    :goto_3f
    iget-object v10, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v10, v3, v8, v1, v6}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    move-result v10

    return v10

    .line 439
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_46
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, "type":I
    const/4 v10, 0x4

    if-eq v9, v10, :cond_46

    .line 441
    const/4 v10, 0x2

    if-eq v9, v10, :cond_73

    .line 442
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "child tag defining a drawable"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 447
    :cond_73
    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_3f

    .line 416
    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_14
        0x1010199 -> :sswitch_27
        0x1010449 -> :sswitch_1f
        0x101044a -> :sswitch_17
        0x101044b -> :sswitch_2f
    .end sparse-switch
.end method

.method private selectTransition(I)Z
    .registers 15
    .param p1, "toIndex"    # I

    .prologue
    const/4 v12, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 167
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    .line 168
    .local v0, "currentTransition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    if-eqz v0, :cond_3c

    .line 169
    iget v11, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    if-ne p1, v11, :cond_c

    .line 231
    :goto_b
    return v9

    .line 172
    :cond_c
    iget v11, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    if-ne p1, v11, :cond_20

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->canReverse()Z

    move-result v11

    if-eqz v11, :cond_20

    .line 174
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->reverse()V

    .line 175
    iget v10, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    iput v10, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .line 176
    iput p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    goto :goto_b

    .line 181
    :cond_20
    iget v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .line 184
    .local v3, "fromIndex":I
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->stop()V

    .line 190
    :goto_25
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    .line 191
    iput v12, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 192
    iput v12, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .line 194
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    .line 195
    .local v5, "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->getKeyframeIdAt(I)I

    move-result v2

    .line 196
    .local v2, "fromId":I
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->getKeyframeIdAt(I)I

    move-result v6

    .line 197
    .local v6, "toId":I
    if-eqz v6, :cond_3a

    if-nez v2, :cond_41

    :cond_3a
    move v9, v10

    .line 199
    goto :goto_b

    .line 186
    .end local v2    # "fromId":I
    .end local v3    # "fromIndex":I
    .end local v5    # "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .end local v6    # "toId":I
    :cond_3c
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrentIndex()I

    move-result v3

    .restart local v3    # "fromIndex":I
    goto :goto_25

    .line 202
    .restart local v2    # "fromId":I
    .restart local v5    # "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .restart local v6    # "toId":I
    :cond_41
    invoke-virtual {v5, v2, v6}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->indexOfTransition(II)I

    move-result v8

    .line 203
    .local v8, "transitionIndex":I
    if-gez v8, :cond_49

    move v9, v10

    .line 205
    goto :goto_b

    .line 209
    :cond_49
    invoke-virtual {p0, v8}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectDrawable(I)Z

    .line 212
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 213
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v11, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v11, :cond_69

    .line 214
    invoke-virtual {v5, v2, v6}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->isTransitionReversed(II)Z

    move-result v4

    .line 215
    .local v4, "reversed":Z
    new-instance v7, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v7, v1, v4}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    .line 226
    .end local v4    # "reversed":Z
    .local v7, "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    :goto_5f
    invoke-virtual {v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->start()V

    .line 228
    iput-object v7, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    .line 229
    iput v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 230
    iput p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    goto :goto_b

    .line 216
    .end local v7    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_69
    instance-of v11, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v11, :cond_79

    .line 217
    invoke-virtual {v5, v2, v6}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->isTransitionReversed(II)Z

    move-result v4

    .line 218
    .restart local v4    # "reversed":Z
    new-instance v7, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v7, v1, v4}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;Z)V

    .line 219
    .restart local v7    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    goto :goto_5f

    .end local v4    # "reversed":Z
    .end local v7    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_79
    instance-of v11, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v11, :cond_85

    .line 220
    new-instance v7, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;

    check-cast v1, Landroid/graphics/drawable/Animatable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v7, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;-><init>(Landroid/graphics/drawable/Animatable;)V

    .restart local v7    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    goto :goto_5f

    .end local v7    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_85
    move v9, v10

    .line 223
    goto :goto_b
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;I)V
    .registers 6
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "id"    # I

    .prologue
    .line 110
    if-nez p2, :cond_a

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_a
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    .line 115
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    .line 116
    return-void
.end method

.method public addTransition(IILandroid/graphics/drawable/Drawable;Z)V
    .registers 7
    .param p1, "fromId"    # I
    .param p2, "toId"    # I
    .param p4, "reversible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/graphics/drawable/Animatable;",
            ">(IITT;Z)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p3, "transition":Landroid/graphics/drawable/Drawable;, "TT;"
    if-nez p3, :cond_a

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transition drawable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_a
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    .line 133
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 15
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 360
    sget-object v5, Lcom/android/internal/R$styleable;->AnimatedStateListDrawable:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 363
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-super {p0, p1, p2, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 365
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getStateListState()Landroid/graphics/drawable/StateListDrawable$StateListState;

    move-result-object v3

    .line 366
    .local v3, "stateListState":Landroid/graphics/drawable/StateListDrawable$StateListState;
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setVariablePadding(Z)V

    .line 368
    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setConstantSize(Z)V

    .line 370
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setEnterFadeDuration(I)V

    .line 372
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setExitFadeDuration(I)V

    .line 375
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setDither(Z)V

    .line 376
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setAutoMirrored(Z)V

    .line 378
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 382
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 385
    .local v2, "innerDepth":I
    :cond_47
    :goto_47
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v7, :cond_7a

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .local v1, "depth":I
    if-ge v1, v2, :cond_55

    if-eq v4, v9, :cond_7a

    .line 387
    :cond_55
    if-ne v4, v8, :cond_47

    .line 391
    if-gt v1, v2, :cond_47

    .line 395
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 396
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->parseItem(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_47

    .line 397
    :cond_69
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "transition"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 398
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->parseTransition(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_47

    .line 402
    .end local v1    # "depth":I
    :cond_7a
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    .line 403
    return-void
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 344
    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->jumpToCurrentState()V

    .line 346
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    if-eqz v0, :cond_19

    .line 347
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->stop()V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    .line 350
    iget v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectDrawable(I)Z

    .line 351
    iput v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .line 352
    iput v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 354
    :cond_19
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 501
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mMutated:Z

    if-nez v1, :cond_18

    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p0, :cond_18

    .line 502
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/content/res/Resources;)V

    .line 503
    .local v0, "newState":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setConstantState(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;)V

    .line 504
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mMutated:Z

    .line 507
    .end local v0    # "newState":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    :cond_18
    return-object p0
.end method

.method protected onStateChange([I)Z
    .registers 6
    .param p1, "stateSet"    # [I

    .prologue
    const/4 v2, 0x1

    .line 142
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->indexOfKeyframe([I)I

    move-result v1

    .line 143
    .local v1, "keyframeIndex":I
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrentIndex()I

    move-result v3

    if-ne v1, v3, :cond_1a

    .line 145
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 146
    .local v0, "current":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_18

    .line 147
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 162
    .end local v0    # "current":Landroid/graphics/drawable/Drawable;
    :cond_17
    :goto_17
    return v2

    .line 149
    .restart local v0    # "current":Landroid/graphics/drawable/Drawable;
    :cond_18
    const/4 v2, 0x0

    goto :goto_17

    .line 153
    .end local v0    # "current":Landroid/graphics/drawable/Drawable;
    :cond_1a
    invoke-direct {p0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectTransition(I)Z

    move-result v3

    if-nez v3, :cond_17

    .line 158
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectDrawable(I)Z

    move-result v3

    if-nez v3, :cond_17

    .line 162
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result v2

    goto :goto_17
.end method

.method setConstantState(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;)V
    .registers 2
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    .prologue
    .line 588
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/StateListDrawable$StateListState;)V

    .line 590
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    .line 591
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    move-result v0

    .line 90
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    if-eqz v1, :cond_13

    if-nez v0, :cond_c

    if-eqz p2, :cond_13

    .line 91
    :cond_c
    if-eqz p1, :cond_14

    .line 92
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->start()V

    .line 99
    :cond_13
    :goto_13
    return v0

    .line 95
    :cond_14
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->jumpToCurrentState()V

    goto :goto_13
.end method
