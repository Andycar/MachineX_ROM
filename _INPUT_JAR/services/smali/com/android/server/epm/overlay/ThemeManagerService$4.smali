.class Lcom/android/server/epm/overlay/ThemeManagerService$4;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .registers 2

    .prologue
    .line 1674
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$4;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1677
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$4;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mViewClicked:Z
    invoke-static {v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1800(Lcom/android/server/epm/overlay/ThemeManagerService;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1714
    :goto_9
    return-void

    .line 1680
    :cond_a
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$4;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1700(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$4;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1681
    sput-boolean v4, Lcom/android/server/epm/overlay/ThemeManagerService;->isVisible:Z

    .line 1682
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$4;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$500(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1683
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Event Theme"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "A new event theme is ready to be applied. Continue?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/server/epm/overlay/ThemeManagerService$4$2;

    invoke-direct {v4, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$4$2;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService$4;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/server/epm/overlay/ThemeManagerService$4$1;

    invoke-direct {v4, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$4$1;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService$4;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1709
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1710
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1712
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_9
.end method
