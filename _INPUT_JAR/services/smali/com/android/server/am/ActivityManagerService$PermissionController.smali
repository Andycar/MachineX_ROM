.class Lcom/android/server/am/ActivityManagerService$PermissionController;
.super Landroid/os/IPermissionController$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermissionController"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 9000
    invoke-direct {p0}, Landroid/os/IPermissionController$Stub;-><init>()V

    .line 9001
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 9002
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 9006
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
