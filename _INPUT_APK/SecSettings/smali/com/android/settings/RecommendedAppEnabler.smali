.class public final Lcom/android/settings/RecommendedAppEnabler;
.super Ljava/lang/Object;
.source "RecommendedAppEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mPosition:I

.field private final mRecommendedAppObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/settings/RecommendedAppEnabler;->mSwitch:Landroid/widget/Switch;

    .line 40
    iput-object v0, p0, Lcom/android/settings/RecommendedAppEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/RecommendedAppEnabler;->mPosition:I

    .line 43
    new-instance v0, Lcom/android/settings/RecommendedAppEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/RecommendedAppEnabler$1;-><init>(Lcom/android/settings/RecommendedAppEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppEnabler;->mRecommendedAppObserver:Landroid/database/ContentObserver;

    .line 52
    iput-object p1, p0, Lcom/android/settings/RecommendedAppEnabler;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/settings/RecommendedAppEnabler;->mSwitch:Landroid/widget/Switch;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RecommendedAppEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendedAppEnabler;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/RecommendedAppEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/RecommendedAppEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendedAppEnabler;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/RecommendedAppEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/RecommendedAppEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "recommended_apps_setting"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/RecommendedAppEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RecommendedAppEnabler;->mRecommendedAppObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/RecommendedAppEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 62
    iget-object v2, p0, Lcom/android/settings/RecommendedAppEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommended_apps_setting"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/RecommendedAppEnabler;->mRecommendedAppObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    iget-object v2, p0, Lcom/android/settings/RecommendedAppEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/settings/RecommendedAppEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 66
    iget-object v2, p0, Lcom/android/settings/RecommendedAppEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommended_apps_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    .line 67
    .local v0, "recommendeAppState":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RecommendedAppEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 68
    iget-object v1, p0, Lcom/android/settings/RecommendedAppEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    .end local v0    # "recommendeAppState":Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 66
    goto :goto_0
.end method
