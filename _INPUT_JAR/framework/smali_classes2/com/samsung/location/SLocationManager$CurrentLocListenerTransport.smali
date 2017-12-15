.class Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
.super Lcom/samsung/location/ISCurrentLocListener$Stub;
.source "SLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/location/SLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentLocListenerTransport"
.end annotation


# static fields
.field public static final TYPE_CURRENT_LOCATION:I = 0x1


# instance fields
.field private mListener:Lcom/samsung/location/SCurrentLocListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/location/SLocationManager;


# direct methods
.method constructor <init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SCurrentLocListener;)V
    .registers 4
    .param p2, "listener"    # Lcom/samsung/location/SCurrentLocListener;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;->this$0:Lcom/samsung/location/SLocationManager;

    invoke-direct {p0}, Lcom/samsung/location/ISCurrentLocListener$Stub;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;->mListener:Lcom/samsung/location/SCurrentLocListener;

    .line 213
    new-instance v0, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport$1;-><init>(Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;Lcom/samsung/location/SLocationManager;)V

    iput-object v0, p0, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 219
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 234
    :goto_5
    return-void

    .line 231
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;->mListener:Lcom/samsung/location/SCurrentLocListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-interface {v1, v0}, Lcom/samsung/location/SCurrentLocListener;->onCurrentLocation(Landroid/location/Location;)V

    goto :goto_5

    .line 229
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onCurrentLocation(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 223
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 224
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    return-void
.end method
