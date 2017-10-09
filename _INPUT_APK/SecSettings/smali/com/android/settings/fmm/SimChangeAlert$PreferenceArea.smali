.class public Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;
.super Landroid/preference/PreferenceFragment;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fmm/SimChangeAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceArea"
.end annotation


# instance fields
.field public AlterMessageLengthFilter:Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 360
    new-instance v0, Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea$2;-><init>(Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;)V

    iput-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;->AlterMessageLengthFilter:Landroid/text/InputFilter;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 327
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 329
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;->addPreferencesFromResource(I)V

    .line 331
    const-string v0, "message_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/FmmEditTextPreference;

    invoke-static {v0}, Lcom/android/settings/fmm/SimChangeAlert;->access$702(Lcom/android/settings/fmm/FmmEditTextPreference;)Lcom/android/settings/fmm/FmmEditTextPreference;

    .line 332
    invoke-static {}, Lcom/android/settings/fmm/SimChangeAlert;->access$700()Lcom/android/settings/fmm/FmmEditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fmm/FmmEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 333
    invoke-static {}, Lcom/android/settings/fmm/SimChangeAlert;->access$700()Lcom/android/settings/fmm/FmmEditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/fmm/FmmEditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 334
    invoke-static {}, Lcom/android/settings/fmm/SimChangeAlert;->access$700()Lcom/android/settings/fmm/FmmEditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fmm/FmmEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;->AlterMessageLengthFilter:Landroid/text/InputFilter;

    aput-object v3, v1, v2

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 336
    invoke-static {}, Lcom/android/settings/fmm/SimChangeAlert;->access$700()Lcom/android/settings/fmm/FmmEditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fmm/FmmEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea$1;-><init>(Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 358
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 373
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "key":Ljava/lang/String;
    const-string v1, "message_preference"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-static {}, Lcom/android/settings/fmm/SimChangeAlert;->access$700()Lcom/android/settings/fmm/FmmEditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fmm/FmmEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a007d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 385
    :cond_0
    :goto_0
    return v3

    .line 381
    :cond_1
    invoke-static {}, Lcom/android/settings/fmm/SimChangeAlert;->access$700()Lcom/android/settings/fmm/FmmEditTextPreference;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/fmm/FmmEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    invoke-static {}, Lcom/android/settings/fmm/SimChangeAlert;->access$700()Lcom/android/settings/fmm/FmmEditTextPreference;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/fmm/FmmEditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method
