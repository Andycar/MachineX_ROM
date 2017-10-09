.class public Lcom/sec/android/sviewcover/SViewCoverShortcuts;
.super Landroid/widget/LinearLayout;
.source "SViewCoverShortcuts.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewCoverShortcuts"


# instance fields
.field private mCameraButton:Landroid/view/View;

.field private mCameraText:Landroid/widget/TextView;

.field private mMemoText:Landroid/widget/TextView;

.field private mQuickMemo:Landroid/view/View;

.field private mQuickNotesButton:Landroid/view/View;

.field private mShortcutDivider:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 42
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 44
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcuts_camera:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->mCameraButton:Landroid/view/View;

    .line 45
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcuts_quick_memo:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->mQuickNotesButton:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->mCameraButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverShortcuts$1;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverShortcuts$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverShortcuts;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->mQuickNotesButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverShortcuts$2;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverShortcuts$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverShortcuts;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcuts_camera_text_view:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->mCameraText:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcuts_quick_memo_text_view:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->mMemoText:Landroid/widget/TextView;

    .line 81
    const-string v0, "SViewCoverShortcuts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FEATURE_SPEN_USP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.spen_usp"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcuts_divider:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->mShortcutDivider:Landroid/view/View;

    .line 88
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcuts_quick_memo_container:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->mQuickMemo:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->mShortcutDivider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->mQuickMemo:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public replaceText()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->mCameraText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_shortcuts_camera_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->mMemoText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_shortcuts_quick_memo_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    return-void
.end method

.method public setMarquee(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->mCameraText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "SViewCoverShortcuts"

    const-string v1, "camera text marquee"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->mCameraText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->mMemoText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 100
    const-string v0, "SViewCoverShortcuts"

    const-string v1, "memo text marquee"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->mMemoText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 103
    :cond_1
    return-void
.end method
