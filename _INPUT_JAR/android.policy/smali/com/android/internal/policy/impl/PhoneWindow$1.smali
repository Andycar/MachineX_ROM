.class Lcom/android/internal/policy/impl/PhoneWindow$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .registers 2

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v1, 0xd

    if-gt v0, v1, :cond_19

    .line 307
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$000(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    .line 308
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->doInvalidatePanelMenu(I)V

    .line 306
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 311
    :cond_19
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$102(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z

    .line 312
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$002(Lcom/android/internal/policy/impl/PhoneWindow;I)I

    .line 313
    return-void
.end method
