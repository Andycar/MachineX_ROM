.class Lcom/android/keyguard/sec/KeyguardBackupPINView$1;
.super Ljava/lang/Object;
.source "KeyguardBackupPINView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardBackupPINView;->startAppearAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardBackupPINView;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/sec/KeyguardBackupPINView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->access$000(Lcom/android/keyguard/sec/KeyguardBackupPINView;Z)V

    .line 160
    return-void
.end method
