.class Lcom/android/server/am/ActivityManagerService$28;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->startUser(IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$foreground:Z

.field final synthetic val$oldUserId:I

.field final synthetic val$userId:I

.field final synthetic val$uss:Lcom/android/server/am/UserStartedState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/UserStartedState;ZII)V
    .registers 6

    .prologue
    .line 22770
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$28;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$28;->val$uss:Lcom/android/server/am/UserStartedState;

    iput-boolean p3, p0, Lcom/android/server/am/ActivityManagerService$28;->val$foreground:Z

    iput p4, p0, Lcom/android/server/am/ActivityManagerService$28;->val$oldUserId:I

    iput p5, p0, Lcom/android/server/am/ActivityManagerService$28;->val$userId:I

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .prologue
    .line 22774
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$28;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$28;->val$uss:Lcom/android/server/am/UserStartedState;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$28;->val$foreground:Z

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$28;->val$oldUserId:I

    iget v4, p0, Lcom/android/server/am/ActivityManagerService$28;->val$userId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->onUserInitialized(Lcom/android/server/am/UserStartedState;ZII)V

    .line 22775
    return-void
.end method
