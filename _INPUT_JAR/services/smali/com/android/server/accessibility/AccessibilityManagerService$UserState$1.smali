.class Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 2

    .prologue
    .line 4891
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 4894
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4895
    :try_start_9
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceOwner:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1900(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 4896
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceOwner:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1900(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationSerivceOnwerDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4898
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceOwner:Landroid/os/IBinder;
    invoke-static {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1902(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 4900
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_3a

    .line 4901
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 4902
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V

    .line 4904
    :cond_39
    return-void

    .line 4900
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method
