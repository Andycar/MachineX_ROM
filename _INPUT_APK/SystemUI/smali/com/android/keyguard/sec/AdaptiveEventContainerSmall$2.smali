.class Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;
.super Landroid/database/ContentObserver;
.source "AdaptiveEventContainerSmall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 77
    const-string v0, "AdaptiveEventContainerSmall"

    const-string v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$300(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    .line 79
    return-void
.end method
