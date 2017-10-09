.class Lcom/android/settings/nearby/NearbyEnabler$8;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nearby/NearbyEnabler;->requestWifiCheckingPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbyEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    .prologue
    .line 980
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler$8;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v1, 0x0

    .line 982
    invoke-static {v1}, Lcom/android/settings/nearby/NearbyEnabler;->access$1502(Z)Z

    .line 983
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler$8;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v0, v1}, Lcom/android/settings/nearby/NearbyEnabler;->access$1800(Lcom/android/settings/nearby/NearbyEnabler;Z)V

    .line 984
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler$8;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v0}, Lcom/android/settings/nearby/NearbyEnabler;->access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 985
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 986
    return-void
.end method
