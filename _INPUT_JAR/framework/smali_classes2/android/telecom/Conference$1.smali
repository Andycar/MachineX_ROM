.class Landroid/telecom/Conference$1;
.super Landroid/telecom/Connection$Listener;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Conference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Conference;


# direct methods
.method constructor <init>(Landroid/telecom/Conference;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Landroid/telecom/Conference$1;->this$0:Landroid/telecom/Conference;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/Connection;)V
    .registers 3
    .param p1, "c"    # Landroid/telecom/Connection;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/telecom/Conference$1;->this$0:Landroid/telecom/Conference;

    # getter for: Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;
    invoke-static {v0}, Landroid/telecom/Conference;->access$000(Landroid/telecom/Conference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 66
    iget-object v0, p0, Landroid/telecom/Conference$1;->this$0:Landroid/telecom/Conference;

    # invokes: Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V
    invoke-static {v0}, Landroid/telecom/Conference;->access$100(Landroid/telecom/Conference;)V

    .line 68
    :cond_11
    return-void
.end method
