.class Lcom/android/settings/nfc/NfcEnabler$5;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcEnabler;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler$5;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 527
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$5;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcEnabler;->access$000(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 528
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$5;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V

    .line 529
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$5;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcEnabler;->access$1100(Lcom/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_beam_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 530
    return-void
.end method
