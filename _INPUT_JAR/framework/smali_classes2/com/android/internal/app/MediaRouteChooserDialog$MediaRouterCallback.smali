.class final Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaRouteChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MediaRouteChooserDialog;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/MediaRouteChooserDialog;)V
    .registers 2

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/MediaRouteChooserDialog;Lcom/android/internal/app/MediaRouteChooserDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/app/MediaRouteChooserDialog;
    .param p2, "x1"    # Lcom/android/internal/app/MediaRouteChooserDialog$1;

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteChooserDialog;)V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 247
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 257
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 252
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->dismiss()V

    .line 262
    return-void
.end method
