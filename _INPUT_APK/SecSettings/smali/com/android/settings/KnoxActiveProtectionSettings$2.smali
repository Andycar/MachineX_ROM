.class Lcom/android/settings/KnoxActiveProtectionSettings$2;
.super Ljava/lang/Object;
.source "KnoxActiveProtectionSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KnoxActiveProtectionSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KnoxActiveProtectionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/KnoxActiveProtectionSettings;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings/KnoxActiveProtectionSettings$2;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    const-string v0, "KnoxActiveProtectionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSwitch.setOnTouchListener, isKapEnforced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings$2;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v2}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$700(Lcom/android/settings/KnoxActiveProtectionSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDeviceTampered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings$2;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v2}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$800(Lcom/android/settings/KnoxActiveProtectionSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings$2;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v0}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$900(Lcom/android/settings/KnoxActiveProtectionSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings$2;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v0}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$1000(Lcom/android/settings/KnoxActiveProtectionSettings;)V

    .line 153
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
