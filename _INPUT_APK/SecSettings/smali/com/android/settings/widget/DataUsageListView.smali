.class public Lcom/android/settings/widget/DataUsageListView;
.super Landroid/widget/ListView;
.source "DataUsageListView.java"


# static fields
.field public static mSelector:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mRestoreFocus:Z

.field private mSelected:Z

.field private mTemFocusView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/DataUsageListView;->mRestoreFocus:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/DataUsageListView;->mRestoreFocus:Z

    .line 42
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 51
    packed-switch p1, :pswitch_data_0

    .line 64
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 53
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/widget/DataUsageListView;->mSelected:Z

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/DataUsageListView;->mSelected:Z

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/widget/DataUsageListView;->getHeaderViewsCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DataUsageListView;->setSelection(I)V

    .line 56
    const-string v0, "DataUsageListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/widget/DataUsageListView;->getHeaderViewsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/widget/DataUsageListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/settings/widget/DataUsageListView;->mSelector:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings/widget/DataUsageListView;->mRestoreFocus:Z

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/settings/widget/DataUsageListView;->mTemFocusView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/widget/DataUsageListView;->mTemFocusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/DataUsageListView;->mRestoreFocus:Z

    .line 74
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 75
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings/widget/DataUsageListView;->mSelected:Z

    .line 46
    return-void
.end method
