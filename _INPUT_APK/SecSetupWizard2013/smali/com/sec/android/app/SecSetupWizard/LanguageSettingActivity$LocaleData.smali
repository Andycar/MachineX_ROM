.class public Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;
.super Ljava/lang/Object;
.source "LanguageSettingActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;",
        ">;"
    }
.end annotation


# static fields
.field static final sCollator:Ljava/text/Collator;


# instance fields
.field label:Ljava/lang/String;

.field locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 688
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;->label:Ljava/lang/String;

    .line 695
    iput-object p2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;->locale:Ljava/util/Locale;

    .line 696
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;)I
    .locals 3
    .param p1, "another"    # Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;

    .prologue
    .line 711
    sget-object v0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 687
    check-cast p1, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;->compareTo(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;)I

    move-result v0

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;->label:Ljava/lang/String;

    return-object v0
.end method
