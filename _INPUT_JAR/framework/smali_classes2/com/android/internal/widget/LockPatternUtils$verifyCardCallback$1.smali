.class Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback$1;
.super Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback$Stub;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;)V
    .registers 2

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback$1;->this$0:Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;

    invoke-direct {p0}, Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback$1;->this$0:Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;->onComplete(I)V

    .line 574
    return-void
.end method
