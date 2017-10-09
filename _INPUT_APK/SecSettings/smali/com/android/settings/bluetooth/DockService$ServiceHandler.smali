.class final Lcom/android/settings/bluetooth/DockService$ServiceHandler;
.super Landroid/os/Handler;
.source "DockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DockService;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/DockService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->this$0:Lcom/android/settings/bluetooth/DockService;

    .line 271
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 272
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/DockService;Landroid/os/Looper;Lcom/android/settings/bluetooth/DockService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/bluetooth/DockService;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/settings/bluetooth/DockService$1;

    .prologue
    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/settings/bluetooth/DockService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->this$0:Lcom/android/settings/bluetooth/DockService;

    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/DockService;->access$100(Lcom/android/settings/bluetooth/DockService;Landroid/os/Message;)V

    .line 277
    return-void
.end method
