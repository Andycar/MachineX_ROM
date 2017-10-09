.class Lcom/android/keyguard/FaceUnlock$1;
.super Ljava/lang/Object;
.source "FaceUnlock.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/FaceUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/FaceUnlock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/FaceUnlock;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/keyguard/FaceUnlock$1;->this$0:Lcom/android/keyguard/FaceUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "iservice"    # Landroid/os/IBinder;

    .prologue
    .line 358
    const-string v0, "FULLockscreen"

    const-string v1, "Connected to Face Unlock service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock$1;->this$0:Lcom/android/keyguard/FaceUnlock;

    invoke-static {p2}, Lcom/android/internal/policy/IFaceLockInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IFaceLockInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/FaceUnlock;->access$002(Lcom/android/keyguard/FaceUnlock;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;

    .line 360
    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock$1;->this$0:Lcom/android/keyguard/FaceUnlock;

    invoke-static {v0}, Lcom/android/keyguard/FaceUnlock;->access$100(Lcom/android/keyguard/FaceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 361
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 367
    const-string v0, "FULLockscreen"

    const-string v1, "Unexpected disconnect from Face Unlock service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock$1;->this$0:Lcom/android/keyguard/FaceUnlock;

    invoke-static {v0}, Lcom/android/keyguard/FaceUnlock;->access$100(Lcom/android/keyguard/FaceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 369
    return-void
.end method
