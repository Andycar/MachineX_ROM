.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewRootHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2

    .prologue
    .line 3352
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .registers 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3355
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_56

    .line 3411
    :pswitch_5
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    .line 3357
    :pswitch_a
    const-string v0, "MSG_INVALIDATE"

    goto :goto_9

    .line 3359
    :pswitch_d
    const-string v0, "MSG_INVALIDATE_RECT"

    goto :goto_9

    .line 3361
    :pswitch_10
    const-string v0, "MSG_DIE"

    goto :goto_9

    .line 3363
    :pswitch_13
    const-string v0, "MSG_RESIZED"

    goto :goto_9

    .line 3365
    :pswitch_16
    const-string v0, "MSG_RESIZED_REPORT"

    goto :goto_9

    .line 3367
    :pswitch_19
    const-string v0, "MSG_WINDOW_FOCUS_CHANGED"

    goto :goto_9

    .line 3369
    :pswitch_1c
    const-string v0, "MSG_DISPATCH_INPUT_EVENT"

    goto :goto_9

    .line 3371
    :pswitch_1f
    const-string v0, "MSG_DISPATCH_APP_VISIBILITY"

    goto :goto_9

    .line 3373
    :pswitch_22
    const-string v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    goto :goto_9

    .line 3375
    :pswitch_25
    const-string v0, "MSG_DISPATCH_KEY_FROM_IME"

    goto :goto_9

    .line 3377
    :pswitch_28
    const-string v0, "MSG_FINISH_INPUT_CONNECTION"

    goto :goto_9

    .line 3379
    :pswitch_2b
    const-string v0, "MSG_CHECK_FOCUS"

    goto :goto_9

    .line 3381
    :pswitch_2e
    const-string v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    goto :goto_9

    .line 3383
    :pswitch_31
    const-string v0, "MSG_DISPATCH_DRAG_EVENT"

    goto :goto_9

    .line 3385
    :pswitch_34
    const-string v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    goto :goto_9

    .line 3387
    :pswitch_37
    const-string v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    goto :goto_9

    .line 3389
    :pswitch_3a
    const-string v0, "MSG_UPDATE_CONFIGURATION"

    goto :goto_9

    .line 3391
    :pswitch_3d
    const-string v0, "MSG_PROCESS_INPUT_EVENTS"

    goto :goto_9

    .line 3393
    :pswitch_40
    const-string v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    goto :goto_9

    .line 3395
    :pswitch_43
    const-string v0, "MSG_DISPATCH_DONE_ANIMATING"

    goto :goto_9

    .line 3397
    :pswitch_46
    const-string v0, "MSG_WINDOW_MOVED"

    goto :goto_9

    .line 3399
    :pswitch_49
    const-string v0, "MSG_SYNTHESIZE_INPUT_EVENT"

    goto :goto_9

    .line 3402
    :pswitch_4c
    const-string v0, "MSG_DISPATCH_SPEN_GESTURE"

    goto :goto_9

    .line 3404
    :pswitch_4f
    const-string v0, "MSG_DISPATCH_AIR_BUTTON_HIT_TEST"

    goto :goto_9

    .line 3408
    :pswitch_52
    const-string v0, "MSG_DISPATCH_COVER_STATE"

    goto :goto_9

    .line 3355
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_5
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_5
        :pswitch_40
        :pswitch_43
        :pswitch_5
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 45
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3416
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_80a

    .line 3773
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 3418
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    goto :goto_7

    .line 3421
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 3422
    .local v23, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    move-object/from16 v0, v23

    iget v8, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    move-object/from16 v0, v23

    iget v9, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    move/from16 v39, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v6, v8, v9, v0, v1}, Landroid/view/View;->invalidate(IIII)V

    .line 3423
    invoke-virtual/range {v23 .. v23}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    goto :goto_7

    .line 3426
    .end local v23    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :pswitch_3d
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v8, 0x0

    iput-boolean v8, v6, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 3427
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto :goto_7

    .line 3430
    :pswitch_4c
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_5b

    const/4 v6, 0x1

    :goto_57
    invoke-virtual {v8, v6}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    goto :goto_7

    :cond_5b
    const/4 v6, 0x0

    goto :goto_57

    .line 3433
    :pswitch_5d
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    goto :goto_7

    .line 3437
    :pswitch_65
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 3438
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v8, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_dd

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v8, v11, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_dd

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v8, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_dd

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v8, v11, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_dd

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v8, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_dd

    iget-object v6, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-nez v6, :cond_dd

    .line 3445
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_7

    .line 3446
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v27

    .line 3447
    .local v27, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mLastMeasuredMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v6, :cond_7

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mLastMeasuredMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    if-eq v6, v8, :cond_7

    .line 3465
    .end local v11    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v27    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_dd
    :pswitch_dd
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v6, v6, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v6, :cond_7

    .line 3466
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 3468
    .restart local v11    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v13, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v13, Landroid/content/res/Configuration;

    .line 3469
    .local v13, "config":Landroid/content/res/Configuration;
    if-eqz v13, :cond_f9

    .line 3470
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v8, 0x0

    invoke-virtual {v6, v13, v8}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 3473
    :cond_f9
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v6, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v6, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3474
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v6, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v6, v11, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3475
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v6, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v6, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3476
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v6, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v6, v11, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3477
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v6, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v6, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3479
    invoke-virtual {v11}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3481
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    const/4 v8, 0x5

    if-ne v6, v8, :cond_14b

    .line 3482
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 3485
    :cond_14b
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v6, :cond_15c

    .line 3486
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/View;)V

    .line 3489
    :cond_15c
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_7

    .line 3493
    .end local v11    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v13    # "config":Landroid/content/res/Configuration;
    :pswitch_165
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v6, v6, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v6, :cond_7

    .line 3494
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v36

    .line 3495
    .local v36, "w":I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v19

    .line 3496
    .local v19, "h":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 3497
    .local v24, "l":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v34, v0

    .line 3498
    .local v34, "t":I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v24

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3499
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v8, v24, v36

    iput v8, v6, Landroid/graphics/Rect;->right:I

    .line 3500
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v34

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3501
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v8, v34, v19

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 3503
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v6, :cond_1c6

    .line 3504
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/View;)V

    .line 3506
    :cond_1c6
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_7

    .line 3510
    .end local v19    # "h":I
    .end local v24    # "l":I
    .end local v34    # "t":I
    .end local v36    # "w":I
    :pswitch_1cf
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v6, v6, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v6, :cond_3c2

    .line 3511
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_3cb

    const/16 v20, 0x1

    .line 3512
    .local v20, "hasWindowFocus":Z
    :goto_1df
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v20

    iput-boolean v0, v6, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 3514
    # getter for: Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$400()Z

    move-result v6

    if-eqz v6, :cond_20b

    .line 3515
    const-string v6, "ViewRootImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_WINDOW_FOCUS_CHANGED "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    :cond_20b
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move/from16 v0, v20

    # invokes: Landroid/view/ViewRootImpl;->profileRendering(Z)V
    invoke-static {v6, v0}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;Z)V

    .line 3520
    if-eqz v20, :cond_286

    .line 3521
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_3cf

    const/16 v22, 0x1

    .line 3522
    .local v22, "inTouchMode":Z
    :goto_21e
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move/from16 v0, v22

    # invokes: Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z
    invoke-static {v6, v0}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/ViewRootImpl;Z)Z

    .line 3525
    sget-boolean v6, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v6, :cond_232

    .line 3526
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->twUpdateToolBox()V

    .line 3529
    :cond_232
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_286

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$700(Landroid/view/ViewRootImpl;)Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_286

    .line 3530
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3532
    :try_start_251
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v6, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v25, v0

    .line 3533
    .local v25, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v25, :cond_3d3

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    .line 3534
    .local v33, "surfaceInsets":Landroid/graphics/Rect;
    :goto_261
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v8, v8, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v9, v9, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v39, v0

    # getter for: Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;
    invoke-static/range {v39 .. v39}, Landroid/view/ViewRootImpl;->access$700(Landroid/view/ViewRootImpl;)Landroid/view/Surface;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v6, v8, v9, v0, v1}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_286
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_251 .. :try_end_286} :catch_3d7

    .line 3555
    .end local v22    # "inTouchMode":Z
    .end local v25    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v33    # "surfaceInsets":Landroid/graphics/Rect;
    :cond_286
    sget-boolean v6, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v6, :cond_2d2

    .line 3556
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v6, v6, Landroid/view/ViewRootImpl;->mUseFloatingToolBox:Z

    if-eqz v6, :cond_2d2

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2d2

    .line 3557
    if-eqz v20, :cond_421

    const/16 v28, 0x8

    .line 3558
    .local v28, "option":I
    :goto_29e
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;)Lcom/samsung/android/toolbox/TwToolBoxManager;

    move-result-object v6

    if-nez v6, :cond_2ba

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v8, Lcom/samsung/android/toolbox/TwToolBoxManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/samsung/android/toolbox/TwToolBoxManager;-><init>(Landroid/content/Context;)V

    # setter for: Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;
    invoke-static {v6, v8}, Landroid/view/ViewRootImpl;->access$802(Landroid/view/ViewRootImpl;Lcom/samsung/android/toolbox/TwToolBoxManager;)Lcom/samsung/android/toolbox/TwToolBoxManager;

    .line 3559
    :cond_2ba
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;)Lcom/samsung/android/toolbox/TwToolBoxManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    move/from16 v0, v28

    invoke-virtual {v6, v8, v9, v0}, Lcom/samsung/android/toolbox/TwToolBoxManager;->sendMessage(Ljava/lang/String;II)V

    .line 3563
    .end local v28    # "option":I
    :cond_2d2
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v8}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v8

    iput-boolean v8, v6, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 3566
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    .line 3567
    .local v4, "imm":Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v6, :cond_332

    .line 3568
    if-eqz v20, :cond_30f

    if-eqz v4, :cond_30f

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v6, v6, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v6, :cond_30f

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$900(Landroid/view/ViewRootImpl;)Z

    move-result v6

    if-nez v6, :cond_30f

    .line 3570
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 3572
    :cond_30f
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v6}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 3573
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 3574
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    .line 3579
    :cond_332
    if-eqz v20, :cond_3a1

    .line 3580
    if-eqz v4, :cond_374

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v6, v6, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v6, :cond_374

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$900(Landroid/view/ViewRootImpl;)Z

    move-result v6

    if-nez v6, :cond_374

    .line 3581
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v8, v8, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v8, :cond_425

    const/4 v8, 0x1

    :goto_369
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v4 .. v9}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 3587
    :cond_374
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v8, v8, -0x101

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3589
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v6, :cond_39a

    .line 3590
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v8, v8, -0x101

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3594
    :cond_39a
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 3597
    :cond_3a1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v6, :cond_3c2

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3c2

    .line 3598
    if-eqz v20, :cond_3c2

    .line 3599
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3604
    .end local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v20    # "hasWindowFocus":Z
    :cond_3c2
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->sendUserActionEvent()V
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$1000(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_7

    .line 3511
    :cond_3cb
    const/16 v20, 0x0

    goto/16 :goto_1df

    .line 3521
    .restart local v20    # "hasWindowFocus":Z
    :cond_3cf
    const/16 v22, 0x0

    goto/16 :goto_21e

    .line 3533
    .restart local v22    # "inTouchMode":Z
    .restart local v25    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_3d3
    const/16 v33, 0x0

    goto/16 :goto_261

    .line 3536
    .end local v25    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_3d7
    move-exception v17

    .line 3537
    .local v17, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v6, "ViewRootImpl"

    const-string v8, "OutOfResourcesException locking surface"

    move-object/from16 v0, v17

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3539
    :try_start_3e1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v6, v8}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v6

    if-nez v6, :cond_406

    .line 3540
    const-string v6, "ViewRootImpl"

    const-string v8, "No processes killed for memory; killing self"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    const-string v6, "-k -t -z -d -o /data/log/dumpstate_surfaceoom"

    invoke-static {v6}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 3544
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V
    :try_end_406
    .catch Landroid/os/RemoteException; {:try_start_3e1 .. :try_end_406} :catch_807

    .line 3549
    :cond_406
    :goto_406
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 3557
    .end local v17    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v22    # "inTouchMode":Z
    :cond_421
    const/16 v28, 0x10

    goto/16 :goto_29e

    .line 3581
    .restart local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_425
    const/4 v8, 0x0

    goto/16 :goto_369

    .line 3607
    .end local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v20    # "hasWindowFocus":Z
    :pswitch_428
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->doDie()V

    goto/16 :goto_7

    .line 3610
    :pswitch_431
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 3611
    .restart local v11    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/InputEvent;

    .line 3612
    .local v18, "event":Landroid/view/InputEvent;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/view/InputEventReceiver;

    .line 3613
    .local v30, "receiver":Landroid/view/InputEventReceiver;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v6, v0, v1, v8, v9}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 3614
    invoke-virtual {v11}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_7

    .line 3617
    .end local v11    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v18    # "event":Landroid/view/InputEvent;
    .end local v30    # "receiver":Landroid/view/InputEventReceiver;
    :pswitch_455
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/InputEvent;

    .line 3618
    .restart local v18    # "event":Landroid/view/InputEvent;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/16 v39, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v39

    invoke-virtual {v6, v0, v8, v9, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_7

    .line 3624
    .end local v18    # "event":Landroid/view/InputEvent;
    :pswitch_46f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/KeyEvent;

    .line 3625
    .local v18, "event":Landroid/view/KeyEvent;
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_48b

    .line 3629
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, -0x9

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v18

    .line 3632
    :cond_48b
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v39, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v39

    invoke-virtual {v6, v0, v8, v9, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_7

    .line 3635
    .end local v18    # "event":Landroid/view/KeyEvent;
    :pswitch_49c
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    .line 3636
    .restart local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v4, :cond_7

    .line 3637
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v4, v6}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_7

    .line 3641
    .end local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_4ad
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    .line 3642
    .restart local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v4, :cond_4b6

    .line 3643
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3645
    :cond_4b6
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->sendUserActionEvent()V
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$1000(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_7

    .line 3648
    .end local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_4bf
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v6, :cond_7

    .line 3649
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3654
    :pswitch_4d8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/DragEvent;

    .line 3655
    .local v18, "event":Landroid/view/DragEvent;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    move-object/from16 v0, v18

    iput-object v6, v0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 3656
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, v18

    # invokes: Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V
    invoke-static {v6, v0}, Landroid/view/ViewRootImpl;->access$1100(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V

    goto/16 :goto_7

    .line 3659
    .end local v18    # "event":Landroid/view/DragEvent;
    :pswitch_4f5
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-virtual {v8, v6}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    .line 3660
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->sendUserActionEvent()V
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$1000(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_7

    .line 3663
    :pswitch_50b
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/content/res/Configuration;

    .line 3664
    .restart local v13    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v13, v6}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v6

    if-eqz v6, :cond_523

    .line 3665
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v13, v6, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 3667
    :cond_523
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v8, 0x0

    invoke-virtual {v6, v13, v8}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    goto/16 :goto_7

    .line 3670
    .end local v13    # "config":Landroid/content/res/Configuration;
    :pswitch_52d
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_7

    .line 3673
    :pswitch_538
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->handleDispatchDoneAnimating()V

    goto/16 :goto_7

    .line 3676
    :pswitch_541
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v6, :cond_7

    .line 3677
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_7

    .line 3683
    :pswitch_558
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    .line 3685
    .local v7, "requestInfo":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    if-eqz v7, :cond_632

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v8

    if-nez v6, :cond_57c

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_632

    .line 3687
    :cond_57c
    iget-object v6, v7, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 3688
    .local v16, "cropRectWidth":I
    iget-object v6, v7, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 3689
    .local v15, "cropRectHeight":I
    iget-object v6, v7, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v39, v0

    div-float v9, v9, v39

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v6, Landroid/graphics/Rect;->left:I

    .line 3690
    iget-object v6, v7, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v39, v0

    div-float v9, v9, v39

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v6, Landroid/graphics/Rect;->top:I

    .line 3691
    iget-object v6, v7, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    move/from16 v0, v16

    int-to-float v9, v0

    const/high16 v39, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v40, v0

    div-float v39, v39, v40

    mul-float v9, v9, v39

    const/high16 v39, 0x3f000000    # 0.5f

    add-float v9, v9, v39

    float-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v6, Landroid/graphics/Rect;->right:I

    .line 3692
    iget-object v6, v7, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, v15

    const/high16 v39, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v40, v0

    div-float v39, v39, v40

    mul-float v9, v9, v39

    const/high16 v39, 0x3f000000    # 0.5f

    add-float v9, v9, v39

    float-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 3696
    .end local v15    # "cropRectHeight":I
    .end local v16    # "cropRectWidth":I
    :cond_632
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v6, :cond_6f6

    .line 3697
    const/4 v5, 0x0

    .line 3699
    .local v5, "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v8

    if-nez v6, :cond_657

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_6e6

    .line 3701
    :cond_657
    const/4 v10, 0x0

    .line 3702
    .local v10, "borderWidth":I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_691

    .line 3703
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_691

    .line 3704
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x10501dd

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10501de

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/lit8 v10, v6, 0x1

    .line 3710
    :cond_691
    new-instance v5, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    .end local v5    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/RectF;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v42, v0

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V

    .line 3715
    .end local v10    # "borderWidth":I
    .restart local v5    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    :goto_6db
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->doExtractSmartClipData(Landroid/view/View;)Z

    goto/16 :goto_7

    .line 3713
    :cond_6e6
    new-instance v5, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    .end local v5    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;)V

    .restart local v5    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    goto :goto_6db

    .line 3718
    .end local v5    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    :cond_6f6
    new-instance v5, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mSmartClipContext:Landroid/content/Context;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;)V

    .line 3719
    .restart local v5    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    goto/16 :goto_7

    .line 3724
    .end local v5    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    .end local v7    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    :pswitch_707
    const/16 v31, -0x1

    .line 3725
    .local v31, "result":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    .line 3726
    .local v12, "bundle":Landroid/os/Bundle;
    const-string v6, "id"

    const/4 v8, -0x1

    invoke-virtual {v12, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 3727
    .local v21, "id":I
    const-string/jumbo v6, "x"

    const v8, -0xf423f

    invoke-virtual {v12, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v37

    .line 3728
    .local v37, "x":I
    const-string/jumbo v6, "y"

    const v8, -0xf423f

    invoke-virtual {v12, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v38

    .line 3730
    .local v38, "y":I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v6, :cond_7c3

    .line 3732
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_7a7

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v8

    if-nez v6, :cond_754

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_7a7

    .line 3735
    :cond_754
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "multiwindow_facade"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 3736
    .local v26, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v29

    .line 3737
    .local v29, "pos":Landroid/graphics/Point;
    if-eqz v29, :cond_7a7

    .line 3738
    move-object/from16 v0, v29

    iget v6, v0, Landroid/graphics/Point;->x:I

    sub-int v6, v37, v6

    int-to-float v6, v6

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    div-float/2addr v8, v9

    mul-float/2addr v6, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 v37, v0

    .line 3739
    move-object/from16 v0, v29

    iget v6, v0, Landroid/graphics/Point;->y:I

    sub-int v6, v38, v6

    int-to-float v6, v6

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    div-float/2addr v8, v9

    mul-float/2addr v6, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 v38, v0

    .line 3744
    .end local v26    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v29    # "pos":Landroid/graphics/Point;
    :cond_7a7
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move/from16 v0, v37

    move/from16 v1, v38

    # invokes: Landroid/view/ViewRootImpl;->findAirButtonViewByPosition(Landroid/view/View;II)Landroid/view/View;
    invoke-static {v6, v8, v0, v1}, Landroid/view/ViewRootImpl;->access$1200(Landroid/view/ViewRootImpl;Landroid/view/View;II)Landroid/view/View;

    move-result-object v35

    .line 3745
    .local v35, "targetView":Landroid/view/View;
    if-eqz v35, :cond_7ea

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v6

    if-eqz v6, :cond_7ea

    .line 3746
    const/16 v31, 0x1

    .line 3753
    .end local v35    # "targetView":Landroid/view/View;
    :cond_7c3
    :goto_7c3
    const/4 v14, 0x0

    .line 3754
    .local v14, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v6, :cond_7ed

    .line 3755
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 3761
    :goto_7d6
    const-string/jumbo v6, "spengestureservice"

    invoke-virtual {v14, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 3762
    .local v32, "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    move-object/from16 v0, v32

    move/from16 v1, v21

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/smartclip/SpenGestureManager;->setAirButtonHitTestResult(II)V

    goto/16 :goto_7

    .line 3748
    .end local v14    # "context":Landroid/content/Context;
    .end local v32    # "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    .restart local v35    # "targetView":Landroid/view/View;
    :cond_7ea
    const/16 v31, 0x0

    goto :goto_7c3

    .line 3757
    .end local v35    # "targetView":Landroid/view/View;
    .restart local v14    # "context":Landroid/content/Context;
    :cond_7ed
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v14, v6, Landroid/view/ViewRootImpl;->mSmartClipContext:Landroid/content/Context;

    goto :goto_7d6

    .line 3768
    .end local v12    # "bundle":Landroid/os/Bundle;
    .end local v14    # "context":Landroid/content/Context;
    .end local v21    # "id":I
    .end local v31    # "result":I
    .end local v37    # "x":I
    .end local v38    # "y":I
    :pswitch_7f4
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_805

    const/4 v6, 0x1

    :goto_800
    # invokes: Landroid/view/ViewRootImpl;->handleDispatchCoverStateChanged(Z)V
    invoke-static {v8, v6}, Landroid/view/ViewRootImpl;->access$1300(Landroid/view/ViewRootImpl;Z)V

    goto/16 :goto_7

    :cond_805
    const/4 v6, 0x0

    goto :goto_800

    .line 3546
    .restart local v17    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v20    # "hasWindowFocus":Z
    .restart local v22    # "inTouchMode":Z
    :catch_807
    move-exception v6

    goto/16 :goto_406

    .line 3416
    :pswitch_data_80a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_12
        :pswitch_428
        :pswitch_65
        :pswitch_dd
        :pswitch_1cf
        :pswitch_431
        :pswitch_4c
        :pswitch_5d
        :pswitch_7
        :pswitch_46f
        :pswitch_49c
        :pswitch_4ad
        :pswitch_4bf
        :pswitch_4d8
        :pswitch_4d8
        :pswitch_4f5
        :pswitch_50b
        :pswitch_3d
        :pswitch_7
        :pswitch_52d
        :pswitch_538
        :pswitch_541
        :pswitch_165
        :pswitch_455
        :pswitch_558
        :pswitch_707
        :pswitch_7f4
    .end packed-switch
.end method
