.class Lcom/android/keyguard/sec/KeyguardEffectViewController$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardEffectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    .prologue
    .line 325
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "onBootCompleted: mBootCompleted = true;"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1102(Lcom/android/keyguard/sec/KeyguardEffectViewController;Z)Z

    .line 327
    return-void
.end method
