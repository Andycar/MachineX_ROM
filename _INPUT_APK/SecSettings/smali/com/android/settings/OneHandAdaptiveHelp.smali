.class public Lcom/android/settings/OneHandAdaptiveHelp;
.super Landroid/app/Fragment;
.source "OneHandAdaptiveHelp.java"


# static fields
.field private static final mAnimationImageLeft:[I

.field private static final mAnimationImageRight:[I


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationViewLeft:Landroid/widget/ImageView;

.field private mAnimationViewRight:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mEnabler:Lcom/android/settings/OneHandAdaptiveEnabler;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/OneHandAdaptiveHelp;->mAnimationImageLeft:[I

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/OneHandAdaptiveHelp;->mAnimationImageRight:[I

    return-void

    .line 52
    :array_0
    .array-data 4
        0x7f020103
        0x7f020104
    .end array-data

    .line 56
    :array_1
    .array-data 4
        0x7f020105
        0x7f020106
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/settings/OneHandAdaptiveHelp;->mEnabler:Lcom/android/settings/OneHandAdaptiveEnabler;

    .line 46
    iput-object v1, p0, Lcom/android/settings/OneHandAdaptiveHelp;->mContext:Landroid/content/Context;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/OneHandAdaptiveHelp;->mAnimationIndex:I

    .line 49
    iput-object v1, p0, Lcom/android/settings/OneHandAdaptiveHelp;->mAnimationViewLeft:Landroid/widget/ImageView;

    .line 50
    iput-object v1, p0, Lcom/android/settings/OneHandAdaptiveHelp;->mAnimationViewRight:Landroid/widget/ImageView;

    .line 60
    iput-object v1, p0, Lcom/android/settings/OneHandAdaptiveHelp;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/OneHandAdaptiveHelp;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 77
    iput-object p1, p0, Lcom/android/settings/OneHandAdaptiveHelp;->mContext:Landroid/content/Context;

    .line 78
    const-string v1, "OneHandAdaptiveHelp"

    const-string v2, "context is assigned"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v1, "OneHandAdaptiveHelp"

    const-string v2, "mContext, onAttach() : can\'t casting to ce"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/OneHandAdaptiveHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 90
    .local v1, "activity":Landroid/app/Activity;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, "actionSwitch":Landroid/widget/Switch;
    instance-of v4, v1, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 93
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 94
    .local v3, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    .line 95
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 97
    .local v2, "padding":I
    invoke-virtual {v0, v6, v6, v2, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 98
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 100
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 105
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f0a1683

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 108
    .end local v2    # "padding":I
    .end local v3    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v4, Lcom/android/settings/OneHandAdaptiveEnabler;

    invoke-direct {v4, v1, v0}, Lcom/android/settings/OneHandAdaptiveEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/settings/OneHandAdaptiveHelp;->mEnabler:Lcom/android/settings/OneHandAdaptiveEnabler;

    .line 110
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    const v0, 0x7f0400e5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OneHandAdaptiveHelp;->mRootView:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveHelp;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveHelp;->mEnabler:Lcom/android/settings/OneHandAdaptiveEnabler;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveHelp;->mEnabler:Lcom/android/settings/OneHandAdaptiveEnabler;

    invoke-virtual {v0}, Lcom/android/settings/OneHandAdaptiveEnabler;->pause()V

    .line 136
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 137
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveHelp;->mEnabler:Lcom/android/settings/OneHandAdaptiveEnabler;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveHelp;->mEnabler:Lcom/android/settings/OneHandAdaptiveEnabler;

    invoke-virtual {v0}, Lcom/android/settings/OneHandAdaptiveEnabler;->resume()V

    .line 128
    :cond_0
    return-void
.end method
