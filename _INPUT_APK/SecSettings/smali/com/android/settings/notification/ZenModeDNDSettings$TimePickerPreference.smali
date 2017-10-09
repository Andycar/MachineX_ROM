.class Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;
.super Landroid/preference/Preference;
.source "ZenModeDNDSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeDNDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimePickerPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;,
        Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field private mHourOfDay:I

.field private mMinute:I

.field private mSummaryFormat:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mgr"    # Landroid/app/FragmentManager;

    .prologue
    .line 895
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 896
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    .line 897
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setPersistent(Z)V

    .line 898
    new-instance v0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;Landroid/app/FragmentManager;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 907
    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    .prologue
    .line 886
    iget v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mHourOfDay:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    .prologue
    .line 886
    iget v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mMinute:I

    return v0
.end method

.method private updateSummary()V
    .locals 6

    .prologue
    .line 926
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 927
    .local v0, "c":Ljava/util/Calendar;
    const/16 v2, 0xb

    iget v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mHourOfDay:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 928
    const/16 v2, 0xc

    iget v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mMinute:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 929
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 930
    .local v1, "time":Ljava/lang/String;
    iget v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mSummaryFormat:I

    if-eqz v2, :cond_0

    .line 931
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mSummaryFormat:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 933
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 934
    return-void
.end method


# virtual methods
.method public setCallback(Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;

    .prologue
    .line 910
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mCallback:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;

    .line 911
    return-void
.end method

.method public setSummaryFormat(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 914
    iput p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mSummaryFormat:I

    .line 915
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->updateSummary()V

    .line 916
    return-void
.end method

.method public setTime(II)V
    .locals 1
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mCallback:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mCallback:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;->onSetTime(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 923
    :goto_0
    return-void

    .line 920
    :cond_0
    iput p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mHourOfDay:I

    .line 921
    iput p2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mMinute:I

    .line 922
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->updateSummary()V

    goto :goto_0
.end method
