.class public Landroid/graphics/drawable/StateListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/StateListDrawable$1;,
        Landroid/graphics/drawable/StateListDrawable$StateListState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMutated:Z

.field private mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-class v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/StateListDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    .line 81
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;)V
    .registers 2
    .param p1, "state"    # Landroid/graphics/drawable/StateListDrawable$StateListState;

    .prologue
    .line 345
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 346
    if-eqz p1, :cond_8

    .line 347
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/StateListDrawable$StateListState;)V

    .line 349
    :cond_8
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "state"    # Landroid/graphics/drawable/StateListDrawable$StateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 335
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 336
    new-instance v0, Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .line 337
    .local v0, "newState":Landroid/graphics/drawable/StateListDrawable$StateListState;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/StateListDrawable$StateListState;)V

    .line 338
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 339
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/graphics/drawable/StateListDrawable$StateListState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/StateListDrawable$1;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 91
    if-eqz p2, :cond_e

    .line 92
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    .line 94
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 96
    :cond_e
    return-void
.end method

.method public getStateCount()I
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 236
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getStateDrawableIndex([I)I
    .registers 3
    .param p1, "stateSet"    # [I

    .prologue
    .line 250
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v0

    return v0
.end method

.method getStateListState()Landroid/graphics/drawable/StateListDrawable$StateListState;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    return-object v0
.end method

.method public getStateSet(I)[I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 222
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    iget-object v0, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 23
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
    .line 121
    sget-object v15, Lcom/android/internal/R$styleable;->StateListDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v15}, Landroid/graphics/drawable/StateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 123
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-super {v0, v1, v2, v3, v15}, Landroid/graphics/drawable/DrawableContainer;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    const/16 v16, 0x2

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setVariablePadding(Z)V

    .line 128
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    const/16 v16, 0x3

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setConstantSize(Z)V

    .line 130
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    const/16 v16, 0x4

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setEnterFadeDuration(I)V

    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    const/16 v16, 0x5

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setExitFadeDuration(I)V

    .line 135
    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/StateListDrawable;->setDither(Z)V

    .line 136
    const/4 v15, 0x6

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/StateListDrawable;->setAutoMirrored(Z)V

    .line 138
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    add-int/lit8 v8, v15, 0x1

    .line 144
    .local v8, "innerDepth":I
    :cond_87
    :goto_87
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .local v14, "type":I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_125

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .local v4, "depth":I
    if-ge v4, v8, :cond_97

    const/4 v15, 0x3

    if-eq v14, v15, :cond_125

    .line 146
    :cond_97
    const/4 v15, 0x2

    if-ne v14, v15, :cond_87

    .line 150
    if-gt v4, v8, :cond_87

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "item"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_87

    .line 154
    const/4 v6, 0x0

    .line 157
    .local v6, "drawableRes":I
    const/4 v9, 0x0

    .line 158
    .local v9, "j":I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v11

    .line 159
    .local v11, "numAttrs":I
    new-array v13, v11, [I

    .line 160
    .local v13, "states":[I
    const/4 v7, 0x0

    .local v7, "i":I
    move v10, v9

    .end local v9    # "j":I
    .local v10, "j":I
    :goto_b2
    if-ge v7, v11, :cond_bc

    .line 161
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v12

    .line 162
    .local v12, "stateResId":I
    if-nez v12, :cond_d2

    .line 171
    .end local v12    # "stateResId":I
    :cond_bc
    invoke-static {v13, v10}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v13

    .line 174
    if-eqz v6, :cond_f3

    .line 175
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 188
    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    :goto_ca
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v15, v13, v5}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    goto :goto_87

    .line 163
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "stateResId":I
    :cond_d2
    const v15, 0x1010199

    if-ne v12, v15, :cond_e3

    .line 164
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v15}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v6

    move v9, v10

    .line 160
    .end local v10    # "j":I
    .end local v12    # "stateResId":I
    .restart local v9    # "j":I
    :goto_df
    add-int/lit8 v7, v7, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto :goto_b2

    .line 166
    .restart local v12    # "stateResId":I
    :cond_e3
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v15

    if-eqz v15, :cond_f1

    .end local v12    # "stateResId":I
    :goto_ee
    aput v12, v13, v10

    goto :goto_df

    .restart local v12    # "stateResId":I
    :cond_f1
    neg-int v12, v12

    goto :goto_ee

    .line 177
    .end local v9    # "j":I
    .end local v12    # "stateResId":I
    .restart local v10    # "j":I
    :cond_f3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    const/4 v15, 0x4

    if-eq v14, v15, :cond_f3

    .line 179
    const/4 v15, 0x2

    if-eq v14, v15, :cond_120

    .line 180
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "child tag defining a drawable"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 185
    :cond_120
    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_ca

    .line 191
    .end local v4    # "depth":I
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v6    # "drawableRes":I
    .end local v7    # "i":I
    .end local v10    # "j":I
    .end local v11    # "numAttrs":I
    .end local v13    # "states":[I
    :cond_125
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 192
    return-void
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 7

    .prologue
    .line 255
    iget-boolean v4, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    if-nez v4, :cond_2e

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-ne v4, p0, :cond_2e

    .line 256
    iget-object v4, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    iget-object v3, v4, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 257
    .local v3, "sets":[[I
    array-length v0, v3

    .line 258
    .local v0, "count":I
    iget-object v4, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    new-array v5, v0, [[I

    iput-object v5, v4, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_2b

    .line 260
    aget-object v2, v3, v1

    .line 261
    .local v2, "set":[I
    if-eqz v2, :cond_28

    .line 262
    iget-object v4, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    iget-object v5, v4, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aput-object v4, v5, v1

    .line 259
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 265
    .end local v2    # "set":[I
    :cond_2b
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    .line 267
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "sets":[[I
    :cond_2e
    return-object p0
.end method

.method protected onStateChange([I)Z
    .registers 5
    .param p1, "stateSet"    # [I

    .prologue
    .line 105
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v0

    .line 108
    .local v0, "idx":I
    if-gez v0, :cond_10

    .line 109
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v0

    .line 111
    :cond_10
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 112
    const/4 v1, 0x1

    .line 114
    :goto_17
    return v1

    :cond_18
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    move-result v1

    goto :goto_17
.end method

.method setConstantState(Landroid/graphics/drawable/StateListDrawable$StateListState;)V
    .registers 2
    .param p1, "state"    # Landroid/graphics/drawable/StateListDrawable$StateListState;

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 332
    iput-object p1, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    .line 333
    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setLayoutDirection(I)V

    .line 277
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setLayoutDirection(I)V

    .line 278
    return-void
.end method
