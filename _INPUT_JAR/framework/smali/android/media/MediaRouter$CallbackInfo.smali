.class Landroid/media/MediaRouter$CallbackInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackInfo"
.end annotation


# instance fields
.field public final cb:Landroid/media/MediaRouter$Callback;

.field public flags:I

.field public final router:Landroid/media/MediaRouter;

.field public type:I


# direct methods
.method public constructor <init>(Landroid/media/MediaRouter$Callback;IILandroid/media/MediaRouter;)V
    .registers 5
    .param p1, "cb"    # Landroid/media/MediaRouter$Callback;
    .param p2, "type"    # I
    .param p3, "flags"    # I
    .param p4, "router"    # Landroid/media/MediaRouter;

    .prologue
    .line 2690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2691
    iput-object p1, p0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    .line 2692
    iput p2, p0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    .line 2693
    iput p3, p0, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    .line 2694
    iput-object p4, p0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    .line 2695
    return-void
.end method


# virtual methods
.method public filterRouteEvent(I)Z
    .registers 3
    .param p1, "supportedTypes"    # I

    .prologue
    .line 2702
    iget v0, p0, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_b

    iget v0, p0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z
    .registers 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 2698
    iget v0, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(I)Z

    move-result v0

    return v0
.end method
