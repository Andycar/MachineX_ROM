.class Lcom/android/server/epm/overlay/ThemeManagerService$4$1;
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
    .line 1700
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$4$1;->this$1:Lcom/android/server/epm/overlay/ThemeManagerService$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1705
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1706
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/epm/overlay/ThemeManagerService;->isVisible:Z

    .line 1707
    return-void
.end method
