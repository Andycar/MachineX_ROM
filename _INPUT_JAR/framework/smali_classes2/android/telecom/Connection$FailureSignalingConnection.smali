.class Landroid/telecom/Connection$FailureSignalingConnection;
.super Landroid/telecom/Connection;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FailureSignalingConnection"
.end annotation


# direct methods
.method public constructor <init>(Landroid/telecom/DisconnectCause;)V
    .registers 2
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1107
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    .line 1108
    invoke-virtual {p0, p1}, Landroid/telecom/Connection$FailureSignalingConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 1109
    return-void
.end method
