.class Lcom/android/settings/wifi/WifiWarningDialog$2;
.super Ljava/lang/Object;
.source "WifiWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiWarningDialog;->showEnableWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiWarningDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiWarningDialog;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/wifi/WifiWarningDialog$2;->this$0:Lcom/android/settings/wifi/WifiWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "result":Z
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/settings/wifi/WifiWarningDialog$2;->this$0:Lcom/android/settings/wifi/WifiWarningDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiWarningDialog;->access$100(Lcom/android/settings/wifi/WifiWarningDialog;)V

    .line 142
    const/4 v0, 0x1

    .line 144
    :cond_0
    return v0
.end method
