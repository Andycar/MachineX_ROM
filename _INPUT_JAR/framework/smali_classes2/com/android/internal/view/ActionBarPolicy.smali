.class public Lcom/android/internal/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    new-instance v0, Lcom/android/internal/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Lcom/android/internal/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getEmbeddedMenuWidthLimit()I
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getMaxActionButtons()I
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getStackedTabMaxWidth()I
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTabContainerHeight()I
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 67
    iget-object v6, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    sget-object v8, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v9, 0x10102ce

    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    .line 72
    .local v3, "height":I
    iget-object v6, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_3d

    .line 73
    iget-object v1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 74
    .local v1, "activity":Landroid/app/Activity;
    if-nez v1, :cond_26

    .line 75
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "activity is null!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 78
    :cond_26
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBarTabSize()I

    move-result v2

    .line 79
    .local v2, "customHeight":I
    invoke-virtual {v1}, Landroid/app/Activity;->checkNoEmbeddedTabs()Z

    move-result v6

    if-eqz v6, :cond_34

    const/4 v6, -0x1

    if-le v2, v6, :cond_34

    const/4 v5, 0x1

    .line 81
    .local v5, "useCustomHeight":Z
    :cond_34
    iget-object v6, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 82
    .local v4, "r":Landroid/content/res/Resources;
    if-eqz v5, :cond_41

    .line 83
    move v3, v2

    .line 93
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "customHeight":I
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "useCustomHeight":Z
    :cond_3d
    :goto_3d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    return v3

    .line 85
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v2    # "customHeight":I
    .restart local v4    # "r":Landroid/content/res/Resources;
    .restart local v5    # "useCustomHeight":Z
    :cond_41
    invoke-virtual {p0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v6

    if-nez v6, :cond_3d

    .line 87
    const v6, 0x1050050

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_3d
.end method

.method public hasEmbeddedTabs()Z
    .registers 4

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 57
    .local v0, "targetSdk":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1a

    .line 58
    iget-object v1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 63
    :goto_19
    return v1

    :cond_1a
    iget-object v1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    goto :goto_19
.end method

.method public showsOverflowMenuButton()Z
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
