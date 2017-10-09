.class Lcom/android/server/epm/overlay/ThemeManagerService$7$2;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService$7;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/epm/overlay/ThemeManagerService$7;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService$7;)V
    .registers 2

    .prologue
    .line 1976
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7$2;->this$1:Lcom/android/server/epm/overlay/ThemeManagerService$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7$2;->this$1:Lcom/android/server/epm/overlay/ThemeManagerService$7;

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$500(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Installation Complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1981
    return-void
.end method
