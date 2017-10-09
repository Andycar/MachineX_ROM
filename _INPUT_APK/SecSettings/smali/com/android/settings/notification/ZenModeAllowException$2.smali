.class Lcom/android/settings/notification/ZenModeAllowException$2;
.super Ljava/lang/Object;
.source "ZenModeAllowException.java"

# interfaces
.implements Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeAllowException;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAllowException;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAllowException;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAllowException$2;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingSelected(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException$2;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/ZenModeAllowException;->showConditionSelection(I)V

    .line 193
    :cond_0
    return-void
.end method
