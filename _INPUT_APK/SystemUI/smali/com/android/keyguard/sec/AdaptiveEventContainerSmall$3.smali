.class Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;
.super Ljava/lang/Object;
.source "AdaptiveEventContainerSmall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->inflateWeatherView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$400(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$500(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$400(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$500(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 521
    :cond_0
    return-void
.end method
