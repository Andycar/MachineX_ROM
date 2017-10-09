.class Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewIndigoDiffusion.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/HashMap;)V
    .locals 3
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    const/4 v2, 0x1

    .line 118
    if-ne p1, v2, :cond_0

    .line 120
    const-string v0, "sound"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;I)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v0, "sound"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "drag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;I)V

    goto :goto_0
.end method
