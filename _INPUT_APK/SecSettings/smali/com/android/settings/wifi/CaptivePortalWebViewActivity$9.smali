.class Lcom/android/settings/wifi/CaptivePortalWebViewActivity$9;
.super Ljava/lang/Object;
.source "CaptivePortalWebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->createSslOnErrorDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$9;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    iput-object p2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$9;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$9;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 262
    return-void
.end method
