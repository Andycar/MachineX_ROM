.class Landroid/webkit/WebView$SmartClipHandler;
.super Landroid/os/Handler;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartClipHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 2

    .prologue
    .line 2544
    iput-object p1, p0, Landroid/webkit/WebView$SmartClipHandler;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2547
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2548
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "rect"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 2549
    .local v1, "clipRect":Landroid/graphics/Rect;
    const-string v4, "html"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2550
    .local v3, "innerHTML":Ljava/lang/String;
    const-string/jumbo v4, "text"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2551
    .local v2, "contentText":Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/WebView$SmartClipHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4, v2, v3, v1}, Landroid/webkit/WebView;->sendResultOfSmartClip(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 2552
    return-void
.end method
