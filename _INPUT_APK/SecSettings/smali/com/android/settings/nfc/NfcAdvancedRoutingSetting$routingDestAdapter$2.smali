.class Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$2;
.super Ljava/lang/Object;
.source "NfcAdvancedRoutingSetting.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$2;->this$1:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;

    .line 383
    .local v0, "holder":Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;
    return-void
.end method
