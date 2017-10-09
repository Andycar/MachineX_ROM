.class public Lcom/android/server/VRManagerService$VRConnection;
.super Ljava/lang/Object;
.source "VRManagerService.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VRManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VRConnection"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final iVRManagerService:Lcom/android/internal/app/IVRManagerService;

.field final synthetic this$0:Lcom/android/server/VRManagerService;

.field private final vrServiceConnection:Lcom/android/server/VRManagerService$VRServiceConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/VRManagerService;Landroid/content/Context;Lcom/android/server/VRManagerService$VRServiceConnection;Lcom/android/internal/app/IVRManagerService;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "vrServiceConnection"    # Lcom/android/server/VRManagerService$VRServiceConnection;
    .param p4, "iVRManagerService"    # Lcom/android/internal/app/IVRManagerService;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/server/VRManagerService$VRConnection;->this$0:Lcom/android/server/VRManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p2, p0, Lcom/android/server/VRManagerService$VRConnection;->context:Landroid/content/Context;

    .line 176
    iput-object p3, p0, Lcom/android/server/VRManagerService$VRConnection;->vrServiceConnection:Lcom/android/server/VRManagerService$VRServiceConnection;

    .line 177
    iput-object p4, p0, Lcom/android/server/VRManagerService$VRConnection;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VRManagerService;Landroid/content/Context;Lcom/android/server/VRManagerService$VRServiceConnection;Lcom/android/internal/app/IVRManagerService;Lcom/android/server/VRManagerService$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/android/server/VRManagerService;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/server/VRManagerService$VRServiceConnection;
    .param p4, "x3"    # Lcom/android/internal/app/IVRManagerService;
    .param p5, "x4"    # Lcom/android/server/VRManagerService$1;

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/VRManagerService$VRConnection;-><init>(Lcom/android/server/VRManagerService;Landroid/content/Context;Lcom/android/server/VRManagerService$VRServiceConnection;Lcom/android/internal/app/IVRManagerService;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/VRManagerService$VRConnection;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/VRManagerService$VRConnection;->vrServiceConnection:Lcom/android/server/VRManagerService$VRServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    return-void
.end method

.method public getService()Lcom/android/internal/app/IVRManagerService;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/VRManagerService$VRConnection;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;

    return-object v0
.end method

.method public getVRServiceConnection()Lcom/android/server/VRManagerService$VRServiceConnection;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/VRManagerService$VRConnection;->vrServiceConnection:Lcom/android/server/VRManagerService$VRServiceConnection;

    return-object v0
.end method
