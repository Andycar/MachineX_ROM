.class Landroid/widget/PopupWindow$PopupViewContainer;
.super Landroid/widget/FrameLayout;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupViewContainer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindow.PopupViewContainer"


# instance fields
.field private mIsPenSelectionMode:Z

.field private mSpenUspLevel:I

.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1855
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    .line 1856
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1851
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mSpenUspLevel:I

    .line 1852
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mIsPenSelectionMode:Z

    .line 1859
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1860
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_1b

    .line 1861
    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mSpenUspLevel:I

    .line 1864
    :cond_1b
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1880
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4c

    .line 1881
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    if-nez v2, :cond_13

    .line 1882
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1901
    :cond_12
    :goto_12
    return v1

    .line 1885
    :cond_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_29

    .line 1887
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1888
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_12

    .line 1889
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_12

    .line 1892
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_29
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_47

    .line 1893
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1894
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_47

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_47

    .line 1895
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_12

    .line 1899
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_47
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_12

    .line 1901
    :cond_4c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_12
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1908
    iget v2, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mSpenUspLevel:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_15

    .line 1909
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1910
    .local v0, "action":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    .line 1911
    packed-switch v0, :pswitch_data_58

    .line 1935
    .end local v0    # "action":I
    :cond_15
    :goto_15
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Landroid/widget/PopupWindow;->access$900(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Landroid/widget/PopupWindow;->access$900(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1938
    :goto_29
    return v1

    .line 1913
    .restart local v0    # "action":I
    :pswitch_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3a

    .line 1914
    iput-boolean v1, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mIsPenSelectionMode:Z

    .line 1915
    const/16 v2, 0xd3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_15

    .line 1917
    :cond_3a
    iput-boolean v4, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mIsPenSelectionMode:Z

    goto :goto_15

    .line 1921
    :pswitch_3d
    iget-boolean v2, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mIsPenSelectionMode:Z

    if-eqz v2, :cond_15

    .line 1922
    const/16 v2, 0xd5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_15

    .line 1925
    :pswitch_47
    iget-boolean v2, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mIsPenSelectionMode:Z

    if-eqz v2, :cond_50

    .line 1926
    const/16 v2, 0xd4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1927
    :cond_50
    iput-boolean v4, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mIsPenSelectionMode:Z

    goto :goto_15

    .line 1938
    .end local v0    # "action":I
    :cond_53
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_29

    .line 1911
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_47
        :pswitch_3d
    .end packed-switch
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .prologue
    .line 1868
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mAboveAnchor:Z
    invoke-static {v1}, Landroid/widget/PopupWindow;->access$700(Landroid/widget/PopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1870
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1871
    .local v0, "drawableState":[I
    # getter for: Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I
    invoke-static {}, Landroid/widget/PopupWindow;->access$800()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 1874
    .end local v0    # "drawableState":[I
    :goto_15
    return-object v0

    :cond_16
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_15
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1943
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1944
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1946
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_27

    if-ltz v0, :cond_21

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupViewContainer;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_21

    if-ltz v1, :cond_21

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupViewContainer;->getHeight()I

    move-result v3

    if-lt v1, v3, :cond_27

    .line 1948
    :cond_21
    iget-object v3, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1954
    :goto_26
    return v2

    .line 1950
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_34

    .line 1951
    iget-object v3, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_26

    .line 1954
    :cond_34
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_26
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3
    .param p1, "eventType"    # I

    .prologue
    .line 1961
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$1000(Landroid/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1962
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$1000(Landroid/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1966
    :goto_11
    return-void

    .line 1964
    :cond_12
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_11
.end method
