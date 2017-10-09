.class Lcom/android/keyguard/sec/rich/SecAttributionInfoView$9;
.super Landroid/database/ContentObserver;
.source "SecAttributionInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->registerLogoImageFileObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$9;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$9;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->access$800(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 487
    return-void
.end method
