.class Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$6;
.super Ljava/lang/Object;
.source "NfcAdvancedRoutingSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$6;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 325
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 326
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$6;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    iget-object v0, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mRouteListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 327
    return-void
.end method
