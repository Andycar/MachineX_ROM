.class Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewRippleInk.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

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

    .line 114
    if-ne p1, v2, :cond_0

    .line 116
    const-string v0, "sound"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;I)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v0, "sound"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "drag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;I)V

    goto :goto_0
.end method
