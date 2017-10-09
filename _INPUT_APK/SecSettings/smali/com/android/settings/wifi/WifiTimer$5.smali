.class Lcom/android/settings/wifi/WifiTimer$5;
.super Ljava/lang/Object;
.source "WifiTimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiTimer;->setActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiTimer;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiTimer;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTimer$5;->this$0:Lcom/android/settings/wifi/WifiTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$5;->this$0:Lcom/android/settings/wifi/WifiTimer;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiTimer;->access$100(Lcom/android/settings/wifi/WifiTimer;)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$5;->this$0:Lcom/android/settings/wifi/WifiTimer;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiTimer;->access$300(Lcom/android/settings/wifi/WifiTimer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$5;->this$0:Lcom/android/settings/wifi/WifiTimer;

    const/16 v1, 0x12d

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiTimer;->access$400(Lcom/android/settings/wifi/WifiTimer;I)V

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$5;->this$0:Lcom/android/settings/wifi/WifiTimer;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiTimer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
