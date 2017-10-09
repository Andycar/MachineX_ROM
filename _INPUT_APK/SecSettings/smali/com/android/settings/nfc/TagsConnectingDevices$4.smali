.class Lcom/android/settings/nfc/TagsConnectingDevices$4;
.super Ljava/lang/Object;
.source "TagsConnectingDevices.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/TagsConnectingDevices;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/TagsConnectingDevices;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/nfc/TagsConnectingDevices$4;->this$0:Lcom/android/settings/nfc/TagsConnectingDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices$4;->this$0:Lcom/android/settings/nfc/TagsConnectingDevices;

    invoke-static {v0}, Lcom/android/settings/nfc/TagsConnectingDevices;->access$600(Lcom/android/settings/nfc/TagsConnectingDevices;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 221
    return-void
.end method
