.class public Landroid/media/browse/MediaBrowser$ConnectionCallback;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 1

    .prologue
    .line 653
    return-void
.end method

.method public onConnectionFailed()V
    .registers 1

    .prologue
    .line 665
    return-void
.end method

.method public onConnectionSuspended()V
    .registers 1

    .prologue
    .line 659
    return-void
.end method
