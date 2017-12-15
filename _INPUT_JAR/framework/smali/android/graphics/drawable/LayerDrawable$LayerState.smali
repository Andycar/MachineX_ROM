.class Landroid/graphics/drawable/LayerDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# instance fields
.field private mAutoMirrored:Z

.field mChangingConfigurations:I

.field mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

.field mChildrenChangingConfigurations:I

.field private mHaveIsStateful:Z

.field private mHaveOpacity:Z

.field private mIsStateful:Z

.field mNum:I

.field private mOpacity:I

.field private mPaddingMode:I

.field mThemeAttrs:[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .registers 10
    .param p1, "orig"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "owner"    # Landroid/graphics/drawable/LayerDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v4, 0x0

    .line 1001
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 997
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    .line 999
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    .line 1002
    if-eqz p1, :cond_4a

    .line 1003
    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1004
    .local v3, "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1006
    .local v0, "N":I
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1007
    new-array v4, v0, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1009
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 1010
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 1012
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    if-ge v1, v0, :cond_2d

    .line 1013
    aget-object v2, v3, v1

    .line 1014
    .local v2, "or":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    new-instance v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v5, v2, p2, p3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    aput-object v5, v4, v1

    .line 1012
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1017
    .end local v2    # "or":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2d
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    .line 1018
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 1019
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    .line 1020
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    .line 1021
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    .line 1022
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    .line 1023
    iget-object v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    .line 1028
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :goto_49
    return-void

    .line 1025
    :cond_4a
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1026
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    goto :goto_49
.end method

.method static synthetic access$000(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z
    .registers 2
    .param p0, "x0"    # Landroid/graphics/drawable/LayerDrawable$LayerState;

    .prologue
    .line 983
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p1, "x1"    # Z

    .prologue
    .line 983
    iput-boolean p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return p1
.end method

.method static synthetic access$100(Landroid/graphics/drawable/LayerDrawable$LayerState;)I
    .registers 2
    .param p0, "x0"    # Landroid/graphics/drawable/LayerDrawable$LayerState;

    .prologue
    .line 983
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    return v0
.end method

.method static synthetic access$102(Landroid/graphics/drawable/LayerDrawable$LayerState;I)I
    .registers 2
    .param p0, "x0"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p1, "x1"    # I

    .prologue
    .line 983
    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    return p1
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    .prologue
    .line 1032
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final canConstantState()Z
    .registers 5

    .prologue
    .line 1093
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1094
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1095
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_16

    .line 1096
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-nez v3, :cond_13

    .line 1097
    const/4 v3, 0x0

    .line 1102
    :goto_12
    return v3

    .line 1095
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1102
    :cond_16
    const/4 v3, 0x1

    goto :goto_12
.end method

.method public getChangingConfigurations()I
    .registers 2

    .prologue
    .line 1052
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    return v0
.end method

.method public final getOpacity()I
    .registers 6

    .prologue
    .line 1056
    iget-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    if-eqz v4, :cond_7

    .line 1057
    iget v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 1069
    :goto_6
    return v3

    .line 1060
    :cond_7
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1061
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1062
    .local v0, "N":I
    if-lez v0, :cond_28

    const/4 v4, 0x0

    aget-object v4, v1, v4

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 1063
    .local v3, "op":I
    :goto_16
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_17
    if-ge v2, v0, :cond_2a

    .line 1064
    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    .line 1063
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1062
    .end local v2    # "i":I
    .end local v3    # "op":I
    :cond_28
    const/4 v3, -0x2

    goto :goto_16

    .line 1067
    .restart local v2    # "i":I
    .restart local v3    # "op":I
    :cond_2a
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 1068
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    goto :goto_6
.end method

.method public invalidateCache()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1106
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    .line 1107
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    .line 1108
    return-void
.end method

.method public final isStateful()Z
    .registers 6

    .prologue
    .line 1073
    iget-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    if-eqz v4, :cond_7

    .line 1074
    iget-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    .line 1089
    :goto_6
    return v3

    .line 1077
    :cond_7
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1078
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1079
    .local v0, "N":I
    const/4 v3, 0x0

    .line 1080
    .local v3, "isStateful":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_1a

    .line 1081
    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1082
    const/4 v3, 0x1

    .line 1087
    :cond_1a
    iput-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    .line 1088
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    goto :goto_6

    .line 1080
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1037
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 1042
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1047
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method
