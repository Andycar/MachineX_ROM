.class Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

.field final synthetic val$mgr:Landroid/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;Landroid/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->val$mgr:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 901
    new-instance v0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;-><init>()V

    .line 902
    .local v0, "frag":Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iput-object v1, v0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    .line 903
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->val$mgr:Landroid/app/FragmentManager;

    const-class v2, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 904
    const/4 v1, 0x1

    return v1
.end method
