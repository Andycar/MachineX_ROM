.class public Landroid/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorInflater$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x4

.field private static final VALUE_TYPE_CUSTOM:I = 0x5

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .registers 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .registers 28
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "parent"    # Landroid/animation/AnimatorSet;
    .param p5, "sequenceOrdering"    # I
    .param p6, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 512
    const/4 v12, 0x0

    .line 513
    .local v12, "anim":Landroid/animation/Animator;
    const/4 v14, 0x0

    .line 517
    .local v14, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 520
    .local v15, "depth":I
    :cond_6
    :goto_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, "type":I
    const/4 v4, 0x3

    move/from16 v0, v20

    if-ne v0, v4, :cond_15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v15, :cond_be

    :cond_15
    const/4 v4, 0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_be

    .line 522
    const/4 v4, 0x2

    move/from16 v0, v20

    if-ne v0, v4, :cond_6

    .line 526
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 528
    .local v19, "name":Ljava/lang/String;
    const-string v4, "objectAnimator"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 529
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 549
    :goto_39
    if-eqz p4, :cond_6

    .line 550
    if-nez v14, :cond_42

    .line 551
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .restart local v14    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_42
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 530
    :cond_46
    const-string v4, "animator"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 531
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v4, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    move-result-object v12

    goto :goto_39

    .line 532
    :cond_5e
    const-string/jumbo v4, "set"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 533
    new-instance v12, Landroid/animation/AnimatorSet;

    .end local v12    # "anim":Landroid/animation/Animator;
    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 535
    .restart local v12    # "anim":Landroid/animation/Animator;
    if-eqz p1, :cond_96

    .line 536
    sget-object v4, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 540
    .local v11, "a":Landroid/content/res/TypedArray;
    :goto_7c
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .local v9, "ordering":I
    move-object v8, v12

    .line 542
    check-cast v8, Landroid/animation/AnimatorSet;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 544
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_39

    .line 538
    .end local v9    # "ordering":I
    .end local v11    # "a":Landroid/content/res/TypedArray;
    :cond_96
    sget-object v4, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .restart local v11    # "a":Landroid/content/res/TypedArray;
    goto :goto_7c

    .line 546
    .end local v11    # "a":Landroid/content/res/TypedArray;
    :cond_a1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown animator name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 556
    .end local v19    # "name":Ljava/lang/String;
    :cond_be
    if-eqz p4, :cond_e8

    if-eqz v14, :cond_e8

    .line 557
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v13, v4, [Landroid/animation/Animator;

    .line 558
    .local v13, "animsArray":[Landroid/animation/Animator;
    const/16 v17, 0x0

    .line 559
    .local v17, "index":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_ce
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/Animator;

    .line 560
    .local v11, "a":Landroid/animation/Animator;
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "index":I
    .local v18, "index":I
    aput-object v11, v13, v17

    move/from16 v17, v18

    .line 561
    .end local v18    # "index":I
    .restart local v17    # "index":I
    goto :goto_ce

    .line 562
    .end local v11    # "a":Landroid/animation/Animator;
    :cond_e1
    if-nez p5, :cond_e9

    .line 563
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 569
    .end local v13    # "animsArray":[Landroid/animation/Animator;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "index":I
    :cond_e8
    :goto_e8
    return-object v12

    .line 565
    .restart local v13    # "animsArray":[Landroid/animation/Animator;
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "index":I
    :cond_e9
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_e8
.end method

.method private static createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 156
    new-instance v6, Landroid/animation/StateListAnimator;

    invoke-direct {v6}, Landroid/animation/StateListAnimator;-><init>()V

    .line 159
    .local v6, "stateListAnimator":Landroid/animation/StateListAnimator;
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 160
    .local v8, "type":I
    packed-switch v8, :pswitch_data_6c

    goto :goto_6

    .line 163
    :pswitch_e
    return-object v6

    .line 167
    :pswitch_f
    const/4 v0, 0x0

    .line 168
    .local v0, "animator":Landroid/animation/Animator;
    const-string v9, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 169
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 170
    .local v2, "attributeCount":I
    new-array v7, v2, [I

    .line 171
    .local v7, "states":[I
    const/4 v4, 0x0

    .line 172
    .local v4, "stateIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v5, v4

    .end local v4    # "stateIndex":I
    .local v5, "stateIndex":I
    :goto_25
    if-ge v3, v2, :cond_4a

    .line 173
    invoke-interface {p2, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v1

    .line 174
    .local v1, "attrName":I
    const v9, 0x10101cd

    if-ne v1, v9, :cond_3d

    .line 175
    invoke-interface {p2, v3, v12}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v9

    invoke-static {p0, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    move v4, v5

    .line 172
    .end local v1    # "attrName":I
    .end local v5    # "stateIndex":I
    .restart local v4    # "stateIndex":I
    :goto_39
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "stateIndex":I
    .restart local v5    # "stateIndex":I
    goto :goto_25

    .line 178
    .restart local v1    # "attrName":I
    :cond_3d
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "stateIndex":I
    .restart local v4    # "stateIndex":I
    invoke-interface {p2, v3, v12}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v9

    if-eqz v9, :cond_48

    .end local v1    # "attrName":I
    :goto_45
    aput v1, v7, v5

    goto :goto_39

    .restart local v1    # "attrName":I
    :cond_48
    neg-int v1, v1

    goto :goto_45

    .line 184
    .end local v1    # "attrName":I
    .end local v4    # "stateIndex":I
    .restart local v5    # "stateIndex":I
    :cond_4a
    if-nez v0, :cond_5a

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v9, v10, p1, v11}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v0

    .line 189
    :cond_5a
    if-nez v0, :cond_64

    .line 190
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    const-string v10, "animation state item must have a valid animation"

    invoke-direct {v9, v10}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 193
    :cond_64
    invoke-static {v7, v5}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v9

    invoke-virtual {v6, v9, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto :goto_6

    .line 160
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .registers 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 95
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .registers 9
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .param p3, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 104
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 105
    invoke-static {p0, p1, v1, p3}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_8} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_37
    .catchall {:try_start_1 .. :try_end_8} :catchall_30

    move-result-object v3

    .line 119
    if-eqz v1, :cond_e

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_e
    return-object v3

    .line 106
    :catch_f
    move-exception v0

    .line 107
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_10
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 111
    throw v2
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_30

    .line 119
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_30
    move-exception v3

    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_36
    throw v3

    .line 112
    :catch_37
    move-exception v0

    .line 113
    .local v0, "ex":Ljava/io/IOException;
    :try_start_38
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 117
    throw v2
    :try_end_58
    .catchall {:try_start_38 .. :try_end_58} :catchall_30
.end method

.method private static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;
    .registers 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "anim"    # Landroid/animation/ValueAnimator;
    .param p4, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 598
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    if-eqz p1, :cond_35

    .line 599
    sget-object v3, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 605
    :goto_b
    if-eqz p3, :cond_15

    .line 606
    if-eqz p1, :cond_3c

    .line 607
    sget-object v3, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 614
    :cond_15
    :goto_15
    if-nez p3, :cond_1c

    .line 615
    new-instance p3, Landroid/animation/ValueAnimator;

    .end local p3    # "anim":Landroid/animation/ValueAnimator;
    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    .line 618
    .restart local p3    # "anim":Landroid/animation/ValueAnimator;
    :cond_1c
    invoke-static {p3, v0, v1, p4}, Landroid/animation/AnimatorInflater;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V

    .line 620
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 622
    .local v2, "resID":I
    if-lez v2, :cond_2c

    .line 623
    invoke-static {p0, p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 626
    :cond_2c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 627
    if-eqz v1, :cond_34

    .line 628
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 631
    :cond_34
    return-object p3

    .line 601
    .end local v2    # "resID":I
    :cond_35
    sget-object v3, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p0, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_b

    .line 610
    :cond_3c
    sget-object v3, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_15
.end method

.method private static loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 575
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 577
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1, p2, v0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    .line 579
    return-object v0
.end method

.method public static loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 127
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 128
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-static {p0, v1, v3}, Landroid/animation/AnimatorInflater;->createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_10} :catch_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_3f
    .catchall {:try_start_1 .. :try_end_10} :catchall_38

    move-result-object v3

    .line 146
    if-eqz v1, :cond_16

    .line 147
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_16
    return-object v3

    .line 129
    :catch_17
    move-exception v0

    .line 130
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_18
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 136
    throw v2
    :try_end_38
    .catchall {:try_start_18 .. :try_end_38} :catchall_38

    .line 146
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_38
    move-exception v3

    if-eqz v1, :cond_3e

    .line 147
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3e
    throw v3

    .line 137
    :catch_3f
    move-exception v0

    .line 138
    .local v0, "ex":Ljava/io/IOException;
    :try_start_40
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 143
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    throw v2
    :try_end_60
    .catchall {:try_start_40 .. :try_end_60} :catchall_38
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V
    .registers 23
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p3, "pixelSize"    # F

    .prologue
    .line 262
    const/4 v4, 0x1

    const/16 v5, 0x12c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v12, v4

    .line 264
    .local v12, "duration":J
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v14, v4

    .line 266
    .local v14, "startDelay":J
    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 269
    .local v18, "valueType":I
    const/4 v11, 0x0

    .line 271
    .local v11, "evaluator":Landroid/animation/TypeEvaluator;
    if-nez v18, :cond_91

    const/4 v6, 0x1

    .line 273
    .local v6, "getFloats":Z
    :goto_1f
    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 274
    .local v16, "tvFrom":Landroid/util/TypedValue;
    if-eqz v16, :cond_93

    const/4 v7, 0x1

    .line 275
    .local v7, "hasFrom":Z
    :goto_29
    if-eqz v7, :cond_95

    move-object/from16 v0, v16

    iget v8, v0, Landroid/util/TypedValue;->type:I

    .line 276
    .local v8, "fromType":I
    :goto_2f
    const/4 v4, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v17

    .line 277
    .local v17, "tvTo":Landroid/util/TypedValue;
    if-eqz v17, :cond_97

    const/4 v9, 0x1

    .line 278
    .local v9, "hasTo":Z
    :goto_39
    if-eqz v9, :cond_99

    move-object/from16 v0, v17

    iget v10, v0, Landroid/util/TypedValue;->type:I

    .line 282
    .local v10, "toType":I
    :goto_3f
    const/4 v4, 0x2

    move/from16 v0, v18

    if-ne v0, v4, :cond_9b

    .line 283
    invoke-static/range {p0 .. p1}, Landroid/animation/AnimatorInflater;->setupAnimatorForPath(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;)Landroid/animation/TypeEvaluator;

    move-result-object v11

    .line 297
    :goto_48
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 298
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 300
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 301
    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 304
    :cond_68
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 305
    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 309
    :cond_7e
    if-eqz v11, :cond_85

    .line 310
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 313
    :cond_85
    if-eqz p2, :cond_90

    .line 314
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v6, v2}, Landroid/animation/AnimatorInflater;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZF)V

    .line 316
    :cond_90
    return-void

    .line 271
    .end local v6    # "getFloats":Z
    .end local v7    # "hasFrom":Z
    .end local v8    # "fromType":I
    .end local v9    # "hasTo":Z
    .end local v10    # "toType":I
    .end local v16    # "tvFrom":Landroid/util/TypedValue;
    .end local v17    # "tvTo":Landroid/util/TypedValue;
    :cond_91
    const/4 v6, 0x0

    goto :goto_1f

    .line 274
    .restart local v6    # "getFloats":Z
    .restart local v16    # "tvFrom":Landroid/util/TypedValue;
    :cond_93
    const/4 v7, 0x0

    goto :goto_29

    .line 275
    .restart local v7    # "hasFrom":Z
    :cond_95
    const/4 v8, 0x0

    goto :goto_2f

    .line 277
    .restart local v8    # "fromType":I
    .restart local v17    # "tvTo":Landroid/util/TypedValue;
    :cond_97
    const/4 v9, 0x0

    goto :goto_39

    .line 278
    .restart local v9    # "hasTo":Z
    :cond_99
    const/4 v10, 0x0

    goto :goto_3f

    .line 286
    .restart local v10    # "toType":I
    :cond_9b
    if-eqz v7, :cond_a5

    const/16 v4, 0x1c

    if-lt v8, v4, :cond_a5

    const/16 v4, 0x1f

    if-le v8, v4, :cond_af

    :cond_a5
    if-eqz v9, :cond_b4

    const/16 v4, 0x1c

    if-lt v10, v4, :cond_b4

    const/16 v4, 0x1f

    if-gt v10, v4, :cond_b4

    .line 291
    :cond_af
    const/4 v6, 0x0

    .line 292
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v11

    :cond_b4
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 294
    invoke-static/range {v4 .. v10}, Landroid/animation/AnimatorInflater;->setupValues(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZZIZI)V

    goto :goto_48
.end method

.method private static setupAnimatorForPath(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;)Landroid/animation/TypeEvaluator;
    .registers 10
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "fromString":Ljava/lang/String;
    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "toString":Ljava/lang/String;
    invoke-static {v1}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v2

    .line 331
    .local v2, "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    invoke-static {v4}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v3

    .line 333
    .local v3, "nodesTo":[Landroid/util/PathParser$PathDataNode;
    if-eqz v2, :cond_65

    .line 334
    if-eqz v3, :cond_54

    .line 335
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    aput-object v3, v5, v7

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 336
    invoke-static {v2, v3}, Landroid/util/PathParser;->canMorph([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 337
    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Can\'t morph from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 341
    :cond_54
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 343
    :cond_5b
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    .end local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    invoke-static {v2}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>([Landroid/util/PathParser$PathDataNode;)V

    .line 353
    .restart local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_64
    :goto_64
    return-object v0

    .line 344
    :cond_65
    if-eqz v3, :cond_64

    .line 345
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 346
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    .end local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    invoke-static {v3}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>([Landroid/util/PathParser$PathDataNode;)V

    .restart local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    goto :goto_64
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZF)V
    .registers 20
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "getFloats"    # Z
    .param p3, "pixelSize"    # F

    .prologue
    .line 367
    move-object/from16 v3, p0

    check-cast v3, Landroid/animation/ObjectAnimator;

    .line 368
    .local v3, "oa":Landroid/animation/ObjectAnimator;
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "pathData":Ljava/lang/String;
    if-eqz v5, :cond_8e

    .line 373
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 375
    .local v7, "propertyXName":Ljava/lang/String;
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 378
    .local v8, "propertyYName":Ljava/lang/String;
    if-nez v7, :cond_3c

    if-nez v8, :cond_3c

    .line 379
    new-instance v13, Landroid/view/InflateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 382
    :cond_3c
    invoke-static {v5}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v4

    .line 383
    .local v4, "path":Landroid/graphics/Path;
    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v1, v13, p3

    .line 384
    .local v1, "error":F
    invoke-static {v4, v1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;

    move-result-object v2

    .line 387
    .local v2, "keyframeSet":Landroid/animation/PathKeyframes;
    if-eqz p2, :cond_6c

    .line 388
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v10

    .line 389
    .local v10, "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v12

    .line 394
    .local v12, "yKeyframes":Landroid/animation/Keyframes;
    :goto_52
    const/4 v9, 0x0

    .line 395
    .local v9, "x":Landroid/animation/PropertyValuesHolder;
    const/4 v11, 0x0

    .line 396
    .local v11, "y":Landroid/animation/PropertyValuesHolder;
    if-eqz v7, :cond_5a

    .line 397
    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 399
    :cond_5a
    if-eqz v8, :cond_60

    .line 400
    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 402
    :cond_60
    if-nez v9, :cond_75

    .line 403
    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 415
    .end local v1    # "error":F
    .end local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v7    # "propertyXName":Ljava/lang/String;
    .end local v8    # "propertyYName":Ljava/lang/String;
    .end local v9    # "x":Landroid/animation/PropertyValuesHolder;
    .end local v10    # "xKeyframes":Landroid/animation/Keyframes;
    .end local v11    # "y":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "yKeyframes":Landroid/animation/Keyframes;
    :goto_6b
    return-void

    .line 391
    .restart local v1    # "error":F
    .restart local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .restart local v4    # "path":Landroid/graphics/Path;
    .restart local v7    # "propertyXName":Ljava/lang/String;
    .restart local v8    # "propertyYName":Ljava/lang/String;
    :cond_6c
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v10

    .line 392
    .restart local v10    # "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v12

    .restart local v12    # "yKeyframes":Landroid/animation/Keyframes;
    goto :goto_52

    .line 404
    .restart local v9    # "x":Landroid/animation/PropertyValuesHolder;
    .restart local v11    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_75
    if-nez v11, :cond_81

    .line 405
    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_6b

    .line 407
    :cond_81
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_6b

    .line 411
    .end local v1    # "error":F
    .end local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v7    # "propertyXName":Ljava/lang/String;
    .end local v8    # "propertyYName":Ljava/lang/String;
    .end local v9    # "x":Landroid/animation/PropertyValuesHolder;
    .end local v10    # "xKeyframes":Landroid/animation/Keyframes;
    .end local v11    # "y":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "yKeyframes":Landroid/animation/Keyframes;
    :cond_8e
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 413
    .local v6, "propertyName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_6b
.end method

.method private static setupValues(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZZIZI)V
    .registers 13
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "getFloats"    # Z
    .param p3, "hasFrom"    # Z
    .param p4, "fromType"    # I
    .param p5, "hasTo"    # Z
    .param p6, "toType"    # I

    .prologue
    .line 431
    const/4 v1, 0x5

    .line 432
    .local v1, "valueFromIndex":I
    const/4 v3, 0x6

    .line 433
    .local v3, "valueToIndex":I
    if-eqz p2, :cond_53

    .line 436
    if-eqz p3, :cond_3b

    .line 437
    const/4 v4, 0x5

    if-ne p4, v4, :cond_25

    .line 438
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 442
    .local v0, "valueFrom":F
    :goto_e
    if-eqz p5, :cond_31

    .line 443
    const/4 v4, 0x5

    if-ne p6, v4, :cond_2b

    .line 444
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 448
    .local v2, "valueTo":F
    :goto_18
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 499
    .end local v0    # "valueFrom":F
    .end local v2    # "valueTo":F
    :cond_24
    :goto_24
    return-void

    .line 440
    :cond_25
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .restart local v0    # "valueFrom":F
    goto :goto_e

    .line 446
    :cond_2b
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .restart local v2    # "valueTo":F
    goto :goto_18

    .line 450
    .end local v2    # "valueTo":F
    :cond_31
    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_24

    .line 453
    .end local v0    # "valueFrom":F
    :cond_3b
    const/4 v4, 0x5

    if-ne p6, v4, :cond_4d

    .line 454
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 458
    .restart local v2    # "valueTo":F
    :goto_43
    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_24

    .line 456
    .end local v2    # "valueTo":F
    :cond_4d
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .restart local v2    # "valueTo":F
    goto :goto_43

    .line 463
    .end local v2    # "valueTo":F
    :cond_53
    if-eqz p3, :cond_a9

    .line 464
    const/4 v4, 0x5

    if-ne p4, v4, :cond_76

    .line 465
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v0, v4

    .line 472
    .local v0, "valueFrom":I
    :goto_5e
    if-eqz p5, :cond_9e

    .line 473
    const/4 v4, 0x5

    if-ne p6, v4, :cond_8a

    .line 474
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v2, v4

    .line 481
    .local v2, "valueTo":I
    :goto_69
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_24

    .line 466
    .end local v0    # "valueFrom":I
    .end local v2    # "valueTo":I
    :cond_76
    const/16 v4, 0x1c

    if-lt p4, v4, :cond_84

    const/16 v4, 0x1f

    if-gt p4, v4, :cond_84

    .line 468
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .restart local v0    # "valueFrom":I
    goto :goto_5e

    .line 470
    .end local v0    # "valueFrom":I
    :cond_84
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .restart local v0    # "valueFrom":I
    goto :goto_5e

    .line 475
    :cond_8a
    const/16 v4, 0x1c

    if-lt p6, v4, :cond_98

    const/16 v4, 0x1f

    if-gt p6, v4, :cond_98

    .line 477
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .restart local v2    # "valueTo":I
    goto :goto_69

    .line 479
    .end local v2    # "valueTo":I
    :cond_98
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .restart local v2    # "valueTo":I
    goto :goto_69

    .line 483
    .end local v2    # "valueTo":I
    :cond_9e
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_24

    .line 486
    .end local v0    # "valueFrom":I
    :cond_a9
    if-eqz p5, :cond_24

    .line 487
    const/4 v4, 0x5

    if-ne p6, v4, :cond_bf

    .line 488
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v2, v4

    .line 495
    .restart local v2    # "valueTo":I
    :goto_b4
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_24

    .line 489
    .end local v2    # "valueTo":I
    :cond_bf
    const/16 v4, 0x1c

    if-lt p6, v4, :cond_cd

    const/16 v4, 0x1f

    if-gt p6, v4, :cond_cd

    .line 491
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .restart local v2    # "valueTo":I
    goto :goto_b4

    .line 493
    .end local v2    # "valueTo":I
    :cond_cd
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .restart local v2    # "valueTo":I
    goto :goto_b4
.end method
