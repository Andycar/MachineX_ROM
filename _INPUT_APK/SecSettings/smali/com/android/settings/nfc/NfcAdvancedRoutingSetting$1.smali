.class Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$1;
.super Ljava/lang/Object;
.source "NfcAdvancedRoutingSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->createRoutingListDialog()V
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
    .line 223
    iput-object p1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$1;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 225
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 226
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$1;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->finish()V

    .line 227
    return-void
.end method
