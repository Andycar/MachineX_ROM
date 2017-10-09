.class Lcom/android/keyguard/sec/rich/SecAttributionInfoView$5;
.super Landroid/view/OrientationEventListener;
.source "SecAttributionInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$5;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$5;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->access$400(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V

    .line 242
    return-void
.end method
