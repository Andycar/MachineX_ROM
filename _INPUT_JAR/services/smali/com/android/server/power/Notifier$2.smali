.class Lcom/android/server/power/Notifier$2;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->onInteractiveStateChangeFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;)V
    .registers 2

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 342
    const/4 v0, 0x2

    .line 343
    .local v0, "why":I
    iget-object v1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mLastGoToSleepReason:I
    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$200(Lcom/android/server/power/Notifier;)I

    move-result v1

    packed-switch v1, :pswitch_data_54

    .line 356
    :goto_b
    :pswitch_b
    const/16 v1, 0xaa8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 357
    iget-object v1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;
    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$000(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/WindowManagerPolicy;->goingToSleep(I)V

    .line 358
    iget-object v1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$300(Lcom/android/server/power/Notifier;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "why"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    iget-object v1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;
    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->goingToSleep()V

    .line 360
    return-void

    .line 345
    :pswitch_4d
    const/4 v0, 0x1

    .line 346
    goto :goto_b

    .line 348
    :pswitch_4f
    const/4 v0, 0x3

    .line 349
    goto :goto_b

    .line 352
    :pswitch_51
    const/4 v0, 0x4

    goto :goto_b

    .line 343
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4f
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_51
    .end packed-switch
.end method
