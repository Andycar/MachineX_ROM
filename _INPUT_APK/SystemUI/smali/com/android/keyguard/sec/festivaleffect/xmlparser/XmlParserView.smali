.class public Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;
.super Landroid/widget/FrameLayout;
.source "XmlParserView.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

.field private mContext:Landroid/content/Context;

.field private mIsAnimationPlay:Z

.field private mIsParserSuccess:Z

.field private mIsThemeManagerOpen:Z

.field private mPackageName:Ljava/lang/String;

.field private mXmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "XmlParserView"

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsParserSuccess:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsThemeManagerOpen:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v2, "XmlParserView"

    iput-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsParserSuccess:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsThemeManagerOpen:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    iput-object p1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsThemeManagerOpen:Z

    const-string v2, "XmlParserView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XmlName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Default package name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->setBackgroundColor(I)V

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->getContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->parserAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsParserSuccess:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string v0, "XmlParserView"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->stopAnimation()V

    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public isParserSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsParserSuccess:Z

    return v0
.end method

.method public parserAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v30, 0x0

    const/16 v26, 0x0

    const/4 v14, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v32, 0x0

    const/16 v31, -0x2

    const/16 v19, -0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v13, v5, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsThemeManagerOpen:Z

    if-eqz v5, :cond_1

    new-instance v25, Lcom/samsung/android/theme/SThemeManager;

    const/4 v5, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/samsung/android/theme/SThemeManager;->getItemXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v32

    :goto_0
    new-instance v5, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    invoke-direct {v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v17

    :goto_1
    const/4 v5, 0x1

    move/from16 v0, v17

    if-eq v0, v5, :cond_e0

    if-nez v17, :cond_2

    :cond_0
    :goto_2
    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    const-string v6, "xml"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v32

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    move/from16 v0, v17

    if-ne v0, v5, :cond_cf

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v28

    const-string v5, "view"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v30, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$FrameImageView;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$FrameImageView;-><init>(Landroid/content/Context;)V

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    if-ge v0, v15, :cond_0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v29

    const-string v5, "img"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsThemeManagerOpen:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$FrameImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    :cond_4
    const-string v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$FrameImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_5
    const-string v5, "x"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$FrameImageView;->setX(F)V

    goto :goto_4

    :cond_6
    const-string v5, "y"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$FrameImageView;->setY(F)V

    goto :goto_4

    :cond_7
    const-string v5, "width"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v31, v0

    goto :goto_4

    :cond_8
    const-string v5, "height"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v19, v0

    goto :goto_4

    :cond_9
    const-string v5, "pivotX"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$FrameImageView;->setPivotX(F)V

    goto/16 :goto_4

    :cond_a
    const-string v5, "pivotY"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$FrameImageView;->setPivotY(F)V

    goto/16 :goto_4

    :cond_b
    const-string v5, "alpha"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$FrameImageView;->setAlpha(F)V

    goto/16 :goto_4

    :cond_c
    const-string v5, "scaleX"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$FrameImageView;->setScaleX(F)V

    goto/16 :goto_4

    :cond_d
    const-string v5, "scaleY"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$FrameImageView;->setScaleY(F)V

    goto/16 :goto_4

    :cond_e
    const-string v5, "scene"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    if-ge v0, v15, :cond_0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v29

    const-string v5, "type"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "snow"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v27, Lcom/android/keyguard/sec/festivaleffect/xmlparser/SnowView;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/SnowView;-><init>(Landroid/content/Context;)V

    move-object/from16 v26, v27

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/sec/festivaleffect/common/LockscreenCallback;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    :cond_f
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    :cond_10
    const-string v5, "rain"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v23, Lcom/android/keyguard/sec/festivaleffect/xmlparser/RainView;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/RainView;-><init>(Landroid/content/Context;)V

    move-object/from16 v26, v23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/sec/festivaleffect/common/LockscreenCallback;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    goto :goto_6

    :cond_11
    const-string v5, "leaf"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v21, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;-><init>(Landroid/content/Context;)V

    move-object/from16 v26, v21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/sec/festivaleffect/common/LockscreenCallback;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    goto :goto_6

    :cond_12
    const-string v5, "flower"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v18, Lcom/android/keyguard/sec/festivaleffect/xmlparser/FlowerView;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/FlowerView;-><init>(Landroid/content/Context;)V

    move-object/from16 v26, v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/sec/festivaleffect/common/LockscreenCallback;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    goto :goto_6

    :cond_13
    const-string v5, "rotate"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v14, 0x0

    new-instance v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;

    invoke-direct {v14}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;-><init>()V

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    if-ge v0, v15, :cond_0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v29

    const-string v5, "fromDegrees"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    :cond_14
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    :cond_15
    const-string v5, "toDegrees"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    goto :goto_8

    :cond_16
    const-string v5, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->duration:J

    goto :goto_8

    :cond_17
    const-string v5, "repeatCount"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatCount:I

    goto :goto_8

    :cond_18
    const-string v5, "repeatMode"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatMode:I

    goto :goto_8

    :cond_19
    const-string v5, "delay"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->delay:J

    goto :goto_8

    :cond_1a
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_8

    :cond_1b
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_8

    :cond_1c
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_8

    :cond_1d
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_8

    :cond_1e
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_8

    :cond_1f
    const-string v5, "normalSpeed"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x0

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_8

    :cond_20
    const-string v5, "parabola"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v14, 0x0

    new-instance v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;

    invoke-direct {v14}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;-><init>()V

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    const/16 v20, 0x0

    :goto_9
    move/from16 v0, v20

    if-ge v0, v15, :cond_0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v29

    const-string v5, "key"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->key:F

    :cond_21
    :goto_a
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    :cond_22
    const-string v5, "xFrom"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    goto :goto_a

    :cond_23
    const-string v5, "xTo"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    goto :goto_a

    :cond_24
    const-string v5, "xOffSet"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->xOffSet:F

    goto :goto_a

    :cond_25
    const-string v5, "yOffSet"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->yOffSet:F

    goto :goto_a

    :cond_26
    const-string v5, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->duration:J

    goto :goto_a

    :cond_27
    const-string v5, "repeatCount"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatCount:I

    goto :goto_a

    :cond_28
    const-string v5, "repeatMode"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_a

    :cond_29
    const-string v5, "delay"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->delay:J

    goto/16 :goto_a

    :cond_2a
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    :cond_2b
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    :cond_2c
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    :cond_2d
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    :cond_2e
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    :cond_2f
    const-string v5, "normalSpeed"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v5, 0x0

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    :cond_30
    const-string v5, "sinX"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/4 v14, 0x0

    new-instance v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;

    invoke-direct {v14}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;-><init>()V

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    const/16 v20, 0x0

    :goto_b
    move/from16 v0, v20

    if-ge v0, v15, :cond_0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v29

    const-string v5, "key"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->key:F

    :cond_31
    :goto_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    :cond_32
    const-string v5, "adjust"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->adjust:F

    goto :goto_c

    :cond_33
    const-string v5, "xFrom"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    goto :goto_c

    :cond_34
    const-string v5, "xTo"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    goto :goto_c

    :cond_35
    const-string v5, "xOffSet"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->xOffSet:F

    goto :goto_c

    :cond_36
    const-string v5, "yOffSet"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->yOffSet:F

    goto :goto_c

    :cond_37
    const-string v5, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->duration:J

    goto :goto_c

    :cond_38
    const-string v5, "repeatCount"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_c

    :cond_39
    const-string v5, "repeatMode"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_c

    :cond_3a
    const-string v5, "delay"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->delay:J

    goto/16 :goto_c

    :cond_3b
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_3c
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_3d
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_3e
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_3f
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_40
    const-string v5, "normalSpeed"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    const/4 v5, 0x0

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_41
    const-string v5, "sinY"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    const/4 v14, 0x0

    new-instance v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;

    invoke-direct {v14}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;-><init>()V

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    const/16 v20, 0x0

    :goto_d
    move/from16 v0, v20

    if-ge v0, v15, :cond_0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v29

    const-string v5, "key"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->key:F

    :cond_42
    :goto_e
    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    :cond_43
    const-string v5, "adjust"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->adjust:F

    goto :goto_e

    :cond_44
    const-string v5, "yFrom"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    goto :goto_e

    :cond_45
    const-string v5, "yTo"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    goto :goto_e

    :cond_46
    const-string v5, "yOffSet"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->yOffSet:F

    goto :goto_e

    :cond_47
    const-string v5, "xOffSet"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->xOffSet:F

    goto :goto_e

    :cond_48
    const-string v5, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->duration:J

    goto :goto_e

    :cond_49
    const-string v5, "repeatCount"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_e

    :cond_4a
    const-string v5, "repeatMode"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_e

    :cond_4b
    const-string v5, "delay"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->delay:J

    goto/16 :goto_e

    :cond_4c
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_4d
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_4e
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_4f
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_50
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_51
    const-string v5, "normalSpeed"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    const/4 v5, 0x0

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_52
    const-string v5, "round"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    const/4 v14, 0x0

    new-instance v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;

    invoke-direct {v14}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;-><init>()V

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    const/16 v20, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v0, v15, :cond_0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v29

    const-string v5, "r"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->r:F

    :cond_53
    :goto_10
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    :cond_54
    const-string v5, "a"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->a:F

    goto :goto_10

    :cond_55
    const-string v5, "b"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->b:F

    goto :goto_10

    :cond_56
    const-string v5, "fromDegrees"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    goto :goto_10

    :cond_57
    const-string v5, "toDegrees"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    goto :goto_10

    :cond_58
    const-string v5, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->duration:J

    goto :goto_10

    :cond_59
    const-string v5, "repeatCount"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatCount:I

    goto :goto_10

    :cond_5a
    const-string v5, "repeatMode"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_10

    :cond_5b
    const-string v5, "delay"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->delay:J

    goto/16 :goto_10

    :cond_5c
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_5d
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_5e
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_5f
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_60
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_61

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_61
    const-string v5, "normalSpeed"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    const/4 v5, 0x0

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_62
    const-string v5, "ellipse"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    const/4 v14, 0x0

    new-instance v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;

    invoke-direct {v14}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;-><init>()V

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    const/16 v20, 0x0

    :goto_11
    move/from16 v0, v20

    if-ge v0, v15, :cond_0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v29

    const-string v5, "ra"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->ra:F

    :cond_63
    :goto_12
    add-int/lit8 v20, v20, 0x1

    goto :goto_11

    :cond_64
    const-string v5, "rb"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->rb:F

    goto :goto_12

    :cond_65
    const-string v5, "a"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->a:F

    goto :goto_12

    :cond_66
    const-string v5, "b"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->b:F

    goto :goto_12

    :cond_67
    const-string v5, "fromDegrees"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    goto :goto_12

    :cond_68
    const-string v5, "toDegrees"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    goto :goto_12

    :cond_69
    const-string v5, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->duration:J

    goto :goto_12

    :cond_6a
    const-string v5, "repeatCount"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_12

    :cond_6b
    const-string v5, "repeatMode"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_12

    :cond_6c
    const-string v5, "delay"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->delay:J

    goto/16 :goto_12

    :cond_6d
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_6e
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_6f
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_70
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_71
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_72

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_72
    const-string v5, "normalSpeed"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    const/4 v5, 0x0

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_73
    const-string v5, "alpha"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    const/4 v14, 0x0

    new-instance v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;

    invoke-direct {v14}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;-><init>()V

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    const/16 v20, 0x0

    :goto_13
    move/from16 v0, v20

    if-ge v0, v15, :cond_0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v29

    const-string v5, "fromAlpha"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    :cond_74
    :goto_14
    add-int/lit8 v20, v20, 0x1

    goto :goto_13

    :cond_75
    const-string v5, "toAlpha"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    goto :goto_14

    :cond_76
    const-string v5, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->duration:J

    goto :goto_14

    :cond_77
    const-string v5, "repeatCount"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatCount:I

    goto :goto_14

    :cond_78
    const-string v5, "repeatMode"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatMode:I

    goto :goto_14

    :cond_79
    const-string v5, "delay"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->delay:J

    goto :goto_14

    :cond_7a
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_14

    :cond_7b
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_14

    :cond_7c
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_7d
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_7e
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7f

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_7f
    const-string v5, "normalSpeed"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    const/4 v5, 0x0

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_80
    const-string v5, "translateX"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8d

    const/4 v14, 0x0

    new-instance v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;

    invoke-direct {v14}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;-><init>()V

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    const/16 v20, 0x0

    :goto_15
    move/from16 v0, v20

    if-ge v0, v15, :cond_0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v29

    const-string v5, "fromXDelta"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    :cond_81
    :goto_16
    add-int/lit8 v20, v20, 0x1

    goto :goto_15

    :cond_82
    const-string v5, "toXDelta"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    goto :goto_16

    :cond_83
    const-string v5, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_84

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->duration:J

    goto :goto_16

    :cond_84
    const-string v5, "repeatCount"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatCount:I

    goto :goto_16

    :cond_85
    const-string v5, "repeatMode"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatMode:I

    goto :goto_16

    :cond_86
    const-string v5, "delay"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->delay:J

    goto :goto_16

    :cond_87
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_16

    :cond_88
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    :cond_89
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8b

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    :cond_8a
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    :cond_8b
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8c

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    :cond_8c
    const-string v5, "normalSpeed"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_81

    const/4 v5, 0x0

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    :cond_8d
    const-string v5, "translateY"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9a

    const/4 v14, 0x0

    new-instance v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;

    invoke-direct {v14}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;-><init>()V

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    const/16 v20, 0x0

    :goto_17
    move/from16 v0, v20

    if-ge v0, v15, :cond_0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v29

    const-string v5, "fromYDelta"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    :cond_8e
    :goto_18
    add-int/lit8 v20, v20, 0x1

    goto :goto_17

    :cond_8f
    const-string v5, "toYDelta"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v13

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    goto :goto_18

    :cond_90
    const-string v5, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->duration:J

    goto :goto_18

    :cond_91
    const-string v5, "repeatCount"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatCount:I

    goto :goto_18

    :cond_92
    const-string v5, "repeatMode"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatMode:I

    goto :goto_18

    :cond_93
    const-string v5, "delay"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->delay:J

    goto :goto_18

    :cond_94
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_96

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_18

    :cond_95
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    :cond_96
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    :cond_97
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    :cond_98
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_99

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    :cond_99
    const-string v5, "normalSpeed"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8e

    const/4 v5, 0x0

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    :cond_9a
    const-string v5, "scaleX"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a7

    const/4 v14, 0x0

    new-instance v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;

    invoke-direct {v14}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;-><init>()V

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    const/16 v20, 0x0

    :goto_19
    move/from16 v0, v20

    if-ge v0, v15, :cond_0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v29

    const-string v5, "fromXScale"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    :cond_9b
    :goto_1a
    add-int/lit8 v20, v20, 0x1

    goto :goto_19

    :cond_9c
    const-string v5, "toXScale"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    goto :goto_1a

    :cond_9d
    const-string v5, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9e

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->duration:J

    goto :goto_1a

    :cond_9e
    const-string v5, "repeatCount"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatCount:I

    goto :goto_1a

    :cond_9f
    const-string v5, "repeatMode"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatMode:I

    goto :goto_1a

    :cond_a0
    const-string v5, "delay"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->delay:J

    goto :goto_1a

    :cond_a1
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a3

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a2

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1a

    :cond_a2
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1a

    :cond_a3
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a5

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    :cond_a4
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    :cond_a5
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a6

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    :cond_a6
    const-string v5, "normalSpeed"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9b

    const/4 v5, 0x0

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    :cond_a7
    const-string v5, "scaleY"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    const/4 v14, 0x0

    new-instance v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;

    invoke-direct {v14}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;-><init>()V

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    const/16 v20, 0x0

    :goto_1b
    move/from16 v0, v20

    if-ge v0, v15, :cond_0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v29

    const-string v5, "fromYScale"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a9

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    :cond_a8
    :goto_1c
    add-int/lit8 v20, v20, 0x1

    goto :goto_1b

    :cond_a9
    const-string v5, "toYScale"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_aa

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    goto :goto_1c

    :cond_aa
    const-string v5, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ab

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->duration:J

    goto :goto_1c

    :cond_ab
    const-string v5, "repeatCount"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatCount:I

    goto :goto_1c

    :cond_ac
    const-string v5, "repeatMode"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ad

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatMode:I

    goto :goto_1c

    :cond_ad
    const-string v5, "delay"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ae

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->delay:J

    goto :goto_1c

    :cond_ae
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b0

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1c

    :cond_af
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1c

    :cond_b0
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b2

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    :cond_b1
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    :cond_b2
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b3

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    :cond_b3
    const-string v5, "normalSpeed"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a8

    const/4 v5, 0x0

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    :cond_b4
    const-string v5, "ImageResource"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c2

    const/4 v14, 0x0

    new-instance v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;

    invoke-direct {v14}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;-><init>()V

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    const/16 v20, 0x0

    :goto_1d
    move/from16 v0, v20

    if-ge v0, v15, :cond_0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v29

    const-string v5, "length"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b6

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->length:I

    :cond_b5
    :goto_1e
    add-int/lit8 v20, v20, 0x1

    goto :goto_1d

    :cond_b6
    const-string v5, "image"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b8

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsThemeManagerOpen:Z

    if-eqz v5, :cond_b7

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/theme/SThemeManager;->getCurrentContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "drawable"

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/theme/SThemeManager;->getCurrentContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->imageViewId:I

    goto :goto_1e

    :cond_b7
    const-string v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->imageViewId:I

    goto :goto_1e

    :cond_b8
    const-string v5, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b9

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->duration:J

    goto :goto_1e

    :cond_b9
    const-string v5, "repeatCount"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ba

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatCount:I

    goto :goto_1e

    :cond_ba
    const-string v5, "repeatMode"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bb

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatMode:I

    goto :goto_1e

    :cond_bb
    const-string v5, "delay"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bc

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->delay:J

    goto/16 :goto_1e

    :cond_bc
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_be

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bd

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    :cond_bd
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    :cond_be
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c0

    const-string v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    :cond_bf
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    :cond_c0
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c1

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    :cond_c1
    const-string v5, "normalSpeed"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    const/4 v5, 0x0

    iput-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    :cond_c2
    const-string v5, "frame"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c5

    const/4 v14, 0x0

    new-instance v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;

    invoke-direct {v14}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;-><init>()V

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    const/16 v20, 0x0

    :goto_1f
    move/from16 v0, v20

    if-ge v0, v15, :cond_0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    const-string v5, "top"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c4

    move/from16 v0, v29

    iput v0, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->top:I

    :cond_c3
    :goto_20
    add-int/lit8 v20, v20, 0x1

    goto :goto_1f

    :cond_c4
    const-string v5, "minInterval"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c3

    move/from16 v0, v29

    iput v0, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->minInterval:I

    goto :goto_20

    :cond_c5
    const-string v5, "item"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    if-eqz v14, :cond_0

    const/16 v20, 0x0

    :goto_21
    move/from16 v0, v20

    if-ge v0, v15, :cond_0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v29

    const-string v5, "frameSize"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c7

    iget-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c6
    :goto_22
    add-int/lit8 v20, v20, 0x1

    goto :goto_21

    :cond_c7
    const-string v5, "image"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c9

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsThemeManagerOpen:Z

    if-eqz v5, :cond_c8

    iget-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/theme/SThemeManager;->getCurrentContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/theme/SThemeManager;->getCurrentContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v6, v0, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_c8
    iget-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    const-string v6, "drawable"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_c9
    const-string v5, "background"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cb

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsThemeManagerOpen:Z

    if-eqz v5, :cond_ca

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/theme/SThemeManager;->getCurrentContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "drawable"

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/theme/SThemeManager;->getCurrentContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->backgroundId:I

    goto :goto_22

    :cond_ca
    const-string v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->backgroundId:I

    goto/16 :goto_22

    :cond_cb
    const-string v5, "x"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cc

    iget-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->x:Ljava/util/ArrayList;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    :cond_cc
    const-string v5, "y"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cd

    iget-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->y:Ljava/util/ArrayList;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    :cond_cd
    const-string v5, "scale"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ce

    iget-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    :cond_ce
    const-string v5, "startIndex"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c6

    iget-object v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    :cond_cf
    const/4 v5, 0x3

    move/from16 v0, v17

    if-ne v0, v5, :cond_0

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v5, "view"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    const/16 v31, -0x2

    const/16 v19, -0x2

    goto/16 :goto_2

    :cond_d0
    const-string v5, "rotate"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d1

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    const-string v6, "rotation"

    move-object/from16 v0, v30

    invoke-virtual {v14, v0, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d1
    const-string v5, "parabola"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d2

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    const-string v6, "parabola"

    move-object/from16 v0, v30

    invoke-virtual {v14, v0, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d2
    const-string v5, "sinX"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d3

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    const-string v6, "sinX"

    move-object/from16 v0, v30

    invoke-virtual {v14, v0, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d3
    const-string v5, "sinY"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d4

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    const-string v6, "sinY"

    move-object/from16 v0, v30

    invoke-virtual {v14, v0, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d4
    const-string v5, "round"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d5

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    const-string v6, "round"

    move-object/from16 v0, v30

    invoke-virtual {v14, v0, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d5
    const-string v5, "ellipse"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d6

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    const-string v6, "ellipse"

    move-object/from16 v0, v30

    invoke-virtual {v14, v0, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d6
    const-string v5, "alpha"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d7

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    const-string v6, "alpha"

    move-object/from16 v0, v30

    invoke-virtual {v14, v0, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d7
    const-string v5, "translateX"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d8

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    const-string v6, "x"

    move-object/from16 v0, v30

    invoke-virtual {v14, v0, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d8
    const-string v5, "translateY"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d9

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    const-string v6, "y"

    move-object/from16 v0, v30

    invoke-virtual {v14, v0, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d9
    const-string v5, "scaleX"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_da

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    const-string v6, "scaleX"

    move-object/from16 v0, v30

    invoke-virtual {v14, v0, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_da
    const-string v5, "scaleY"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_db

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    const-string v6, "scaleY"

    move-object/from16 v0, v30

    invoke-virtual {v14, v0, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_db
    const-string v5, "ImageResource"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_de

    if-eqz v30, :cond_dc

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsThemeManagerOpen:Z

    if-eqz v5, :cond_dd

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/theme/SThemeManager;->getCurrentContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$FrameImageView;->setApkContext(Landroid/content/Context;)V

    :cond_dc
    :goto_23
    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    const-string v6, "ImageResource"

    move-object/from16 v0, v30

    invoke-virtual {v14, v0, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_dd
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$FrameImageView;->setApkContext(Landroid/content/Context;)V

    goto :goto_23

    :cond_de
    const-string v5, "frame"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsThemeManagerOpen:Z

    if-eqz v5, :cond_df

    new-instance v4, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Frame;

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/theme/SThemeManager;->getCurrentContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->backgroundId:I

    iget-object v7, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    iget-object v8, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    iget-object v9, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->x:Ljava/util/ArrayList;

    iget-object v10, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->y:Ljava/util/ArrayList;

    iget-object v11, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    iget-object v12, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    invoke-direct/range {v4 .. v12}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Frame;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_24
    iget v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->top:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Frame;->setTop(I)V

    iget v5, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->minInterval:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Frame;->setMinInterval(I)V

    const/4 v5, -0x2

    const/4 v6, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->addSprite(Lcom/android/keyguard/sec/festivaleffect/xmlparser/Frame;)V

    goto/16 :goto_2

    :cond_df
    new-instance v4, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Frame;

    iget v6, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->backgroundId:I

    iget-object v7, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    iget-object v8, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    iget-object v9, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->x:Ljava/util/ArrayList;

    iget-object v10, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->y:Ljava/util/ArrayList;

    iget-object v11, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    iget-object v12, v14, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v12}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Frame;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_24

    :cond_e0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    return-object v5
.end method

.method public pauseAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    const-string v0, "XmlParserView"

    const-string v1, "pauseAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->pauseAnimation()V

    :cond_0
    return-void
.end method

.method public playAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    if-nez v0, :cond_0

    const-string v0, "XmlParserView"

    const-string v1, "playAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->playAnimation()V

    :cond_0
    return-void
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public resumeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    const-string v0, "XmlParserView"

    const-string v1, "resumeAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->resumeAnimation()V

    :cond_0
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    const-string v0, "XmlParserView"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->stopAnimation()V

    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "XmlParserView"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->playAnimation()V

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "XmlParserView"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->playAnimation()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    if-eqz v0, :cond_0

    const-string v0, "XmlParserView"

    const-string v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/ComplexAnimation;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method
