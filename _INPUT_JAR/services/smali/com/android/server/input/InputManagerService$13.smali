.class Lcom/android/server/input/InputManagerService$13;
.super Landroid/database/ContentObserver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->registerGloveModeSettingObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$13;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$13;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->updateGloveModeFromSettings()V

    .line 1737
    return-void
.end method
