.class Lcom/android/server/AlarmManagerService$4;
.super Landroid/os/Handler;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .prologue
    .line 2655
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2658
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 2672
    :goto_5
    return-void

    .line 2660
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x4

    # invokes: Lcom/android/server/AlarmManagerService;->removeDisallowedAlarmList(I)V
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;I)V

    goto :goto_5

    .line 2664
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x7

    # invokes: Lcom/android/server/AlarmManagerService;->removeDisallowedAlarmList(I)V
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;I)V

    goto :goto_5

    .line 2668
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->restoreDisallowedAlarmList()V
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)V

    goto :goto_5

    .line 2658
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_d
        :pswitch_14
    .end packed-switch
.end method
