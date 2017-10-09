.class public Lcom/android/keyguard/sec/SecKeyguardStatusView;
.super Landroid/widget/FrameLayout;
.source "SecKeyguardStatusView.java"


# static fields
.field private static final MSG_MY_PROFILE_SETTINGS_CHANGED:I = 0x64

.field private static final MY_PROFILE_ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "SecKeyguardStatusView"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mProfileSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardStatusView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardStatusView;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->handleMyProfileSettngsChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardStatusView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleMyProfileSettngsChanged()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateStatusView()V

    .line 106
    return-void
.end method

.method private updateStatusView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 90
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isProfileOn(Landroid/content/Context;)Z

    move-result v1

    .line 91
    .local v1, "isProfileOn":Z
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 92
    .local v0, "isEasyUxOn":Z
    const-string v2, "SecKeyguardStatusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateStatusView(): isProfileOn= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isEasyUxOn= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->removeAllViews()V

    .line 95
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 96
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$layout;->sec_keyguard_profile_view:I

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->addView(Landroid/view/View;)V

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$layout;->sec_wallpaper_widget_container:I

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->addView(Landroid/view/View;)V

    .line 99
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_view:I

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 62
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardStatusView$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardStatusView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardStatusView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfileSettingsObserver:Landroid/database/ContentObserver;

    .line 70
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "my_profile_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfileSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 72
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfileSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 75
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 76
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfileSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfileSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 86
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 87
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 56
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateStatusView()V

    .line 57
    return-void
.end method
