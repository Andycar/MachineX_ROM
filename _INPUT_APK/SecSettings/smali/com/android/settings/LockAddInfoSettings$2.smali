.class Lcom/android/settings/LockAddInfoSettings$2;
.super Ljava/lang/Object;
.source "LockAddInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockAddInfoSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockAddInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LockAddInfoSettings;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/settings/LockAddInfoSettings$2;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings$2;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-static {v0}, Lcom/android/settings/LockAddInfoSettings;->access$000(Lcom/android/settings/LockAddInfoSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 305
    return-void
.end method
