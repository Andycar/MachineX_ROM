.class Lcom/android/server/am/ActivityManagerService$13;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->startLockTaskMode(Lcom/android/server/am/TaskRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$taskRecord:Lcom/android/server/am/TaskRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/TaskRecord;)V
    .registers 3

    .prologue
    .line 11491
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$taskRecord:Lcom/android/server/am/TaskRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 11494
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mLockToAppRequest:Lcom/android/server/am/LockToAppRequestDialog;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/LockToAppRequestDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13;->val$taskRecord:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockToAppRequestDialog;->showLockTaskPrompt(Lcom/android/server/am/TaskRecord;)V

    .line 11495
    return-void
.end method
