.class Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewWaterColor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->clearScreen()V

    .line 101
    return-void
.end method
