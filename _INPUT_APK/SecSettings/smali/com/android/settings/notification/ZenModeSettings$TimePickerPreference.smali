.class Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;
.super Landroid/preference/Preference;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimePickerPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;,
        Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;

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
    .line 776
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 777
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    .line 778
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setPersistent(Z)V

    .line 779
    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$1;-><init>(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;Landroid/app/FragmentManager;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 788
    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    .prologue
    .line 767
    iget v0, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mHourOfDay:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    .prologue
    .line 767
    iget v0, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mMinute:I

    return v0
.end method

.method private updateSummary()V
    .locals 6

    .prologue
    .line 807
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 808
    .local v0, "c":Ljava/util/Calendar;
    const/16 v2, 0xb

    iget v3, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mHourOfDay:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 809
    const/16 v2, 0xc

    iget v3, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mMinute:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 810
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, "time":Ljava/lang/String;
    iget v2, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mSummaryFormat:I

    if-eqz v2, :cond_0

    .line 812
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mSummaryFormat:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 814
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 815
    return-void
.end method


# virtual methods
.method public setCallback(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;

    .prologue
    .line 791
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mCallback:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;

    .line 792
    return-void
.end method

.method public setSummaryFormat(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 795
    iput p1, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mSummaryFormat:I

    .line 796
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->updateSummary()V

    .line 797
    return-void
.end method

.method public setTime(II)V
    .locals 1
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mCallback:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mCallback:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;->onSetTime(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    :goto_0
    return-void

    .line 801
    :cond_0
    iput p1, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mHourOfDay:I

    .line 802
    iput p2, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mMinute:I

    .line 803
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->updateSummary()V

    goto :goto_0
.end method
