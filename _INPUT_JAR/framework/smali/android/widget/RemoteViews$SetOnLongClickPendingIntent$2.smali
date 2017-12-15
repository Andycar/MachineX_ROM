.class Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;)V
    .registers 2

    .prologue
    .line 3457
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 3459
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    .line 3507
    :cond_8
    :goto_8
    return v8

    .line 3461
    :pswitch_9
    # getter for: Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViews;->access$1000()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_8

    # getter for: Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViews;->access$1000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 3464
    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3467
    # getter for: Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViews;->access$1000()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_8

    # getter for: Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViews;->access$1000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .local v7, "isLongClick":Ljava/lang/Boolean;
    if-eqz v7, :cond_8

    .line 3468
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3470
    # getter for: Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViews;->access$1000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3474
    :try_start_50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_65
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_50 .. :try_end_65} :catch_66

    goto :goto_8

    .line 3478
    :catch_66
    move-exception v6

    .line 3479
    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "RemoteViews"

    const-string v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 3489
    .end local v6    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v7    # "isLongClick":Ljava/lang/Boolean;
    :pswitch_6f
    # getter for: Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViews;->access$1000()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_8

    # getter for: Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViews;->access$1000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .restart local v7    # "isLongClick":Ljava/lang/Boolean;
    if-eqz v7, :cond_8

    .line 3490
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3492
    # getter for: Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViews;->access$1000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3496
    :try_start_9a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_af
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_9a .. :try_end_af} :catch_b1

    goto/16 :goto_8

    .line 3500
    :catch_b1
    move-exception v6

    .line 3501
    .restart local v6    # "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "RemoteViews"

    const-string v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 3459
    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6f
        :pswitch_1f
        :pswitch_6f
    .end packed-switch
.end method
