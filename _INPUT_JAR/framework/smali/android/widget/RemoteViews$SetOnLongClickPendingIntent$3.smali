.class Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 3512
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x0

    .line 3514
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 3515
    .local v6, "config":Landroid/content/res/Configuration;
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    iget v0, v6, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_34

    const/4 v0, 0x1

    :goto_17
    # setter for: Landroid/widget/RemoteViews;->mHas12key:Z
    invoke-static {v1, v0}, Landroid/widget/RemoteViews;->access$1102(Landroid/widget/RemoteViews;Z)Z

    .line 3516
    const/16 v0, 0x42

    if-eq p2, v0, :cond_2c

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v0, v0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mHas12key:Z
    invoke-static {v0}, Landroid/widget/RemoteViews;->access$1100(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0x17

    if-ne p2, v0, :cond_33

    .line 3517
    :cond_2c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    .line 3544
    :cond_33
    :goto_33
    return v9

    :cond_34
    move v0, v9

    .line 3515
    goto :goto_17

    .line 3519
    :pswitch_36
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_33

    .line 3520
    # getter for: Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViews;->access$1000()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_33

    # getter for: Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViews;->access$1000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 3526
    :pswitch_52
    # getter for: Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViews;->access$1000()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_33

    # getter for: Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViews;->access$1000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .local v8, "isLongClick":Ljava/lang/Boolean;
    if-eqz v8, :cond_33

    .line 3527
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3529
    # getter for: Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViews;->access$1000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3532
    :try_start_7d
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_92
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_7d .. :try_end_92} :catch_93

    goto :goto_33

    .line 3536
    :catch_93
    move-exception v7

    .line 3537
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "RemoteViews"

    const-string v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 3517
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_36
        :pswitch_52
    .end packed-switch
.end method
