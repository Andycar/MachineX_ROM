.class Lcom/android/settings/wifi/WfcReceiver$1;
.super Ljava/lang/Object;
.source "WfcReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WfcReceiver;->handleVoWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WfcReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WfcReceiver;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/wifi/WfcReceiver$1;->this$0:Lcom/android/settings/wifi/WfcReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/WfcReceiver$1;->this$0:Lcom/android/settings/wifi/WfcReceiver;

    invoke-static {v0}, Lcom/android/settings/wifi/WfcReceiver;->access$000(Lcom/android/settings/wifi/WfcReceiver;)V

    .line 50
    return-void
.end method
