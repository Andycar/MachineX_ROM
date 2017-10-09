.class Lcom/android/settings/wifi/WifiWarningDialog$1;
.super Ljava/lang/Object;
.source "WifiWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 116
    iput-object p1, p0, Lcom/android/settings/wifi/WifiWarningDialog$1;->this$0:Lcom/android/settings/wifi/WifiWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 119
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog$1;->this$0:Lcom/android/settings/wifi/WifiWarningDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiWarningDialog;->access$000(Lcom/android/settings/wifi/WifiWarningDialog;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog$1;->this$0:Lcom/android/settings/wifi/WifiWarningDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiWarningDialog;->access$100(Lcom/android/settings/wifi/WifiWarningDialog;)V

    goto :goto_0
.end method
