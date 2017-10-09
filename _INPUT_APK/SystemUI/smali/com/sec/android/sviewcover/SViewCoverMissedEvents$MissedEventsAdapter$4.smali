.class Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverMissedEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->buildReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 451
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 453
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->isMultiSIMDevice()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 454
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v5, v5, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMessagePreferenceForMultisim(Landroid/content/Context;)[Z

    move-result-object v3

    .line 455
    .local v3, "pPreviewValue":[Z
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)[Z

    move-result-object v4

    aget-boolean v5, v3, v6

    aput-boolean v5, v4, v6

    .line 456
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)[Z

    move-result-object v4

    aget-boolean v5, v3, v7

    aput-boolean v5, v4, v7

    .line 462
    .end local v3    # "pPreviewValue":[Z
    :goto_0
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v4, v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$000(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->updateMissedEvents()V

    .line 481
    :goto_1
    return-void

    .line 459
    :cond_0
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v6, v6, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v6}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMesagePreference(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$402(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Z)Z

    goto :goto_0

    .line 464
    :cond_1
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 467
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 468
    .local v2, "id":I
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$602(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;)Landroid/content/Context;

    .line 469
    if-eqz v2, :cond_2

    .line 471
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v5, v5, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "android"

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$602(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v2    # "id":I
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 474
    .restart local v2    # "id":I
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "SViewCoverMissedEvents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating user context, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
