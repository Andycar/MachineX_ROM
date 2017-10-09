.class public final Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
.super Ljava/lang/Object;
.source "KeyguardMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mSecure:Z

.field private mShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 53
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mSecure:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mShowing:Z

    return v0
.end method

.method public notifyKeyguardState(ZZ)V
    .locals 3
    .param p1, "showing"    # Z
    .param p2, "secure"    # Z

    .prologue
    .line 45
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mShowing:Z

    if-ne v2, p1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mSecure:Z

    if-ne v2, p2, :cond_1

    .line 51
    :cond_0
    return-void

    .line 46
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mShowing:Z

    .line 47
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mSecure:Z

    .line 48
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 49
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;->onKeyguardChanged()V

    goto :goto_0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method
