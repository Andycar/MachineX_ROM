.class Lcom/android/settings/BrightnessFragment$1;
.super Landroid/database/ContentObserver;
.source "BrightnessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BrightnessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings/BrightnessFragment$1;->this$0:Lcom/android/settings/BrightnessFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment$1;->this$0:Lcom/android/settings/BrightnessFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/settings/BrightnessFragment;->access$002(Lcom/android/settings/BrightnessFragment;I)I

    .line 142
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment$1;->this$0:Lcom/android/settings/BrightnessFragment;

    invoke-static {v0}, Lcom/android/settings/BrightnessFragment;->access$100(Lcom/android/settings/BrightnessFragment;)V

    .line 143
    return-void
.end method
