.class Lcom/samsung/location/SLocationManager$LocListenerTransport$1;
.super Landroid/os/Handler;
.source "SLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/location/SLocationManager$LocListenerTransport;-><init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SLocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/location/SLocationManager$LocListenerTransport;

.field final synthetic val$this$0:Lcom/samsung/location/SLocationManager;


# direct methods
.method constructor <init>(Lcom/samsung/location/SLocationManager$LocListenerTransport;Lcom/samsung/location/SLocationManager;)V
    .registers 3

    .prologue
    .line 143
    iput-object p1, p0, Lcom/samsung/location/SLocationManager$LocListenerTransport$1;->this$1:Lcom/samsung/location/SLocationManager$LocListenerTransport;

    iput-object p2, p0, Lcom/samsung/location/SLocationManager$LocListenerTransport$1;->val$this$0:Lcom/samsung/location/SLocationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/location/SLocationManager$LocListenerTransport$1;->this$1:Lcom/samsung/location/SLocationManager$LocListenerTransport;

    # invokes: Lcom/samsung/location/SLocationManager$LocListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/samsung/location/SLocationManager$LocListenerTransport;->access$000(Lcom/samsung/location/SLocationManager$LocListenerTransport;Landroid/os/Message;)V

    .line 147
    return-void
.end method
