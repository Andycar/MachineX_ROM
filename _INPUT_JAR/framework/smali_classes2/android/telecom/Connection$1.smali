.class Landroid/telecom/Connection$1;
.super Landroid/telecom/Connection$Listener;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Connection;


# direct methods
.method constructor <init>(Landroid/telecom/Connection;)V
    .registers 2

    .prologue
    .line 461
    iput-object p1, p0, Landroid/telecom/Connection$1;->this$0:Landroid/telecom/Connection;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/Connection;)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;

    .prologue
    .line 464
    iget-object v0, p0, Landroid/telecom/Connection$1;->this$0:Landroid/telecom/Connection;

    # getter for: Landroid/telecom/Connection;->mConferenceableConnections:Ljava/util/List;
    invoke-static {v0}, Landroid/telecom/Connection;->access$400(Landroid/telecom/Connection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 465
    iget-object v0, p0, Landroid/telecom/Connection$1;->this$0:Landroid/telecom/Connection;

    # invokes: Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V
    invoke-static {v0}, Landroid/telecom/Connection;->access$500(Landroid/telecom/Connection;)V

    .line 467
    :cond_11
    return-void
.end method
