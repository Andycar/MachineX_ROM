.class Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;
.super Landroid/os/Handler;
.source "PersonalPageChooseLockAdditionalPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {v1, v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 218
    :cond_0
    return-void
.end method
