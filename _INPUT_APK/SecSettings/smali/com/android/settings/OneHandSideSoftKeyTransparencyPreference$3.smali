.class Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$3;
.super Landroid/database/ContentObserver;
.source "OneHandSideSoftKeyTransparencyPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$3;->this$0:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$3;->this$0:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$3;->this$0:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    invoke-virtual {v1}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->access$202(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 66
    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$3;->this$0:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    invoke-static {v0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->access$200(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$3;->this$0:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    invoke-static {v0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->access$200(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 68
    :cond_0
    return-void
.end method
