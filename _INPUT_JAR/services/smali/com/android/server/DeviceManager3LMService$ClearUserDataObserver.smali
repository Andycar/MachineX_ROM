.class Lcom/android/server/DeviceManager3LMService$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearUserDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method private constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .registers 2

    .prologue
    .line 2517
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$ClearUserDataObserver;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DeviceManager3LMService;Lcom/android/server/DeviceManager3LMService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/DeviceManager3LMService;
    .param p2, "x1"    # Lcom/android/server/DeviceManager3LMService$1;

    .prologue
    .line 2517
    invoke-direct {p0, p1}, Lcom/android/server/DeviceManager3LMService$ClearUserDataObserver;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    .line 2519
    const-string v0, "DeviceManager3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application user data cleared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    return-void
.end method
