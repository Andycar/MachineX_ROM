.class Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityConnectionWrapper"
.end annotation


# instance fields
.field private final mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

.field private final mUserId:I

.field private final mWindowId:I

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;I)V
    .registers 5
    .param p2, "windowId"    # I
    .param p3, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .param p4, "userId"    # I

    .prologue
    .line 2746
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2747
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mWindowId:I

    .line 2748
    iput p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mUserId:I

    .line 2749
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 2750
    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 2762
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->unlinkToDeath()V

    .line 2763
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2764
    :try_start_a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mWindowId:I

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mUserId:I

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionLocked(II)V
    invoke-static {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2200(Lcom/android/server/accessibility/AccessibilityManagerService;II)V

    .line 2765
    monitor-exit v1

    .line 2766
    return-void

    .line 2765
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v0
.end method

.method public linkToDeath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2753
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2754
    return-void
.end method

.method public unlinkToDeath()V
    .registers 3

    .prologue
    .line 2757
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2758
    return-void
.end method
