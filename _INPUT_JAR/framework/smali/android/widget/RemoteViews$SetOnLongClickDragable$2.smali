.class Landroid/widget/RemoteViews$SetOnLongClickDragable$2;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnLongClickDragable;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnLongClickDragable;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnLongClickDragable;)V
    .registers 2

    .prologue
    .line 3674
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickDragable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 3677
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_54

    .line 3710
    :cond_7
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 3679
    :pswitch_9
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickDragable;

    iget-object v0, v0, Landroid/widget/RemoteViews$SetOnLongClickDragable;->dragEnterNotiIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    .line 3682
    :try_start_f
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickDragable;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickDragable;->dragEnterNotiIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_24
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_f .. :try_end_24} :catch_25

    goto :goto_7

    .line 3686
    :catch_25
    move-exception v6

    .line 3687
    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "RemoteViews"

    const-string v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 3693
    .end local v6    # "e":Landroid/content/IntentSender$SendIntentException;
    :pswitch_2e
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickDragable;

    iget-object v0, v0, Landroid/widget/RemoteViews$SetOnLongClickDragable;->dragExitNotiIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    .line 3696
    :try_start_34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickDragable;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickDragable;->dragExitNotiIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_49
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_34 .. :try_end_49} :catch_4a

    goto :goto_7

    .line 3700
    :catch_4a
    move-exception v6

    .line 3701
    .restart local v6    # "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "RemoteViews"

    const-string v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 3677
    nop

    :pswitch_data_54
    .packed-switch 0x5
        :pswitch_9
        :pswitch_2e
    .end packed-switch
.end method
