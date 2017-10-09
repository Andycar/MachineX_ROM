.class public Lcom/android/settings/NotificationPanelLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/NotificationPanelLayout$OnNumOfAvailableButtonsChangeListener;
    }
.end annotation


# instance fields
.field private mButtonWidth:I

.field private mLastNumOfAvailableButtons:I

.field private mNumOfAvailableButtons:I

.field protected mOnNumOfAvailableButtonsChangeListener:Lcom/android/settings/NotificationPanelLayout$OnNumOfAvailableButtonsChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput v1, p0, Lcom/android/settings/NotificationPanelLayout;->mNumOfAvailableButtons:I

    .line 27
    iget v0, p0, Lcom/android/settings/NotificationPanelLayout;->mNumOfAvailableButtons:I

    iput v0, p0, Lcom/android/settings/NotificationPanelLayout;->mLastNumOfAvailableButtons:I

    .line 29
    iput v1, p0, Lcom/android/settings/NotificationPanelLayout;->mButtonWidth:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/NotificationPanelLayout;->mOnNumOfAvailableButtonsChangeListener:Lcom/android/settings/NotificationPanelLayout$OnNumOfAvailableButtonsChangeListener;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/NotificationPanelLayout;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getNumOfAvailableButtons()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/settings/NotificationPanelLayout;->mNumOfAvailableButtons:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 71
    .local v1, "one_panel_width":I
    invoke-static {p1}, Lcom/android/settings/Utils;->hasCocktailbar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f020e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 81
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f021c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 83
    .local v0, "divider_width":I
    add-int v2, v1, v0

    iput v2, p0, Lcom/android/settings/NotificationPanelLayout;->mButtonWidth:I

    .line 85
    const-string v2, "NotificationPanelLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init() - one_panel_width : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", divider_width : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", buttonWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/NotificationPanelLayout;->mButtonWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 77
    .end local v0    # "divider_width":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f020d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/settings/NotificationPanelLayout;->mButtonWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/NotificationPanelLayout;->mNumOfAvailableButtons:I

    .line 107
    iget v0, p0, Lcom/android/settings/NotificationPanelLayout;->mNumOfAvailableButtons:I

    iget v1, p0, Lcom/android/settings/NotificationPanelLayout;->mLastNumOfAvailableButtons:I

    if-eq v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/NotificationPanelLayout;->mOnNumOfAvailableButtonsChangeListener:Lcom/android/settings/NotificationPanelLayout$OnNumOfAvailableButtonsChangeListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/NotificationPanelLayout;->mOnNumOfAvailableButtonsChangeListener:Lcom/android/settings/NotificationPanelLayout$OnNumOfAvailableButtonsChangeListener;

    iget v1, p0, Lcom/android/settings/NotificationPanelLayout;->mNumOfAvailableButtons:I

    invoke-interface {v0, v1}, Lcom/android/settings/NotificationPanelLayout$OnNumOfAvailableButtonsChangeListener;->onNumOfAvailableButtonsChanged(I)V

    .line 117
    :cond_0
    iget v0, p0, Lcom/android/settings/NotificationPanelLayout;->mNumOfAvailableButtons:I

    iput v0, p0, Lcom/android/settings/NotificationPanelLayout;->mLastNumOfAvailableButtons:I

    .line 121
    const-string v0, "NotificationPanelLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeasure() - width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "NotificationPanelLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeasure() - numOfAvailableButtons: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/NotificationPanelLayout;->mNumOfAvailableButtons:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public setOnNumOfAvailableButtonsChangeListener(Lcom/android/settings/NotificationPanelLayout$OnNumOfAvailableButtonsChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/NotificationPanelLayout$OnNumOfAvailableButtonsChangeListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/NotificationPanelLayout;->mOnNumOfAvailableButtonsChangeListener:Lcom/android/settings/NotificationPanelLayout$OnNumOfAvailableButtonsChangeListener;

    .line 95
    return-void
.end method
