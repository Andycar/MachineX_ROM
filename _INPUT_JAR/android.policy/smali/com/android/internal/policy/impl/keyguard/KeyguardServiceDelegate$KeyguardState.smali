.class final Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeyguardState"
.end annotation


# instance fields
.field public bootCompleted:Z

.field public currentUser:I

.field public dismissable:Z

.field dreaming:Z

.field public enabled:Z

.field inputRestricted:Z

.field occluded:Z

.field public offReason:I

.field public screenIsOn:Z

.field secure:Z

.field showing:Z

.field showingAndNotOccluded:Z

.field systemIsReady:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->showingAndNotOccluded:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 53
    return-void
.end method
