.class Lcom/android/keyguard/sec/rich/SecAttributionInfoView$6;
.super Ljava/lang/Object;
.source "SecAttributionInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateLiveviewViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$6;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$6;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$6;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-static {v1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->access$600(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "just_lock_yahoo_livewallpaper_location_url"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->access$502(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$6;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->access$500(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$6;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->access$500(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$6;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$6;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-static {v1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->access$500(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->access$700(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Ljava/lang/String;)V

    .line 325
    :cond_0
    return-void
.end method
