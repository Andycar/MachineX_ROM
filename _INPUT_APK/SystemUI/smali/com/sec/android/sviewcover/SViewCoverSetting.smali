.class public Lcom/sec/android/sviewcover/SViewCoverSetting;
.super Landroid/widget/LinearLayout;
.source "SViewCoverSetting.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewCoverSetting"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfoShownText:Landroid/widget/TextView;

.field private mSviewCover:Lcom/sec/android/sviewcover/SViewCoverView;

.field private mTimeoutText:Landroid/widget/TextView;

.field private mWindowThemeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/sviewcover/SViewCoverSetting;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/sviewcover/SViewCoverSetting;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverSetting;->mContext:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverSetting;->mSviewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 35
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverSetting;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/sviewcover/SViewCoverSetting;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverSetting;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverSetting;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/sviewcover/SViewCoverSetting;)Lcom/sec/android/sviewcover/SViewCoverView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverSetting;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverSetting;->mSviewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 41
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_infocover:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverSetting;->mInfoShownText:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverSetting;->mInfoShownText:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverSetting$1;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverSetting$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_theme:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverSetting;->mWindowThemeText:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverSetting;->mWindowThemeText:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverSetting$2;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverSetting$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public replaceText()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverSetting;->mInfoShownText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_info_cover:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverSetting;->mWindowThemeText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_window_theme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    return-void
.end method

.method public setCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverSetting;->mSviewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 71
    return-void
.end method
