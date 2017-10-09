.class public Lcom/sec/android/sviewcover/SViewCoverPager;
.super Lcom/sec/android/sviewcover/PagedView;
.source "SViewCoverPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewCoverPager"


# instance fields
.field private mCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

.field private mEnableTouch:Z

.field private mLatestPage:I

.field private mPM:Landroid/os/PowerManager;

.field private mSnapTo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/sviewcover/SViewCoverPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/sviewcover/SViewCoverPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/sviewcover/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mSnapTo:I

    .line 39
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mLatestPage:I

    .line 218
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mEnableTouch:Z

    .line 56
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mPM:Landroid/os/PowerManager;

    .line 58
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v0, -0x1

    .line 104
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 105
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 111
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mCurrentPage:I

    if-lt v0, p2, :cond_0

    .line 112
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mCurrentPage:I

    .line 114
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/sviewcover/PagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 93
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mEnableTouch:Z

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraPage(I)Z
    .locals 3
    .param p1, "pageIndex"    # I

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_camera_layout:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAddView(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 181
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v2, -0x1

    .line 154
    invoke-super/range {p0 .. p5}, Lcom/sec/android/sviewcover/PagedView;->onLayout(ZIIII)V

    .line 155
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mSnapTo:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mSnapTo:I

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 156
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mSnapTo:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverPager;->snapToPage(I)V

    .line 157
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mSnapTo:I

    .line 159
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 130
    const-string v0, "SViewCoverPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[widthMeasureSpec, heightMeasureSpec] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0, p1, p2}, Lcom/sec/android/sviewcover/PagedView;->onMeasure(II)V

    .line 133
    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 6
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 195
    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mLatestPage:I

    if-eq v4, p2, :cond_2

    .line 196
    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mLatestPage:I

    .line 197
    .local v2, "oldPageIndex":I
    iput p2, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mLatestPage:I

    .line 199
    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 200
    .local v3, "oldView":Landroid/view/View;
    invoke-virtual {p0, p2}, Lcom/sec/android/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 202
    .local v1, "newView":Landroid/view/View;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 203
    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    .line 204
    .local v0, "callback":Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    invoke-interface {v0, v5}, Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;->onActive(Z)V

    .line 207
    .end local v0    # "callback":Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    :cond_0
    if-eqz v1, :cond_1

    instance-of v4, v1, Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 208
    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    .line 209
    .restart local v0    # "callback":Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;->onActive(Z)V

    .line 212
    .end local v0    # "callback":Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    if-eqz v4, :cond_2

    .line 213
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v4, p2, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToPage(IZ)V

    .line 216
    .end local v1    # "newView":Landroid/view/View;
    .end local v2    # "oldPageIndex":I
    .end local v3    # "oldView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 3
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 184
    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mLatestPage:I

    if-eq v2, p2, :cond_0

    .line 185
    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mLatestPage:I

    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 187
    .local v1, "oldView":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 188
    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    .line 189
    .local v0, "callback":Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;->onActive(Z)V

    .line 192
    .end local v0    # "callback":Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    .end local v1    # "oldView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "deletePermanently"    # Z

    .prologue
    .line 173
    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 66
    const-string v1, "SViewCoverPager"

    const-string v2, "onTouchEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 69
    :pswitch_0
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mEnableTouch:Z

    if-eqz v1, :cond_1

    .line 72
    :pswitch_1
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mEnableTouch:Z

    if-eqz v1, :cond_1

    .line 75
    :pswitch_2
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mEnableTouch:Z

    if-eqz v1, :cond_1

    .line 78
    :pswitch_3
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mEnableTouch:Z

    if-nez v1, :cond_0

    .line 79
    const-string v1, "SViewCoverPager"

    const-string v2, "ACTION_MOVE return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 138
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 139
    const-string v1, "SViewCoverPager"

    const-string v2, "The view was already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 142
    :cond_0
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mCurrentPage:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 147
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mCurrentPage:I

    .line 149
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public scheduleSnapping(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mSnapTo:I

    .line 163
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverPager;->requestLayout()V

    .line 164
    return-void
.end method

.method public scheduleSnapping(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 168
    .local v0, "page":I
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverPager;->scheduleSnapping(I)V

    .line 169
    return-void
.end method

.method public setEnableTouchEvent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mEnableTouch:Z

    .line 222
    return-void
.end method

.method public setSViewCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0
    .param p1, "sview"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverPager;->mCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 62
    return-void
.end method
