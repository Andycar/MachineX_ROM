.class Lcom/android/server/epm/overlay/ThemeManagerService$4$2;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/epm/overlay/ThemeManagerService$4;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService$4;)V
    .registers 2

    .prologue
    .line 1688
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$4$2;->this$1:Lcom/android/server/epm/overlay/ThemeManagerService$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$4$2;->this$1:Lcom/android/server/epm/overlay/ThemeManagerService$4;

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$4;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1695
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/epm/overlay/ThemeManagerService;->isVisible:Z

    .line 1697
    return-void
.end method
