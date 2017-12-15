.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBottom:I

.field private mInitialRules:[I

.field private mIsRtlCompatibilityMode:Z

.field private mLeft:I

.field private mRight:I

.field private mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x12
                to = "alignStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x13
                to = "alignEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x14
                to = "alignParentStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x15
                to = "alignParentEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "startOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "endOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private mRulesChanged:Z

.field private mTop:I


# direct methods
.method public constructor <init>(II)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 1341
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1200
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1229
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1233
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1234
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1342
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 14
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1244
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1200
    const/16 v8, 0x16

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1229
    const/16 v8, 0x16

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1233
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1234
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1246
    sget-object v8, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1249
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v7, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1250
    .local v7, "targetSdkVersion":I
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_54

    const/4 v5, 0x1

    .line 1252
    .local v5, "isSystemApp":Z
    :goto_2c
    const/16 v8, 0x11

    if-ge v7, v8, :cond_32

    if-eqz v5, :cond_3c

    :cond_32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v8

    if-nez v8, :cond_56

    :cond_3c
    const/4 v8, 0x1

    :goto_3d
    iput-boolean v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1255
    iget-object v6, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1257
    .local v6, "rules":[I
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1259
    .local v4, "initialRules":[I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 1260
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_48
    if-ge v3, v0, :cond_16c

    .line 1261
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 1262
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_17a

    .line 1260
    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 1250
    .end local v0    # "N":I
    .end local v2    # "attr":I
    .end local v3    # "i":I
    .end local v4    # "initialRules":[I
    .end local v5    # "isSystemApp":Z
    .end local v6    # "rules":[I
    :cond_54
    const/4 v5, 0x0

    goto :goto_2c

    .line 1252
    .restart local v5    # "isSystemApp":Z
    :cond_56
    const/4 v8, 0x0

    goto :goto_3d

    .line 1264
    .restart local v0    # "N":I
    .restart local v2    # "attr":I
    .restart local v3    # "i":I
    .restart local v4    # "initialRules":[I
    .restart local v6    # "rules":[I
    :pswitch_58
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    goto :goto_51

    .line 1267
    :pswitch_60
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1270
    :pswitch_69
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1273
    :pswitch_72
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1276
    :pswitch_7b
    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1279
    :pswitch_84
    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1282
    :pswitch_8d
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1285
    :pswitch_96
    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1288
    :pswitch_9f
    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1291
    :pswitch_a8
    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto :goto_51

    .line 1294
    :pswitch_b2
    const/16 v9, 0x9

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_bf

    const/4 v8, -0x1

    :goto_bc
    aput v8, v6, v9

    goto :goto_51

    :cond_bf
    const/4 v8, 0x0

    goto :goto_bc

    .line 1297
    :pswitch_c1
    const/16 v9, 0xa

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_ce

    const/4 v8, -0x1

    :goto_cb
    aput v8, v6, v9

    goto :goto_51

    :cond_ce
    const/4 v8, 0x0

    goto :goto_cb

    .line 1300
    :pswitch_d0
    const/16 v9, 0xb

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_de

    const/4 v8, -0x1

    :goto_da
    aput v8, v6, v9

    goto/16 :goto_51

    :cond_de
    const/4 v8, 0x0

    goto :goto_da

    .line 1303
    :pswitch_e0
    const/16 v9, 0xc

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_ee

    const/4 v8, -0x1

    :goto_ea
    aput v8, v6, v9

    goto/16 :goto_51

    :cond_ee
    const/4 v8, 0x0

    goto :goto_ea

    .line 1306
    :pswitch_f0
    const/16 v9, 0xd

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_fe

    const/4 v8, -0x1

    :goto_fa
    aput v8, v6, v9

    goto/16 :goto_51

    :cond_fe
    const/4 v8, 0x0

    goto :goto_fa

    .line 1309
    :pswitch_100
    const/16 v9, 0xe

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_10e

    const/4 v8, -0x1

    :goto_10a
    aput v8, v6, v9

    goto/16 :goto_51

    :cond_10e
    const/4 v8, 0x0

    goto :goto_10a

    .line 1312
    :pswitch_110
    const/16 v9, 0xf

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_11e

    const/4 v8, -0x1

    :goto_11a
    aput v8, v6, v9

    goto/16 :goto_51

    :cond_11e
    const/4 v8, 0x0

    goto :goto_11a

    .line 1315
    :pswitch_120
    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto/16 :goto_51

    .line 1318
    :pswitch_12b
    const/16 v8, 0x11

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto/16 :goto_51

    .line 1321
    :pswitch_136
    const/16 v8, 0x12

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto/16 :goto_51

    .line 1324
    :pswitch_141
    const/16 v8, 0x13

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v6, v8

    goto/16 :goto_51

    .line 1327
    :pswitch_14c
    const/16 v9, 0x14

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_15a

    const/4 v8, -0x1

    :goto_156
    aput v8, v6, v9

    goto/16 :goto_51

    :cond_15a
    const/4 v8, 0x0

    goto :goto_156

    .line 1330
    :pswitch_15c
    const/16 v9, 0x15

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_16a

    const/4 v8, -0x1

    :goto_166
    aput v8, v6, v9

    goto/16 :goto_51

    :cond_16a
    const/4 v8, 0x0

    goto :goto_166

    .line 1334
    .end local v2    # "attr":I
    :cond_16c
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1335
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x16

    invoke-static {v6, v8, v4, v9, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1337
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1338
    return-void

    .line 1262
    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_60
        :pswitch_69
        :pswitch_72
        :pswitch_7b
        :pswitch_84
        :pswitch_8d
        :pswitch_96
        :pswitch_9f
        :pswitch_a8
        :pswitch_b2
        :pswitch_c1
        :pswitch_d0
        :pswitch_e0
        :pswitch_f0
        :pswitch_100
        :pswitch_110
        :pswitch_58
        :pswitch_120
        :pswitch_12b
        :pswitch_136
        :pswitch_141
        :pswitch_14c
        :pswitch_15c
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 1348
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1200
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1229
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1233
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1234
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1349
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 5
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 1355
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1200
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1229
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1233
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1234
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1356
    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 6
    .param p1, "source"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    const/16 v3, 0x16

    const/4 v2, 0x0

    .line 1365
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1200
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1229
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1233
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1234
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1367
    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1368
    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1369
    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 1371
    iget-object v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1372
    iget-object v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1374
    return-void
.end method

.method static synthetic access$100(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1199
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1199
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p1
.end method

.method static synthetic access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1199
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$120(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1199
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1199
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1199
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p1
.end method

.method static synthetic access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1199
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$220(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1199
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1199
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1199
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p1
.end method

.method static synthetic access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1199
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1199
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1199
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p1
.end method

.method static synthetic access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1199
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1199
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method private hasRelativeRules()Z
    .registers 3

    .prologue
    .line 1436
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    if-nez v0, :cond_30

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x11

    aget v0, v0, v1

    if-nez v0, :cond_30

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    if-nez v0, :cond_30

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x13

    aget v0, v0, v1

    if-nez v0, :cond_30

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    if-nez v0, :cond_30

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x15

    aget v0, v0, v1

    if-eqz v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method private resolveRules(I)V
    .registers 11
    .param p1, "layoutDirection"    # I

    .prologue
    const/16 v6, 0x12

    const/16 v8, 0x11

    const/16 v7, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1455
    if-ne p1, v1, :cond_c9

    move v0, v1

    .line 1458
    .local v0, "isLayoutRtl":Z
    :goto_b
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x16

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1461
    iget-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    if-eqz v3, :cond_cc

    .line 1462
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v6

    if-eqz v3, :cond_32

    .line 1463
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    if-nez v3, :cond_2e

    .line 1466
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v6

    aput v5, v3, v4

    .line 1468
    :cond_2e
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v6

    .line 1471
    :cond_32
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    if-eqz v3, :cond_52

    .line 1472
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    if-nez v3, :cond_4c

    .line 1475
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v6, 0x13

    aget v5, v5, v6

    aput v5, v3, v4

    .line 1477
    :cond_4c
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aput v2, v3, v4

    .line 1480
    :cond_52
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v7

    if-eqz v3, :cond_6a

    .line 1481
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v2

    if-nez v3, :cond_66

    .line 1484
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v7

    aput v4, v3, v2

    .line 1486
    :cond_66
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v7

    .line 1489
    :cond_6a
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v8

    if-eqz v3, :cond_82

    .line 1490
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v1

    if-nez v3, :cond_7e

    .line 1493
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v8

    aput v4, v3, v1

    .line 1495
    :cond_7e
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v8

    .line 1498
    :cond_82
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aget v1, v1, v3

    if-eqz v1, :cond_a4

    .line 1499
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x9

    aget v1, v1, v3

    if-nez v1, :cond_9e

    .line 1502
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x9

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x14

    aget v4, v4, v5

    aput v4, v1, v3

    .line 1504
    :cond_9e
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aput v2, v1, v3

    .line 1507
    :cond_a4
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aget v1, v1, v3

    if-eqz v1, :cond_c6

    .line 1508
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0xb

    aget v1, v1, v3

    if-nez v1, :cond_c0

    .line 1511
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0xb

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x15

    aget v4, v4, v5

    aput v4, v1, v3

    .line 1513
    :cond_c0
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aput v2, v1, v3

    .line 1568
    :cond_c6
    :goto_c6
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1569
    return-void

    .end local v0    # "isLayoutRtl":Z
    :cond_c9
    move v0, v2

    .line 1455
    goto/16 :goto_b

    .line 1517
    .restart local v0    # "isLayoutRtl":Z
    :cond_cc
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v6

    if-nez v3, :cond_da

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    if-eqz v3, :cond_f2

    :cond_da
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    if-nez v3, :cond_e8

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    if-eqz v3, :cond_f2

    .line 1520
    :cond_e8
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    aput v2, v3, v4

    .line 1521
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    aput v2, v3, v4

    .line 1523
    :cond_f2
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v6

    if-eqz v3, :cond_107

    .line 1525
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1d2

    const/4 v3, 0x7

    :goto_fd
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v6

    aput v5, v4, v3

    .line 1526
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v6

    .line 1528
    :cond_107
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    if-eqz v3, :cond_122

    .line 1530
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1d5

    const/4 v3, 0x5

    :goto_114
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v6, 0x13

    aget v5, v5, v6

    aput v5, v4, v3

    .line 1531
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aput v2, v3, v4

    .line 1534
    :cond_122
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v7

    if-nez v3, :cond_12e

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v8

    if-eqz v3, :cond_142

    :cond_12e
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v2

    if-nez v3, :cond_13a

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v1

    if-eqz v3, :cond_142

    .line 1537
    :cond_13a
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v2

    .line 1538
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v1

    .line 1540
    :cond_142
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v7

    if-eqz v3, :cond_157

    .line 1542
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1d8

    move v3, v1

    :goto_14d
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v7

    aput v5, v4, v3

    .line 1543
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v7

    .line 1545
    :cond_157
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v8

    if-eqz v3, :cond_16c

    .line 1547
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_162

    move v1, v2

    :cond_162
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v8

    aput v4, v3, v1

    .line 1548
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v8

    .line 1551
    :cond_16c
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aget v1, v1, v3

    if-nez v1, :cond_17c

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aget v1, v1, v3

    if-eqz v1, :cond_198

    :cond_17c
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x9

    aget v1, v1, v3

    if-nez v1, :cond_18c

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0xb

    aget v1, v1, v3

    if-eqz v1, :cond_198

    .line 1554
    :cond_18c
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x9

    aput v2, v1, v3

    .line 1555
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0xb

    aput v2, v1, v3

    .line 1557
    :cond_198
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aget v1, v1, v3

    if-eqz v1, :cond_1b4

    .line 1559
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1db

    const/16 v1, 0xb

    :goto_1a6
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x14

    aget v4, v4, v5

    aput v4, v3, v1

    .line 1560
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aput v2, v1, v3

    .line 1562
    :cond_1b4
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aget v1, v1, v3

    if-eqz v1, :cond_c6

    .line 1564
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1de

    const/16 v1, 0x9

    :goto_1c2
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x15

    aget v4, v4, v5

    aput v4, v3, v1

    .line 1565
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aput v2, v1, v3

    goto/16 :goto_c6

    .line 1525
    :cond_1d2
    const/4 v3, 0x5

    goto/16 :goto_fd

    .line 1530
    :cond_1d5
    const/4 v3, 0x7

    goto/16 :goto_114

    :cond_1d8
    move v3, v2

    .line 1542
    goto/16 :goto_14d

    .line 1559
    :cond_1db
    const/16 v1, 0x9

    goto :goto_1a6

    .line 1564
    :cond_1de
    const/16 v1, 0xb

    goto :goto_1c2
.end method


# virtual methods
.method public addRule(I)V
    .registers 4
    .param p1, "verb"    # I

    .prologue
    const/4 v1, -0x1

    .line 1395
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v0, p1

    .line 1396
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput v1, v0, p1

    .line 1397
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1398
    return-void
.end method

.method public addRule(II)V
    .registers 4
    .param p1, "verb"    # I
    .param p2, "anchor"    # I

    .prologue
    .line 1415
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    .line 1416
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput p2, v0, p1

    .line 1417
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1418
    return-void
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "output"    # Ljava/lang/String;

    .prologue
    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRules()[I
    .registers 2

    .prologue
    .line 1605
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public getRules(I)[I
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1586
    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1c

    .line 1588
    :cond_10
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 1589
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1c

    .line 1590
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setLayoutDirection(I)V

    .line 1593
    :cond_1c
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public removeRule(I)V
    .registers 4
    .param p1, "verb"    # I

    .prologue
    const/4 v1, 0x0

    .line 1430
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v0, p1

    .line 1431
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput v1, v0, p1

    .line 1432
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1433
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1610
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->isLayoutRtl()Z

    move-result v0

    .line 1611
    .local v0, "isLayoutRtl":Z
    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v1

    if-eq p1, v1, :cond_13

    .line 1612
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 1615
    :cond_13
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 1616
    return-void
.end method
